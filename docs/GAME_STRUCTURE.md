# Audio Defence — recovered game structure

Everything here was read out of the shipped iOS binary (`Payload/audiodefence.app/audiodefence`,
arm64 slice) and its data files. Addresses are virtual addresses in the arm64 slice
(`analysis/bin/audiodefence_arm64`); every claim can be checked with

    py tools/query.py digest "<Class> <selector>"      # condensed pseudo-code
    py tools/query.py fn     "<Class> <selector>"      # full annotated disassembly

Provenance tags used below:

* **[R]** read directly from the instructions at the given address.
* **[D]** read from shipped data (plists / playlists / nibs).
* **[I]** inferred (naming, how pieces fit together) — not a literal instruction.

Arithmetic in formulas is written exactly as the binary computes it, including oddities; where the
original looks like a bug it is marked **QUIRK** and should be reproduced, not fixed, unless you
decide otherwise.

---

## 1. What is in the bundle

| Item | Count / size | Notes |
|---|---|---|
| `audiodefence` | fat Mach-O, armv7 + arm64, both **decrypted** (`cryptid=0`) | min iOS 7.0, SDK 8.3; arm64 slice is the one analysed |
| code | 1.54 MB `__text`, 7,692 functions | 5,923 Objective-C methods, 324 C++ virtuals, 323 block bodies, 56 symbols, 1,066 unnamed helpers |
| Objective-C | 400 classes, 18 categories, 43 protocols | full dump: `analysis/classdump.h` |
| C++ | 43 RTTI classes, 161 vtables (namespace `csl`) | `analysis/cxx_classes.txt` |
| plists | 253 (all binary) | game data: waves ("bricks"), enemies, weapons, missions, tarot, roulette, tips … |
| NIBs | 150 compiled `NIBArchive` | menus; include VoiceOver labels and `Accessible_*` variants |
| sounds | 915 `.m4a` + 3 `.mp3` under `sounds/` | organised by folder = playlist |
| playlists | 208 S-expression files in `meta/S3DPlayListModel/` | map playlist names to sound files and per-sound flags |
| fonts | 6 `.ttf` | Monstro, AxeHandel, PWChalk, Tiresias Infofont, scoreboard |
| other | `html/` (other games page), 2 SpriteKit `.sks` particle files, `en.lproj` strings | |

### 1.1 Code layout (link order, from `analysis/functions.tsv`)

1. **Game code** `AD*`, `Accessible_AD*` (≈2,950 methods) — 0x100005830 … ~0x1000df000
2. Small UI helpers: `ViewWithParalax`, `GlowingImage`, `UICountingLabel`, `DFAutoScroll*`,
   `OBDragDrop*` (drag & drop), `MBProgressHUD`, `CWLOrderedDictionary`, `Reachability`,
   `SharkfoodMuteSwitchDetector`, `PECPUMeter/PEMetricsViewController` (debug CPU meter)
3. **S-expression parser** `SExp`, `SExpIO`, `SExpTokenizer`, `SExpValidityChecker` — 0x1000dfc10
4. **`csl` C++ audio library** (CREATE Signal Library lineage) — 0x1000e35d8 … 0x1000f9510:
   sound files, unit generators, Freeverb/Stereoverb, Butterworth filters, mixers, panners,
   `Spatializer`, `BinauralPanner`/`BinauralSourceCache` (HRTF), ambisonics, `DistanceSimulator`,
   `IntensityAttenuationCue`, `AirAbsorptionCue`, `iPhoneIO`/`AUIO` (CoreAudio output)
5. **S3D engine** (Objective-C wrapper) `S3DDefaults`, `S3DEngine`, `S3DPlayList`, `S3DSound`,
   `S3DEngineDispatcher`, `S3DPlayListModel`, `S3DRepo`, `S3DAbstractModel`, `AUFactory` — 0x1000f9510 …
6. Google Analytics (`GAI*`) and Google Tag Manager (`TAG*`, protobuf `TAGPB*`) — irrelevant to a port.

---

## 2. Toolchain (this repository)

| Tool | Purpose |
|---|---|
| `tools/macho.py` | fat slicing, Mach-O load commands, symbols, dyld bind/rebase opcodes, export trie, function starts |
| `tools/objc.py` | Objective-C runtime metadata → `analysis/classdump.h`, `analysis/objc.json` |
| `tools/disasm.py` | whole-program annotated disassembly → `analysis/disasm/<unit>.s`, `analysis/xrefs.json`, `analysis/functions.tsv`, `analysis/cxx_classes.txt` |
| `tools/query.py` | lookups (fn / digest / list / callers / sel / str / ivar / const) and `analysis/digest/<unit>.txt` |
| `tools/resources.py` | plists → JSON, NIBs → text, playlists → `playlists.json`, sound inventory → `sounds.tsv` |

The annotator does a fixed-point data-flow pass per function (intersection of register/stack state
on all incoming edges, phi sets for per-path selector choices, jump-table decoding, stack block
literals with their captured variables), so `objc_msgSend` calls render as
`[receiver selector:args]` and float arithmetic renders as expressions. Integer division by a
constant appears in its compiled form; the common ones are:

| pattern in listing | meaning |
|---|---|
| `x - ((((x * 0xffffffffb60b60b7) >>> 32) + x) >> 8 …) * 360` | `x % 360` |
| `x - (((x * 0x51eb851f) >> 37) + …) * 100` | `x % 100` |
| `x - ((((x *h 0xa3d70a3d70a3d70b) + x) >>> 6) + …) * 100` | `x % 100` (64-bit `random()`) |
| `x - ((((x *h …a3d70b) + x) >> 5) + …) * 50` | `x % 50` |
| `x - (((((x * 0xffffffff88888889) >>> 32) + x) >> 4) + …) * 30` | `x % 30` |

Rebuild everything from the IPA:

    py tools/macho.py extract game/audiodefence analysis/bin
    py tools/objc.py analysis/bin/audiodefence_arm64
    py tools/disasm.py analysis/bin/audiodefence_arm64 --out analysis
    py tools/query.py make-digests
    py tools/resources.py game --out analysis/data

---

## 3. Application start-up and the audio engine settings

`-[ADAppDelegate application:didFinishLaunchingWithOptions:]` 0x10008099c **[R]**

1. window + `initPapaEngine`
2. drag&drop overlay, Google Analytics (`UA-46904274-3`), `ADTracker initGamePlayTracker/initArmoryTracker`
3. root = empty `ADEmptyViewController`, presents `ADLogoScreenViewController` (`_iPad` nib on iPad)
4. `runSanityCheck` → `[ADBrickManager loadBrickChancePlist:@"brick_chance"]` + `[… runSanityCheck]`

`-[ADAppDelegate initPapaEngine]` 0x1000829d4 **[R]** — the global S3D engine configuration:

| call | value |
|---|---|
| `+[S3DEngine setPlayListMetaPath:]` | `"meta"` |
| `+[S3DEngine setProductName:]` | `"AudioDefense"` |
| `setMasterGain:` | **1.5** |
| `setTraceLevel:` | 0 |
| `setReverbRoomSize:` | **1.5** |
| `setReverbDampening:` | **50** |
| `setReverbVolume:` | **1** |
| `setDistanceScale:` | **0.8** |
| `setMaxSpatialGain:` | **6** |
| then | `activateButtonsPlaylist` → playlist `"buttons"` activated |

`-[ADGameplayViewController initAmbiantManager]` 0x100057000 re-applies room size 1.5 / dampening 50 /
volume 1 at the start of every run and starts `ADAmbientManager startWithRandomAmbient`. **[R]**

### 3.1 Menu music — `ADAppDelegate`

* `startMenuMusic:` 0x100082ca0: playlist `"main_menu"`; for `main_menu_theme` it first plays
  `main_menu_open` at gain 0.4 and attaches a 3D-sound monitor block that starts the theme
  (gain 0.4, streamed, looping `play:1`) when the opener nears its end (`d8 * 0.7 > d9` test in
  0x100083178). Other names start directly at gain 0.4, streamed, looping. **[R]**
* `stopMenuMusic` 0x1000833dc: repeating `NSTimer` every **0.05 s** calling
  `reduceMainMenuThemeVolume` (0x100083460), which lowers music and opener gain by **0.01** per
  tick; at ≤ 0 both stop, playlist `main_menu` is deactivated, and if `start_theme_after_fade`
  is set the theme is restarted. (Full fade from 0.4 = 40 ticks = 2 s.) **[R]**
* `applicationWillResignActive:` → `pauseGame` → if the current VC is an `ADGameplayViewController`,
  `pauseButtonTouched:`. **[R]**

### 3.2 Screen navigation (`ADAppDelegate goTo…`)

All transitions go through `loadViewController:` 0x1000811bc: set cross-dissolve, dismiss the
current modal, then present the new one. **[R]**

| method | view controller (nib) |
|---|---|
| `goToMainMenu` | `startMenuMusic:"main_menu_theme"` + `ADMainMenuViewController` |
| `goToPlayMenu` | `ADPlayMenuViewController` |
| `goToGameplay` | `stopMenuMusic` + `ADGameplayViewController` (Endless mode) |
| `goToChallengeWithDict:` | `stopMenuMusic` + `ADChallengeGameplayViewController initWithNibName:nil bundle:nil challengeDictionary:` |
| `goToOpener` | `ADOpenerGameplayViewController` (intro sequence) |
| `goToRoulette` / `goToTarot` / `goToStory` | `ADScenarioRouletteViewController` / `ADTarotViewController` / `ADStoryViewController` |
| `goToChallengeAfter:` | next challenge in the current world; VoiceOver on → `Accessible_…Overview`, else overview or `ADChallengeLockedViewController` depending on `hasWeaponForChallengeWithName:` |

---

## 4. The gameplay loop — `ADGameplayViewController`

`viewDidLoad` 0x100057c08 **[R]**: `initWeaponManager` → `initAmbiantManager` → `initBrickManager`
→ `initDebugMap` → `startUpdateTimers` → `initButtonMode`; creates `ADPlayer`; opener subclass skips
stats; if **VoiceOver is running** an `ADAccessibleGameView` covering the whole view is created and
all `ADButtonWithSwipe` buttons are disabled and hidden from accessibility (see §10). Idle timer
disabled.

### 4.1 Three fixed timers — `startUpdateTimers` 0x10005948c **[R]**

| timer | interval | selector | does |
|---|---|---|---|
| `updateTimer` | **0.05 s (20 Hz)** | `update` | ambience `update:0.05`; gyro/tilt sampling; `ADBrickManager update:0.05`; `ADPlayer update:0.05`; accessible view `update:0.05`; debug map; score view |
| `weaponUpdateTimer` | **0.01 s (100 Hz)** | `updateWeapons` | `weaponTouchArea update:0.01`, `ADWeaponManager update:0.01`, `weaponButton update:0.01`, score view |
| `statsUpdateTimer` | **0.25 s (4 Hz)** | `updateStats` | unless opener/paused/skippable narration playing: stats notifications `TIME_ELAPSED 0.25`, `BRICK_TIME_ELAPSED 0.25`, `UPDATE_WEAPON_DATA` |

All three are added to the main run loop in common modes. The dt passed is the constant, never
measured time. **[R]**

### 4.2 Input (non-VoiceOver)

* `panDetected:` 0x10005a748 — only when `controlScheme == 2` (swipe): `touchesMoveDetected:` with the
  pan's x translation. `touchesMoveDetected:justStarted:` 0x10005a3e0 sends
  `playerSwiped:(-(sensivity * dx) - movementOnLastFrame)` to every infinite scroll view and stores
  `movementOnLastFrame = -(sensivity * dx)` (reset to 0 on gesture start). **[R]**
* `update` samples `ADMotionManager getYawDifference` (scheme 1, gyro) or `getTiltAngle` (scheme 3). **[R]**
* Buttons: `switchWeaponButtonPressed:` → `selectNextWeapon`; `reloadButtonPressed:` → `reloadGestureDown`;
  `meleeButtonPressed:` → `shootWithMelee`; `powerUpButtonPressed:` → `usePowerUp`. **[R]**
* `motionEnded:withEvent:` — a device **shake** (event type 1) triggers `shootWithMelee` when not in button mode. **[R]**
* long press on view tag 3000 → `goToScoreScreen`. **[R]**

---

## 5. Waves ("bricks") — `ADBrickManager` and `ADBrick`

A *brick* is one plist describing a short scripted encounter: enemies, passers-by, narration
sounds, an optional power-up and tips. The game plays bricks one after another.

### 5.1 Modes (`ADBrickManager.mode`) **[R]**

| value | set by | meaning |
|---|---|---|
| 1 | `ADGameplayViewController initBrickManager` 0x10005712c | **Endless**: bricks chosen randomly from `brick_chance.plist`; revive offered on death |
| 2 | `ADChallengeGameplayViewController initBrickManager` 0x1000daf74 | **Challenge**: fixed brick list from the challenge plist; death → challenge failed |
| 4 | `ADOpenerGameplayViewController initBrickManager` 0x100025d20 | **Opener** (intro): scenario; after 52 s starts menu theme; cleared → score screen |
| 3 | never set | handled in `gameOver` (quit with fail) — dead code |

### 5.2 Brick selection

`loadNextBrick` 0x1000c3058 **[R]**:

```
playerIsDead = NO
currentWave += 1
if mode == 1: currentRandomAngle = rand() % 360     (tracker reset of "Challenge name")
if brickChanceDictionary:
    name = brickNameForWaveNumber(currentWave)
    if currentWave > 11 or modifiers.enragedHorde:
        modifiers.difficultyModifier += 0.14          ("Difficulty ramped to %f")
elif brickScenario:
    name = scenarioBrickNameForWaveNumber(currentWave)  → brickScenario[(wave-1) % count]
stats "SET_BRICK_NAME"; loadBrickWithName(name)
```

`brickNameForWaveNumber:` 0x1000c21a4 **[R]**:

```
row = brick_chance["brick_chance"][str(min(wave, 11))]
p1..p5 = row["level_1".."level_5"]        (NSLog "SUM OF BRICK %i != 100" if they don't add to 100)
r = rand() % 100                           (rolled ONCE)
attempts = 0
loop:
    if r < p1:              name = random item of brick_chance["level_1_bricks"]
    elif r < p1+p2:         … "level_2_bricks"
    elif r < p1+p2+p3:      … "level_3_bricks"
    elif r < p1+p2+p3+p4:   … "level_4_bricks"
    elif r < p1+…+p5:       … "level_5_bricks"
    if name and canUseBrickWithName(name): return name
    attempts += 1; after 10 failed attempts fall back to a random "level_1_bricks" entry (then re-check)
```

`randomItemInBrickDictionary:` = `list[rand() % count]`. **[R]**

`canUseBrickWithName:` 0x1000c259c **[R]**: loads `<brick>.plist`, and for every key of
`Enemies` asks `[ADPersistentStats getKillRequirementForEnemyWithName:]`; if any returns ≥ 1 the brick
is rejected ("Cannot use brick %@ because it contains %@"). (The kill requirement comes from the
enemy's `bestiary."Unlock requirement"` vs. persistent kills — see §9.)

Wave numbers above 11 keep using row 11 but ramp `difficultyModifier` by 0.14 per wave. **[R]**

### 5.3 Loading a brick — `loadBrickWithName:` 0x1000c2930 **[R]**

* stops sounds of the previous brick, creates `ADBrick initBrickWithName:`, `tag = currentWave+1`
* first brick: `activateAllPlaylists`; later bricks: activate only playlists not used by the
  previous brick and queue the previous brick's other playlists for deactivation
  (`deactivationList`, drained one per enemy death by `checkPlaylistDeactivation`)
* tracker `loadBrick:WithBrickNumber:`, stats `RESET_BRICK_TIME`
* ambience: previous brick's `Ambiant` cleared, new one → `ADAmbientManager brickWithAmbiantStarted:`

### 5.4 Brick plist format **[D]** + how it is read **[R]**

```
{
  "Enemies":  { "<EnemyName>[ <suffix>]": {spawn_angle, spawn_distance, spawn_time | spawn_after, spawn_sound}, … },
  "PasserBy": { "Jukebox"|"Car"|"Car2"|"Car3"|"Machine"|<other>: {same keys} },
  "Sounds":   [ {name, spawn_time|spawn_after, gain, loop, blocker, skippable, stopsOtherSounds,
                 startMusicBeforeEnd, spawn_angle+spawn_distance | position/finalPosition}, … ],
  "PowerUp":  { spawn_time, force_spawn_time, spawn_after, type },
  "Ambiant":  "<ambience playlist>",
  "Tips":     [ … ]
}
spawn_after = { "enemy": "<name of enemy or sound>", "time": seconds,
                "afterStart": bool, "ignoreIfSkipped": bool }
```

Enemy dictionary keys may carry a suffix after a space ("Zombie 2"); the first word is the
`enemies.plist` key and the sound playlist name (`soundsPrefix`). **[R]** (`initWithName:` 0x10005ddd4)

`initBrickWithName:` 0x10009ea80 for each enemy **[R]**:

* `ADEnemy initWithName:`, `randomAdditionalSpawnAngle = 0`, parent brick, playlist name added to the brick's set
* `setPositionFromDictionary:`; `tag = ((brickTag*100) | 1) + index`
* `spawn_time` present → `spawn_time = value`, **state 0** (countdown)
* else `spawn_after` present → store it, stay in state −1 (waits for a trigger)
* else → `spawn` immediately

Passers-by (0x10009f6b4) use `ADJukeBox` for "Jukebox", `ADCarAlarm` for "Car/Car2/Car3",
`ADMachine` for "Machine", plain `ADPasserBy` otherwise; same spawn rules; registered with the
brick manager's `ADPasserByManager`.

Sounds (`initSounds` 0x10009f274): if `Sounds` is non-empty the playlist **named after the brick**
is activated and one `ADSound` per entry is created in the activation callback.

### 5.5 Spawn triggers **[R]**

`checkSpawnOnStart:name` (ADBrick 0x1000a19fc) — called when an enemy spawns or an `ADSound` starts:

* living enemies whose `spawn_after.enemy == name` and `afterStart == YES` → `spawn_time = spawn_after.time`, state 0
* sounds (state ≠ 3) with `spawn_after.enemy == name` and `afterStart == YES` → `spawn_time = time`, state 1

`checkSpawnAfterKill:name skipped:` (ADBrick 0x1000a20ac) — called when an enemy dies or a sound finishes:

```
if skipped: shift = (min spawn_time over living enemies with spawn_after.enemy == name) - 0.1
for living enemy with spawn_after.enemy == name:
    if not afterStart:                spawn_time = time; state 0
    elif skipped and ignoreIfSkipped: state -1            (never spawns)
    elif skipped:                     spawn_time -= shift
for sound (state != 3) with spawn_after.enemy == name:
    if not afterStart:                spawn_time = time; state 1
    elif skipped and ignoreIfSkipped: state 0
    elif skipped:                     [sound play]
if PowerUp.spawn_after == name: tryToPopPowerUpContainer
```

`soundOrEnemyWithNameWasDeactivated:withSkip:` 0x1000c6bb0: if the brick is cleared →
`currentBrickIsCleared`, otherwise → the trigger check above. **[R]**

`-[ADBrick brickIsCleared]` 0x1000a1658: false while any enemy has life > 0, or any **blocker** sound
is not in state 3. **[R]**

`currentBrickIsCleared` 0x1000c6ca0 **[R]**: stats `DEFEATED_BRICK`, tracker; then by mode:
endless/opener-scenario → `loadNextBrick`; challenge → if `currentWave == brickScenario.count`
set `challengeIsOver` (update loop then waits until every target is in state 5 or 999 and calls
`goToScoreScreen`), else `loadNextBrick`; mode 4 → `goToScoreScreen`.

### 5.6 `ADBrickManager update:` 0x1000c37b0 **[R]**

```
if playerIsDead: return
timeElapsed += dt
for brick in bricks: brick.update(dt)       (every brick ever loaded this run, not only the current)
for diamond in diamonds: diamond.update(dt)
passerByManager.update(dt)
if mode == 1:
    powerUpManager.update(dt)
    if nextDiamondTime < 0: randomizeNextDiamondTime(); addDiamond()
    elif not playerIsDead: nextDiamondTime -= dt
minimumSquaredDistance = +inf
for enemy in currentBrick.enemies: if canBeShotAt: minimumSquaredDistance = min(…, enemy.squaredDistance)
challenge-over / opener music checks (above)
```

`-[ADBrick update:]` 0x1000a0ed0: `timeInBrick += dt`; update enemies and sounds; power-up
`spawn_time` crossing (`timeInBrick - dt < t <= timeInBrick`) → `tryToPopPowerUpContainer`;
`force_spawn_time` crossing → `forceToPopPowerUpContainerWithType:` (`FIREWORKS`→2, `MINIGUN`→1,
`TESLA`→4, `TORNADO`→3, other→0). **[R]**

### 5.7 Diamonds (Endless only) **[R]**

* `randomizeNextDiamondTime` 0x1000c78ec: `nextDiamondTime = rand() % 30 + 40` seconds
* `addDiamond` 0x1000c7748: `ADDiamondDropper "Diamond"`, angle `a = rand() % 360`,
  position `(cos(a)·9, sin(a)·9)`, tag `300000 + n`, state 0 with `spawn_time 2`
* `revive` 0x1000c7558: clears the current brick, loads the next one, `nextDiamondTime += 10`

### 5.8 Player death, revive, game over **[R]**

* An enemy reaching attack range posts `PLAYER_DIED` and calls `attack` (§6.3).
* `stopAllEnemiesAfterPlayerDeathByEnemyWithName:` 0x1000c71b4: clean passers-by, death overlay,
  `playerIsDead = YES`, every brick `stopAllEnemiesAfterPlayerDeath` (tracker + `stopAfterPlayerWasKilled`
  on each enemy), same for sounds and passers-by.
* After the attack sound ends (`afterAttackSound` 0x1000605f4): mode 2 → `gameOver`; mode 1 → `showReviveView`.
* `gameOver` 0x1000c75b0: missions `playerDied`, `endGameplay`; mode 1 → `quitGameplayWithFail`,
  mode 2 → `goToChallengeFailedScreen`, mode 3 → `quitGameplayWithFail`.

---

## 6. Enemies — `ADEnemy`

### 6.1 Definition — `enemies.plist` **[D]** read by `initWithName:` 0x10005ddd4 **[R]**

Keys per enemy: `displayName, life, speed, agressiveSpeed (defaults to speed), score, comboBonus,
coinsReward, ambiant, explosion{…}, shield{shieldTime, damagesBeforeShield}, dodge{dodgeTime, dodgeSpeed},
circling{circlingFactor}, berserk{disappearAfter, berserkSpeed}, grab, pauseTime,
bestiary{Strength, Unlock requirement, Sound name, Bio}, Killed, Casualty`.

At creation: `attackDistance = 0.3`; `maxLife = life`; state −1; `spawn_sound_duration = 1`;
then `life *= modifiers.enemiLifeModifier`, `speed *= modifiers.enemiSpeedModifier`
(`maxLife` keeps the unmodified value; `agressiveSpeed` is not modified). Playlist = `soundsPrefix`. **[R]**

35 enemies ship: Zombie/B/C, WeakZombie/B/C/D, QuietZombie, Runner/B/C (display "Snufflehog"),
Chainsaw, Berserk, Colossus, Hulk/HulkB, Shield, Dodge/DodgeB, Farty/FartyB, Clown, Bob, Jim, Ted,
Cow/2/3, Car/2/3, Jukebox, Machine, PowerUpContainer, Diamond. **[D]**

### 6.2 Geometry **[R]**

* The **player is the origin**; enemies live in a 2-D plane (`position` CGPoint, game units).
* `setPositionFromDictionary:` 0x10005e624: `θ = (spawn_angle + randomAdditionalSpawnAngle)·π/180`,
  `position = (spawn_distance·sin θ, spawn_distance·cos θ)`; then `updateOrientation`; enemies with a
  `circling` dict (and not `dodge`) also `randomizeNormalAngle` + `updateNormalOrientation`.
  (`π` is the float constant 3.14159265.)
* `updateOrientation` 0x10005e8e4: `orientation = -position / |position|` (unit vector towards the
  player); `angleFromPlayer = atan2(pos.y/|pos|, pos.x/|pos|)`.
* `setPosition:` 0x10005ea80: moves the current sound (`setPlanar:{x, y, 0}`) and stores
  `squaredDistance = x² + y²`. Every `update:` also re-sends the sound position.
* `randomizeNormalAngle` 0x10005e9b0: `normalAngle = table[rand() & 1]` (two-entry float table at
  0x100181c28 — the ±90° choice).
* `updateNormalOrientation` 0x10005e9ec: `normalOrientation = rotate(orientation, normalAngle)`:
  `(ox·cos a − oy·sin a, oy·cos a + ox·sin a)`, then `updateOrientation`.

### 6.3 State machine — `update:` 0x10005eb94 **[R]**

`state` values and what `update:dt` does (movement is always `position += dt · dir · speed`):

| state | name (entering method) | behaviour each tick |
|---|---|---|
| −1 | idle / waiting / finished | nothing |
| 0 | spawn countdown | at `timeInState > spawn_time − 2` ask the brick to load this enemy's playlist once; at `timeInState > spawn_time`: if playlist activated → `spawn`, else log and `setPlaylistActivated:YES` |
| 1 | `spawn` 0x10005fbc0 | `spawn` plays `*_spawn` once (spatialized) and stores its duration in `spawn_sound_duration`; each tick: if that duration is 0 → call `spawn` again; else once `timeInState > spawn_sound_duration`: `squaredDistance < 9` → `aggressive`, otherwise → `walk` |
| 2 | `walk` 0x10005fe0c (loop `*_approach_*`) | direction = `orientation`, or for circling enemies `(1−f)·orientation + f·normalOrientation` with `f = circlingFactor`; **berserk enemies walk with the negated direction (away)**; after moving: `squaredDistance < 9` → berserk enemies `transitionToBerserk`, others `aggressive`; circling enemies re-aim (`updateOrientation`, `updateNormalOrientation`); berserk enemies: `timeInState > disappearAfter` → `berserkGoAway`, or `squaredDistance > 144` → `berserkGoAway` |
| 3 | `aggressive` 0x10005ffd4 (loop `*_aggressive*`) | `speed = agressiveSpeed`, move along `orientation`; `squaredDistance < attackDistance²` (0.09) → post `PLAYER_DIED` and `attack` |
| 4 | `attack` 0x100060304 | `speed = 0` |
| 5 | exploding (`die` of an enemy with an `explosion` dict) | after 0.1 s → state 999 |
| 6 | `protect` 0x10005ff4c (shield) | after `shieldTime` play `*_shieldup` once, remember its duration; after `shieldTime + duration` → `walk` |
| 7 | `dodge` 0x10005fefc | for `dodgeTime`: move along `normalOrientation · dodgeSpeed`, then `updateOrientation`; afterwards `walk` + `randomizeNormalAngle` + `updateNormalOrientation` |
| 8 | `berserk` 0x100060824 | `speed = berserkSpeed`, loop `*_aggressive`; move towards player; `squaredDistance < 0.09` → `attack` |
| 9 | `transitionToBerserk` 0x10006077c | `speed = 0`, play `*_transition`; when `timeInState > sound.duration` → `berserk` |
| 999 | dying | after 0.1 s and once the pain/death sound finished: `checkPlaylistDeactivation`, state −1 |

State changes reset `timeInState` (`setState:` 0x10005fb04). `aggressive` with the **Tesla** roulette
modifier active kills the enemy instantly (plays `roulette_tesla_SPA` at the enemy, clears the modifier). **[R]**

`attack` 0x100060304: unless the player is already dead: state 4, play `*_attack` **non-spatialized**
at gain **1.3**, `stopAllEnemiesAfterPlayerDeathByEnemyWithName:`, and when the sound ends
→ `afterAttackSound` (state −1; mode 2 → `gameOver`, mode 1 → `showReviveView`). **[R]**

`canBeShotAt` 0x100061f68: `life > 0` and state ∉ {0, 999, −1}. **[R]**

### 6.4 Taking damage **[R]**

`hitByWeapon:` 0x100060b30 (bullets / melee):

```
if brickManager.playerIsDead: return
if state == 6 (shield up): play "shieldimpact" at the enemy, gain 17.5; return
dmg = weapon.damages
if weapon.dispersal < 99:
    fixed = dmg * (dispersal / 100)
    dmg = fixed + (1 - squaredDistance / (range*range)) * (dmg - fixed)
if nextShotWillBeCritical: dmg *= weapon.criticalMultiplier
elif nextShotWillBePrecise: dmg *= 1.3
dmg *= melee ? modifiers.meleeDamagesModifier : modifiers.gunDamagesModifier
life = life - dmg                          (setLife:)
playImpactAndHitSoundForDamages:dmg melee:isMelee
if dodge dict and life > 0: dodge
elif berserk dict and life > 0: transitionToBerserk
```

`hitByProjectile:` 0x100061098 → `hitByExplosionAtPosition:(projectile.position)
withDamages:(weapon.damages * gunDamagesModifier) dispersal:weapon.dispersal radius:projectile.explosionRadius`.

`hitByExplosionAtPosition:withDamages:dispersal:radius:powerupname:` 0x100061284:

```
dmg = damages
if dispersal < 99:
    d2 = |position - epicentre|²
    falloff = 1 - (d2 / radius) * radius        # QUIRK: == 1 - d2, radius cancels out
    if falloff < 0: falloff = 0
    fixed = dmg * dispersal / 100
    dmg = fixed + (dmg - fixed) * falloff
life -= dmg
after 0.2 + (random() % 50)/200 s (main queue): playHitSoundForDamages:
```

`setLife:` 0x100061a00: if the value drops and the enemy has a shield dict,
`shieldDamagesTaken += old − new`; store; `≤ 0` → `die`. **[R]**

`die` 0x100061ac8: (unless player dead) explosion dict → `explode` (brick manager
`solveExplosionWithDictionary:` at the enemy's position) and state 5, otherwise state 999; speed 0, stop sound; ambience
`enemyWithAmbiantNameKilled:`; `soundOrEnemyWithNameWasDeactivated:`; "Diamond" in challenge mode
→ stats `UPDATE_DIAMONDS 1`. **[R]**

`blowAway:d` 0x100061fe8: `position -= d · orientation` (pushed away from the player). **[R]**

### 6.5 Enemy sounds **[R]**

`playAnySoundContaining:looping:spatialized:` 0x100062420: stops the current sound, picks
`[playlist anySoundContaining:]`; when looping and the playlist has several matches, an end
callback re-picks a *different* matching sound each time. Spatialized → planar position, **gain 3.5**,
reverb send on with wet gain 1 (`setReverbAndWetBalanceOnSound:`); non-spatialized → **gain 0.5**.
Returns the sound's duration.

`playImpactAndHitSoundForDamages:melee:` 0x10006150c (guns only for the impact part): enemy's own
`impact_` sounds if `useOwnImpactSounds`, else playlist `impact`: `impactmulti_<n>` when
`multiHitFactor ≥ 2`, `impact_` if still alive, `KillConfirm_` if killed; spatialized at the enemy,
**gain = (|position| / 10) · 5**. Then the pain sound after a delay (random when `multiHitFactor == −1`).

`playHitSoundForDamages:` 0x100062db8: dead → explosion sound (gain 15) or `playDeathSound`; else,
unless a pain sound is playing: walking shielded enemies past `damagesBeforeShield` use `_shielddown_`
(falls back to `_hit_`), others `_hit_`; gain 5; stops `_approach`/`_aggressive` loops; when the pain
sound ends → `protect` (shield) or `walkOrAgressive`.

`playDeathSound` 0x100063688: critical kill → `death_crit` / `_diecrit_`, else `_death_` / `_die_`;
gain 4, spatialized.

Positioning convention for spawned things: `(d·sin θ, d·cos θ)` for plist angles (enemies,
`ADSound`); diamonds use `(cos a·9, sin a·9)` with a random angle. **[R]**

---

## 7. Brick narration sounds — `ADSound` **[R]**

`initWithDictionary:` 0x1000b2d68 reads `name, spawn_after, spawn_time, speed, gain, loop, blocker,
skippable, stopsOtherSounds, startMusicBeforeEnd`, then **unconditionally `speed = 2`** (QUIRK: the
plist `speed` is ignored). Position from `spawn_angle/spawn_distance` (`d·sin, d·cos`) or from
`position` (+ optional `finalPosition`, giving a unit `orientation` towards it). Playlist = current
brick name. State **1** if `spawn_time ≠ 0`, else **0**.

`initSound` 0x1000b3594 substitutes placeholders in the sound name before looking it up:
`BUTTONMODE` → `buttonMode` / `gestureMode`; `CONTROLMODE` → `gyroMode` (scheme 1) / `swipeMode` (2) /
`tiltMode` (3).

States: 0 waiting for trigger, 1 countdown, 2 playing, 3 finished.

* `update:` 0x1000b3914: state 1 → play when `timeInState > spawn_time`; state 2 → start the menu theme
  once when `timeInState > duration − startMusicBeforeEnd`; finish when `timeInState > duration`
  (sounds with duration 0 are only treated as finished if named `silence`); moving sounds step
  `position += dt·orientation·speed` and stop when they stop getting closer to `finalPosition`.
* `play` 0x1000b416c: `stopsOtherSounds` → stop all brick sounds; non-zero position → spatialized at
  `{x, y, 0}`; `play:loop`; `gain > 0` → set gain; state 2; `checkSpawnOnStart:name`.
* `finishSoundWithSkip:` 0x1000b4060: stop, state 3, `soundOrEnemyWithNameWasDeactivated:name withSkip:`.
* Skipping: the gameplay skip button → `skipSkippableSounds` → `skip` on every playing skippable sound.
  `hasSkippableSoundsPlaying` counts skippable sounds in state 2 with `timeInState > 0.15`.

---

## 8. Weapons — `ADWeaponManager`, `ADWeapon`, `ADMeleeWeapon`, `ADProjectile`

### 8.1 Data — `Weapons.plist` **[D]**

`{"Weapons": [...15], "PowerUps": [...]}`. Each weapon: `name, displayName, description, range,
multihit, continuousFire, explosive, melee, price | priceInDiamonds, level_1..level_4{…}`.
Per level: `capacity, fireRate, spread, criticalChance, criticalSpread, criticalMultiplier,
continuous_spread, damages, dispersal, reloadTime, projectileSpeed, timeBeforeExplode,
explosionRadius, switch, upgradeCost | upgradeCostInDiamonds`. Many numbers are stored as strings
(`"0.30"`, `"15,000"`) and read with `floatValue`/`intValue` — `"15,000"` parses as **15**. QUIRK.

| name | display | kind | range | notes |
|---|---|---|---|---|
| pistol | Revolver | gun | 11 | starter |
| microsmg | Micro SMG | continuous | 11 | starter |
| sawnoff | Sawn-off Shotgun | multihit | 11 | dispersal 1 (strong distance falloff) |
| hunting | Hunting Rifle | gun | 11 | |
| tactical | Tactical Rifle | continuous | 11 | |
| grenade | Grenade Launcher | explosive projectile | 11 | projectileSpeed 30, timeBeforeExplode 1.5 |
| policeshotgun | Police Shotgun | multihit | 11 | |
| bazooka | Bazooka | explosive projectile | 15 | projectileSpeed 4 |
| machinegun | Machine Gun | continuous | 11 | |
| sonic | Sonic Cannon | gun | 11 | priceInDiamonds 100 |
| wok, banjo, golf, prod, claymore | melee | melee | 3 | wok is the starter melee |

### 8.2 `ADWeapon initWithDictionary:` 0x100013f94 **[R]**

* level = `[ADInventory levelForWeaponWithName:]`, stats read from `level_<n>`
* `dispersal` defaults to **100** when the key is missing; `switchingTime = 1`;
  `bulletsInClip = capacity`; `bulletsTotal = INT_MAX` (challenge weapon lists override with `ammo`)
* sound prefixes `weapon_gun_<name>_fire` / `_empty`; playlist named after the weapon, activated
* modifiers: `goldenBullet` → `capacity += max(1, capacity/5)`; `lessBullets` → `capacity -= max(1, capacity/5)` (min 1);
  `spread += spreadModifier` and `continuous_spread += spreadModifier` (±5);
  `criticalChance *= headShotModifier`
* `lastAnnouncerSpeech = 5`

### 8.3 Weapon state machine — `update:` 0x100014c8c **[R]**

**Timing QUIRK:** `timeInState` and `lastAnnouncerSpeech` advance by *measured wall-clock time*
(`CACurrentMediaTime()` now − previous tick), not by the dt argument. `fireRateTimer` advances by dt (0.01).

| state | meaning | tick |
|---|---|---|
| 0 | idle | stop a still-playing continuous loop |
| 1 | deploying (`deploy`) | after `switchingTime` (1 s) → 0 |
| 2 | single-shot cooldown | after `fireRate` → 0 |
| 3 | continuous firing | every `fireRate` (on `fireRateTimer`): `resolveShoot`; if it fails → click sound, stop loops, state 5; `timeInContinous = timeInState` |
| 4 | continuous release | once `timeInState + timeInContinous > 0.2` → stop loops, state 0, `playContinuousTail` |
| 5 | continuous with empty clip | every `fireRate`: restart timer, click |
| 6 | (dropping magazine) | after 0.1 s → state 7 / `bulletsInClip = 0` |
| 7 | — | nothing |
| 8 | reloading | after `reloadTime` → state 0, `bulletsInClip = min(bulletsTotal, capacity)`, `weaponDidFinishReloading` |

* `readyToShoot` 0x10001537c: state ∉ {1, 2, 6, 8}.
* `changeState:` 0x100015148: entering 2 only if `readyToShoot`.
* `singleShot` 0x10001540c: ready → `resolveShoot` → `playSingleShootSound` + state 2; clip empty → `playClickSound`.
* `resolveShoot` 0x100015a1c: needs `bulletsInClip ≥ 1` and `bulletsTotal ≥ 1`; decrements both, counts
  `numShotsFired`; `rustyWeapons` → `rand()%100 == 1` empties the clip; the continuous warning loop is
  made audible when `bulletsInClip ≤ capacity·0.2`; then `[weaponManager shot]`.
* `continuousStart` 0x1000154a4: non-continuous weapons → `singleShot`; else state 3, loop
  `weapon_gun_<name>_conti*` (non-spatial, gain 0.6, looping) and `…_warningloop*` (gain 0).
  `continuousStop` 0x1000157f8: state 3 → 4, state 5 → 0.
* `playSingleShootSound` 0x100015c80: `_fire_` sound; when low (≤ 20 % of capacity) also `_warning`;
  non-spatial, gain 0.6.
* `playClickSound` 0x100015f0c: `weapon_gun_<name>_empty*`; with the announcer on and > 5 s since the last
  line: announcer `reload…` (if bullets remain in reserve) or `outofammo…`.
* `reload` 0x1000161cc: if bullets remain and not reloading: `…_reloadfull` (gain 0.6), state 8;
  otherwise announcer `outofammo` (5 s rate limit). `interruptReload` stops the sound, state 0.
* `deploy` 0x1000166e4: state 1, `…_deploy` gain 0.6, announcer `…_voice` when enabled.

### 8.4 Melee — `ADMeleeWeapon` **[R]**

`singleShot` → state 2 + `[weaponManager didShotWithMelee]` → `ADBrickManager shotWithWeapon:meleeWeapon`.
`update:` returns to 0 after `fireRate` (dt-based here). Hit/miss sounds `_hit_` / `_miss_`, non-spatial, gain 0.8.

### 8.5 `ADWeaponManager` **[R]**

* Loadouts: `initWithWeaponsFromArmory` (Endless: `ADInventory weaponSlot1`, `weaponSlot2`, `weaponSlotMelee`),
  `initWithChallengeWeaponArray:` / `initWithWeaponDictionary:` (challenge `weapons` list, `ammo` → `bulletsTotal`),
  `initWithWeaponList:`. The first gun is current.
* `update:` → current weapon, every projectile, the power-up, the melee weapon.
* `weaponSingleShot` / `continuousStart` require `isWeaponReadyToShoot` (melee not mid-swing and current weapon ready).
* `selectNextWeapon` 0x1000a9e04: state 6 or 8 → `interruptReload`; index = (index+1) wrapping; `deploy`.
* `shootWithMelee` 0x1000aaa98: interrupts a reload, then melee `singleShot` if ready.
* `reloadGestureDown` / `reloadGestureUp` → `reload`.
* `shot` 0x1000aa15c: explosive → `createProjectileForCurrentWeapon`, else `ADBrickManager shotWithWeapon:`.

### 8.6 Hit resolution — `ADBrickManager` **[R]**

`calculateHitEnemiesWithWeapon:FromAngle:` 0x1000c41c4 with `angle = S3DEngine.headOrientation` (radians):

```
head = ((int)((head + π)·180/π)) % 360, negative → +360
for target in allPotentialTargets (brick enemies + diamonds + passers-by) if canBeShotAt:
    multiHitFactor = 0; nextShotWillBeCritical = NO; nextShotWillBePrecise = NO
    a = ((int)((target.angleFromPlayer + π)·180/π)) % 360, negative → +360
    inSpread = |head − a| < spread  or  |a − head| > 360 − spread
    if not inSpread or squaredDistance > range²: skip
    if |head − a| < criticalSpread  or  |a − head| > 360 − criticalSpread:
        if random() % 100 < criticalChance and not modifiers.noCritical:
            critical = YES; playerDidACriticalHit; stats UPDATE_WEAPON_DATA / UPDATE_CRITICAL_HITS
        else:
            precise = YES
    if modifiers.luckyShots and random() % 100 == 1: critical = YES
    multihit weapon: add every such target
    else: keep only one — the closest in angle, ties broken by squaredDistance
```

`shotWithWeapon:` 0x1000c4dfc: on multihit weapons `multiHitFactor = hitCount`; `hitByWeapon:` on each;
stats (`UPDATE_WEAPON_DATA`, `UPDATE_MELEE_WEAPON_DATA`; a miss sends `DECREMENT_COMBO`), tracker;
melee plays hit/miss; guns → `checkDeathsForHitEnemies:withWeaponName:`.

`checkDeathsForHitEnemies:` 0x1000c66a4: for each dead target → `playerKilledEnemy:withCombo:`,
missions `enemiKilled:withWeapon:`, stats `UPDATE_KILLED_ENEMY_WITH_WEAPON` (or `…_POWERUP`), tracker;
then missions `playerShotWithWeapon:hitEnemi:`.

`solveExplosionWithDictionary:atPosition:withWeaponName:ignoreTinnitus:` 0x1000c5c40: every target
with `|pos − p|² < radius²` → `hitByExplosionAtPosition:…`; unless ignoring tinnitus, an explosion
closer than 5 units to the player (`|p|² < 25`) → `player startTinitusWithIntensity:(1 − |p|²/25)`.

### 8.7 Projectiles **[R]**

`createProjectileForCurrentWeapon` 0x1000aa3ec, direction `(cos head, sin head)`:

* target `E = targetEnemiForExplosiveWeapon:` (closest shootable target inside `spread` and `range`;
  inside `criticalSpread` it is flagged critical = direct hit)
* with a target: `d = |E|`; if not direct: `d −= timeBeforeExplode · E.speed`;
  `t = d / (E.speed + projectileSpeed)`; `ttl = t` (direct) or `t + timeBeforeExplode`;
  `squaredDistanceToCover = (t · projectileSpeed)²`
* no target: `squaredDistanceToCover = range²`, `ttl = timeBeforeExplode`

`ADProjectile` (`initWithSpeed:squaredDistanceToCover:timeToLive:soundsPrefix:orientation:` 0x100053660):
starts at the origin, `explosionRadius = 5`, loops `_move_` spatialized.
`update:` 0x100053804: state 1 moves until the next step would exceed the distance, then
`ttl ≤ 0.05` → `explode` (state 3) else `_timer` countdown sound, state 2; state 2 explodes when
`ttl < 0`; state 3 → −1 after 3 s. `ttl −= dt` every tick. `explode` plays `_explosion_` at gain 10
and calls `solveExplosionOfProjectile:` (radius = projectile radius, damages/dispersal from the weapon).

---

## 9. Input and controls

### 9.1 Orientation = scroll offset **[R]**

`ADInfiniteScrollView` (3 tiled background images, width `imageWidth`) is the heading dial.
`sendOffsetToDelegate` 0x10009ca34:

```
headOrientation = s · (1 − ((int)contentOffset.x % (int)imageWidth) / imageWidth) · 2π
s = −1 for control scheme 2 (swipe), +1 otherwise          → [S3DEngine setHeadOrientation:]
```

* swipe: `playerSwiped:dx` → `offset += (dx / 5.68889)·(π/180)/(2π) · imageWidth` — i.e. **5.68889 points per degree** (2048 = 360°)
* gyro (scheme 1): `offset += (yawDelta / −2π) · imageWidth`
* tilt (scheme 3): `offset += sensivity · tiltAngle · −15`
* `adjustOffset` keeps the offset between 0.5 and 1.5 image widths.

`ADMotionManager` 0x100005830: CoreMotion at **1/70 s** (0.0142857); yaw difference and pitch-based tilt.

### 9.2 Control schemes and modes **[R]**

`ADGameParameters.controlScheme`: 1 gyro, 2 swipe, 3 tilt. `buttonMode`: on-screen buttons vs gestures.
Brick narration names substitute `CONTROLMODE` / `BUTTONMODE` accordingly (§7).

### 9.3 Sighted layout — `ADButtonWithSwipe` / `ADWeaponTouchArea` **[R]**

* tap (released before **0.28 s**, no swipe) → `weaponSingleShot`, then the nib action of the button
* hold ≥ 0.28 s without swiping → `continuousStart`; release → `continuousStop`
* pan (swipe scheme) → `panDetected:` (turn); three-finger tap (gesture mode) → melee
* weapon touch area: swipe up → `selectNextWeapon`, swipe down → `reloadGestureDown`
* shake: `ADShakeDetector` (CoreMotion 0.1 s): `|userAcceleration.x| > 0.7` or `|z| > 0.7` → melee (gesture mode, player alive);
  the `motionEnded:` shake event also → melee

### 9.4 VoiceOver layout — `ADAccessibleGameView` 0x100089eb0 **[R]**

Created only when VoiceOver is running; a full-screen view with direct-interaction traits.

| gesture | gesture mode | button mode |
|---|---|---|
| one-finger horizontal drag (scheme 2) | turn (`touchesMoveDetected:`; > 30 pt counts as a swipe) | same |
| swipe up | next weapon | — |
| swipe down | reload | — |
| three-finger tap | melee | — |
| tap (< 0.2 s, no swipe) | single shot | quadrant: top-left melee · top-right `continuousStart` · bottom-left next weapon · bottom-right reload |
| hold ≥ 0.2 s | auto fire (`continuousStart`) until release | only in the top-right quadrant |

---

## 10. Player, heartbeat, tinnitus — `ADPlayer` **[R]**

`init` 0x1000b647c activates playlists `tinnitus` and `player`.

`update:dt` 0x1000b660c:

```
totalTime += dt
if tinnitusDuration > 0:
    if tinnitusTimer < tinnitusDuration:
        tinnitusTimer += dt
        if tinnitusTimer > 0.8·tinnitusDuration:
            k = 1 − tinnitusTimer/tinnitusDuration
            tinnitusSound.gain = k · tinnitusIntensity / 0.2
            engine.reverbVolume = k·5/0.2 + 1
    else: stopTinnitus; tinnitusDuration = 0
if not playerIsDead and minimumSquaredDistance < 9:          # nearest shootable enemy within 3 units
    t = min((minimumSquaredDistance − 0.09)/7.29, 1)
    closeness = (t < 0) ? 1 : 1 − t
    proximity_bpm = closeness·60 + 120                        # 120..180 bpm
    if totalTime > lastHeartbeat + 60/proximity_bpm:
        lastHeartbeat = totalTime
        play player "heart*" with gain closeness²·0.7 + 0.3
```

* `startTinitusWithIntensity:i` 0x1000b6940 → `startTinnitusWithDuration:(i·10 + 3) gain:(i·0.8 + 0.1)`
* `startTinnitusWithDuration:gain:` 0x1000b6984 (only if none active): play `tinnitus_and_background`,
  set gain; reverb room `g·0.6 + 1.5`, dampening **10**, volume `g·3 + 3`
* `stopTinnitus` 0x1000b6b4c: room 1.5, dampening 50

---

## 11. Game modifiers — `ADGameModifiers` **[R]**

Singleton; `resetModifiers` 0x1000de1f0 clears every flag and sets `difficultyModifier = 1`. It also
checks the **full moon** at creation (`checkFullMoon` 0x1000de9e8: seconds since 7 Jan 1970 at the
current time of day, modulo the synodic month 0x26ee93 s ≈ 29.53 days, phase logged), read by
`ADDiamondDropper die` and the main menu.

Flags (set by Tarot cards / Roulette, §12): slowerEnemies, weakerEnemies, moreDamages, moreMeleeDamages,
moreBullets, freeRevive, luckyShots, metalDetector, tesla, goldenBullet, widerSpread, moreHeadshots,
baseComboBonus, morePowerUps, betterPowerUps, jukebox, strongerEnemies, cows, storm, lessMeleeDamages,
lessHeadshots, rustyWeapons, cars, enragedHorde, narrowedSpread, machine, lessDamages, lessBullets,
noCritical, fasterReloadTime, slowerReloadTime, fasterEnemies.

| derived value | formula | read by |
|---|---|---|
| `enemiLifeModifier` | `((weaker ? 0.9 : 1) + (stronger ? 0.2 : 0)) · difficultyModifier` | `ADEnemy initWithName:` |
| `enemiSpeedModifier` | `((faster ? 1.2 : 1) − (slower ? 0.1 : 0)) · difficultyModifier` | `ADEnemy initWithName:` |
| `gunDamagesModifier` | `(more ? 1.1 : 1) − (less ? 0.1 : 0)` | `hitByWeapon:`, `hitByProjectile:` |
| `meleeDamagesModifier` | `(more ? 1.25 : 1) − (less ? 0.25 : 0)` | `hitByWeapon:` |
| `headShotModifier` | `(more ? 1.5 : 1) − (less ? 0.5 : 0)` | weapon critical chance |
| `spreadModifier` | `(wider ? 5 : 0) − (narrowed ? 5 : 0)`, added to spread | weapon init |
| `reloadTimeModifier` | `(faster ? 1.2 : 1) − (slower ? 0.2 : 0)` | **only logged — no gameplay effect** (QUIRK) |

`moreBullets` is never read (`goldenBullet` is the flag that adds ammo). Other readers: `baseComboBonus` →
`ADInGameStats startNewLevel:`; `morePowerUps` → `ADPowerUpManager resetPowerUpCooldown`; `betterPowerUps` →
power-up `use`/`preload`; `jukebox`, `cows`, `cars`, `machine` → `ADPasserByManager`; `storm` →
`ADAmbientManager startWithambient:gain:`; `freeRevive` → `showReviveView`; `metalDetector` → end-of-level coins.
`setTesla:` activates/deactivates playlist `tesla`. `difficultyModifier` grows by 0.14 per Endless wave
after wave 11, or on every wave with `enragedHorde`.

---

## 12. Power-ups — `ADPowerUpManager`, `ADPowerUpContainer`, `ADPowerUp` subclasses **[R]**

Data: `Weapons.plist → PowerUps` **[D]**: `frequency` (cooldownTime 90/75/60/45 s per level),
`fireworks` (damages 3/4/5/7), `minigun` (duration 5/7.5/10/12.5 s + `weaponDictionary`),
`tesla` (kills 1/2/3/4, `timeBetweenKills` 1.3), `tornado` (blowDistance 1/2/3/5). Levels come from
`ADInventory levelForPowerUpWithName:`; with `betterPowerUps` the next level's value is used when it exists.

**Cooldown / spawning** (Endless only, via `ADBrickManager update:`):

* `resetPowerUpCooldown` 0x10004b640: `cooldown = frequency.level_n.cooldownTime`, `−10` with `morePowerUps`.
* `update:` 0x10004b5a4: `cooldown −= dt` while the player is alive.
* `tryToPopPowerUp` 0x10004b868 (from a brick's `PowerUp.spawn_time` / `spawn_after`): only when cooldown ≤ 0.
* `popPowerUpWithType:` 0x10004b8c4 (also used directly by `force_spawn_time`): `ADPowerUpContainer
  "PowerUpContainer"`, type (0 random, 1 minigun, 2 fireworks, 3 tornado, 4 tesla), random position at
  distance **5**, tag 200000+n, state 0 with `spawn_time 2`, added as a passer-by; cooldown reset.

**Container** (`ADPowerUpContainer`, a passer-by / "slot machine"):
`spawn` → `[ADWeaponManager initPowerUp:type]` (0 → `initRandomPowerUp`); plays its spawn sound, then
`startBeeping` (state 601); after **15 s** in 601 → `removePowerUp` (state −1, tracker "powerUpMissed").
Only shootable in state 601 (`canBeShotAt`). Shooting it dead → `[ADWeaponManager usePowerUp]` → `[powerUp activate]`.

`ADPowerUp activate` 0x10001db08: plays the power-up's `announce` sound (muted when the announcer is off)
and calls `use` when it ends.

| power-up | `use` / `update:` |
|---|---|
| **Minigun** (type 1) | `preload`: builds an `ADWeapon` from `weaponDictionary` and reads the duration. `use`: loop `minigun_fire` (gain 0.4). `update:` after **1.5 s** fires `shotWithSpecialWeapon:` (auto-aimed at `headOrientation`, no ammo) every `fireRate` (0.2) until `duration`; then `minigun_tail` (gain 0.4). |
| **Fireworks** (type 2) | `use`: `fireworks_launch`; radius **10**, damages = level value, dispersal **50**; an immediate explosion with **2 × damages** at the player (origin); then after 1 s, bursts every `4/7 ± (rand()%100)/200` s until 8 s: sound at a random angle and distance 2–4, **damage centred on the player** (`CGPointZero`), radius 10. |
| **Tornado** (type 3) | `use`: `tornado_launch` (gain 0.5); first wind after **0.5 s**; 4 winds (`nb_wind` 0..3) every `3 ± (rand()%100)/200` s: `wind` sound (gain 4) at a random angle, distance 1–2, and `blowEnemiesAway:(blowDistance · 0.25)` (every shootable target is pushed outwards). |
| **Tesla** (type 4) | `use`: `tesla_launch`; every **2 s** (note: the plist `timeBetweenKills` 1.3 is read but the check uses the constant 2 — QUIRK) kills `closestEnemy` (`setLife:0`) with a `zap` sound (gain 3.5) at its position, up to `kills` times. |
| **Air strike** (`ADAirStrikePowerUp`) | present in code (plane at gain 0.3, 10 explosions of radius 6, damages 20, dispersal 180 walking outward along the heading) but never created by `initPowerUp:` — dead code. |

(The Roulette "Tesla Field" modifier is separate: it kills the first enemy that turns aggressive, §6.3.)

---

## 13. Passers-by and diamonds **[R]**

`ADPasserBy` (subclass of `ADEnemy`, `getType` = 1 so kills are not tracked as enemy kills) —
`update:` 0x10000b770: countdown (state 0) → `spawn`; after the spawn sound → `passBy` (state 201):
moves along its orientation at its speed, re-computes `angleFromPlayer`; beyond **15 units**
(`squaredDistance > 225`) → deactivate, state −1. Brick `PasserBy` entries accept an `orientation` string
containing N/S/E/W to pick the direction.

`ADPasserByManager` (owned by `ADBrickManager`) — `startTimers` (at `loadBrickChancePlist:`) creates
passers-by requested by modifiers:

| modifier | behaviour |
|---|---|
| `cows` | Endless: every `rand()%35 + 15` s a `Cow*` passer-by (a playlist not already on screen) at `setRandomPosition` = `(8, ±(rand()%4 + 4))` heading `(−1, 0)` |
| `cars` | Endless: every `rand()%45 + 25` s an `ADCarAlarm` `Car*` at a random angle, distance 6 |
| `jukebox` | one `ADJukeBox` at a random angle, distance 7, spawn after 2 s |
| `machine` | one `ADMachine` ("slot machine" loop) at a random angle, distance 6, spawn after 2 s |

* `ADCarAlarm`: after spawning → `startAlarm` (loop `alarm*`, gain 2, state 401); dies → gain 4; own impact sounds.
* `ADJukeBox`: plays `jukebox_music_*` (gain 6) in a loop; when hit → `jukebox_hit_*`, state 302 (paused, not shootable) for `pauseTime` (enemies.plist), then `jukebox_resume_*` and music again.
* `ADMachine`: after death (state 5) and 3 s → sleeps `rand()%20 + 35` s (state 502), then life restored and loop restarted.

`ADDiamondDropper` ("Diamond", Endless only, §5.7): spawn → tracker; `update:` states 0 → spawn → glow
(state 101 for **7.5 s**) → state 102 fades the sound out over **2 s** (`gain = t·3.5·0.5`) and disappears;
killed → stats `UPDATE_DIAMONDS` **+1, or +2 on a full moon**, then a follow-up after 5 s.

---

## 14. Ambience — `ADAmbientManager` **[R]**

* `startWithRandomAmbient` 0x100097efc: one of `ambient_ruins`, `ambient_ghosttown`, `ambient_foundry`
  (`rand() % 3`), gain **0.6**.
* `startWithambient:gain:` 0x100098004: with the `storm` modifier the storm playlist also plays
  (`ambient_storm`, streamed loop) and thunder is scheduled every `rand()%30 + 10` s. The chosen playlist
  is activated; its `ambient*` sound plays **non-spatialized, streamed, looping** at the given gain
  (0.6 if 0). Enemy ambience playlist `enemiesAmbiant` is activated. First scare sound after
  `arc4random()%20 + 10` s.
* `update:` 0x10009887c: storm → thunder when due. Otherwise when the scare timer runs out and there are
  **≤ 3 shootable objects** on scene: a random `RANDOM_*` sound, spatialized at a random angle and
  distance 3–5 (`arc4random()%3 + 3`), gain **3**; next in `rand()%10 + 15` s.
* `startBaseSound` plays a `BASE_*` loop spatialized at (4, 0, 0) — only reached from challenge code.
* Enemy ambience (`playEnemyAmbiantWithName:forceStop:` 0x100098fc8): one looping, streamed sound from
  `enemiesAmbiant` at gain **0.085**; `checkAmbiant` picks the current brick's `Ambiant`, else the
  ambience of any living enemy that has one (e.g. Chainsaw → `Chainsaw_ambiant`), else stops.

---

## 15. Score, combo, coins, persistence

### 15.1 Stats bus **[R]**

Gameplay code never touches the stats object directly for most events; it calls the category method
`-[NSObject(StatsNotifier) notifyStatsSystemWithNotificationWithName:AndData:…]` 0x1000bda04, a
nil-terminated variadic that posts an `NSNotification` whose `userInfo["PARAM_ARRAY"]` is the argument list.
`+[ADInGameStats toggleOnOff:]` 0x1000b7df4 (on at `startNewLevel:`, off at `endLevel`) subscribes
`actUponNotification:` 0x10005614c to:

| notification | params | handler effect |
|---|---|---|
| `TIME_ELAPSED` | seconds (0.25 per stats tick) | `timeElapsed +=` |
| `BRICK_TIME_ELAPSED` | seconds | `brickTime +=` |
| `UPDATE_CHALLENGE_TIME_ELAPSED` | seconds | challenge time |
| `UPDATE_WEAPON_DATA` | name, fired, hit, killed, critical, time | per-weapon `shotsFired/shotsHit/kills`, critical count by display name, `timeSpentWithWeapon`; **a fired shot that did not hit → `decrementCombo`** |
| `UPDATE_MELEE_WEAPON_DATA` | name, hit | melee swings/hits + the weapon update above |
| `UPDATE_KILLED_ENEMY_WITH_WEAPON` | weapon, enemy | weapon kill + `killedEnemi:` (not for passers-by, `getType == 1`) |
| `UPDATE_KILLED_ENEMY_POWERUP` | enemy, … | `killedEnemi:` |
| `PLAYER_DIED` | enemy name | `death = YES`, enemy `Casualty += 1` |
| `UPDATE_DIAMONDS` | count | `diamondLoot +=` |
| `UPDATE_COINS_FOR_KILL` | — | subscribed; no handler branch |

`SET_BRICK_NAME`, `DEFEATED_BRICK`, `RESET_BRICK_TIME`, `DECREMENT_COMBO`, `UPDATE_CRITICAL_HITS` are
posted but not subscribed (or subscribed with an empty branch) — no effect. **[R]**

### 15.2 Combo and score **[R]**

* `startNewLevel:mode` 0x1000b83d4 (mode `"ENDLESS"` / `"CHALLENGE"`): all counters 0, **combo = 10**
  (**20** with the `baseComboBonus` modifier), enemy list from `enemies.plist`, per-weapon data from `Weapons.plist`.
* `killedEnemi:` 0x1000b9b60: enemy `Killed += 1`, `numberOfEnemyKills += 1`,
  **`combo += enemy.comboBonus`**, `coinsForKill += enemy.coinsReward`,
  **`gameScore += (enemy.score >= 2 ? enemy.score × combo : combo)`** (combo after the bonus).
* `decrementCombo` 0x1000ba240: `combo −= 1` down to 0 (on every missed shot or melee swing).
* `setCombo:` keeps `highestCombo = max`. Revive resets combo to 10.
* HUD: `updateScoreViewWithAnimation:` rolls the displayed score towards `gameScore` in steps of
  1000/100/10/1 per call (100 Hz and 20 Hz timers), combo shown as `x N`.

### 15.3 End of a run **[R]**

`-[ADGameplayViewController killGameplay]` 0x10005c170 (via `goToScoreScreen`): stop timers and
ambience, after 0.1 s clean weapons and bricks; unless opener: `endLevel`, `saveStats`,
`[ADPersistentStats saveScore:gameScore]`, tracker; then `goToGameOverEndless`.

`endLevel` 0x1000b89f0 — **coins earned**:

```
if coinsForKill > 0:
    totalCoins = coinsForKill + highestCombo + (int)(timeElapsed² / 200 · accuracy)
if modifiers.metalDetector: totalCoins = (uint)(totalCoins · 1.15)
```

`accuracy = shotsOnTarget / totalShotsFired` (0 when nothing fired); those two totals are filled from the
per-weapon data by `filterWeaponsByShotsFired` during `endLevel`.

Revive (`showReviveView` 0x10005ba78): cost **`(int)2^(nbRevives − freeRevive)`** (1, 2, 4, … ;
free the first time with the Free Revive modifier); ambience stops. `revive` 0x10005bec0: combo 10,
`ADBrickManager revive` (next brick, diamond timer +10 s), ambience restarted.

### 15.4 Save data (NSUserDefaults) **[R]**

| key | written by | content |
|---|---|---|
| `weaponDictionary` | `ADInventory saveWeaponDictionary` | array of `{name, purchased, level}` |
| `powerupsDictionary` | same | array of `{name, level}` |
| `weaponSlot1`, `weaponSlot2`, `weaponSlotMelee`, `powerupSlot` | slot setters | weapon names |
| `coins`, `diamonds` | `setCoins:` / `setDiamonds:` (spending also adds to totals stats) | integers |
| `ENEMY_DATA` | `ADPersistentStats` | `{displayName: {Killed, Casualty}}` |
| `TOTALS_DATA` | `ADPersistentStats` | seeded from `totalsStats.plist`: Money earned, Best score, Total kills, Best number of kills, play times, shots, deaths, missions, diamonds… |
| `WEAPON_DATA` | `ADPersistentStats` | per-weapon shots/hits/kills |
| `TOTAL_TIME_PLAYED` | `ADPersistentStats` | string |
| `highscore` | `saveScore:` | best `gameScore` |
| `GAME_SESSION` | `ADInGameStats saveGameSessionStats` | archived session |

**New save** (`createOrRestoreWeaponDictionary` 0x10000c1c4): **coins 5000, diamonds 500**; every weapon
with no `price` and no `priceInDiamonds` is purchased at level 1; the first two free guns fill slots 1/2
and the first free melee fills the melee slot; every power-up at level 1.

### 15.5 Enemy unlocks **[R]**

`getKillRequirementForEnemyWithName:` 0x100084ea8:
`max(0, bestiary."Unlock requirement" − computeTotalEnemyKillCount)`, where the total is the sum of
`Killed` over **all enemies across all runs** (`ENEMY_DATA`). `canUseBrickWithName:` (§5.2) rejects any
brick containing an enemy whose requirement is still > 0 — so the Endless difficulty curve is gated by
lifetime kills (e.g. Berserk 250, Colossus 450).
QUIRK: `ENEMY_DATA` is keyed by display name while `enemies.plist` is keyed by internal name, so the
encyclopedia's `getAllUnlockedEnemies` only sees a requirement for enemies whose display name equals their
key (Zombie, Berserk, Colossus, Chainsaw, …); brick selection uses internal names and is unaffected.

---

## 16. Missions, challenges, Tarot, Roulette, settings

### 16.1 Missions — `ADMissionManager`, `ADMission` **[R]**

`Missions.plist` **[D]**: 50 missions `{type, objective, reward, skipCost, description, singleLife, weapon, enemy, objective_Zombie}`;
types: kill 31, survive 7, upgrade 4, shoot 4, die 3, accuracy 1.

* 3 missions are active at a time, taken in plist order (`currentMissionIndex`, wrapping); saved as a
  keyed archive under `missionArray` + `currentMissionIndex`. `replaceMission:` swaps in the next one.
* Every hook (`startGameplay`, `enemiKilled:withWeapon:`, `playerShotWithWeapon:hitEnemi:`,
  `upgradeWeaponToLevel:`, `endGameplay`, …) **does nothing until challenge `tutorial_5` is completed**
  (`playerDied` is the exception — it always forwards).
* `ADMission`: `startGameplay` resets progress for `singleLife` missions and counts an attempt;
  `update:` adds survival time while alive; kill → progression +1 when weapon/enemy filters match;
  shoot → +1 per shot with the matching weapon; die / upgrade → +1.
* `isMissionCompleted` 0x1000453c0: kill/shoot/die/upgrade `progression ≥ objective`;
  survive `survivalTime ≥ objective`; accuracy `progression_zombies ≥ objective_zombies` and
  `currentAccuracy` vs `objective`.
* QUIRKS: the code reads key **`enemi`** but the plist uses **`enemy`** → enemy-specific kill missions count
  any enemy; it reads **`objective_zombie`** but the plist has **`objective_Zombie`** → the accuracy mission's
  kill count requirement is 0.

### 16.2 Challenge mode — `ADChallengeData`, `ADChallengeGameplayViewController` **[R]**

`challenges_index.plist` **[D]** defines four worlds:

| world | stars required | challenges |
|---|---|---|
| Training Arena | 0 | tutorial_1 … tutorial_5 |
| Roman Theater | 13 | tutorial_6 … tutorial_10 |
| City Crossroad | 25 | urban_1 … urban_10 |
| Maya Ruin | 40 | maya_1 … maya_10 |

A challenge plist **[D]** (`maya_1.plist` etc.): `title, objective, tip, icon, icon_title, challenge_id,
ambient{ambientPlaylist, gain}, bricks[…] (played in order, mode 2), weapons[{name, ammo}],
challenges_requirement[…], accuracy_star{objective, reward}, time_limit_star{objective, reward},
mission_star{reward}`.

Progress (`challengeData` in NSUserDefaults, keyed by `challenge_id`): `completed`,
`accuracy_star_unlocked`, `time_limit_star_unlocked` — each worth one star
(`totalStarsUnlockedForWorld:` sums them). `hasChallengeRequirementsForChallengeWithName:` checks every
entry of `challenges_requirement` is completed. `hasWeaponForChallengeWithName:` gates the overview vs
"locked" / "buy weapon" screens.

### 16.3 Tarot (Endless pre-game) **[R]**

`ADTarotViewController`: activates playlist `tarot`, deals cards of levels 1–3 from `Tarot.plist`
(`level_1` 11 cards — soundscape/meta; `level_2` 7 — enemy tuning; `level_3` 12 — weapon tuning), one
random card per level, avoiding a forbidden modifier; the previous deal is remembered (`tarotCard1…`).
Changing a card costs **3 / 2 / 1 diamonds** for level 1 / 2 / 3 and re-draws a different title.
Applying a card: `[ADGameModifiers set<Selector>:YES]` if that setter exists.

### 16.4 Roulette **[R]**

`ADScenarioRouletteViewController`: a bad wheel (`BadRoulette`, 13 items) always spins; a good wheel
(`GoodRoulette`, 11 items) is **free once every 600 s** (`lastGoodNews` timestamp), otherwise
"ROLL FOR 1" costing **30 diamonds**. `applyBothModifiers` applies `set<Selector>:YES` for both results.

Selector audit (every card checked against the setters that exist):
all Tarot cards map to real modifiers; in Roulette, **"Barbarian Serum" (`meleeDamagesModifier`) has no
setter and does nothing** (QUIRK). "Earpiece" uses `bullshit`, which exists.

### 16.5 Settings — `ADGameParameters` (NSUserDefaults) **[R]**

| key | default when absent | notes |
|---|---|---|
| `controlScheme` | **−1** (unset → initial control scheme screen) | 1 gyro, 2 swipe, 3 tilt |
| `buttonMode` | **= VoiceOver running** | |
| `sensivity` | **1.5** | stored with `setInteger:` → becomes **1** after the first save (QUIRK) |
| `announcer` | **YES** | toggles playlist `announcer` |
| `masterGain` | 1 (0 is treated as unset) | forwarded to `S3DEngine setMasterGain:` (overrides the 1.5 set at launch) |
| `debugMapVisible` | NO | developer overlay |
| `lastGoodNews` | distantPast | roulette free-roll timer |

`init` also seeds `srand(time())` and listens for audio-route changes (`AD_MESSAGE_AudioRouteChanged`);
`isHeadsetPluggedIn` looks for "Head" in the route name.

---

## 17. The audio engine — S3D ("Papa Engine") on top of `csl` **[R]**

`-[S3DEngine init]` 0x1000faa60 prints *"Somethin' Else Papa Engine … Version: 1_1_013_2014_07_22_R"*,
pings `licensing.papaengine.com` (irrelevant for a port), creates two serial dispatch queues and builds
the graph:

```
per sound:  CASoundFile ─► [Panner (stereo files)]  ─► gainControl (Mixer) ─┬─► masterMixer (plain)
            CASoundFile ─► SpatialSource ─► Spatializer(kBinaural) ─► gainControl ─┤
                                                                            └─► FanOut ─► dryMixer ─► masterMixer ─► iPhoneIO (AudioUnit)
                                                                                      └─► wetMixer ─► Stereoverb ─┘      (when sendToReverb)
```

Engine defaults at init: head position (0,0,0), orientation 0, `maxSpatialGain` 100 (the game sets 6),
`distanceScale` 1 (game sets 0.8), reverb room 1.5 / volume 1 / dampening 50, master gain 1.

### 17.1 Coordinates — `normalizeToHeadPosition:` 0x1000fa5a8

A sound's `planar` position `(x, y, z)` (the game always passes z = 0) becomes the source position:

```
r  = planar − headPosition                   (headPosition is always 0,0,0 in this game)
ry = (|r| < 0.01) ? 0.05 : r.y
h  = −headOrientation                         (radians, wrapped to 0..2π by setHeadOrientation:)
X  =  (r.x·cos h − ry·sin h) · distanceScale
Y  = −(ry·cos h + r.x·sin h) · distanceScale
Z  =  r.z
spatialSource.setPosition(X, Y, Z)            (csl virtual at vtable+0x78)
```

`setHeadOrientation:`, `setHeadPosition:` and `setDistanceScale:` flag every playing spatial source for a
position update (`S3DEngineDispatcher setNeedsPositionUpdate:`).

### 17.2 Distance model — `csl::DistanceSimulator` **[R]**

* **Intensity** (`csl::IntensityAttenuationCue::vfunc_2` 0x1000ef780): `gain = min(1 / distance, maxGain)`;
  `maxGain` = `S3DEngine.maxSpatialGain` (forwarded by `sub_1000f0750` → `sub_1000ef76c`) = **6** in this game.
  Distance is measured in the scaled space above (game units × 0.8).
* **Air absorption** (`csl::AirAbsorptionCue` 0x1000ef7f0): first-order bilinear low-pass with cutoff
  `fc = 198000 / distance` Hz; `DistanceSimulator::vfunc_5` 0x1000ef56c only applies it when
  `distance > 10`.
* **Binaural** rendering: `csl::BinauralPanner` / `BinauralSourceCache` using an HRTF database. The game never
  calls `+setHRTFPath:`, so the **embedded database** is used: `__TEXT,__const` **0x100182314, 1,541,427 bytes**,
  read through `MemFile` (0x1000f59ac); header `HRTF 1050 188 512 256 2` (IRCAM subject 1050, 188 directions,
  512-sample responses). Extract with `py tools/extract_hrtf.py analysis/bin/audiodefence_arm64`.
  Stereo (2-channel) files are never spatialized — they get a `Panner` instead.

### 17.3 Gains and reverb **[R]**

* `-[S3DSound setGain:]` 0x100100b34: node gain = `gain · fadeGain · (spatialized ? masterSpatialisedGain : 1)`;
  `masterSpatialisedGain` global defaults to **1.0** (0x1004291b4).
* `-[S3DEngine setMasterGain:]` scales `masterMixer` (the game: 1.5 at launch, then the saved `masterGain`
  setting if any).
* Reverb send (`sendToReverb`): `FanOut` → `wetMixer` at `wetGain` and `dryMixer` at `dryGain`. With
  `autoReverbMix` the dry/wet balance follows distance between `min/maxReverbDistance` and `min/maxWetSend`
  (`setPlanarInternalInternal` 0x100100f74). Enemies set `sendToReverb = YES`, `wetGain = 1` (§6.5).
* Reverb = `csl::Stereoverb` (Freeverb) with room size / dampening / volume from `S3DEngine`.
* Streamed sounds (`setStream:`) are used for music and ambience beds.

### 17.4 Playlists — `S3DPlayList`, `S3DPlayListModel` **[R] [D]**

`meta/S3DPlayListModel/<name>.S3DPlayListModel#0.sexp` (208 files, parsed by `SExp*`):

```
(playlist (name "…") (repeat none|…) [(preload true)]
  (sound [(spatialized true)] [(preload true)] (bundle (path "sounds/…") (name "…") (extension "m4a")))
  (playlist (name "<sub>.S3DPlayListModel#0")) …)
```

* `activate` / `activate:` load the playlist's files on the engine queue (preloading `preload` sounds) and
  call the completion block; `deactivate` unloads. Several game systems wait for that callback before
  spawning (bricks, enemies).
* `anySoundContaining:` / `anySoundWihPrefix:` / `anySoundWihSuffix:` (sic) pick **uniformly at random**
  (`arc4random() % matches`) among matching sound keys; `S3DSound:` looks up an exact key; `cycleSound`
  steps through in order. Repeat policies: 0 none, 1 repeat last, 2 repeat from start.
* `add3DSoundEndCallback:` fires when a sound finishes; `add3DSoundMonitor:` fires periodically with
  play position (used by the menu music).

---

## 18. Screens and flow **[R] [D]**

```
launch ─► ADLogoScreenViewController ─(2 s, 0.5 s with VoiceOver)─► controlScheme set?
            ├─ no  ─► ADInitialControlSchemeViewController (Gyro / Swipe / Tilt) ─► opener
            └─ yes ─► ADOpenerGameplayViewController (mode 4 intro: opener.plist / opener_main.plist)
                         ─► ADMainMenuViewController  [Play · Game Center · Info (Zombiepedia) · Settings · (cheat)]
Play ─► ADPlayMenuViewController
         ├─ Endless (locked until challenge tutorial_5 is completed; first press shows ADInfoViewController)
         │     ─► ADTarotViewController (3 cards) ─► ADGameplayViewController (mode 1)
         │            death ─► ADReviveViewController (revive / game over) ─► ADGameOverEndlessViewController
         │                     ─► play again (Tarot) / stats / armory
         └─ Challenge ─► world selector ─► ADChallengeSelectorViewController ─► ADChallengeOverviewViewController
                ─► ADChallengeGameplayViewController (mode 2) ─► Challenge Completed / Failed
Pause (in game) ─► ADPauseViewController: Resume · End Game (subclass of ADSettingsViewController)
Settings ─► ADControlSchemeViewController: Sound (master volume, announcer, test headphones),
            Controls (scheme, button mode), Aiming (sensitivity)
Armory ─► ADArmoryViewController: Weapons (shop/upgrade) · Loadout (2 guns + melee) · Power-ups · Currency (IAP)
Journal ─► ADEncyclopediaViewController (Zombiepedia, bestiary text + "Sound name"), ADStatsViewController
```

* Every major screen has an `Accessible_*` variant or VoiceOver branch (table-based layouts, spoken
  labels such as "Endless mode is locked", "Tarot card number %i : %@").
* `ADScenarioRouletteViewController` (`goToRoulette`) and `ADStoryViewController` (`goToStory`) have **no
  callers** — shipped but unreachable. `ADCheatViewController`, `ADDebugMapViewController`, and
  `PEMetricsViewController` are developer tools.
* NIB object trees, button titles, VoiceOver labels and IBAction wiring for all 150 nibs are in
  `analysis/data/nibs/*.txt`.

---

## 19. Sound assets **[D]**

* `sounds/` = 918 files (`analysis/data/sounds.tsv`: duration, channels, sample rate, owning playlists),
  folders mirror playlists: `_weapons/<weapon>`, `enemies/<Enemy>`, `ambient/…`, `announcer`, `challenges/<brick>`,
  `levels`, `menu`, `opener`, `passerBy`, `player`, `powerup/<type>`, `roulette`, `tinnitus`, `encyclopedia`,
  `gameover_1..3`, `revive`, `headphonesTest`, `endlessMode`, `generic`.
* File-name suffixes are playlist flags: `_SPA` spatialized, `_UOS` unload-on-stop, `_PRE` preload
  (`sounds/generate_playlist.py`, a leftover Papa Sangre 2 tool, generated the playlists).
* 208 playlists reference 1,183 sound entries; **230 entries (218 distinct files) point to files that are not in the bundle**
  (cut content: `WeakZombiePowerUp*`, `StillZombie*`, `BerserkClown`, `gameover`, `demo_mode_1`,
  `airstrike`, `huntingrifle`, `sword`, `_shotgun`, `_rifle`, `baseball_bat`, `enemy_zombie_1..4`, …).
  A port must tolerate missing files the same way the engine does (sound lookup returns nil).
* Enemy sound naming used by the code: `<Enemy>_spawn*`, `_approach_*`, `_aggressive*`, `_attack*`,
  `_hit_*`, `_death_*`/`_die_*`, `death_crit`/`_diecrit_`, `_shieldup`, `_shielddown_`, `_invincible`,
  `_dodge_`, `_transition`, `explosion`, `impact_`; shared playlist `impact` has `impact_*`,
  `impactmulti_<n>`, `KillConfirm_*`.

---

## 20. Quirks index (behaviour a faithful port must reproduce)

| # | where | quirk |
|---|---|---|
| 1 | `hitByExplosionAtPosition:` 0x100061284 | falloff `1 − (d²/r)·r` = `1 − d²`; radius cancels |
| 2 | `ADWeapon update:` 0x100014c8c | state timers use wall-clock `CACurrentMediaTime` deltas, not dt |
| 3 | `ADSound initWithDictionary:` 0x1000b2d68 | plist `speed` ignored (always 2) |
| 4 | `ADGameModifiers reloadTimeModifier` | computed, never applied |
| 5 | `ADGameModifiers moreBullets` | never read |
| 6 | Roulette "Barbarian Serum" | selector `meleeDamagesModifier` has no setter → no effect (and the Roulette screen is unreachable anyway) |
| 7 | `ADTeslaPowerUp update:` | uses a constant 2 s between kills; plist `timeBetweenKills` unused |
| 8 | `ADAirStrikePowerUp` | never instantiated |
| 9 | `ADMission initWithDictionary:` | reads `enemi` / `objective_zombie`; plist has `enemy` / `objective_Zombie` |
| 10 | `ADGameParameters setSensivity:` | stored as integer → default 1.5 becomes 1 after restart |
| 11 | `brickNameForWaveNumber:` | row index clamps to 11; `brick_chance` row "12" unreachable |
| 12 | `Weapons.plist` | string numbers like `"15,000"` parse as 15 |
| 13 | `ADPersistentStats getAllUnlockedEnemies` | display-name keys vs internal-name lookup (encyclopedia only) |
| 14 | stats bus | `DECREMENT_COMBO`, `UPDATE_CRITICAL_HITS`, `SET_BRICK_NAME`, `DEFEATED_BRICK`, `UPDATE_COINS_FOR_KILL` have no effect |
| 15 | `ADGameplayViewController playerKilledEnemy:withCombo:`, `skipButtonPressed:` | empty methods |
| 16 | missions | inactive until challenge `tutorial_5` completed |
| 17 | new save | starts with 5000 coins and 500 diamonds |
| 18 | `ADGameplayViewController` mode 3 | handled but never set |
| 19 | `S3DEngine normalizeToHeadPosition:` | a source within 0.01 of the head has its y replaced by 0.05 |
| 20 | playlists | 230 playlist entries (218 distinct files) are missing from the bundle |
