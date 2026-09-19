// Objective-C metadata recovered from the Audio Defence arm64 slice
// 400 classes, 18 categories, 43 protocols

@protocol ADBackAction <NSObject>
- (void)handleBackActionFromStatusBar;
@end

@protocol ADMissionBarDelegate <NSObject>
- (void)refreshMission:(id)arg1 WithTag:(long long)arg2;
@end

@protocol GAIDispatchSender <NSObject>
- (void)queueDispatch:(id)arg1;
- (void)queueModel:(id)arg1;
@end

@protocol GAILogger <NSObject>
@property (nonatomic) unsigned long long logLevel;
- (void)verbose:(id)arg1;
- (void)info:(id)arg1;
- (void)warning:(id)arg1;
- (void)error:(id)arg1;
- (unsigned long long)logLevel;
- (void)setLogLevel:(unsigned long long)arg1;
@end

@protocol GAIReachabilityDelegate
- (void)reachability:(id)arg1 statusChanged:(int)arg2;
@end

@protocol GAITracker <NSObject>
@property (readonly, nonatomic) NSString *name;
@property (nonatomic) BOOL allowIDFACollection;
- (void)set:(id)arg1 value:(id)arg2;
- (id)get:(id)arg1;
- (void)send:(id)arg1;
- (id)name;
- (BOOL)allowIDFACollection;
- (void)setAllowIDFACollection:(BOOL)arg1;
@end

@protocol GKGameCenterControllerDelegate <NSObject>
- (void)gameCenterViewControllerDidFinish:(id)arg1;
@end

@protocol NSCoding
- (void)encodeWithCoder:(id)arg1;
- (id)initWithCoder:(id)arg1;
@end

@protocol NSCopying
- (id)copyWithZone:(_NSZone *)arg1;
@end

@protocol NSFastEnumeration
- (unsigned long long)countByEnumeratingWithState:(struct {…} *)arg1 objects:(id *)arg2 count:(unsigned long long)arg3;
@end

@protocol NSMutableCopying
- (id)mutableCopyWithZone:(_NSZone *)arg1;
@end

@protocol NSObject
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (BOOL)isEqual:(id)arg1;
- (Class)class;
- (id)self;
- (id)performSelector:(SEL)arg1;
- (id)performSelector:(SEL)arg1 withObject:(id)arg2;
- (id)performSelector:(SEL)arg1 withObject:(id)arg2 withObject:(id)arg3;
- (BOOL)isProxy;
- (BOOL)isKindOfClass:(Class)arg1;
- (BOOL)isMemberOfClass:(Class)arg1;
- (BOOL)conformsToProtocol:(id)arg1;
- (BOOL)respondsToSelector:(SEL)arg1;
- (id)retain;
- (oneway void)release;
- (id)autorelease;
- (unsigned long long)retainCount;
- (_NSZone *)zone;
- (unsigned long long)hash;
- (Class)superclass;
- (id)description;
@optional
- (id)debugDescription;
@end

@protocol NSURLConnectionDataDelegate <NSURLConnectionDelegate>
@optional
- (id)connection:(id)arg1 willSendRequest:(id)arg2 redirectResponse:(id)arg3;
- (void)connection:(id)arg1 didReceiveResponse:(id)arg2;
- (void)connection:(id)arg1 didReceiveData:(id)arg2;
- (id)connection:(id)arg1 needNewBodyStream:(id)arg2;
- (void)connection:(id)arg1 didSendBodyData:(long long)arg2 totalBytesWritten:(long long)arg3 totalBytesExpectedToWrite:(long long)arg4;
- (id)connection:(id)arg1 willCacheResponse:(id)arg2;
- (void)connectionDidFinishLoading:(id)arg1;
@end

@protocol NSURLConnectionDelegate <NSObject>
@optional
- (void)connection:(id)arg1 didFailWithError:(id)arg2;
- (BOOL)connectionShouldUseCredentialStorage:(id)arg1;
- (void)connection:(id)arg1 willSendRequestForAuthenticationChallenge:(id)arg2;
- (BOOL)connection:(id)arg1 canAuthenticateAgainstProtectionSpace:(id)arg2;
- (void)connection:(id)arg1 didReceiveAuthenticationChallenge:(id)arg2;
- (void)connection:(id)arg1 didCancelAuthenticationChallenge:(id)arg2;
@end

@protocol OBDragDropGestureRecognizer <NSObject>
@property (retain, nonatomic) OBOvum *ovum;
@property (nonatomic) id<OBOvumSource> ovumSource;
- (id)ovum;
- (void)setOvum:(id)arg1;
- (id)ovumSource;
- (void)setOvumSource:(id)arg1;
@end

@protocol OBDropZone <NSObject>
- (void)ovumDropped:(id)arg1 inView:(id)arg2 atLocation:(CGPoint)arg3;
- (unsigned long long)ovumEntered:(id)arg1 inView:(id)arg2 atLocation:(CGPoint)arg3;
- (void)ovumExited:(id)arg1 inView:(id)arg2 atLocation:(CGPoint)arg3;
@optional
- (unsigned long long)ovumMoved:(id)arg1 inView:(id)arg2 atLocation:(CGPoint)arg3;
- (void)handleDropAnimationForOvum:(id)arg1 withDragView:(id)arg2 dragDropManager:(id)arg3;
@end

@protocol OBOvumSource <NSObject>
- (id)createOvumFromView:(id)arg1;
@optional
- (BOOL)shouldCreateOvumFromView:(id)arg1;
- (id)createDragRepresentationOfSourceView:(id)arg1 inWindow:(id)arg2;
- (void)dragViewWillAppear:(id)arg1 inWindow:(id)arg2 atLocation:(CGPoint)arg3;
- (void)ovumDragWillBegin:(id)arg1;
- (void)ovumWasDropped:(id)arg1 withDropAction:(unsigned long long)arg2;
- (void)ovumDragEnded:(id)arg1;
- (void)handleReturningToSourceAnimationForOvum:(id)arg1 completion:(id /*block*/)arg2;
@end

@protocol S3DEncodable <NSObject>
@property (retain, nonatomic) NSString *xId;
+ (id)decode:(id)arg1;
- (id)encode;
- (id)xId;
- (void)setXId:(id)arg1;
@end

@protocol ScrollViewContainerDelegate <NSObject>
- (void)handleItemTap:(id)arg1;
@end

@protocol TAGAdIdAccess <NSObject>
+ (id)retrieveId;
+ (BOOL)retrieveTrackingFlag;
@end

@protocol TAGAddRemoveSetPopulator
- (void)rulePassed:(id)arg1 add:(id)arg2 remove:(id)arg3;
@end

@protocol TAGContainerCallback <NSObject>
- (void)containerRefreshBegin:(id)arg1 refreshType:(int)arg2;
- (void)containerRefreshSuccess:(id)arg1 refreshType:(int)arg2;
- (void)containerRefreshFailure:(id)arg1 failure:(int)arg2 refreshType:(int)arg3;
@end

@protocol TAGContainerFuture
- (id)get;
- (BOOL)isDone;
@end

@protocol TAGContainerOpenerNotifier
- (void)containerAvailable:(id)arg1;
@end

@protocol TAGCustomEvaluator <NSObject>
- (id)evaluate:(id)arg1 parameters:(id)arg2;
@end

@protocol TAGDataLayerListener <NSObject>
- (void)changed:(id)arg1;
@end

@protocol TAGDataLayerPersistentStore <NSObject>
- (void)saveKeyValues:(id)arg1 lifetimeInMillis:(unsigned long long)arg2;
- (void)loadSaved:(id)arg1;
- (void)clearKeysWithPrefix:(id)arg1;
@end

@protocol TAGDataLayerPersistentStoreCallback <NSObject>
- (void)onKeyValuesLoaded:(id)arg1;
@end

@protocol TAGHashAlgorithm
- (id)hashData:(id)arg1;
@end

@protocol TAGHitSender <NSObject>
@property (weak, nonatomic) id<TAGLogger> logger;
- (void)sendHitToUrl:(id)arg1;
- (id)logger;
- (void)setLogger:(id)arg1;
@end

@protocol TAGLoadCallback <NSObject>
- (void)startLoad;
- (void)onSuccess:(id)arg1;
- (void)onFailure:(long long)arg1;
@end

@protocol TAGLogger <NSObject>
- (void)error:(id)arg1;
- (void)warning:(id)arg1;
- (void)info:(id)arg1;
- (void)debug:(id)arg1;
- (void)verbose:(id)arg1;
- (void)setLogLevel:(int)arg1;
- (int)logLevel;
@end

@protocol TAGPBMessageSignatureProtocol
@optional
+ (id)getClassValue;
@optional
- (BOOL)getBool;
- (id)setBool:(BOOL)arg1;
- (BOOL)getBoolAtIndex:(unsigned long long)arg1;
- (unsigned int)getFixed32;
- (id)setFixed32:(unsigned int)arg1;
- (unsigned int)getFixed32AtIndex:(unsigned long long)arg1;
- (int)getSFixed32;
- (id)setSFixed32:(int)arg1;
- (int)getSFixed32AtIndex:(unsigned long long)arg1;
- (float)getFloat;
- (id)setFloat:(float)arg1;
- (float)getFloatAtIndex:(unsigned long long)arg1;
- (unsigned long long)getFixed64;
- (id)setFixed64:(unsigned long long)arg1;
- (unsigned long long)getFixed64AtIndex:(unsigned long long)arg1;
- (long long)getSFixed64;
- (id)setSFixed64:(long long)arg1;
- (long long)getSFixed64AtIndex:(unsigned long long)arg1;
- (double)getDouble;
- (id)setDouble:(double)arg1;
- (double)getDoubleAtIndex:(unsigned long long)arg1;
- (int)getInt32;
- (id)setInt32:(int)arg1;
- (int)getInt32AtIndex:(unsigned long long)arg1;
- (long long)getInt64;
- (id)setInt64:(long long)arg1;
- (long long)getInt64AtIndex:(unsigned long long)arg1;
- (int)getSInt32;
- (id)setSInt32:(int)arg1;
- (int)getSInt32AtIndex:(unsigned long long)arg1;
- (long long)getSInt64;
- (id)setSInt64:(long long)arg1;
- (long long)getSInt64AtIndex:(unsigned long long)arg1;
- (unsigned int)getUInt32;
- (id)setUInt32:(unsigned int)arg1;
- (unsigned int)getUInt32AtIndex:(unsigned long long)arg1;
- (unsigned long long)getUInt64;
- (id)setUInt64:(unsigned long long)arg1;
- (unsigned long long)getUInt64AtIndex:(unsigned long long)arg1;
- (id)getData;
- (id)setData:(id)arg1;
- (id)getDataAtIndex:(unsigned long long)arg1;
- (id)getString;
- (id)setString:(id)arg1;
- (id)getStringAtIndex:(unsigned long long)arg1;
- (id)getMessage;
- (id)setMessage:(id)arg1;
- (id)getMessageAtIndex:(unsigned long long)arg1;
- (id)getGroup;
- (id)setGroup:(id)arg1;
- (id)getGroupAtIndex:(unsigned long long)arg1;
- (int)getEnum;
- (id)setEnum:(int)arg1;
- (int)getEnumAtIndex:(unsigned long long)arg1;
- (id)getArray;
- (id)setArray:(id)arg1;
- (id)setClassBuilder:(id)arg1;
- (id)mergeClass:(id)arg1;
@end

@protocol TAGPBMutableArrayDelegate <NSObject>
- (void)pbMutableArray:(id)arg1 willAddElements:(unsigned long long)arg2;
@end

@protocol TAGResourceStorage
@property (retain, nonatomic) id<TAGLoadCallback> loadCallback;
- (void)loadResourceFromDiskInBackground;
- (void)saveResourceToDiskInBackground:(id)arg1;
- (id)loadResourceFromContainerFile:(id)arg1;
- (id)loadExpandedResourceFromJsonFile:(id)arg1;
- (id)loadExpandedResourceFromPlistFile:(id)arg1;
- (id)loadCallback;
- (void)setLoadCallback:(id)arg1;
@end

@protocol UIAlertViewDelegate <NSObject>
@optional
- (void)alertView:(id)arg1 clickedButtonAtIndex:(long long)arg2;
- (void)alertViewCancel:(id)arg1;
- (void)willPresentAlertView:(id)arg1;
- (void)didPresentAlertView:(id)arg1;
- (void)alertView:(id)arg1 willDismissWithButtonIndex:(long long)arg2;
- (void)alertView:(id)arg1 didDismissWithButtonIndex:(long long)arg2;
- (BOOL)alertViewShouldEnableFirstOtherButton:(id)arg1;
@end

@protocol UIApplicationDelegate <NSObject>
@property (retain, nonatomic) UIWindow *window;
@optional
- (void)applicationDidFinishLaunching:(id)arg1;
- (BOOL)application:(id)arg1 willFinishLaunchingWithOptions:(id)arg2;
- (BOOL)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2;
- (void)applicationDidBecomeActive:(id)arg1;
- (void)applicationWillResignActive:(id)arg1;
- (BOOL)application:(id)arg1 handleOpenURL:(id)arg2;
- (BOOL)application:(id)arg1 openURL:(id)arg2 sourceApplication:(id)arg3 annotation:(id)arg4;
- (void)applicationDidReceiveMemoryWarning:(id)arg1;
- (void)applicationWillTerminate:(id)arg1;
- (void)applicationSignificantTimeChange:(id)arg1;
- (void)application:(id)arg1 willChangeStatusBarOrientation:(long long)arg2 duration:(double)arg3;
- (void)application:(id)arg1 didChangeStatusBarOrientation:(long long)arg2;
- (void)application:(id)arg1 willChangeStatusBarFrame:(CGRect)arg2;
- (void)application:(id)arg1 didChangeStatusBarFrame:(CGRect)arg2;
- (void)application:(id)arg1 didRegisterUserNotificationSettings:(id)arg2;
- (void)application:(id)arg1 didRegisterForRemoteNotificationsWithDeviceToken:(id)arg2;
- (void)application:(id)arg1 didFailToRegisterForRemoteNotificationsWithError:(id)arg2;
- (void)application:(id)arg1 didReceiveRemoteNotification:(id)arg2;
- (void)application:(id)arg1 didReceiveLocalNotification:(id)arg2;
- (void)application:(id)arg1 handleActionWithIdentifier:(id)arg2 forLocalNotification:(id)arg3 completionHandler:(id /*block*/)arg4;
- (void)application:(id)arg1 handleActionWithIdentifier:(id)arg2 forRemoteNotification:(id)arg3 completionHandler:(id /*block*/)arg4;
- (void)application:(id)arg1 didReceiveRemoteNotification:(id)arg2 fetchCompletionHandler:(id /*block*/)arg3;
- (void)application:(id)arg1 performFetchWithCompletionHandler:(id /*block*/)arg2;
- (void)application:(id)arg1 handleEventsForBackgroundURLSession:(id)arg2 completionHandler:(id /*block*/)arg3;
- (void)application:(id)arg1 handleWatchKitExtensionRequest:(id)arg2 reply:(id /*block*/)arg3;
- (void)applicationDidEnterBackground:(id)arg1;
- (void)applicationWillEnterForeground:(id)arg1;
- (void)applicationProtectedDataWillBecomeUnavailable:(id)arg1;
- (void)applicationProtectedDataDidBecomeAvailable:(id)arg1;
- (unsigned long long)application:(id)arg1 supportedInterfaceOrientationsForWindow:(id)arg2;
- (BOOL)application:(id)arg1 shouldAllowExtensionPointIdentifier:(id)arg2;
- (id)application:(id)arg1 viewControllerWithRestorationIdentifierPath:(id)arg2 coder:(id)arg3;
- (BOOL)application:(id)arg1 shouldSaveApplicationState:(id)arg2;
- (BOOL)application:(id)arg1 shouldRestoreApplicationState:(id)arg2;
- (void)application:(id)arg1 willEncodeRestorableStateWithCoder:(id)arg2;
- (void)application:(id)arg1 didDecodeRestorableStateWithCoder:(id)arg2;
- (BOOL)application:(id)arg1 willContinueUserActivityWithType:(id)arg2;
- (BOOL)application:(id)arg1 continueUserActivity:(id)arg2 restorationHandler:(id /*block*/)arg3;
- (void)application:(id)arg1 didFailToContinueUserActivityWithType:(id)arg2 error:(id)arg3;
- (void)application:(id)arg1 didUpdateUserActivity:(id)arg2;
- (id)window;
- (void)setWindow:(id)arg1;
@end

@protocol UIGestureRecognizerDelegate <NSObject>
@optional
- (BOOL)gestureRecognizerShouldBegin:(id)arg1;
- (BOOL)gestureRecognizer:(id)arg1 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg2;
- (BOOL)gestureRecognizer:(id)arg1 shouldRequireFailureOfGestureRecognizer:(id)arg2;
- (BOOL)gestureRecognizer:(id)arg1 shouldBeRequiredToFailByGestureRecognizer:(id)arg2;
- (BOOL)gestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2;
@end

@protocol UIScrollViewDelegate <NSObject>
@optional
- (void)scrollViewDidScroll:(id)arg1;
- (void)scrollViewDidZoom:(id)arg1;
- (void)scrollViewWillBeginDragging:(id)arg1;
- (void)scrollViewWillEndDragging:(id)arg1 withVelocity:(CGPoint)arg2 targetContentOffset:(inout CGPoint *)arg3;
- (void)scrollViewDidEndDragging:(id)arg1 willDecelerate:(BOOL)arg2;
- (void)scrollViewWillBeginDecelerating:(id)arg1;
- (void)scrollViewDidEndDecelerating:(id)arg1;
- (void)scrollViewDidEndScrollingAnimation:(id)arg1;
- (id)viewForZoomingInScrollView:(id)arg1;
- (void)scrollViewWillBeginZooming:(id)arg1 withView:(id)arg2;
- (void)scrollViewDidEndZooming:(id)arg1 withView:(id)arg2 atScale:(double)arg3;
- (BOOL)scrollViewShouldScrollToTop:(id)arg1;
- (void)scrollViewDidScrollToTop:(id)arg1;
@end

@protocol UITableViewDataSource <NSObject>
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;
@optional
- (long long)numberOfSectionsInTableView:(id)arg1;
- (id)tableView:(id)arg1 titleForHeaderInSection:(long long)arg2;
- (id)tableView:(id)arg1 titleForFooterInSection:(long long)arg2;
- (BOOL)tableView:(id)arg1 canEditRowAtIndexPath:(id)arg2;
- (BOOL)tableView:(id)arg1 canMoveRowAtIndexPath:(id)arg2;
- (id)sectionIndexTitlesForTableView:(id)arg1;
- (long long)tableView:(id)arg1 sectionForSectionIndexTitle:(id)arg2 atIndex:(long long)arg3;
- (void)tableView:(id)arg1 commitEditingStyle:(long long)arg2 forRowAtIndexPath:(id)arg3;
- (void)tableView:(id)arg1 moveRowAtIndexPath:(id)arg2 toIndexPath:(id)arg3;
@end

@protocol UITableViewDelegate <NSObject, UIScrollViewDelegate>
@optional
- (void)tableView:(id)arg1 willDisplayCell:(id)arg2 forRowAtIndexPath:(id)arg3;
- (void)tableView:(id)arg1 willDisplayHeaderView:(id)arg2 forSection:(long long)arg3;
- (void)tableView:(id)arg1 willDisplayFooterView:(id)arg2 forSection:(long long)arg3;
- (void)tableView:(id)arg1 didEndDisplayingCell:(id)arg2 forRowAtIndexPath:(id)arg3;
- (void)tableView:(id)arg1 didEndDisplayingHeaderView:(id)arg2 forSection:(long long)arg3;
- (void)tableView:(id)arg1 didEndDisplayingFooterView:(id)arg2 forSection:(long long)arg3;
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;
- (double)tableView:(id)arg1 heightForFooterInSection:(long long)arg2;
- (double)tableView:(id)arg1 estimatedHeightForRowAtIndexPath:(id)arg2;
- (double)tableView:(id)arg1 estimatedHeightForHeaderInSection:(long long)arg2;
- (double)tableView:(id)arg1 estimatedHeightForFooterInSection:(long long)arg2;
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;
- (id)tableView:(id)arg1 viewForFooterInSection:(long long)arg2;
- (long long)tableView:(id)arg1 accessoryTypeForRowWithIndexPath:(id)arg2;
- (void)tableView:(id)arg1 accessoryButtonTappedForRowWithIndexPath:(id)arg2;
- (BOOL)tableView:(id)arg1 shouldHighlightRowAtIndexPath:(id)arg2;
- (void)tableView:(id)arg1 didHighlightRowAtIndexPath:(id)arg2;
- (void)tableView:(id)arg1 didUnhighlightRowAtIndexPath:(id)arg2;
- (id)tableView:(id)arg1 willSelectRowAtIndexPath:(id)arg2;
- (id)tableView:(id)arg1 willDeselectRowAtIndexPath:(id)arg2;
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;
- (void)tableView:(id)arg1 didDeselectRowAtIndexPath:(id)arg2;
- (long long)tableView:(id)arg1 editingStyleForRowAtIndexPath:(id)arg2;
- (id)tableView:(id)arg1 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)arg2;
- (id)tableView:(id)arg1 editActionsForRowAtIndexPath:(id)arg2;
- (BOOL)tableView:(id)arg1 shouldIndentWhileEditingRowAtIndexPath:(id)arg2;
- (void)tableView:(id)arg1 willBeginEditingRowAtIndexPath:(id)arg2;
- (void)tableView:(id)arg1 didEndEditingRowAtIndexPath:(id)arg2;
- (id)tableView:(id)arg1 targetIndexPathForMoveFromRowAtIndexPath:(id)arg2 toProposedIndexPath:(id)arg3;
- (long long)tableView:(id)arg1 indentationLevelForRowAtIndexPath:(id)arg2;
- (BOOL)tableView:(id)arg1 shouldShowMenuForRowAtIndexPath:(id)arg2;
- (BOOL)tableView:(id)arg1 canPerformAction:(SEL)arg2 forRowAtIndexPath:(id)arg3 withSender:(id)arg4;
- (void)tableView:(id)arg1 performAction:(SEL)arg2 forRowAtIndexPath:(id)arg3 withSender:(id)arg4;
@end

@protocol UIWebViewDelegate <NSObject>
@optional
- (BOOL)webView:(id)arg1 shouldStartLoadWithRequest:(id)arg2 navigationType:(long long)arg3;
- (void)webViewDidStartLoad:(id)arg1;
- (void)webViewDidFinishLoad:(id)arg1;
- (void)webView:(id)arg1 didFailLoadWithError:(id)arg2;
@end

@protocol VerticalScrollCellDelegate <NSObject>
- (void)cellSelectedWithZombieName:(id)arg1;
@end

@interface ADAboutCreditsViewController : ADViewController   // instance size 336, class @0x100421328
{
    UITextView *_aboutTextView;              // +0x140 (8 bytes)  @"UITextView"
    UITextView *_creditsTextView;            // +0x148 (8 bytes)  @"UITextView"
}
@property (retain, nonatomic) UITextView *aboutTextView;  // ivar: _aboutTextView
@property (retain, nonatomic) UITextView *creditsTextView;  // ivar: _creditsTextView
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000209b8
- (void)viewDidLoad;                                                                       // IMP 0x100020a44
- (void)loadView;                                                                          // IMP 0x100020ea4
- (void)backButtonPressed;                                                                 // IMP 0x100020ff0
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10002105c
- (void).cxx_destruct;                                                                     // IMP 0x100021128
- (id)aboutTextView;                                                                       // IMP 0x100021098
- (void)setAboutTextView:(id)arg1;                                                         // IMP 0x1000210a8
- (id)creditsTextView;                                                                     // IMP 0x1000210e0
- (void)setCreditsTextView:(id)arg1;                                                       // IMP 0x1000210f0
@end

@interface ADAccessibilityTableHeaderLabel : UILabel   // instance size 104, class @0x100422fe8
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x10009e4d0
@end

@interface ADAccessibleGameView : UIView <UIGestureRecognizerDelegate>   // instance size 184, class @0x100422ae8
{
    BOOL hasSwiped;                          // +0x68 (1 bytes)  B
    BOOL hasStartedToMove;                   // +0x69 (1 bytes)  B
    float buttonPressedDuration;             // +0x6c (4 bytes)  f
    CGPoint initialPoint;                    // +0x70 (16 bytes)  {CGPoint="x"d"y"d}
    UITapGestureRecognizer *special;         // +0x80 (8 bytes)  @"UITapGestureRecognizer"
    UISwipeGestureRecognizer *swipeUpGesture; // +0x88 (8 bytes)  @"UISwipeGestureRecognizer"
    UISwipeGestureRecognizer *swipeDownGesture; // +0x90 (8 bytes)  @"UISwipeGestureRecognizer"
    UITapGestureRecognizer *tripleTap;       // +0x98 (8 bytes)  @"UITapGestureRecognizer"
    BOOL _buttonIsDown;                      // +0xa0 (1 bytes)  B
    ADWeaponManager *_weaponManager;         // +0xa8 (8 bytes)  @"ADWeaponManager"
    ADGameplayViewController *_gameplayViewController; // +0xb0 (8 bytes)  @"ADGameplayViewController"
}
@property (weak, nonatomic) ADWeaponManager *weaponManager;  // ivar: _weaponManager
@property (weak, nonatomic) ADGameplayViewController *gameplayViewController;  // ivar: _gameplayViewController
@property (nonatomic) BOOL buttonIsDown;  // ivar: _buttonIsDown
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (void)didMoveToSuperview;                                                                // IMP 0x100089eb0
- (void)initGestureRecognizers;                                                            // IMP 0x100089f64
- (void)handleSwipeGesture;                                                                // IMP 0x10008a194
- (BOOL)gestureRecognizer:(id)arg1 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg2; // IMP 0x10008a1e4
- (void)handleSwipeUpGesture;                                                              // IMP 0x10008a1ec
- (void)handleSwipeDownGesture;                                                            // IMP 0x10008a2f8
- (void)touchesBegan:(id)arg1 withEvent:(id)arg2;                                          // IMP 0x10008a404
- (void)touchesEnded:(id)arg1 withEvent:(id)arg2;                                          // IMP 0x10008a50c
- (void)touchesMoved:(id)arg1 withEvent:(id)arg2;                                          // IMP 0x10008a5a4
- (void)update:(float)arg1;                                                                // IMP 0x10008a754
- (void)solveButtonPress;                                                                  // IMP 0x10008a914
- (void)touchCanceled;                                                                     // IMP 0x10008abcc
- (void)setButtonIsDown:(BOOL)arg1;                                                        // IMP 0x10008ac54
- (void)handleTripleTap;                                                                   // IMP 0x10008acf8
- (void).cxx_destruct;                                                                     // IMP 0x10008ae34
- (id).cxx_construct;                                                                      // IMP 0x10008aebc
- (id)weaponManager;                                                                       // IMP 0x10008adbc
- (void)setWeaponManager:(id)arg1;                                                         // IMP 0x10008addc
- (id)gameplayViewController;                                                              // IMP 0x10008adf0
- (void)setGameplayViewController:(id)arg1;                                                // IMP 0x10008ae10
- (BOOL)buttonIsDown;                                                                      // IMP 0x10008ae24
@end

@interface ADAccessibleTableCell : UITableViewCell   // instance size 104, class @0x100423178
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x1000a4834
@end

@interface ADAirStrikePowerUp : ADPowerUp   // instance size 44, class @0x100422f70
{
    float timeSinceActivation;               // +0x8 (4 bytes)  f
    BOOL active;                             // +0xc (1 bytes)  B
    float nextExplosionTime;                 // +0x10 (4 bytes)  f
    int currentExplosion;                    // +0x14 (4 bytes)  i
    float angle;                             // +0x18 (4 bytes)  f
    float _dispersal;                        // +0x1c (4 bytes)  f
    float _radius;                           // +0x20 (4 bytes)  f
    float _damages;                          // +0x24 (4 bytes)  f
    int _numberOfExplosions;                 // +0x28 (4 bytes)  i
}
@property () float dispersal;  // ivar: _dispersal
@property () float radius;  // ivar: _radius
@property () float damages;  // ivar: _damages
@property () int numberOfExplosions;  // ivar: _numberOfExplosions
- (void)preload;                                                                           // IMP 0x10009d4ac
- (void)use;                                                                               // IMP 0x10009d59c
- (void)update:(float)arg1;                                                                // IMP 0x10009d774
- (void)randomizeNextExplosionTime;                                                        // IMP 0x10009d840
- (void)playRandomExplosion;                                                               // IMP 0x10009d8a4
- (void)clean;                                                                             // IMP 0x10009dc60
- (float)dispersal;                                                                        // IMP 0x10009dda4
- (void)setDispersal:(float)arg1;                                                          // IMP 0x10009ddb8
- (float)radius;                                                                           // IMP 0x10009ddcc
- (void)setRadius:(float)arg1;                                                             // IMP 0x10009dde0
- (float)damages;                                                                          // IMP 0x10009ddf4
- (void)setDamages:(float)arg1;                                                            // IMP 0x10009de08
- (int)numberOfExplosions;                                                                 // IMP 0x10009de1c
- (void)setNumberOfExplosions:(int)arg1;                                                   // IMP 0x10009de2c
@end

@interface ADAmbientManager : NSObject   // instance size 112, class @0x100422e58
{
    NSString *ambientName;                   // +0x8 (8 bytes)  @"NSString"
    S3DSound *scare_sound;                   // +0x10 (8 bytes)  @"S3DSound"
    S3DSound *thunderSound;                  // +0x18 (8 bytes)  @"S3DSound"
    S3DSound *baseSound;                     // +0x20 (8 bytes)  @"S3DSound"
    float scare_sound_timer;                 // +0x28 (4 bytes)  f
    float nextStormTime;                     // +0x2c (4 bytes)  f
    S3DPlayList *enemiesPlaylist;            // +0x30 (8 bytes)  @"S3DPlayList"
    NSMutableDictionary *enemiesAmbiantCount; // +0x38 (8 bytes)  @"NSMutableDictionary"
    BOOL ambiantIsPlaying;                   // +0x40 (1 bytes)  B
    S3DSound *enemyAmbiantSound;             // +0x48 (8 bytes)  @"S3DSound"
    ADGameplayViewController *_gameplayViewController; // +0x50 (8 bytes)  @"ADGameplayViewController"
    S3DPlayList *_playlist;                  // +0x58 (8 bytes)  @"S3DPlayList"
    S3DPlayList *_stormPLaylist;             // +0x60 (8 bytes)  @"S3DPlayList"
    S3DSound *_ambient_sound;                // +0x68 (8 bytes)  @"S3DSound"
}
@property (weak, nonatomic) ADGameplayViewController *gameplayViewController;  // ivar: _gameplayViewController
@property (retain, nonatomic) S3DPlayList *playlist;  // ivar: _playlist
@property (retain, nonatomic) S3DPlayList *stormPLaylist;  // ivar: _stormPLaylist
@property (retain, nonatomic) S3DSound *ambient_sound;  // ivar: _ambient_sound
+ (id)sharedAmbiantManager;                                                                // IMP 0x100097e64
- (void)startWithRandomAmbient;                                                            // IMP 0x100097efc
- (void)startWithambient:(id)arg1 gain:(float)arg2;                                        // IMP 0x100098004
- (void)startBaseSound;                                                                    // IMP 0x100098718
- (CGPoint)randomPositionAtDistance:(int)arg1;                                             // IMP 0x1000987f8
- (void)update:(float)arg1;                                                                // IMP 0x10009887c
- (CGPoint)randomPosition;                                                                 // IMP 0x100098b74
- (void)stopAmbient;                                                                       // IMP 0x100098c10
- (void)randomiseNextStormTime;                                                            // IMP 0x100098d40
- (void)playThunder;                                                                       // IMP 0x100098db8
- (void)initEnemiesAmbiant;                                                                // IMP 0x100098e5c
- (void)enemyWithAmbiantNameAppeared:(id)arg1;                                             // IMP 0x100098f48
- (void)enemyWithAmbiantNameKilled:(id)arg1;                                               // IMP 0x100098f68
- (void)brickWithAmbiantStarted:(id)arg1;                                                  // IMP 0x100098f88
- (void)brickWithAmbiantCleared:(id)arg1;                                                  // IMP 0x100098fa8
- (void)playEnemyAmbiantWithName:(id)arg1 forceStop:(BOOL)arg2;                            // IMP 0x100098fc8
- (void)stopAmbiant;                                                                       // IMP 0x100099144
- (BOOL)enemyWithCurrentAmbiantIsAlive;                                                    // IMP 0x100099160
- (void)stopEnemiesAmbientAndResetCount;                                                   // IMP 0x1000993f4
- (void)checkAmbiant;                                                                      // IMP 0x100099444
- (void)pause;                                                                             // IMP 0x100099928
- (void)resume;                                                                            // IMP 0x1000999e8
- (void).cxx_destruct;                                                                     // IMP 0x100099b78
- (id)gameplayViewController;                                                              // IMP 0x100099a6c
- (void)setGameplayViewController:(id)arg1;                                                // IMP 0x100099a8c
- (id)playlist;                                                                            // IMP 0x100099aa0
- (void)setPlaylist:(id)arg1;                                                              // IMP 0x100099ab0
- (id)stormPLaylist;                                                                       // IMP 0x100099ae8
- (void)setStormPLaylist:(id)arg1;                                                         // IMP 0x100099af8
- (id)ambient_sound;                                                                       // IMP 0x100099b30
- (void)setAmbient_sound:(id)arg1;                                                         // IMP 0x100099b40
@end

@interface ADAppDelegate : UIResponder <UIApplicationDelegate>   // instance size 88, class @0x100422a20
{
    PEMetricsViewController *metricsViewController; // +0x8 (8 bytes)  @"PEMetricsViewController"
    BOOL start_theme_after_fade;             // +0x10 (1 bytes)  B
    NSTimer *fadeOutTimer;                   // +0x18 (8 bytes)  @"NSTimer"
    S3DSound *openSound;                     // +0x20 (8 bytes)  @"S3DSound"
    UIViewController *currentViewController; // +0x28 (8 bytes)  @"UIViewController"
    BOOL _menu_music_playing;                // +0x30 (1 bytes)  B
    UIWindow *_window;                       // +0x38 (8 bytes)  @"UIWindow"
    UIViewController *_viewController;       // +0x40 (8 bytes)  @"UIViewController"
    ADStatusBarViewController *_statusBar;   // +0x48 (8 bytes)  @"ADStatusBarViewController"
    S3DSound *_currentMenuMusic;             // +0x50 (8 bytes)  @"S3DSound"
}
@property (retain, nonatomic) UIWindow *window;  // ivar: _window
@property (retain, nonatomic) UIViewController *viewController;  // ivar: _viewController
@property (retain, nonatomic) ADStatusBarViewController *statusBar;  // ivar: _statusBar
@property (nonatomic) BOOL menu_music_playing;  // ivar: _menu_music_playing
@property (retain, nonatomic) S3DSound *currentMenuMusic;  // ivar: _currentMenuMusic
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (BOOL)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2;                       // IMP 0x10008099c
- (void)runSanityCheck;                                                                    // IMP 0x100081014
- (id)dictionaryForChallengeWithName:(id)arg1;                                             // IMP 0x1000810c8
- (void)loadViewController:(id)arg1;                                                       // IMP 0x1000811bc
- (void)goToAccessibleChallengeOverviewWithDictionary:(id)arg1;                            // IMP 0x1000813b0
- (void)goToChallengeOverviewWithDictionary:(id)arg1;                                      // IMP 0x100081458
- (void)goToInputModeSelectScreen;                                                         // IMP 0x100081500
- (void)goToOpener;                                                                        // IMP 0x100081584
- (void)goToGameOverEndless;                                                               // IMP 0x100081608
- (void)goToChallengeSelector;                                                             // IMP 0x1000816e0
- (void)goToChallengeCompletedWithDictionary:(id)arg1;                                     // IMP 0x10008189c
- (void)goToChallengeFailedWithDictionary:(id)arg1;                                        // IMP 0x1000819b8
- (void)goToArmoryFromVC:(id)arg1 EnableLoadOut:(BOOL)arg2;                                // IMP 0x100081a60
- (void)goToChallengeAfter:(id)arg1;                                                       // IMP 0x100081c70
- (void)goToStory;                                                                         // IMP 0x1000820dc
- (void)goToRoulette;                                                                      // IMP 0x100082160
- (void)goToGameplay;                                                                      // IMP 0x1000821e4
- (void)goToChallengeWithDict:(id)arg1;                                                    // IMP 0x100082278
- (void)goToWorldSelector;                                                                 // IMP 0x10008233c
- (void)goToMainMenu;                                                                      // IMP 0x1000823d8
- (void)goToPlayMenu;                                                                      // IMP 0x100082474
- (void)goToInfoScreen:(id)arg1;                                                           // IMP 0x100082514
- (void)goToTarot;                                                                         // IMP 0x1000825bc
- (void)popToRoot;                                                                         // IMP 0x100082640
- (void)goToTabbedChallengeScreen;                                                         // IMP 0x100082644
- (void)showMetrics;                                                                       // IMP 0x1000826c8
- (void)setStatusBar:(id)arg1;                                                             // IMP 0x10008299c
- (void)initPapaEngine;                                                                    // IMP 0x1000829d4
- (void)activateButtonsPlaylist;                                                           // IMP 0x100082bf8
- (void)startMenuMusic:(id)arg1;                                                           // IMP 0x100082ca0
- (void)stopMenuMusic;                                                                     // IMP 0x1000833dc
- (void)reduceMainMenuThemeVolume;                                                         // IMP 0x100083460
- (void)pauseGame;                                                                         // IMP 0x100083738
- (void)applicationWillResignActive:(id)arg1;                                              // IMP 0x10008381c
- (void)applicationDidEnterBackground:(id)arg1;                                            // IMP 0x10008383c
- (void)applicationWillEnterForeground:(id)arg1;                                           // IMP 0x10008385c
- (void)applicationDidBecomeActive:(id)arg1;                                               // IMP 0x100083860
- (void)applicationWillTerminate:(id)arg1;                                                 // IMP 0x100083864
- (void).cxx_destruct;                                                                     // IMP 0x100083970
- (id)window;                                                                              // IMP 0x100083868
- (void)setWindow:(id)arg1;                                                                // IMP 0x100083878
- (id)viewController;                                                                      // IMP 0x1000838b0
- (void)setViewController:(id)arg1;                                                        // IMP 0x1000838c0
- (id)statusBar;                                                                           // IMP 0x1000838f8
- (BOOL)menu_music_playing;                                                                // IMP 0x100083908
- (void)setMenu_music_playing:(BOOL)arg1;                                                  // IMP 0x100083918
- (id)currentMenuMusic;                                                                    // IMP 0x100083928
- (void)setCurrentMenuMusic:(id)arg1;                                                      // IMP 0x100083938
@end

@interface ADArmoryCurrencyViewController : ADNoBarViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 360, class @0x1004213c8
{
    NSUserDefaults *progress;                // +0x140 (8 bytes)  @"NSUserDefaults"
    NSDictionary *productDictionary;         // +0x148 (8 bytes)  @"NSDictionary"
    NSArray *_products;                      // +0x150 (8 bytes)  @"NSArray"
    UITableView *_tableView;                 // +0x158 (8 bytes)  @"UITableView"
    UIViewController *_armoryVCDelegate;     // +0x160 (8 bytes)  @"UIViewController"
}
@property (retain, nonatomic) NSArray *products;  // ivar: _products
@property (retain, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (weak) UIViewController *armoryVCDelegate;  // ivar: _armoryVCDelegate
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100021ed0
- (void)likeOnFacebook:(id)arg1;                                                           // IMP 0x100021f5c
- (void)twitterButtonPRessed:(id)arg1;                                                     // IMP 0x100022330
- (void)appstoreLinkPressed;                                                               // IMP 0x100022704
- (void)moreGamesButtonPressed;                                                            // IMP 0x1000228e4
- (void)viewDidLoad;                                                                       // IMP 0x100022ba4
- (void)loadView;                                                                          // IMP 0x100022d70
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100022e74
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x100022eb0
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x100022f3c
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x100022f44
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x100022fb4
- (BOOL)actionAlreadyTakenForRowAtIndexPath:(id)arg1;                                      // IMP 0x100023500
- (void)presetCell:(id)arg1 ForIndexPath:(id)arg2;                                         // IMP 0x100023670
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;                               // IMP 0x100024190
- (void).cxx_destruct;                                                                     // IMP 0x100024368
- (id)products;                                                                            // IMP 0x1000242a4
- (void)setProducts:(id)arg1;                                                              // IMP 0x1000242b4
- (id)tableView;                                                                           // IMP 0x1000242ec
- (void)setTableView:(id)arg1;                                                             // IMP 0x1000242fc
- (id)armoryVCDelegate;                                                                    // IMP 0x100024334
- (void)setArmoryVCDelegate:(id)arg1;                                                      // IMP 0x100024354
@end

@interface ADArmoryItemDescriptionViewController : ADNoBarViewController <ADBackAction>   // instance size 416, class @0x100423498
{
    NSDictionary *weaponInventoryDict;       // +0x140 (8 bytes)  @"NSDictionary"
    NSDictionary *weaponStatsDict;           // +0x148 (8 bytes)  @"NSDictionary"
    NSMutableArray *statBars;                // +0x150 (8 bytes)  @"NSMutableArray"
    NSDictionary *currentLevelDict;          // +0x158 (8 bytes)  @"NSDictionary"
    NSDictionary *nextLevelDict;             // +0x160 (8 bytes)  @"NSDictionary"
    int button_state;                        // +0x168 (4 bytes)  i
    int current_level;                       // +0x16c (4 bytes)  i
    ADViewWithWeaponDetailViewController *_armoryViewController; // +0x170 (8 bytes)  @"ADViewWithWeaponDetailViewController"
    UILabel *_weaponTitle;                   // +0x178 (8 bytes)  @"UILabel"
    UIImageView *_weaponImage;               // +0x180 (8 bytes)  @"UIImageView"
    ADButtonWithFont *_buyOrUpgradeButton;   // +0x188 (8 bytes)  @"ADButtonWithFont"
    UILabel *_quantityLabel;                 // +0x190 (8 bytes)  @"UILabel"
    UIButton *_buyButton;                    // +0x198 (8 bytes)  @"UIButton"
}
@property (weak) ADViewWithWeaponDetailViewController *armoryViewController;  // ivar: _armoryViewController
@property (retain, nonatomic) UILabel *weaponTitle;  // ivar: _weaponTitle
@property (retain, nonatomic) UIImageView *weaponImage;  // ivar: _weaponImage
@property (retain, nonatomic) ADButtonWithFont *buyOrUpgradeButton;  // ivar: _buyOrUpgradeButton
@property (retain, nonatomic) UILabel *quantityLabel;  // ivar: _quantityLabel
@property (retain, nonatomic) UIButton *buyButton;  // ivar: _buyButton
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithWeaponDictionary:(id)arg1;                                                   // IMP 0x1000b0ec8
- (void)viewDidLoad;                                                                       // IMP 0x1000b108c
- (void)handleBackActionFromStatusBar;                                                     // IMP 0x1000b14ac
- (void)buyOrUpgradeButtonPressed:(id)arg1;                                                // IMP 0x1000b1508
- (void)backButtonPressed:(id)arg1;                                                        // IMP 0x1000b17f4
- (void)dealloc;                                                                           // IMP 0x1000b1858
- (void).cxx_destruct;                                                                     // IMP 0x1000b1be0
- (id)armoryViewController;                                                                // IMP 0x1000b1a44
- (void)setArmoryViewController:(id)arg1;                                                  // IMP 0x1000b1a64
- (id)weaponTitle;                                                                         // IMP 0x1000b1a78
- (void)setWeaponTitle:(id)arg1;                                                           // IMP 0x1000b1a88
- (id)weaponImage;                                                                         // IMP 0x1000b1ac0
- (void)setWeaponImage:(id)arg1;                                                           // IMP 0x1000b1ad0
- (id)buyOrUpgradeButton;                                                                  // IMP 0x1000b1b08
- (void)setBuyOrUpgradeButton:(id)arg1;                                                    // IMP 0x1000b1b18
- (id)quantityLabel;                                                                       // IMP 0x1000b1b50
- (void)setQuantityLabel:(id)arg1;                                                         // IMP 0x1000b1b60
- (id)buyButton;                                                                           // IMP 0x1000b1b98
- (void)setBuyButton:(id)arg1;                                                             // IMP 0x1000b1ba8
@end

@interface ADArmoryLoadoutViewController : ADNoBarViewController <UIScrollViewDelegate, OBDropZone, ScrollViewContainerDelegate>   // instance size 392, class @0x100420dd8
{
    UIScrollView *_weaponScroller;           // +0x140 (8 bytes)  @"UIScrollView"
    UITextView *_loadoutInfoTextView;        // +0x148 (8 bytes)  @"UITextView"
    ADArmoryViewController *_armoryViewController; // +0x150 (8 bytes)  @"ADArmoryViewController"
    UIImageView *_weaponSlot1;               // +0x158 (8 bytes)  @"UIImageView"
    UIImageView *_weaponSlot2;               // +0x160 (8 bytes)  @"UIImageView"
    UIImageView *_meleeSlot;                 // +0x168 (8 bytes)  @"UIImageView"
    ADLoadoutScrollViewController *_weaponScrollViewController; // +0x170 (8 bytes)  @"ADLoadoutScrollViewController"
    CGPoint _scrollOffset;                   // +0x178 (16 bytes)  {CGPoint="x"d"y"d}
}
@property (retain, nonatomic) UIScrollView *weaponScroller;  // ivar: _weaponScroller
@property (retain, nonatomic) UITextView *loadoutInfoTextView;  // ivar: _loadoutInfoTextView
@property (weak, nonatomic) ADArmoryViewController *armoryViewController;  // ivar: _armoryViewController
@property () CGPoint scrollOffset;  // ivar: _scrollOffset
@property (retain, nonatomic) UIImageView *weaponSlot1;  // ivar: _weaponSlot1
@property (retain, nonatomic) UIImageView *weaponSlot2;  // ivar: _weaponSlot2
@property (retain, nonatomic) UIImageView *meleeSlot;  // ivar: _meleeSlot
@property (retain) ADLoadoutScrollViewController *weaponScrollViewController;  // ivar: _weaponScrollViewController
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10000938c
- (void)viewDidLoad;                                                                       // IMP 0x100009524
- (void)loadView;                                                                          // IMP 0x1000096bc
- (void)initInventoryView;                                                                 // IMP 0x1000098d4
- (void)initWeaponScroller;                                                                // IMP 0x100009c9c
- (unsigned long long)ovumEntered:(id)arg1 inView:(id)arg2 atLocation:(CGPoint)arg3;       // IMP 0x100009e80
- (void)ovumExited:(id)arg1 inView:(id)arg2 atLocation:(CGPoint)arg3;                      // IMP 0x100009e88
- (void)ovumDropped:(id)arg1 inView:(id)arg2 atLocation:(CGPoint)arg3;                     // IMP 0x100009e8c
- (void)refresh:(id)arg1;                                                                  // IMP 0x10000ad78
- (void)handleItemTap:(id)arg1;                                                            // IMP 0x10000adf4
- (void)openDescriptionForItemWithName:(id)arg1;                                           // IMP 0x10000ae68
- (void)openDescriptionForItemAtIndex:(int)arg1;                                           // IMP 0x10000b08c
- (void)dealloc;                                                                           // IMP 0x10000b150
- (void)slotOneTapped:(id)arg1;                                                            // IMP 0x10000b27c
- (void)slotTwoTapped:(id)arg1;                                                            // IMP 0x10000b32c
- (void)slotThreeTapped:(id)arg1;                                                          // IMP 0x10000b3dc
- (void).cxx_destruct;                                                                     // IMP 0x10000b6bc
- (id).cxx_construct;                                                                      // IMP 0x10000b75c
- (id)weaponScroller;                                                                      // IMP 0x10000b48c
- (void)setWeaponScroller:(id)arg1;                                                        // IMP 0x10000b49c
- (id)loadoutInfoTextView;                                                                 // IMP 0x10000b4d4
- (void)setLoadoutInfoTextView:(id)arg1;                                                   // IMP 0x10000b4e4
- (id)armoryViewController;                                                                // IMP 0x10000b51c
- (void)setArmoryViewController:(id)arg1;                                                  // IMP 0x10000b53c
- (CGPoint)scrollOffset;                                                                   // IMP 0x10000b550
- (void)setScrollOffset:(CGPoint)arg1;                                                     // IMP 0x10000b58c
- (id)weaponSlot1;                                                                         // IMP 0x10000b5c8
- (void)setWeaponSlot1:(id)arg1;                                                           // IMP 0x10000b5d8
- (id)weaponSlot2;                                                                         // IMP 0x10000b610
- (void)setWeaponSlot2:(id)arg1;                                                           // IMP 0x10000b620
- (id)meleeSlot;                                                                           // IMP 0x10000b658
- (void)setMeleeSlot:(id)arg1;                                                             // IMP 0x10000b668
- (id)weaponScrollViewController;                                                          // IMP 0x10000b6a0
- (void)setWeaponScrollViewController:(id)arg1;                                            // IMP 0x10000b6b0
@end

@interface ADArmoryPowerUpUpgraderViewController : ADNoBarViewController   // instance size 392, class @0x100421d28
{
    NSDictionary *powerUpDictionary;         // +0x140 (8 bytes)  @"NSDictionary"
    ADArmoryViewController *_armoryViewController; // +0x148 (8 bytes)  @"ADArmoryViewController"
    UILabel *_powerUpTitle;                  // +0x150 (8 bytes)  @"UILabel"
    UIImageView *_powerUpIcon;               // +0x158 (8 bytes)  @"UIImageView"
    UITextView *_powerUpDescription;         // +0x160 (8 bytes)  @"UITextView"
    ADButtonWithFont *_upgradeButton;        // +0x168 (8 bytes)  @"ADButtonWithFont"
    ADButtonWithFont *_voiceOverBack;        // +0x170 (8 bytes)  @"ADButtonWithFont"
    UIImageView *_badgeImage;                // +0x178 (8 bytes)  @"UIImageView"
    id<UIAlertViewDelegate> _alertViewDelegate; // +0x180 (8 bytes)  @"<UIAlertViewDelegate>"
}
@property (retain, nonatomic) ADArmoryViewController *armoryViewController;  // ivar: _armoryViewController
@property (retain, nonatomic) UILabel *powerUpTitle;  // ivar: _powerUpTitle
@property (retain, nonatomic) UIImageView *powerUpIcon;  // ivar: _powerUpIcon
@property (retain, nonatomic) UITextView *powerUpDescription;  // ivar: _powerUpDescription
@property (retain, nonatomic) ADButtonWithFont *upgradeButton;  // ivar: _upgradeButton
@property (retain, nonatomic) ADButtonWithFont *voiceOverBack;  // ivar: _voiceOverBack
@property (retain, nonatomic) UIImageView *badgeImage;  // ivar: _badgeImage
@property (retain) id<UIAlertViewDelegate> alertViewDelegate;  // ivar: _alertViewDelegate
- (id)initWithPowerupDictionary:(id)arg1;                                                  // IMP 0x10004d738
- (void)viewDidLoad;                                                                       // IMP 0x10004d7a8
- (void)loadView;                                                                          // IMP 0x10004d89c
- (void)loadInformation;                                                                   // IMP 0x10004da74
- (void)upgradeButtonPressed:(id)arg1;                                                     // IMP 0x10004e1b4
- (void)showNextLevel;                                                                     // IMP 0x10004ea98
- (void)backButtonPressed:(id)arg1;                                                        // IMP 0x10004ee38
- (void).cxx_destruct;                                                                     // IMP 0x10004f0b0
- (id)armoryViewController;                                                                // IMP 0x10004ee9c
- (void)setArmoryViewController:(id)arg1;                                                  // IMP 0x10004eeac
- (id)powerUpTitle;                                                                        // IMP 0x10004eee4
- (void)setPowerUpTitle:(id)arg1;                                                          // IMP 0x10004eef4
- (id)powerUpIcon;                                                                         // IMP 0x10004ef2c
- (void)setPowerUpIcon:(id)arg1;                                                           // IMP 0x10004ef3c
- (id)powerUpDescription;                                                                  // IMP 0x10004ef74
- (void)setPowerUpDescription:(id)arg1;                                                    // IMP 0x10004ef84
- (id)upgradeButton;                                                                       // IMP 0x10004efbc
- (void)setUpgradeButton:(id)arg1;                                                         // IMP 0x10004efcc
- (id)voiceOverBack;                                                                       // IMP 0x10004f004
- (void)setVoiceOverBack:(id)arg1;                                                         // IMP 0x10004f014
- (id)badgeImage;                                                                          // IMP 0x10004f04c
- (void)setBadgeImage:(id)arg1;                                                            // IMP 0x10004f05c
- (id)alertViewDelegate;                                                                   // IMP 0x10004f094
- (void)setAlertViewDelegate:(id)arg1;                                                     // IMP 0x10004f0a4
@end

@interface ADArmoryPowerUpViewController : ADNoBarViewController <UITableViewDataSource, UITableViewDelegate, ADBackAction, UIAlertViewDelegate>   // instance size 344, class @0x1004217d8
{
    ADArmoryPowerUpUpgraderViewController *detailView; // +0x140 (8 bytes)  @"ADArmoryPowerUpUpgraderViewController"
    UITableView *_tableView;                 // +0x148 (8 bytes)  @"UITableView"
    ADArmoryViewController *_armoryViewController; // +0x150 (8 bytes)  @"ADArmoryViewController"
}
@property (retain, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (retain, nonatomic) ADArmoryViewController *armoryViewController;  // ivar: _armoryViewController
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (void)viewDidLoad;                                                                       // IMP 0x10003a3cc
- (void)loadView;                                                                          // IMP 0x10003a6a8
- (void)handleBackActionFromStatusBar;                                                     // IMP 0x10003a7ac
- (void)handlePowerUpUpgrade:(id)arg1;                                                     // IMP 0x10003a7bc
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x10003a820
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x10003a8ac
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x10003a8b4
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x10003a96c
- (void)playSound;                                                                         // IMP 0x10003b3f0
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;                               // IMP 0x10003b4ec
- (void)alertView:(id)arg1 willDismissWithButtonIndex:(long long)arg2;                     // IMP 0x10003ba08
- (void)viewWillLayoutSubviews;                                                            // IMP 0x10003bbe4
- (BOOL)removeDetailView;                                                                  // IMP 0x10003bc90
- (void).cxx_destruct;                                                                     // IMP 0x10003bf48
- (id)tableView;                                                                           // IMP 0x10003beb8
- (void)setTableView:(id)arg1;                                                             // IMP 0x10003bec8
- (id)armoryViewController;                                                                // IMP 0x10003bf00
- (void)setArmoryViewController:(id)arg1;                                                  // IMP 0x10003bf10
@end

@interface ADArmoryShopViewController : ADNoBarViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 352, class @0x100422c78
{
    Accessible_ADWeaponDescriptionViewController *detailView; // +0x140 (8 bytes)  @"Accessible_ADWeaponDescriptionViewController"
    UITableView *_tableView;                 // +0x148 (8 bytes)  @"UITableView"
    ADArmoryViewController *_armoryViewController; // +0x150 (8 bytes)  @"ADArmoryViewController"
    NSMutableArray *_weaponReverseLookUp;    // +0x158 (8 bytes)  @"NSMutableArray"
}
@property (retain, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (weak, nonatomic) ADArmoryViewController *armoryViewController;  // ivar: _armoryViewController
@property (retain) NSMutableArray *weaponReverseLookUp;  // ivar: _weaponReverseLookUp
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (void)viewDidLoad;                                                                       // IMP 0x10008ea00
- (void)dealloc;                                                                           // IMP 0x10008ec64
- (void)loadView;                                                                          // IMP 0x10008ed40
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x10008ee44
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x10008eed0
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x10008eed8
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x10008ef90
- (void)handleWeaponUpgrade:(id)arg1;                                                      // IMP 0x1000908f4
- (void)playSound;                                                                         // IMP 0x100090958
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;                               // IMP 0x100090a54
- (void)showAccessibleDetailViewForWeaponWithName:(id)arg1;                                // IMP 0x100090c30
- (void)viewWillLayoutSubviews;                                                            // IMP 0x100090f64
- (void).cxx_destruct;                                                                     // IMP 0x1000910a8
- (id)tableView;                                                                           // IMP 0x100091010
- (void)setTableView:(id)arg1;                                                             // IMP 0x100091020
- (id)armoryViewController;                                                                // IMP 0x100091058
- (void)setArmoryViewController:(id)arg1;                                                  // IMP 0x100091078
- (id)weaponReverseLookUp;                                                                 // IMP 0x10009108c
- (void)setWeaponReverseLookUp:(id)arg1;                                                   // IMP 0x10009109c
@end

@interface ADArmoryViewController : ADViewWithWeaponDetailViewController <UIAlertViewDelegate>   // instance size 440, class @0x1004224a8
{
    NSString *weaponName;                    // +0x140 (8 bytes)  @"NSString"
    UIAlertView *currencyAlert;              // +0x148 (8 bytes)  @"UIAlertView"
    ADArmoryShopViewController *shop;        // +0x150 (8 bytes)  @"ADArmoryShopViewController"
    ADArmoryPowerUpViewController *powerups; // +0x158 (8 bytes)  @"ADArmoryPowerUpViewController"
    ADArmoryCurrencyViewController *currency; // +0x160 (8 bytes)  @"ADArmoryCurrencyViewController"
    UIViewController *loadOut;               // +0x168 (8 bytes)  @"UIViewController"
    BOOL _loadoutEnabled;                    // +0x170 (1 bytes)  B
    UIScrollView *_contentContainer;         // +0x178 (8 bytes)  @"UIScrollView"
    UIButton *_weaponsButton;                // +0x180 (8 bytes)  @"UIButton"
    UIButton *_powerUpButton;                // +0x188 (8 bytes)  @"UIButton"
    UIButton *_currencyButton;               // +0x190 (8 bytes)  @"UIButton"
    UIButton *_loadOutButton;                // +0x198 (8 bytes)  @"UIButton"
    NSTimer *_browsingTime;                  // +0x1a0 (8 bytes)  @"NSTimer"
    double _browse_dt;                       // +0x1a8 (8 bytes)  d
    NSString *_previousTab;                  // +0x1b0 (8 bytes)  @"NSString"
}
@property (retain, nonatomic) UIScrollView *contentContainer;  // ivar: _contentContainer
@property (retain, nonatomic) UIButton *weaponsButton;  // ivar: _weaponsButton
@property (retain, nonatomic) UIButton *powerUpButton;  // ivar: _powerUpButton
@property (retain, nonatomic) UIButton *currencyButton;  // ivar: _currencyButton
@property (retain, nonatomic) UIButton *loadOutButton;  // ivar: _loadOutButton
@property (retain, nonatomic) ADButtonWithFont *leftArrow;
@property (retain, nonatomic) ADButtonWithFont *rightArrow;
@property (retain) NSTimer *browsingTime;  // ivar: _browsingTime
@property (nonatomic) double browse_dt;  // ivar: _browse_dt
@property (retain) NSString *previousTab;  // ivar: _previousTab
@property () BOOL loadoutEnabled;  // ivar: _loadoutEnabled
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 loadoutEnabled:(BOOL)arg3;                  // IMP 0x100073864
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 tab:(id)arg3 loadoutEnabled:(BOOL)arg4;     // IMP 0x100073944
- (void)loadView;                                                                          // IMP 0x100073a7c
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 weapon:(id)arg3;                            // IMP 0x100073da4
- (void)viewDidLoad;                                                                       // IMP 0x100073e98
- (void)updateBrowseTimer:(id)arg1;                                                        // IMP 0x100074980
- (double)browse_dt;                                                                       // IMP 0x10007499c
- (void)loadWeapons;                                                                       // IMP 0x1000749bc
- (void)loadLoadout;                                                                       // IMP 0x100074d3c
- (void)loadPowerUps;                                                                      // IMP 0x100075048
- (void)loadCurrency;                                                                      // IMP 0x1000752d0
- (void)weaponsButtonPressed:(id)arg1;                                                     // IMP 0x10007555c
- (void)loadoutButtonPressed:(id)arg1;                                                     // IMP 0x10007571c
- (void)powerUpButtonPressed:(id)arg1;                                                     // IMP 0x100075a68
- (void)currencyButtonPressed:(id)arg1;                                                    // IMP 0x100075c28
- (void)updateTabsAfterButtonPressed:(id)arg1;                                             // IMP 0x100075de8
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100076044
- (void)backButtonPressed;                                                                 // IMP 0x100076080
- (void)trackBrowsingTime;                                                                 // IMP 0x1000761f8
- (void)sendDetailViewToBack;                                                              // IMP 0x100076618
- (void)setAccessibilityOnView:(id)arg1 to:(BOOL)arg2;                                     // IMP 0x100076654
- (void)toggleAccessibilityAfterTabWasSelected:(id)arg1;                                   // IMP 0x100076680
- (void)showNotEnoughMoneyAlert;                                                           // IMP 0x1000768d4
- (void)alertView:(id)arg1 willDismissWithButtonIndex:(long long)arg2;                     // IMP 0x100076b80
- (void)dealloc;                                                                           // IMP 0x100076cc0
- (void).cxx_destruct;                                                                     // IMP 0x100076fa0
- (id)contentContainer;                                                                    // IMP 0x100076dcc
- (void)setContentContainer:(id)arg1;                                                      // IMP 0x100076ddc
- (id)weaponsButton;                                                                       // IMP 0x100076e14
- (void)setWeaponsButton:(id)arg1;                                                         // IMP 0x100076e24
- (id)powerUpButton;                                                                       // IMP 0x100076e5c
- (void)setPowerUpButton:(id)arg1;                                                         // IMP 0x100076e6c
- (id)currencyButton;                                                                      // IMP 0x100076ea4
- (void)setCurrencyButton:(id)arg1;                                                        // IMP 0x100076eb4
- (id)loadOutButton;                                                                       // IMP 0x100076eec
- (void)setLoadOutButton:(id)arg1;                                                         // IMP 0x100076efc
- (id)browsingTime;                                                                        // IMP 0x100076f34
- (void)setBrowsingTime:(id)arg1;                                                          // IMP 0x100076f44
- (void)setBrowse_dt:(double)arg1;                                                         // IMP 0x100076f50
- (id)previousTab;                                                                         // IMP 0x100076f60
- (void)setPreviousTab:(id)arg1;                                                           // IMP 0x100076f70
- (BOOL)loadoutEnabled;                                                                    // IMP 0x100076f7c
- (void)setLoadoutEnabled:(BOOL)arg1;                                                      // IMP 0x100076f90
@end

@interface ADArmoryWeaponDescriptionViewController : ADArmoryItemDescriptionViewController   // instance size 480, class @0x100422db8
{
    NSDictionary *weaponInventoryDict;       // +0x140 (8 bytes)  @"NSDictionary"
    NSDictionary *weaponStatsDict;           // +0x148 (8 bytes)  @"NSDictionary"
    NSMutableArray *statBars;                // +0x150 (8 bytes)  @"NSMutableArray"
    NSDictionary *currentLevelDict;          // +0x158 (8 bytes)  @"NSDictionary"
    NSDictionary *nextLevelDict;             // +0x160 (8 bytes)  @"NSDictionary"
    int button_state;                        // +0x168 (4 bytes)  i
    int current_level;                       // +0x16c (4 bytes)  i
    BOOL _hideEquipButtons;                  // +0x170 (1 bytes)  B
    UIView *_damagesView;                    // +0x178 (8 bytes)  @"UIView"
    UIView *_capacityView;                   // +0x180 (8 bytes)  @"UIView"
    UIView *_reloadSpeedView;                // +0x188 (8 bytes)  @"UIView"
    UIView *_fireRateView;                   // +0x190 (8 bytes)  @"UIView"
    UIImageView *_levelImage;                // +0x198 (8 bytes)  @"UIImageView"
    UIImageView *_lockImage;                 // +0x1a0 (8 bytes)  @"UIImageView"
    ADButtonWithFont *_cancelBuyOrUpgradeButton; // +0x1a8 (8 bytes)  @"ADButtonWithFont"
    UITextView *_shopInfoTextView;           // +0x1b0 (8 bytes)  @"UITextView"
    UIButton *_equip1Button;                 // +0x1b8 (8 bytes)  @"UIButton"
    UIButton *_equip2Button;                 // +0x1c0 (8 bytes)  @"UIButton"
    UILabel *_damamgesLabel;                 // +0x1c8 (8 bytes)  @"UILabel"
    UILabel *_capacityLabel;                 // +0x1d0 (8 bytes)  @"UILabel"
    UILabel *_effectiveAngleLabel;           // +0x1d8 (8 bytes)  @"UILabel"
}
@property (weak) ADViewWithWeaponDetailViewController *armoryViewController;
@property (retain, nonatomic) UILabel *weaponTitle;
@property (retain, nonatomic) UIView *damagesView;  // ivar: _damagesView
@property (retain, nonatomic) UIView *capacityView;  // ivar: _capacityView
@property (retain, nonatomic) UIView *reloadSpeedView;  // ivar: _reloadSpeedView
@property (retain, nonatomic) UIView *fireRateView;  // ivar: _fireRateView
@property (retain, nonatomic) UIImageView *weaponImage;
@property (retain, nonatomic) UIImageView *levelImage;  // ivar: _levelImage
@property (retain, nonatomic) UIImageView *lockImage;  // ivar: _lockImage
@property (retain, nonatomic) ADButtonWithFont *buyOrUpgradeButton;
@property (retain, nonatomic) ADButtonWithFont *cancelBuyOrUpgradeButton;  // ivar: _cancelBuyOrUpgradeButton
@property (retain, nonatomic) UITextView *shopInfoTextView;  // ivar: _shopInfoTextView
@property (retain, nonatomic) UIButton *equip1Button;  // ivar: _equip1Button
@property (retain, nonatomic) UIButton *equip2Button;  // ivar: _equip2Button
@property (nonatomic) BOOL hideEquipButtons;  // ivar: _hideEquipButtons
@property (retain, nonatomic) UILabel *damamgesLabel;  // ivar: _damamgesLabel
@property (retain, nonatomic) UILabel *capacityLabel;  // ivar: _capacityLabel
@property (retain, nonatomic) UILabel *effectiveAngleLabel;  // ivar: _effectiveAngleLabel
- (id)initWithWeaponDictionary:(id)arg1;                                                   // IMP 0x100092afc
- (void)viewDidLoad;                                                                       // IMP 0x100092cc0
- (void)loadView;                                                                          // IMP 0x100092f50
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x1000934d0
- (void)handleBackActionFromStatusBar;                                                     // IMP 0x100093770
- (void)initForCurrentLevel;                                                               // IMP 0x1000937cc
- (void)setStatBars;                                                                       // IMP 0x100093be4
- (void)checkLock;                                                                         // IMP 0x100094364
- (void)cancelBuyOrUpgradeButtonPressed:(id)arg1;                                          // IMP 0x100094a08
- (void)buyOrUpgradeButtonPressed:(id)arg1;                                                // IMP 0x100094a28
- (void)showNextLevel;                                                                     // IMP 0x100095ba0
- (BOOL)upgradeToNextLevel;                                                                // IMP 0x100095cd4
- (void)checkEquipButtons;                                                                 // IMP 0x100096878
- (void)equipSlot1ButtonPressed:(id)arg1;                                                  // IMP 0x100096c98
- (void)equipSlot2ButtonPressed:(id)arg1;                                                  // IMP 0x100096dc4
- (void)dealloc;                                                                           // IMP 0x100096ef0
- (void).cxx_destruct;                                                                     // IMP 0x1000974a4
- (id)damagesView;                                                                         // IMP 0x1000970dc
- (void)setDamagesView:(id)arg1;                                                           // IMP 0x1000970ec
- (id)capacityView;                                                                        // IMP 0x100097124
- (void)setCapacityView:(id)arg1;                                                          // IMP 0x100097134
- (id)reloadSpeedView;                                                                     // IMP 0x10009716c
- (void)setReloadSpeedView:(id)arg1;                                                       // IMP 0x10009717c
- (id)fireRateView;                                                                        // IMP 0x1000971b4
- (void)setFireRateView:(id)arg1;                                                          // IMP 0x1000971c4
- (id)levelImage;                                                                          // IMP 0x1000971fc
- (void)setLevelImage:(id)arg1;                                                            // IMP 0x10009720c
- (id)lockImage;                                                                           // IMP 0x100097244
- (void)setLockImage:(id)arg1;                                                             // IMP 0x100097254
- (id)cancelBuyOrUpgradeButton;                                                            // IMP 0x10009728c
- (void)setCancelBuyOrUpgradeButton:(id)arg1;                                              // IMP 0x10009729c
- (id)shopInfoTextView;                                                                    // IMP 0x1000972d4
- (void)setShopInfoTextView:(id)arg1;                                                      // IMP 0x1000972e4
- (id)equip1Button;                                                                        // IMP 0x10009731c
- (void)setEquip1Button:(id)arg1;                                                          // IMP 0x10009732c
- (id)equip2Button;                                                                        // IMP 0x100097364
- (void)setEquip2Button:(id)arg1;                                                          // IMP 0x100097374
- (BOOL)hideEquipButtons;                                                                  // IMP 0x1000973ac
- (void)setHideEquipButtons:(BOOL)arg1;                                                    // IMP 0x1000973bc
- (id)damamgesLabel;                                                                       // IMP 0x1000973cc
- (void)setDamamgesLabel:(id)arg1;                                                         // IMP 0x1000973dc
- (id)capacityLabel;                                                                       // IMP 0x100097414
- (void)setCapacityLabel:(id)arg1;                                                         // IMP 0x100097424
- (id)effectiveAngleLabel;                                                                 // IMP 0x10009745c
- (void)setEffectiveAngleLabel:(id)arg1;                                                   // IMP 0x10009746c
@end

@interface ADBrick : NSObject   // instance size 104, class @0x1004230d8
{
    NSDictionary *brickDictionnary;          // +0x8 (8 bytes)  @"NSDictionary"
    NSDictionary *powerUpDictionary;         // +0x10 (8 bytes)  @"NSDictionary"
    NSMutableArray *enemiesArray;            // +0x18 (8 bytes)  @"NSMutableArray"
    NSMutableArray *soundsArray;             // +0x20 (8 bytes)  @"NSMutableArray"
    NSMutableSet *playlistsRequiringActivation; // +0x28 (8 bytes)  @"NSMutableSet"
    int playlistsActivated;                  // +0x30 (4 bytes)  i
    NSArray *tips;                           // +0x38 (8 bytes)  @"NSArray"
    S3DPlayList *soundsPlaylist;             // +0x40 (8 bytes)  @"S3DPlayList"
    float timeInBrick;                       // +0x48 (4 bytes)  f
    int _tag;                                // +0x4c (4 bytes)  i
    NSString *_name;                         // +0x50 (8 bytes)  @"NSString"
    NSString *_ambiantName;                  // +0x58 (8 bytes)  @"NSString"
    NSMutableSet *_playlists;                // +0x60 (8 bytes)  @"NSMutableSet"
}
@property (nonatomic) int tag;  // ivar: _tag
@property (retain, nonatomic) NSString *name;  // ivar: _name
@property (retain, nonatomic) NSString *ambiantName;  // ivar: _ambiantName
@property (retain, nonatomic) NSMutableSet *playlists;  // ivar: _playlists
- (id)initBrickWithName:(id)arg1;                                                          // IMP 0x10009ea80
- (void)initSounds;                                                                        // IMP 0x10009f274
- (void)initPassersBy;                                                                     // IMP 0x10009f6b4
- (void)activateAllPlaylists;                                                              // IMP 0x10009fc98
- (void)loadPLaylistWithName:(id)arg1;                                                     // IMP 0x10009fdec
- (id)activatePLaylistsNotInSet:(id)arg1;                                                  // IMP 0x10009ffc8
- (id)randomTip;                                                                           // IMP 0x1000a0310
- (void)deactivatePlaylistsFromSet:(id)arg1;                                               // IMP 0x1000a0560
- (void)deactivateAllPlaylists;                                                            // IMP 0x1000a07b8
- (void)onPlaylistActivated:(id)arg1;                                                      // IMP 0x1000a0a1c
- (void)checkAllPlaylistsAreLoaded;                                                        // IMP 0x1000a0bf4
- (id)enemies;                                                                             // IMP 0x1000a0d84
- (void)clearEnemies;                                                                      // IMP 0x1000a0d94
- (void)update:(float)arg1;                                                                // IMP 0x1000a0ed0
- (void)stopAllEnemiesAfterPlayerDeath;                                                    // IMP 0x1000a1384
- (void)stopBrickAmbiant;                                                                  // IMP 0x1000a1578
- (BOOL)brickIsCleared;                                                                    // IMP 0x1000a1658
- (void)checkSpawnOnStart:(id)arg1;                                                        // IMP 0x1000a19fc
- (void)checkSpawnAfterKill:(id)arg1 skipped:(BOOL)arg2;                                   // IMP 0x1000a20ac
- (void)stopAllSounds;                                                                     // IMP 0x1000a2b64
- (BOOL)hasSkippableSoundsPlaying;                                                         // IMP 0x1000a2c98
- (void)skipAllSkippableSounds;                                                            // IMP 0x1000a2e40
- (void)pause;                                                                             // IMP 0x1000a2fbc
- (void)resume;                                                                            // IMP 0x1000a31c4
- (void)clean;                                                                             // IMP 0x1000a33cc
- (void).cxx_destruct;                                                                     // IMP 0x1000a352c
- (int)tag;                                                                                // IMP 0x1000a3434
- (void)setTag:(int)arg1;                                                                  // IMP 0x1000a3444
- (id)name;                                                                                // IMP 0x1000a3454
- (void)setName:(id)arg1;                                                                  // IMP 0x1000a3464
- (id)ambiantName;                                                                         // IMP 0x1000a349c
- (void)setAmbiantName:(id)arg1;                                                           // IMP 0x1000a34ac
- (id)playlists;                                                                           // IMP 0x1000a34e4
- (void)setPlaylists:(id)arg1;                                                             // IMP 0x1000a34f4
@end

@interface ADBrickManager : NSObject   // instance size 128, class @0x1004238a8
{
    NSDictionary *brickDictionary;           // +0x8 (8 bytes)  @"NSDictionary"
    NSDictionary *brickChanceDictionary;     // +0x10 (8 bytes)  @"NSDictionary"
    NSDictionary *enemyDictionary;           // +0x18 (8 bytes)  @"NSDictionary"
    NSMutableArray *bricks;                  // +0x20 (8 bytes)  @"NSMutableArray"
    NSMutableSet *deactivationList;          // +0x28 (8 bytes)  @"NSMutableSet"
    NSArray *brickScenario;                  // +0x30 (8 bytes)  @"NSArray"
    BOOL loopBrickScenario;                  // +0x38 (1 bytes)  B
    int currentWave;                         // +0x3c (4 bytes)  i
    NSMutableArray *powerupList;             // +0x40 (8 bytes)  @"NSMutableArray"
    float minimumSquaredDistance;            // +0x48 (4 bytes)  f
    float nextDiamondTime;                   // +0x4c (4 bytes)  f
    NSMutableArray *diamonds;                // +0x50 (8 bytes)  @"NSMutableArray"
    ADPasserByManager *passerByManager;      // +0x58 (8 bytes)  @"ADPasserByManager"
    ADPowerUpManager *powerUpManager;        // +0x60 (8 bytes)  @"ADPowerUpManager"
    float timeElapsed;                       // +0x68 (4 bytes)  f
    BOOL startedMainMenuMusic;               // +0x6c (1 bytes)  B
    BOOL challengeIsOver;                    // +0x6d (1 bytes)  B
    BOOL _playerIsDead;                      // +0x6e (1 bytes)  B
    int _mode;                               // +0x70 (4 bytes)  i
    float _currentRandomAngle;               // +0x74 (4 bytes)  f
    ADGameplayViewController *_gameplayViewController; // +0x78 (8 bytes)  @"ADGameplayViewController"
}
@property (weak, nonatomic) ADGameplayViewController *gameplayViewController;  // ivar: _gameplayViewController
@property (nonatomic) int mode;  // ivar: _mode
@property () BOOL playerIsDead;  // ivar: _playerIsDead
@property () float currentRandomAngle;  // ivar: _currentRandomAngle
+ (id)sharedBrickManager;                                                                  // IMP 0x1000c0fac
- (id)init;                                                                                // IMP 0x1000c1044
- (void)loadBrickChancePlist:(id)arg1;                                                     // IMP 0x1000c15d4
- (void)loadBrickScenarioPlist:(id)arg1;                                                   // IMP 0x1000c176c
- (void)loadBrickChallengeArray:(id)arg1;                                                  // IMP 0x1000c1894
- (void)loadImpactPlaylist;                                                                // IMP 0x1000c1990
- (void)reset;                                                                             // IMP 0x1000c1a38
- (void)runSanityCheck;                                                                    // IMP 0x1000c1a94
- (BOOL)isBrickWithNameSane:(id)arg1;                                                      // IMP 0x1000c1cc4
- (id)currentBrick;                                                                        // IMP 0x1000c20d8
- (id)randomItemInBrickDictionary:(id)arg1;                                                // IMP 0x1000c20f4
- (id)brickNameForWaveNumber:(int)arg1;                                                    // IMP 0x1000c21a4
- (BOOL)canUseBrickWithName:(id)arg1;                                                      // IMP 0x1000c259c
- (id)scenarioBrickNameForWaveNumber:(int)arg1;                                            // IMP 0x1000c28d8
- (void)loadBrickWithName:(id)arg1;                                                        // IMP 0x1000c2930
- (void)checkPlaylistDeactivation;                                                         // IMP 0x1000c2da8
- (id)currentBrickName;                                                                    // IMP 0x1000c2fa0
- (int)mode;                                                                               // IMP 0x1000c301c
- (void)loadNextBrick;                                                                     // IMP 0x1000c3058
- (void)clearCurrentBrick;                                                                 // IMP 0x1000c3364
- (id)enemiesList;                                                                         // IMP 0x1000c33c0
- (id)displayNameForEnemyWithName:(id)arg1;                                                // IMP 0x1000c33d0
- (id)dictionaryForEnemyName:(id)arg1;                                                     // IMP 0x1000c3458
- (id)allPotentialTargets;                                                                 // IMP 0x1000c348c
- (int)numberOfActiveObjectsOnScene;                                                       // IMP 0x1000c35e4
- (id)enemiesFromCurrentBrick;                                                             // IMP 0x1000c3734
- (void)update:(float)arg1;                                                                // IMP 0x1000c37b0
- (void)startMainMenuMusic;                                                                // IMP 0x1000c3dc0
- (float)minimumSquaredDistance;                                                           // IMP 0x1000c3e78
- (void)blowEnemiesAway:(float)arg1;                                                       // IMP 0x1000c3e88
- (id)closestEnemy;                                                                        // IMP 0x1000c3ffc
- (id)calculateHitEnemiesWithWeapon:(id)arg1 FromAngle:(float)arg2;                        // IMP 0x1000c41c4
- (void)shotWithSpecialWeapon:(id)arg1;                                                    // IMP 0x1000c4b38
- (void)shotWithWeapon:(id)arg1;                                                           // IMP 0x1000c4dfc
- (id)targetEnemiForExplosiveWeapon:(id)arg1;                                              // IMP 0x1000c57b8
- (BOOL)solveExplosionWithDictionary:(id)arg1 atPosition:(CGPoint)arg2 withWeaponName:(id)arg3 ignoreTinnitus:(BOOL)arg4; // IMP 0x1000c5c40
- (void)solveExplosionOfProjectile:(id)arg1;                                               // IMP 0x1000c6360
- (void)checkDeathsForHitEnemies:(id)arg1 withWeaponName:(id)arg2;                         // IMP 0x1000c66a4
- (void)soundOrEnemyWithNameWasDeactivated:(id)arg1;                                       // IMP 0x1000c6b8c
- (void)soundOrEnemyWithNameWasDeactivated:(id)arg1 withSkip:(BOOL)arg2;                   // IMP 0x1000c6bb0
- (void)currentBrickIsCleared;                                                             // IMP 0x1000c6ca0
- (int)enemiesAliveOrReadyToSpawn;                                                         // IMP 0x1000c6eb8
- (void)checkSpawnOnStart:(id)arg1;                                                        // IMP 0x1000c7084
- (void)checkEnemiesSpawnAfterKill:(id)arg1 skipped:(BOOL)arg2;                            // IMP 0x1000c7118
- (void)stopAllEnemiesAfterPlayerDeathByEnemyWithName:(id)arg1;                            // IMP 0x1000c71b4
- (void)showReviveView;                                                                    // IMP 0x1000c74fc
- (void)revive;                                                                            // IMP 0x1000c7558
- (void)gameOver;                                                                          // IMP 0x1000c75b0
- (void)addDiamond;                                                                        // IMP 0x1000c7748
- (void)randomizeNextDiamondTime;                                                          // IMP 0x1000c78ec
- (void)cleanDiamonds;                                                                     // IMP 0x1000c7948
- (void)stopAllSoundsInCurrentBrick;                                                       // IMP 0x1000c7970
- (BOOL)hasSkippableSoundsPlaying;                                                         // IMP 0x1000c79cc
- (void)skipSkippableSounds;                                                               // IMP 0x1000c7a34
- (void)addPasserBy:(id)arg1;                                                              // IMP 0x1000c7a90
- (int)passersByCount;                                                                     // IMP 0x1000c7abc
- (void)cleanPassersBy;                                                                    // IMP 0x1000c7b30
- (void)tryToPopPowerUpContainer;                                                          // IMP 0x1000c7b4c
- (void)forceToPopPowerUpContainerWithType:(id)arg1;                                       // IMP 0x1000c7b68
- (void)pauseAllBricks;                                                                    // IMP 0x1000c7d6c
- (void)resumeAllBricks;                                                                   // IMP 0x1000c7de8
- (void)clean;                                                                             // IMP 0x1000c7e64
- (void).cxx_destruct;                                                                     // IMP 0x1000c8044
- (id)gameplayViewController;                                                              // IMP 0x1000c7fb4
- (void)setGameplayViewController:(id)arg1;                                                // IMP 0x1000c7fd4
- (void)setMode:(int)arg1;                                                                 // IMP 0x1000c7fe8
- (BOOL)playerIsDead;                                                                      // IMP 0x1000c7ff8
- (void)setPlayerIsDead:(BOOL)arg1;                                                        // IMP 0x1000c800c
- (float)currentRandomAngle;                                                               // IMP 0x1000c801c
- (void)setCurrentRandomAngle:(float)arg1;                                                 // IMP 0x1000c8030
@end

@interface ADButtonWithCost : UIButton   // instance size 140, class @0x100422548
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x10007830c
@end

@interface ADButtonWithFont : UIButton   // instance size 184, class @0x100422458
{
    NSString *wantedTitle;                   // +0x90 (8 bytes)  @"NSString"
    int _diamonds;                           // +0x98 (4 bytes)  i
    int _coins;                              // +0x9c (4 bytes)  i
    NSNumber *_fontSize;                     // +0xa0 (8 bytes)  @"NSNumber"
    NSString *_fontName;                     // +0xa8 (8 bytes)  @"NSString"
    NSString *_glow;                         // +0xb0 (8 bytes)  @"NSString"
}
@property (retain, nonatomic) NSNumber *fontSize;  // ivar: _fontSize
@property (retain, nonatomic) NSString *fontName;  // ivar: _fontName
@property (retain, nonatomic) NSString *glow;  // ivar: _glow
@property (nonatomic) int diamonds;  // ivar: _diamonds
@property (nonatomic) int coins;  // ivar: _coins
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x100072f40
- (void)awakeFromNib;                                                                      // IMP 0x100072f7c
- (void)makeAccessible;                                                                    // IMP 0x10007302c
- (void)setTitle:(id)arg1 forState:(unsigned long long)arg2;                               // IMP 0x1000733f8
- (void)playSound;                                                                         // IMP 0x100073578
- (BOOL)isIphone;                                                                          // IMP 0x100073674
- (void).cxx_destruct;                                                                     // IMP 0x1000737fc
- (id)fontSize;                                                                            // IMP 0x1000736e4
- (void)setFontSize:(id)arg1;                                                              // IMP 0x1000736f4
- (id)fontName;                                                                            // IMP 0x10007372c
- (void)setFontName:(id)arg1;                                                              // IMP 0x10007373c
- (id)glow;                                                                                // IMP 0x100073774
- (void)setGlow:(id)arg1;                                                                  // IMP 0x100073784
- (int)diamonds;                                                                           // IMP 0x1000737bc
- (void)setDiamonds:(int)arg1;                                                             // IMP 0x1000737cc
- (int)coins;                                                                              // IMP 0x1000737dc
- (void)setCoins:(int)arg1;                                                                // IMP 0x1000737ec
@end

@interface ADButtonWithSwipe : UIButton <UIGestureRecognizerDelegate>   // instance size 208, class @0x100421418
{
    BOOL hasSwiped;                          // +0x8c (1 bytes)  B
    float buttonPressedDuration;             // +0x90 (4 bytes)  f
    UIPanGestureRecognizer *pan;             // +0x98 (8 bytes)  @"UIPanGestureRecognizer"
    UITapGestureRecognizer *tripleTap;       // +0xa0 (8 bytes)  @"UITapGestureRecognizer"
    SEL selector;                            // +0xa8 (8 bytes)  :
    NSString *currentImage;                  // +0xb0 (8 bytes)  @"NSString"
    BOOL _buttonIsDown;                      // +0xb8 (1 bytes)  B
    BOOL _allowSwipe;                        // +0xb9 (1 bytes)  B
    ADWeaponManager *_weaponManager;         // +0xc0 (8 bytes)  @"ADWeaponManager"
    ADGameplayViewController *_gameplayViewController; // +0xc8 (8 bytes)  @"ADGameplayViewController"
}
@property (nonatomic) BOOL buttonIsDown;  // ivar: _buttonIsDown
@property (weak, nonatomic) ADWeaponManager *weaponManager;  // ivar: _weaponManager
@property () BOOL allowSwipe;  // ivar: _allowSwipe
@property (weak, nonatomic) ADGameplayViewController *gameplayViewController;  // ivar: _gameplayViewController
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x1000243e0
- (void)awakeFromNib;                                                                      // IMP 0x10002441c
- (void)setWeaponManager:(id)arg1;                                                         // IMP 0x10002447c
- (void)initGestureRecognizers;                                                            // IMP 0x100024490
- (BOOL)gestureRecognizer:(id)arg1 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg2; // IMP 0x100024934
- (void)update:(float)arg1;                                                                // IMP 0x10002493c
- (void)setButtonIsDown:(BOOL)arg1;                                                        // IMP 0x100024cf4
- (void)touchedDown;                                                                       // IMP 0x100024e8c
- (void)touchedUp;                                                                         // IMP 0x100024ea0
- (void)touchDragOutside;                                                                  // IMP 0x100024f18
- (void)touchDragExit;                                                                     // IMP 0x100024f28
- (void)touchCanceled;                                                                     // IMP 0x100024f38
- (void)handleSwipeGesture;                                                                // IMP 0x100025004
- (void)handlePan;                                                                         // IMP 0x100025054
- (void)handleTripleTap;                                                                   // IMP 0x100025174
- (void).cxx_destruct;                                                                     // IMP 0x1000252c0
- (BOOL)buttonIsDown;                                                                      // IMP 0x100025238
- (id)weaponManager;                                                                       // IMP 0x100025248
- (BOOL)allowSwipe;                                                                        // IMP 0x100025268
- (void)setAllowSwipe:(BOOL)arg1;                                                          // IMP 0x10002527c
- (id)gameplayViewController;                                                              // IMP 0x10002528c
- (void)setGameplayViewController:(id)arg1;                                                // IMP 0x1000252ac
@end

@interface ADCarAlarm : ADPasserBy   // instance size 8, class @0x100423358
- (id)initWithName:(id)arg1;                                                               // IMP 0x1000ae8b8
- (void)update:(float)arg1;                                                                // IMP 0x1000ae968
- (void)startAlarm;                                                                        // IMP 0x1000aeab8
- (void)die;                                                                               // IMP 0x1000aecac
@end

@interface ADChallengeBuyWeaponViewController : ADNoBarViewController   // instance size 360, class @0x1004212d8
{
    NSString *weaponName;                    // +0x140 (8 bytes)  @"NSString"
    NSDictionary *_weaponDict;               // +0x148 (8 bytes)  @"NSDictionary"
    UIButton *_weaponButton;                 // +0x150 (8 bytes)  @"UIButton"
    UIButton *_coinButton;                   // +0x158 (8 bytes)  @"UIButton"
    ADChallengeLockedViewController *_challengeLockedViewController; // +0x160 (8 bytes)  @"ADChallengeLockedViewController"
}
@property (retain, nonatomic) NSDictionary *weaponDict;  // ivar: _weaponDict
@property (retain, nonatomic) UIButton *weaponButton;  // ivar: _weaponButton
@property (retain, nonatomic) UIButton *coinButton;  // ivar: _coinButton
@property (weak, nonatomic) ADChallengeLockedViewController *challengeLockedViewController;  // ivar: _challengeLockedViewController
- (id)initWithweaponName:(id)arg1;                                                         // IMP 0x1000202b0
- (void)viewDidLoad;                                                                       // IMP 0x10002035c
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100020778
- (void)buttonPressed:(id)arg1;                                                            // IMP 0x1000207b4
- (void).cxx_destruct;                                                                     // IMP 0x100020940
- (id)weaponDict;                                                                          // IMP 0x100020834
- (void)setWeaponDict:(id)arg1;                                                            // IMP 0x100020844
- (id)weaponButton;                                                                        // IMP 0x10002087c
- (void)setWeaponButton:(id)arg1;                                                          // IMP 0x10002088c
- (id)coinButton;                                                                          // IMP 0x1000208c4
- (void)setCoinButton:(id)arg1;                                                            // IMP 0x1000208d4
- (id)challengeLockedViewController;                                                       // IMP 0x10002090c
- (void)setChallengeLockedViewController:(id)arg1;                                         // IMP 0x10002092c
@end

@interface ADChallengeCompletedViewController : ADChallengeViewController   // instance size 336, class @0x100421b98
{
    NSMutableArray *missionsViewControllerArray; // +0x140 (8 bytes)  @"NSMutableArray"
    int starGlows;                           // +0x148 (4 bytes)  i
    int totalStarsToAnimate;                 // +0x14c (4 bytes)  i
}
@property (retain, nonatomic) UIScrollView *contentScrollView;
@property (retain, nonatomic) UIView *contentView;
@property (retain, nonatomic) UILabel *timeLabel;
- (void)viewDidLoad;                                                                       // IMP 0x10004699c
- (void)loadView;                                                                          // IMP 0x10004739c
- (id)timeStringFromSeconds:(int)arg1;                                                     // IMP 0x100047708
- (void)viewDidLayoutSubviews;                                                             // IMP 0x1000477e8
- (int)checkCompletion;                                                                    // IMP 0x100047824
- (void)swipeLeft;                                                                         // IMP 0x100047dd0
- (void)swipeRight;                                                                        // IMP 0x100047e20
- (void)scoreButtonPressed:(id)arg1;                                                       // IMP 0x100047e24
- (void)missionButtonPressed:(id)arg1;                                                     // IMP 0x100047e28
- (int)unlockTimeLimitStarWithGlow:(BOOL)arg1;                                             // IMP 0x100047e2c
- (int)unlockAccuracyStarWithGlow:(BOOL)arg1;                                              // IMP 0x100047f40
- (int)unlockMissionStarWithGlow:(BOOL)arg1;                                               // IMP 0x100048054
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x100048168
- (void)resumeFromStats;                                                                   // IMP 0x100048260
- (BOOL)checkAllAnimationsAreComplete;                                                     // IMP 0x100048324
- (void)stopAnimations;                                                                    // IMP 0x1000486cc
- (void)backButtonPressed;                                                                 // IMP 0x100048728
- (void)missionSelectButtonPressed:(id)arg1;                                               // IMP 0x100048864
- (void)nextMissionButtonPressed:(id)arg1;                                                 // IMP 0x1000489bc
- (void)retryButtonPressed:(id)arg1;                                                       // IMP 0x100048ba0
- (void)showGameStatistics:(id)arg1;                                                       // IMP 0x100048d3c
- (void)moreStatsButtonPressed:(id)arg1;                                                   // IMP 0x100048e70
- (void)reportScoreToGameCenter;                                                           // IMP 0x100048fa4
- (void)playButtonSound;                                                                   // IMP 0x100049300
- (void).cxx_destruct;                                                                     // IMP 0x1000493fc
@end

@interface ADChallengeData : NSObject   // instance size 16, class @0x100421288
{
    NSMutableDictionary *_challengeData;     // +0x8 (8 bytes)  @"NSMutableDictionary"
}
@property (retain) NSMutableDictionary *challengeData;  // ivar: _challengeData
+ (id)sharedChallengeData;                                                                 // IMP 0x10001dd28
- (id)init;                                                                                // IMP 0x10001ddc0
- (void)createOrRestoreChallengeData;                                                      // IMP 0x10001de40
- (id)dictionaryForChallengeWithName:(id)arg1;                                             // IMP 0x10001dfd0
- (BOOL)hasCompletedChallengeWithName:(id)arg1;                                            // IMP 0x10001e124
- (BOOL)hasAccuracyStarForChallengeWithName:(id)arg1;                                      // IMP 0x10001e1dc
- (BOOL)hasTimeLimitStarForChallengeWithName:(id)arg1;                                     // IMP 0x10001e294
- (void)playerDidCompleteChallengeWithName:(id)arg1 accuracyUnlocked:(BOOL)arg2 timeLimitUnlocked:(BOOL)arg3; // IMP 0x10001e34c
- (unsigned long long)computeTotalChallengesWon;                                           // IMP 0x10001e5f4
- (void)saveChallengeData;                                                                 // IMP 0x10001e814
- (int)totalStarsUnlockedForWorld:(id)arg1;                                                // IMP 0x10001e8e0
- (int)totalStarsUnlocked;                                                                 // IMP 0x10001ecd4
- (int)starsRequirementForWorld:(id)arg1;                                                  // IMP 0x10001eefc
- (int)numberOfChallengesForWorld:(id)arg1;                                                // IMP 0x10001f094
- (BOOL)hasChallengeAfter:(id)arg1 inWorld:(id)arg2;                                       // IMP 0x10001f230
- (id)challengeAfter:(id)arg1 inWorld:(id)arg2;                                            // IMP 0x10001f52c
- (BOOL)hasWeaponForChallengeWithName:(id)arg1;                                            // IMP 0x10001f868
- (BOOL)needsWeaponToCompleteChallengeWithName:(id)arg1;                                   // IMP 0x10001fc94
- (BOOL)hasChallengeRequirementsForChallengeWithName:(id)arg1;                             // IMP 0x10001ffbc
- (void).cxx_destruct;                                                                     // IMP 0x10002029c
- (id)challengeData;                                                                       // IMP 0x100020280
- (void)setChallengeData:(id)arg1;                                                         // IMP 0x100020290
@end

@interface ADChallengeDescription : UITextView   // instance size 120, class @0x100422cc8
{
    NSNumber *_fontSize;                     // +0x70 (8 bytes)  @"NSNumber"
}
@property (retain, nonatomic) NSNumber *fontSize;  // ivar: _fontSize
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x10009110c
- (void)awakeFromNib;                                                                      // IMP 0x100091148
- (void)didMoveToSuperview;                                                                // IMP 0x1000911a4
- (void)updateLayout;                                                                      // IMP 0x100091200
- (void)setText:(id)arg1;                                                                  // IMP 0x10009153c
- (BOOL)isIphone;                                                                          // IMP 0x1000916a4
- (void).cxx_destruct;                                                                     // IMP 0x10009175c
- (id)fontSize;                                                                            // IMP 0x100091714
- (void)setFontSize:(id)arg1;                                                              // IMP 0x100091724
@end

@interface ADChallengeFailedViewController : ADChallengeViewController   // instance size 336, class @0x100422368
{
    S3DPlayList *gameOverPlaylist;           // +0x140 (8 bytes)  @"S3DPlayList"
    UITextView *_tipTextView;                // +0x148 (8 bytes)  @"UITextView"
}
@property (retain, nonatomic) UITextView *tipTextView;  // ivar: _tipTextView
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000716dc
- (void)viewDidLoad;                                                                       // IMP 0x100071718
- (void)loadView;                                                                          // IMP 0x100071cd0
- (void)missionSelectButtonPressed:(id)arg1;                                               // IMP 0x100071e1c
- (void)tryAgainButtonPressed:(id)arg1;                                                    // IMP 0x100071ee8
- (void)backButtonPressed;                                                                 // IMP 0x100072004
- (void)playButtonSound;                                                                   // IMP 0x1000720c4
- (void).cxx_destruct;                                                                     // IMP 0x100072208
- (id)tipTextView;                                                                         // IMP 0x1000721c0
- (void)setTipTextView:(id)arg1;                                                           // IMP 0x1000721d0
@end

@interface ADChallengeGameplayViewController : ADGameplayViewController   // instance size 332, class @0x100423d58
{
    NSDictionary *challengeDictionary;       // +0x140 (8 bytes)  @"NSDictionary"
    int checkSkipButtonCounter;              // +0x148 (4 bytes)  i
}
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 challengeDictionary:(id)arg3;               // IMP 0x1000da350
- (void)viewDidLoad;                                                                       // IMP 0x1000da420
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x1000da634
- (void)viewWillDisappear:(BOOL)arg1;                                                      // IMP 0x1000da670
- (void)setGameModeDimension;                                                              // IMP 0x1000da6ac
- (void)skipButtonPressed:(id)arg1;                                                        // IMP 0x1000da728
- (void)update;                                                                            // IMP 0x1000da794
- (void)updateStats;                                                                       // IMP 0x1000daa68
- (id)timeStringFromSeconds:(int)arg1;                                                     // IMP 0x1000dab80
- (void)initWeaponManager;                                                                 // IMP 0x1000dac60
- (void)initBrickManager;                                                                  // IMP 0x1000daf74
- (void)initAmbiantManager;                                                                // IMP 0x1000db158
- (void)ambiantManagerDidActivatePlaylist;                                                 // IMP 0x1000db3e8
- (void)initStats;                                                                         // IMP 0x1000db44c
- (void)quitGameplayWithFail;                                                              // IMP 0x1000db4b8
- (void)goToChallengeFailedScreen;                                                         // IMP 0x1000db4c8
- (void)goToScoreScreen;                                                                   // IMP 0x1000db588
- (id)getChallengeID;                                                                      // IMP 0x1000db604
- (void)goToChallengeCompletedScreen;                                                      // IMP 0x1000db628
- (void)showDeathOverlay;                                                                  // IMP 0x1000db788
- (void).cxx_destruct;                                                                     // IMP 0x1000db8ec
@end

@interface ADChallengeIconViewController : ADNoBarViewController   // instance size 376, class @0x1004229a8
{
    UIImageView *_star_1;                    // +0x140 (8 bytes)  @"UIImageView"
    UIImageView *_star_2;                    // +0x148 (8 bytes)  @"UIImageView"
    UIImageView *_star_3;                    // +0x150 (8 bytes)  @"UIImageView"
    UIImageView *_challengeLock;             // +0x158 (8 bytes)  @"UIImageView"
    NSDictionary *_challengeDict;            // +0x160 (8 bytes)  @"NSDictionary"
    UILabel *_challengeTitle;                // +0x168 (8 bytes)  @"UILabel"
    UIImageView *_warning_icon;              // +0x170 (8 bytes)  @"UIImageView"
}
@property (retain, nonatomic) UIImageView *star_1;  // ivar: _star_1
@property (retain, nonatomic) UIImageView *star_2;  // ivar: _star_2
@property (retain, nonatomic) UIImageView *star_3;  // ivar: _star_3
@property (retain, nonatomic) UIImageView *challengeLock;  // ivar: _challengeLock
@property (retain, nonatomic) NSDictionary *challengeDict;  // ivar: _challengeDict
@property (retain, nonatomic) UILabel *challengeTitle;  // ivar: _challengeTitle
@property (weak, nonatomic) UIImageView *warning_icon;  // ivar: _warning_icon
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x10007fcc4
- (void)viewDidLoad;                                                                       // IMP 0x10007fd78
- (void)initStars;                                                                         // IMP 0x100080084
- (void)initLock;                                                                          // IMP 0x100080564
- (BOOL)isLocked;                                                                          // IMP 0x1000805e0
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000806dc
- (void).cxx_destruct;                                                                     // IMP 0x1000808fc
- (id)star_1;                                                                              // IMP 0x100080718
- (void)setStar_1:(id)arg1;                                                                // IMP 0x100080728
- (id)star_2;                                                                              // IMP 0x100080760
- (void)setStar_2:(id)arg1;                                                                // IMP 0x100080770
- (id)star_3;                                                                              // IMP 0x1000807a8
- (void)setStar_3:(id)arg1;                                                                // IMP 0x1000807b8
- (id)challengeLock;                                                                       // IMP 0x1000807f0
- (void)setChallengeLock:(id)arg1;                                                         // IMP 0x100080800
- (id)challengeDict;                                                                       // IMP 0x100080838
- (void)setChallengeDict:(id)arg1;                                                         // IMP 0x100080848
- (id)challengeTitle;                                                                      // IMP 0x100080880
- (void)setChallengeTitle:(id)arg1;                                                        // IMP 0x100080890
- (id)warning_icon;                                                                        // IMP 0x1000808c8
- (void)setWarning_icon:(id)arg1;                                                          // IMP 0x1000808e8
@end

@interface ADChallengeLockedViewController : ADViewController   // instance size 368, class @0x100420ec8
{
    NSMutableArray *missingWeapons;          // +0x140 (8 bytes)  @"NSMutableArray"
    NSDictionary *_challengeDict;            // +0x148 (8 bytes)  @"NSDictionary"
    UIView *_missingWeaponsView;             // +0x150 (8 bytes)  @"UIView"
    UILabel *_mainText;                      // +0x158 (8 bytes)  @"UILabel"
    UIImageView *_weaponIcon;                // +0x160 (8 bytes)  @"UIImageView"
    UIButton *_armoryButton;                 // +0x168 (8 bytes)  @"UIButton"
}
@property (retain, nonatomic) NSDictionary *challengeDict;  // ivar: _challengeDict
@property (retain, nonatomic) UIView *missingWeaponsView;  // ivar: _missingWeaponsView
@property (retain, nonatomic) UILabel *mainText;  // ivar: _mainText
@property (retain, nonatomic) UIImageView *weaponIcon;  // ivar: _weaponIcon
@property (retain, nonatomic) UIButton *armoryButton;  // ivar: _armoryButton
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x10000f898
- (void)backButtonPressed;                                                                 // IMP 0x10000f94c
- (void)viewDidLoad;                                                                       // IMP 0x10000f9ec
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x10000fc28
- (void)initMissingChallenges;                                                             // IMP 0x10001011c
- (void)initMissingWeapons;                                                                // IMP 0x100010254
- (void)armoryButtonTouched:(id)arg1;                                                      // IMP 0x100010cd8
- (void)showPurchaseConfirmation:(id)arg1;                                                 // IMP 0x10001102c
- (void)showWeaponInArmory:(id)arg1;                                                       // IMP 0x10001129c
- (void).cxx_destruct;                                                                     // IMP 0x1000114c0
- (id)challengeDict;                                                                       // IMP 0x100011358
- (void)setChallengeDict:(id)arg1;                                                         // IMP 0x100011368
- (id)missingWeaponsView;                                                                  // IMP 0x1000113a0
- (void)setMissingWeaponsView:(id)arg1;                                                    // IMP 0x1000113b0
- (id)mainText;                                                                            // IMP 0x1000113e8
- (void)setMainText:(id)arg1;                                                              // IMP 0x1000113f8
- (id)weaponIcon;                                                                          // IMP 0x100011430
- (void)setWeaponIcon:(id)arg1;                                                            // IMP 0x100011440
- (id)armoryButton;                                                                        // IMP 0x100011478
- (void)setArmoryButton:(id)arg1;                                                          // IMP 0x100011488
@end

@interface ADChallengeOverviewViewController : ADChallengeViewController   // instance size 352, class @0x100423cb8
{
    NSMutableArray *stars;                   // +0x140 (8 bytes)  @"NSMutableArray"
    ADInventoryViewController *equipement;   // +0x148 (8 bytes)  @"ADInventoryViewController"
    UIView *_challengeEquipement;            // +0x150 (8 bytes)  @"UIView"
    UITextView *_challengeObjective;         // +0x158 (8 bytes)  @"UITextView"
}
@property (retain, nonatomic) UIView *challengeEquipement;  // ivar: _challengeEquipement
@property (weak, nonatomic) UITextView *challengeObjective;  // ivar: _challengeObjective
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x1000d8178
- (void)viewDidLoad;                                                                       // IMP 0x1000d8248
- (void)loadView;                                                                          // IMP 0x1000d8688
- (void)loadEquipment;                                                                     // IMP 0x1000d896c
- (void)playButtonPressed:(id)arg1;                                                        // IMP 0x1000d8b48
- (void)missionsButtonPressed:(id)arg1;                                                    // IMP 0x1000d8c48
- (void)backButtonPressed;                                                                 // IMP 0x1000d8cb0
- (void)playButtonSound;                                                                   // IMP 0x1000d8d50
- (void).cxx_destruct;                                                                     // IMP 0x1000d8ec8
- (id)challengeEquipement;                                                                 // IMP 0x1000d8e4c
- (void)setChallengeEquipement:(id)arg1;                                                   // IMP 0x1000d8e5c
- (id)challengeObjective;                                                                  // IMP 0x1000d8e94
- (void)setChallengeObjective:(id)arg1;                                                    // IMP 0x1000d8eb4
@end

@interface ADChallengeSelectorViewController : ADViewController   // instance size 376, class @0x100423998
{
    NSMutableArray *icons;                   // +0x140 (8 bytes)  @"NSMutableArray"
    NSString *challengeToLoad;               // +0x148 (8 bytes)  @"NSString"
    UILabel *_challengeWorldLabel;           // +0x150 (8 bytes)  @"UILabel"
    UIScrollView *_challengeScrollView;      // +0x158 (8 bytes)  @"UIScrollView"
    NSDictionary *_challengeIndex;           // +0x160 (8 bytes)  @"NSDictionary"
    UIView *_contentView;                    // +0x168 (8 bytes)  @"UIView"
    NSArray *_challengeFiles;                // +0x170 (8 bytes)  @"NSArray"
}
@property (retain, nonatomic) UILabel *challengeWorldLabel;  // ivar: _challengeWorldLabel
@property (retain, nonatomic) UIScrollView *challengeScrollView;  // ivar: _challengeScrollView
@property (retain, nonatomic) NSDictionary *challengeIndex;  // ivar: _challengeIndex
@property (retain, nonatomic) UIView *contentView;  // ivar: _contentView
@property (retain) NSArray *challengeFiles;  // ivar: _challengeFiles
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 loadChallenge:(id)arg3 worldName:(id)arg4;  // IMP 0x1000c99d4
- (id)dictionaryForChallengeWithName:(id)arg1;                                             // IMP 0x1000c9c58
- (void)viewDidLoad;                                                                       // IMP 0x1000c9d4c
- (void)loadView;                                                                          // IMP 0x1000ca010
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x1000ca1a0
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x1000ca220
- (void)dealloc;                                                                           // IMP 0x1000ca25c
- (void)initChallengeList;                                                                 // IMP 0x1000ca3e4
- (void)challengeButtonPressed:(id)arg1;                                                   // IMP 0x1000cafa8
- (void)loadChallengeWithName:(id)arg1;                                                    // IMP 0x1000cb6b0
- (BOOL)canStartChallengeWithName:(id)arg1;                                                // IMP 0x1000cb8c4
- (void)backButtonPressed;                                                                 // IMP 0x1000cb9b8
- (void)playButtonSound;                                                                   // IMP 0x1000cba58
- (void).cxx_destruct;                                                                     // IMP 0x1000cbc90
- (id)challengeWorldLabel;                                                                 // IMP 0x1000cbb54
- (void)setChallengeWorldLabel:(id)arg1;                                                   // IMP 0x1000cbb64
- (id)challengeScrollView;                                                                 // IMP 0x1000cbb9c
- (void)setChallengeScrollView:(id)arg1;                                                   // IMP 0x1000cbbac
- (id)challengeIndex;                                                                      // IMP 0x1000cbbe4
- (void)setChallengeIndex:(id)arg1;                                                        // IMP 0x1000cbbf4
- (id)contentView;                                                                         // IMP 0x1000cbc2c
- (void)setContentView:(id)arg1;                                                           // IMP 0x1000cbc3c
- (id)challengeFiles;                                                                      // IMP 0x1000cbc74
- (void)setChallengeFiles:(id)arg1;                                                        // IMP 0x1000cbc84
@end

@interface ADChallengeViewController : ADGameOverWithStatsViewController   // instance size 384, class @0x1004224f8
{
    NSMutableArray *stars;                   // +0x140 (8 bytes)  @"NSMutableArray"
    UIImageView *_challengeIcon;             // +0x148 (8 bytes)  @"UIImageView"
    NSDictionary *_challengeDict;            // +0x150 (8 bytes)  @"NSDictionary"
    UIView *_starUnlockArea;                 // +0x158 (8 bytes)  @"UIView"
    ADStarUnlockViewController *_missionStar; // +0x160 (8 bytes)  @"ADStarUnlockViewController"
    ADStarUnlockViewController *_accuracyStar; // +0x168 (8 bytes)  @"ADStarUnlockViewController"
    ADStarUnlockViewController *_timeStar;   // +0x170 (8 bytes)  @"ADStarUnlockViewController"
    UILabel *_coinsReward;                   // +0x178 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UIImageView *challengeIcon;  // ivar: _challengeIcon
@property (retain, nonatomic) NSDictionary *challengeDict;  // ivar: _challengeDict
@property (retain, nonatomic) UIView *starUnlockArea;  // ivar: _starUnlockArea
@property (retain, nonatomic) ADStarUnlockViewController *missionStar;  // ivar: _missionStar
@property (retain, nonatomic) ADStarUnlockViewController *accuracyStar;  // ivar: _accuracyStar
@property (retain, nonatomic) ADStarUnlockViewController *timeStar;  // ivar: _timeStar
@property (retain, nonatomic) UILabel *coinsReward;  // ivar: _coinsReward
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x1000770bc
- (void)viewDidLoad;                                                                       // IMP 0x100077170
- (void)initStarUnlockArea;                                                                // IMP 0x10007741c
- (void)dealloc;                                                                           // IMP 0x100077dec
- (void).cxx_destruct;                                                                     // IMP 0x100078254
- (id)challengeIcon;                                                                       // IMP 0x10007805c
- (void)setChallengeIcon:(id)arg1;                                                         // IMP 0x10007806c
- (id)challengeDict;                                                                       // IMP 0x1000780a4
- (void)setChallengeDict:(id)arg1;                                                         // IMP 0x1000780b4
- (id)starUnlockArea;                                                                      // IMP 0x1000780ec
- (void)setStarUnlockArea:(id)arg1;                                                        // IMP 0x1000780fc
- (id)missionStar;                                                                         // IMP 0x100078134
- (void)setMissionStar:(id)arg1;                                                           // IMP 0x100078144
- (id)accuracyStar;                                                                        // IMP 0x10007817c
- (void)setAccuracyStar:(id)arg1;                                                          // IMP 0x10007818c
- (id)timeStar;                                                                            // IMP 0x1000781c4
- (void)setTimeStar:(id)arg1;                                                              // IMP 0x1000781d4
- (id)coinsReward;                                                                         // IMP 0x10007820c
- (void)setCoinsReward:(id)arg1;                                                           // IMP 0x10007821c
@end

@interface ADChallengeWeaponViewController : ADNoBarViewController   // instance size 360, class @0x100423b28
{
    NSString *weaponName;                    // +0x140 (8 bytes)  @"NSString"
    int ammo;                                // +0x148 (4 bytes)  i
    UIImageView *_weaponImage;               // +0x150 (8 bytes)  @"UIImageView"
    UILabel *_weaponLabel;                   // +0x158 (8 bytes)  @"UILabel"
    UILabel *_ammoLabel;                     // +0x160 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UIImageView *weaponImage;  // ivar: _weaponImage
@property (retain, nonatomic) UILabel *weaponLabel;  // ivar: _weaponLabel
@property (retain, nonatomic) UILabel *ammoLabel;  // ivar: _ammoLabel
- (id)initWithWeaponName:(id)arg1 ammo:(int)arg2;                                          // IMP 0x1000d6874
- (void)viewDidLoad;                                                                       // IMP 0x1000d6930
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000d6cc4
- (void).cxx_destruct;                                                                     // IMP 0x1000d6dd8
- (id)weaponImage;                                                                         // IMP 0x1000d6d00
- (void)setWeaponImage:(id)arg1;                                                           // IMP 0x1000d6d10
- (id)weaponLabel;                                                                         // IMP 0x1000d6d48
- (void)setWeaponLabel:(id)arg1;                                                           // IMP 0x1000d6d58
- (id)ammoLabel;                                                                           // IMP 0x1000d6d90
- (void)setAmmoLabel:(id)arg1;                                                             // IMP 0x1000d6da0
@end

@interface ADChallengeWorldCellTableViewCell : UITableViewCell   // instance size 136, class @0x1004211c0
{
    UILabel *_titleLabel;                    // +0x68 (8 bytes)  @"UILabel"
    UILabel *_starsUnlockedLabel;            // +0x70 (8 bytes)  @"UILabel"
    UIView *_lockView;                       // +0x78 (8 bytes)  @"UIView"
    UIImageView *_starImage;                 // +0x80 (8 bytes)  @"UIImageView"
}
@property (retain, nonatomic) UILabel *titleLabel;  // ivar: _titleLabel
@property (retain, nonatomic) UILabel *starsUnlockedLabel;  // ivar: _starsUnlockedLabel
@property (retain, nonatomic) UIView *lockView;  // ivar: _lockView
@property (retain, nonatomic) UIImageView *starImage;  // ivar: _starImage
- (void)awakeFromNib;                                                                      // IMP 0x10001bbe4
- (void).cxx_destruct;                                                                     // IMP 0x10001bd08
- (id)titleLabel;                                                                          // IMP 0x10001bbe8
- (void)setTitleLabel:(id)arg1;                                                            // IMP 0x10001bbf8
- (id)starsUnlockedLabel;                                                                  // IMP 0x10001bc30
- (void)setStarsUnlockedLabel:(id)arg1;                                                    // IMP 0x10001bc40
- (id)lockView;                                                                            // IMP 0x10001bc78
- (void)setLockView:(id)arg1;                                                              // IMP 0x10001bc88
- (id)starImage;                                                                           // IMP 0x10001bcc0
- (void)setStarImage:(id)arg1;                                                             // IMP 0x10001bcd0
@end

@interface ADCheatViewController : ADViewController   // instance size 376, class @0x1004238f8
{
    UISwitch *_debugMapSwitch;               // +0x140 (8 bytes)  @"UISwitch"
    UISlider *_killsSlider;                  // +0x148 (8 bytes)  @"UISlider"
    UISlider *_coinsSlider;                  // +0x150 (8 bytes)  @"UISlider"
    UISlider *_diamondsSlider;               // +0x158 (8 bytes)  @"UISlider"
    UILabel *_killsLabel;                    // +0x160 (8 bytes)  @"UILabel"
    UILabel *_coinsLabel;                    // +0x168 (8 bytes)  @"UILabel"
    UILabel *_diamondsLabel;                 // +0x170 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UISwitch *debugMapSwitch;  // ivar: _debugMapSwitch
@property (retain, nonatomic) UISlider *killsSlider;  // ivar: _killsSlider
@property (retain, nonatomic) UISlider *coinsSlider;  // ivar: _coinsSlider
@property (retain, nonatomic) UISlider *diamondsSlider;  // ivar: _diamondsSlider
@property (retain, nonatomic) UILabel *killsLabel;  // ivar: _killsLabel
@property (retain, nonatomic) UILabel *coinsLabel;  // ivar: _coinsLabel
@property (retain, nonatomic) UILabel *diamondsLabel;  // ivar: _diamondsLabel
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000c8134
- (void)viewDidLoad;                                                                       // IMP 0x1000c81c0
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000c8518
- (void)killsSliderValueChanged:(id)arg1;                                                  // IMP 0x1000c8554
- (void)coinsSliderValueChanged:(id)arg1;                                                  // IMP 0x1000c8670
- (void)diamondsSliderValueChanged:(id)arg1;                                               // IMP 0x1000c878c
- (void)killsButtonTouched:(id)arg1;                                                       // IMP 0x1000c88a8
- (void)coinsButtonTouched:(id)arg1;                                                       // IMP 0x1000c89a8
- (void)diamondsButtonTouched:(id)arg1;                                                    // IMP 0x1000c8b20
- (void)backButtonTouched:(id)arg1;                                                        // IMP 0x1000c8c98
- (void)debugMapValueChanged:(id)arg1;                                                     // IMP 0x1000c8cc8
- (void).cxx_destruct;                                                                     // IMP 0x1000c8f6c
- (id)debugMapSwitch;                                                                      // IMP 0x1000c8d74
- (void)setDebugMapSwitch:(id)arg1;                                                        // IMP 0x1000c8d84
- (id)killsSlider;                                                                         // IMP 0x1000c8dbc
- (void)setKillsSlider:(id)arg1;                                                           // IMP 0x1000c8dcc
- (id)coinsSlider;                                                                         // IMP 0x1000c8e04
- (void)setCoinsSlider:(id)arg1;                                                           // IMP 0x1000c8e14
- (id)diamondsSlider;                                                                      // IMP 0x1000c8e4c
- (void)setDiamondsSlider:(id)arg1;                                                        // IMP 0x1000c8e5c
- (id)killsLabel;                                                                          // IMP 0x1000c8e94
- (void)setKillsLabel:(id)arg1;                                                            // IMP 0x1000c8ea4
- (id)coinsLabel;                                                                          // IMP 0x1000c8edc
- (void)setCoinsLabel:(id)arg1;                                                            // IMP 0x1000c8eec
- (id)diamondsLabel;                                                                       // IMP 0x1000c8f24
- (void)setDiamondsLabel:(id)arg1;                                                         // IMP 0x1000c8f34
@end

@interface ADControlSchemeViewController : ADNoBarViewController   // instance size 472, class @0x100421e18
{
    UISwitch *_announcerSwitch;              // +0x140 (8 bytes)  @"UISwitch"
    UIButton *_gyroButton;                   // +0x148 (8 bytes)  @"UIButton"
    UIButton *_swipeButton;                  // +0x150 (8 bytes)  @"UIButton"
    UIButton *_tiltButton;                   // +0x158 (8 bytes)  @"UIButton"
    UILabel *_sensivityLabel;                // +0x160 (8 bytes)  @"UILabel"
    UISlider *_sensivitySlider;              // +0x168 (8 bytes)  @"UISlider"
    UIImageView *_sensitivitySliderBack;     // +0x170 (8 bytes)  @"UIImageView"
    UIButton *_aimingButton;                 // +0x178 (8 bytes)  @"UIButton"
    UIButton *_controlsButton;               // +0x180 (8 bytes)  @"UIButton"
    UIButton *_soundButton;                  // +0x188 (8 bytes)  @"UIButton"
    UIButton *_buttonsButton;                // +0x190 (8 bytes)  @"UIButton"
    UIButton *_gestureButton;                // +0x198 (8 bytes)  @"UIButton"
    UISlider *_volumeSlider;                 // +0x1a0 (8 bytes)  @"UISlider"
    UIScrollView *_contentScrollView;        // +0x1a8 (8 bytes)  @"UIScrollView"
    UIView *_contentView;                    // +0x1b0 (8 bytes)  @"UIView"
    UITextView *_aimingText;                 // +0x1b8 (8 bytes)  @"UITextView"
    UITextView *_controlsText;               // +0x1c0 (8 bytes)  @"UITextView"
    UILabel *_announcerLabel;                // +0x1c8 (8 bytes)  @"UILabel"
    UITextView *_volumeText;                 // +0x1d0 (8 bytes)  @"UITextView"
}
@property (retain, nonatomic) UISwitch *announcerSwitch;  // ivar: _announcerSwitch
@property (retain, nonatomic) UIButton *gyroButton;  // ivar: _gyroButton
@property (retain, nonatomic) UIButton *swipeButton;  // ivar: _swipeButton
@property (retain, nonatomic) UIButton *tiltButton;  // ivar: _tiltButton
@property (retain, nonatomic) UILabel *sensivityLabel;  // ivar: _sensivityLabel
@property (retain, nonatomic) UISlider *sensivitySlider;  // ivar: _sensivitySlider
@property (retain, nonatomic) UIImageView *sensitivitySliderBack;  // ivar: _sensitivitySliderBack
@property (retain, nonatomic) UIButton *aimingButton;  // ivar: _aimingButton
@property (retain, nonatomic) UIButton *controlsButton;  // ivar: _controlsButton
@property (retain, nonatomic) UIButton *soundButton;  // ivar: _soundButton
@property (retain, nonatomic) UIButton *buttonsButton;  // ivar: _buttonsButton
@property (retain, nonatomic) UIButton *gestureButton;  // ivar: _gestureButton
@property (retain, nonatomic) UISlider *volumeSlider;  // ivar: _volumeSlider
@property (retain, nonatomic) UIScrollView *contentScrollView;  // ivar: _contentScrollView
@property (retain, nonatomic) UIView *contentView;  // ivar: _contentView
@property (retain, nonatomic) UITextView *aimingText;  // ivar: _aimingText
@property (retain, nonatomic) UITextView *controlsText;  // ivar: _controlsText
@property (retain, nonatomic) UILabel *announcerLabel;  // ivar: _announcerLabel
@property (retain, nonatomic) UITextView *volumeText;  // ivar: _volumeText
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10004fadc
- (void)viewDidLoad;                                                                       // IMP 0x10004fb68
- (void)loadView;                                                                          // IMP 0x100050904
- (void)setAllTabButtons:(BOOL)arg1;                                                       // IMP 0x1000516bc
- (void)setAllAimingButton:(BOOL)arg1;                                                     // IMP 0x1000517a8
- (void)selectAllTabButtons:(BOOL)arg1;                                                    // IMP 0x100051894
- (void)selectAllAimingButton:(BOOL)arg1;                                                  // IMP 0x100051980
- (void)aimingTabButtonPressed;                                                            // IMP 0x100051a6c
- (void)controlTabButtonPressed;                                                           // IMP 0x100051b40
- (void)soundTabButtonPressed;                                                             // IMP 0x100051c58
- (void)showOrHideSensivity;                                                               // IMP 0x100051d70
- (void)gyroButtonTouched;                                                                 // IMP 0x100052028
- (void)tiltButtonTouched;                                                                 // IMP 0x100052234
- (void)swipeButtonTouched;                                                                // IMP 0x1000524a0
- (void)sensivityValueChanged:(id)arg1;                                                    // IMP 0x10005270c
- (void)buttonsButtonTouched;                                                              // IMP 0x1000527b4
- (void)gestureButtonTouched;                                                              // IMP 0x100052a38
- (void)volumeSliderValueChanged:(id)arg1;                                                 // IMP 0x100052cbc
- (void)announcerValueChanged:(id)arg1;                                                    // IMP 0x100052d80
- (void)TestHeadphonesButtonPressed:(id)arg1;                                              // IMP 0x100052e48
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100052f38
- (void).cxx_destruct;                                                                     // IMP 0x1000534cc
- (id)announcerSwitch;                                                                     // IMP 0x100052f74
- (void)setAnnouncerSwitch:(id)arg1;                                                       // IMP 0x100052f84
- (id)gyroButton;                                                                          // IMP 0x100052fbc
- (void)setGyroButton:(id)arg1;                                                            // IMP 0x100052fcc
- (id)swipeButton;                                                                         // IMP 0x100053004
- (void)setSwipeButton:(id)arg1;                                                           // IMP 0x100053014
- (id)tiltButton;                                                                          // IMP 0x10005304c
- (void)setTiltButton:(id)arg1;                                                            // IMP 0x10005305c
- (id)sensivityLabel;                                                                      // IMP 0x100053094
- (void)setSensivityLabel:(id)arg1;                                                        // IMP 0x1000530a4
- (id)sensivitySlider;                                                                     // IMP 0x1000530dc
- (void)setSensivitySlider:(id)arg1;                                                       // IMP 0x1000530ec
- (id)sensitivitySliderBack;                                                               // IMP 0x100053124
- (void)setSensitivitySliderBack:(id)arg1;                                                 // IMP 0x100053134
- (id)aimingButton;                                                                        // IMP 0x10005316c
- (void)setAimingButton:(id)arg1;                                                          // IMP 0x10005317c
- (id)controlsButton;                                                                      // IMP 0x1000531b4
- (void)setControlsButton:(id)arg1;                                                        // IMP 0x1000531c4
- (id)soundButton;                                                                         // IMP 0x1000531fc
- (void)setSoundButton:(id)arg1;                                                           // IMP 0x10005320c
- (id)buttonsButton;                                                                       // IMP 0x100053244
- (void)setButtonsButton:(id)arg1;                                                         // IMP 0x100053254
- (id)gestureButton;                                                                       // IMP 0x10005328c
- (void)setGestureButton:(id)arg1;                                                         // IMP 0x10005329c
- (id)volumeSlider;                                                                        // IMP 0x1000532d4
- (void)setVolumeSlider:(id)arg1;                                                          // IMP 0x1000532e4
- (id)contentScrollView;                                                                   // IMP 0x10005331c
- (void)setContentScrollView:(id)arg1;                                                     // IMP 0x10005332c
- (id)contentView;                                                                         // IMP 0x100053364
- (void)setContentView:(id)arg1;                                                           // IMP 0x100053374
- (id)aimingText;                                                                          // IMP 0x1000533ac
- (void)setAimingText:(id)arg1;                                                            // IMP 0x1000533bc
- (id)controlsText;                                                                        // IMP 0x1000533f4
- (void)setControlsText:(id)arg1;                                                          // IMP 0x100053404
- (id)announcerLabel;                                                                      // IMP 0x10005343c
- (void)setAnnouncerLabel:(id)arg1;                                                        // IMP 0x10005344c
- (id)volumeText;                                                                          // IMP 0x100053484
- (void)setVolumeText:(id)arg1;                                                            // IMP 0x100053494
@end

@interface ADCreditsTableCell : UITableViewCell   // instance size 120, class @0x1004236c8
{
    UILabel *_nameLabel;                     // +0x68 (8 bytes)  @"UILabel"
    UILabel *_roleLabel;                     // +0x70 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UILabel *nameLabel;  // ivar: _nameLabel
@property (retain, nonatomic) UILabel *roleLabel;  // ivar: _roleLabel
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x1000b7b64
- (void)awakeFromNib;                                                                      // IMP 0x1000b7ba0
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x1000b7ba4
- (void).cxx_destruct;                                                                     // IMP 0x1000b7c70
- (id)nameLabel;                                                                           // IMP 0x1000b7be0
- (void)setNameLabel:(id)arg1;                                                             // IMP 0x1000b7bf0
- (id)roleLabel;                                                                           // IMP 0x1000b7c28
- (void)setRoleLabel:(id)arg1;                                                             // IMP 0x1000b7c38
@end

@interface ADCustomTableViewCellWithSubtitles : UITableViewCell   // instance size 152, class @0x100422a98
{
    UILabel *_detailLabel;                   // +0x68 (8 bytes)  @"UILabel"
    UILabel *_titleLabel;                    // +0x70 (8 bytes)  @"UILabel"
    UIImageView *_image;                     // +0x78 (8 bytes)  @"UIImageView"
    UIImageView *_statusLevel;               // +0x80 (8 bytes)  @"UIImageView"
    UIImageView *_lockIcon;                  // +0x88 (8 bytes)  @"UIImageView"
    ADButtonWithFont *_buyUpgradeButton;     // +0x90 (8 bytes)  @"ADButtonWithFont"
}
@property (retain, nonatomic) UILabel *detailLabel;  // ivar: _detailLabel
@property (retain, nonatomic) UILabel *titleLabel;  // ivar: _titleLabel
@property (retain, nonatomic) UIImageView *image;  // ivar: _image
@property (retain, nonatomic) UIImageView *statusLevel;  // ivar: _statusLevel
@property (retain, nonatomic) UIImageView *lockIcon;  // ivar: _lockIcon
@property (retain, nonatomic) ADButtonWithFont *buyUpgradeButton;  // ivar: _buyUpgradeButton
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x100089b88
- (void)awakeFromNib;                                                                      // IMP 0x100089bc4
- (void).cxx_destruct;                                                                     // IMP 0x100089e20
- (id)detailLabel;                                                                         // IMP 0x100089c70
- (void)setDetailLabel:(id)arg1;                                                           // IMP 0x100089c80
- (id)titleLabel;                                                                          // IMP 0x100089cb8
- (void)setTitleLabel:(id)arg1;                                                            // IMP 0x100089cc8
- (id)image;                                                                               // IMP 0x100089d00
- (void)setImage:(id)arg1;                                                                 // IMP 0x100089d10
- (id)statusLevel;                                                                         // IMP 0x100089d48
- (void)setStatusLevel:(id)arg1;                                                           // IMP 0x100089d58
- (id)lockIcon;                                                                            // IMP 0x100089d90
- (void)setLockIcon:(id)arg1;                                                              // IMP 0x100089da0
- (id)buyUpgradeButton;                                                                    // IMP 0x100089dd8
- (void)setBuyUpgradeButton:(id)arg1;                                                      // IMP 0x100089de8
@end

@interface ADDebugMapView : UIView   // instance size 120, class @0x1004233a8
{
    float _angle;                            // +0x68 (4 bytes)  f
    float _range;                            // +0x6c (4 bytes)  f
    ADWeapon *_weapon;                       // +0x70 (8 bytes)  @"ADWeapon"
}
@property (retain, nonatomic) ADWeapon *weapon;  // ivar: _weapon
@property () float angle;  // ivar: _angle
@property () float range;  // ivar: _range
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x1000aed44
- (void)drawRect:(CGRect)arg1;                                                             // IMP 0x1000aed80
- (void)drawFieldForSpread:(float)arg1 inRect:(CGRect)arg2;                                // IMP 0x1000aeec4
- (void).cxx_destruct;                                                                     // IMP 0x1000af118
- (id)weapon;                                                                              // IMP 0x1000af080
- (void)setWeapon:(id)arg1;                                                                // IMP 0x1000af090
- (float)angle;                                                                            // IMP 0x1000af0c8
- (void)setAngle:(float)arg1;                                                              // IMP 0x1000af0dc
- (float)range;                                                                            // IMP 0x1000af0f0
- (void)setRange:(float)arg1;                                                              // IMP 0x1000af104
@end

@interface ADDebugMapViewController : UIViewController   // instance size 360, class @0x100423d08
{
    ADWeapon *weapon;                        // +0x140 (8 bytes)  @"ADWeapon"
    float angle;                             // +0x148 (4 bytes)  f
    UIView *playerView;                      // +0x150 (8 bytes)  @"UIView"
    ADDebugMapView *_debugMapView;           // +0x158 (8 bytes)  @"ADDebugMapView"
    UILabel *_brickName;                     // +0x160 (8 bytes)  @"UILabel"
}
@property (weak, nonatomic) ADDebugMapView *debugMapView;  // ivar: _debugMapView
@property (retain, nonatomic) UILabel *brickName;  // ivar: _brickName
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000d8f2c
- (void)viewDidLoad;                                                                       // IMP 0x1000d8fb8
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000d91e8
- (void)update;                                                                            // IMP 0x1000d9224
- (void)updateProjectiles:(id)arg1;                                                        // IMP 0x1000d9aac
- (void)updateWeaponRange:(id)arg1 angle:(float)arg2;                                      // IMP 0x1000da080
- (void)viewDidUnload;                                                                     // IMP 0x1000da214
- (void).cxx_destruct;                                                                     // IMP 0x1000da2ec
- (id)debugMapView;                                                                        // IMP 0x1000da270
- (void)setDebugMapView:(id)arg1;                                                          // IMP 0x1000da290
- (id)brickName;                                                                           // IMP 0x1000da2a4
- (void)setBrickName:(id)arg1;                                                             // IMP 0x1000da2b4
@end

@interface ADDiamondDropper : ADEnemy   // instance size 8, class @0x100422908
- (void)spawn;                                                                             // IMP 0x10007e2bc
- (void)update:(float)arg1;                                                                // IMP 0x10007e350
- (void)glow;                                                                              // IMP 0x10007e7b8
- (void)die;                                                                               // IMP 0x10007e800
- (void)initSounds;                                                                        // IMP 0x10007e9a8
@end

@interface ADDraggableArmoryItemViewController : ADNoBarViewController <OBOvumSource>   // instance size 376, class @0x1004222c8
{
    int _armoryIndex;                        // +0x140 (4 bytes)  i
    int _type;                               // +0x144 (4 bytes)  i
    NSString *_itemName;                     // +0x148 (8 bytes)  @"NSString"
    UIImageView *_weaponImage;               // +0x150 (8 bytes)  @"UIImageView"
    UILabel *_titleLabel;                    // +0x158 (8 bytes)  @"UILabel"
    UILabel *_quantityLabel;                 // +0x160 (8 bytes)  @"UILabel"
    UIView *_lockedView;                     // +0x168 (8 bytes)  @"UIView"
    double _previousOffset;                  // +0x170 (8 bytes)  d
}
@property (retain, nonatomic) NSString *itemName;  // ivar: _itemName
@property (retain, nonatomic) UIImageView *weaponImage;  // ivar: _weaponImage
@property (retain, nonatomic) UILabel *titleLabel;  // ivar: _titleLabel
@property (retain, nonatomic) UILabel *quantityLabel;  // ivar: _quantityLabel
@property (retain, nonatomic) UIView *lockedView;  // ivar: _lockedView
@property (nonatomic) int armoryIndex;  // ivar: _armoryIndex
@property (nonatomic) int type;  // ivar: _type
@property () double previousOffset;  // ivar: _previousOffset
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 itemName:(id)arg3;                          // IMP 0x10006dd94
- (void)initType;                                                                          // IMP 0x10006de90
- (void)viewDidLoad;                                                                       // IMP 0x10006e0d4
- (void)setItemName:(id)arg1;                                                              // IMP 0x10006e26c
- (void)setQuantity;                                                                       // IMP 0x10006e2f4
- (void)checkLock;                                                                         // IMP 0x10006e4f8
- (BOOL)isLocked;                                                                          // IMP 0x10006e674
- (id)createOvumFromView:(id)arg1;                                                         // IMP 0x10006e730
- (id)createDragRepresentationOfSourceView:(id)arg1 inWindow:(id)arg2;                     // IMP 0x10006e870
- (void)dragViewWillAppear:(id)arg1 inWindow:(id)arg2 atLocation:(CGPoint)arg3;            // IMP 0x10006ec10
- (void).cxx_destruct;                                                                     // IMP 0x10006ef84
- (id)itemName;                                                                            // IMP 0x10006edec
- (id)weaponImage;                                                                         // IMP 0x10006edfc
- (void)setWeaponImage:(id)arg1;                                                           // IMP 0x10006ee0c
- (id)titleLabel;                                                                          // IMP 0x10006ee44
- (void)setTitleLabel:(id)arg1;                                                            // IMP 0x10006ee54
- (id)quantityLabel;                                                                       // IMP 0x10006ee8c
- (void)setQuantityLabel:(id)arg1;                                                         // IMP 0x10006ee9c
- (id)lockedView;                                                                          // IMP 0x10006eed4
- (void)setLockedView:(id)arg1;                                                            // IMP 0x10006eee4
- (int)armoryIndex;                                                                        // IMP 0x10006ef1c
- (void)setArmoryIndex:(int)arg1;                                                          // IMP 0x10006ef2c
- (int)type;                                                                               // IMP 0x10006ef3c
- (void)setType:(int)arg1;                                                                 // IMP 0x10006ef4c
- (double)previousOffset;                                                                  // IMP 0x10006ef5c
- (void)setPreviousOffset:(double)arg1;                                                    // IMP 0x10006ef70
@end

@interface ADEncycVertCell : UITableViewCell   // instance size 128, class @0x100423b78
{
    ADButtonWithFont *_zombieNameButton;     // +0x68 (8 bytes)  @"ADButtonWithFont"
    id<VerticalScrollCellDelegate> _delegate; // +0x70 (8 bytes)  @"<VerticalScrollCellDelegate>"
    NSString *_cellName;                     // +0x78 (8 bytes)  @"NSString"
}
@property (retain, nonatomic) ADButtonWithFont *zombieNameButton;  // ivar: _zombieNameButton
@property (weak, nonatomic) id<VerticalScrollCellDelegate> delegate;  // ivar: _delegate
@property (retain) NSString *cellName;  // ivar: _cellName
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x1000d6e40
- (void)awakeFromNib;                                                                      // IMP 0x1000d6e7c
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x1000d6ed8
- (void)zombieNameButtonPressed:(id)arg1;                                                  // IMP 0x1000d6f14
- (void)setAccessibilityElementsHidden:(BOOL)arg1;                                         // IMP 0x1000d6fc0
- (void).cxx_destruct;                                                                     // IMP 0x1000d70fc
- (id)zombieNameButton;                                                                    // IMP 0x1000d7064
- (void)setZombieNameButton:(id)arg1;                                                      // IMP 0x1000d7074
- (id)delegate;                                                                            // IMP 0x1000d70ac
- (void)setDelegate:(id)arg1;                                                              // IMP 0x1000d70cc
- (id)cellName;                                                                            // IMP 0x1000d70e0
- (void)setCellName:(id)arg1;                                                              // IMP 0x1000d70f0
@end

@interface ADEncyclopediaItemLockedViewController : ADNoBarViewController   // instance size 392, class @0x100422bd8
{
    UIImageView *_closeDetailView;           // +0x140 (8 bytes)  @"UIImageView"
    UILabel *_enemyNameLabel;                // +0x148 (8 bytes)  @"UILabel"
    UILabel *_unlockConditionLabel;          // +0x150 (8 bytes)  @"UILabel"
    UIImageView *_rightArrow;                // +0x158 (8 bytes)  @"UIImageView"
    UIImageView *_leftArrow;                 // +0x160 (8 bytes)  @"UIImageView"
    UIImageView *_audioButton;               // +0x168 (8 bytes)  @"UIImageView"
    NSDictionary *_setupData;                // +0x170 (8 bytes)  @"NSDictionary"
    NSString *_enemyName;                    // +0x178 (8 bytes)  @"NSString"
    S3DSound *_enemySound;                   // +0x180 (8 bytes)  @"S3DSound"
}
@property (retain, nonatomic) UIImageView *closeDetailView;  // ivar: _closeDetailView
@property (weak, nonatomic) UILabel *enemyNameLabel;  // ivar: _enemyNameLabel
@property (weak, nonatomic) UILabel *unlockConditionLabel;  // ivar: _unlockConditionLabel
@property (retain, nonatomic) UIImageView *rightArrow;  // ivar: _rightArrow
@property (retain, nonatomic) UIImageView *leftArrow;  // ivar: _leftArrow
@property (retain, nonatomic) UIImageView *audioButton;  // ivar: _audioButton
@property (retain) NSDictionary *setupData;  // ivar: _setupData
@property (retain) NSString *enemyName;  // ivar: _enemyName
@property (retain) S3DSound *enemySound;  // ivar: _enemySound
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10008b928
- (void)handleTapForSound:(id)arg1;                                                        // IMP 0x10008b9b4
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 name:(id)arg3 data:(id)arg4;                // IMP 0x10008bb4c
- (void)viewDidLoad;                                                                       // IMP 0x10008bc84
- (void)loadView;                                                                          // IMP 0x10008bda0
- (void)populateViewWithData;                                                              // IMP 0x10008bfb8
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x10008c2a4
- (void)setSound:(id)arg1;                                                                 // IMP 0x10008c348
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10008c368
- (void)applyAccessibility;                                                                // IMP 0x10008c3a4
- (void).cxx_destruct;                                                                     // IMP 0x10008c778
- (id)closeDetailView;                                                                     // IMP 0x10008c59c
- (void)setCloseDetailView:(id)arg1;                                                       // IMP 0x10008c5ac
- (id)enemyNameLabel;                                                                      // IMP 0x10008c5e4
- (void)setEnemyNameLabel:(id)arg1;                                                        // IMP 0x10008c604
- (id)unlockConditionLabel;                                                                // IMP 0x10008c618
- (void)setUnlockConditionLabel:(id)arg1;                                                  // IMP 0x10008c638
- (id)rightArrow;                                                                          // IMP 0x10008c64c
- (void)setRightArrow:(id)arg1;                                                            // IMP 0x10008c65c
- (id)leftArrow;                                                                           // IMP 0x10008c694
- (void)setLeftArrow:(id)arg1;                                                             // IMP 0x10008c6a4
- (id)audioButton;                                                                         // IMP 0x10008c6dc
- (void)setAudioButton:(id)arg1;                                                           // IMP 0x10008c6ec
- (id)setupData;                                                                           // IMP 0x10008c724
- (void)setSetupData:(id)arg1;                                                             // IMP 0x10008c734
- (id)enemyName;                                                                           // IMP 0x10008c740
- (void)setEnemyName:(id)arg1;                                                             // IMP 0x10008c750
- (id)enemySound;                                                                          // IMP 0x10008c75c
- (void)setEnemySound:(id)arg1;                                                            // IMP 0x10008c76c
@end

@interface ADEncyclopediaItemViewController : ADEncyclopediaItemLockedViewController   // instance size 360, class @0x100423678
{
    UILabel *_killsLabel;                    // +0x140 (8 bytes)  @"UILabel"
    UILabel *_killsValueLabel;               // +0x148 (8 bytes)  @"UILabel"
    UILabel *_killedByLabel;                 // +0x150 (8 bytes)  @"UILabel"
    UILabel *_killedByValueLabel;            // +0x158 (8 bytes)  @"UILabel"
    UITextView *_bioView;                    // +0x160 (8 bytes)  @"UITextView"
}
@property (retain, nonatomic) UIImageView *closeDetailView;
@property (weak, nonatomic) UILabel *enemyNameLabel;
@property (weak, nonatomic) UILabel *killsLabel;  // ivar: _killsLabel
@property (retain, nonatomic) UILabel *killsValueLabel;  // ivar: _killsValueLabel
@property (retain, nonatomic) UILabel *killedByLabel;  // ivar: _killedByLabel
@property (retain, nonatomic) UILabel *killedByValueLabel;  // ivar: _killedByValueLabel
@property (weak, nonatomic) UITextView *bioView;  // ivar: _bioView
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 name:(id)arg3 data:(id)arg4;                // IMP 0x1000b6d30
- (void)viewDidLoad;                                                                       // IMP 0x1000b6e0c
- (void)loadView;                                                                          // IMP 0x1000b6e68
- (void)populateViewWithData;                                                              // IMP 0x1000b7190
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x1000b76f4
- (void)applyAccessibility;                                                                // IMP 0x1000b7750
- (void).cxx_destruct;                                                                     // IMP 0x1000b7af0
- (id)killsLabel;                                                                          // IMP 0x1000b79b0
- (void)setKillsLabel:(id)arg1;                                                            // IMP 0x1000b79d0
- (id)killsValueLabel;                                                                     // IMP 0x1000b79e4
- (void)setKillsValueLabel:(id)arg1;                                                       // IMP 0x1000b79f4
- (id)killedByLabel;                                                                       // IMP 0x1000b7a2c
- (void)setKilledByLabel:(id)arg1;                                                         // IMP 0x1000b7a3c
- (id)killedByValueLabel;                                                                  // IMP 0x1000b7a74
- (void)setKilledByValueLabel:(id)arg1;                                                    // IMP 0x1000b7a84
- (id)bioView;                                                                             // IMP 0x1000b7abc
- (void)setBioView:(id)arg1;                                                               // IMP 0x1000b7adc
@end

@interface ADEncyclopediaViewController : ADViewController <UITableViewDataSource, UITableViewDelegate, VerticalScrollCellDelegate, UIScrollViewDelegate>   // instance size 424, class @0x100422598
{
    S3DPlayList *encyclopediaPlaylist;       // +0x140 (8 bytes)  @"S3DPlayList"
    BOOL _displayingDetailView;              // +0x148 (1 bytes)  B
    UIScrollView *_zombieDetailHorizontalScrollTable; // +0x150 (8 bytes)  @"UIScrollView"
    UITableView *_zombieNameVerticalTable;   // +0x158 (8 bytes)  @"UITableView"
    NSArray *_zombieEnemies;                 // +0x160 (8 bytes)  @"NSArray"
    NSMutableArray *_itemViewControllers;    // +0x168 (8 bytes)  @"NSMutableArray"
    NSDictionary *_enemiesPlist;             // +0x170 (8 bytes)  @"NSDictionary"
    NSDictionary *_displayNameToNameMap;     // +0x178 (8 bytes)  @"NSDictionary"
    NSDictionary *_displayNameToUnlockRequirement; // +0x180 (8 bytes)  @"NSDictionary"
    NSDictionary *_enemyPersistentData;      // +0x188 (8 bytes)  @"NSDictionary"
    NSArray *_sortedZombieNames;             // +0x190 (8 bytes)  @"NSArray"
    NSMutableArray *_encVCList;              // +0x198 (8 bytes)  @"NSMutableArray"
    long long _currentEnemyBeingShown;       // +0x1a0 (8 bytes)  q
}
@property (retain, nonatomic) UIScrollView *zombieDetailHorizontalScrollTable;  // ivar: _zombieDetailHorizontalScrollTable
@property (retain, nonatomic) UITableView *zombieNameVerticalTable;  // ivar: _zombieNameVerticalTable
@property (retain) S3DPlayList *encyclopediaPlaylist;  // ivar: encyclopediaPlaylist
@property (retain) NSArray *zombieEnemies;  // ivar: _zombieEnemies
@property (retain) NSMutableArray *itemViewControllers;  // ivar: _itemViewControllers
@property (retain) NSDictionary *enemiesPlist;  // ivar: _enemiesPlist
@property (retain) NSDictionary *displayNameToNameMap;  // ivar: _displayNameToNameMap
@property (retain) NSDictionary *displayNameToUnlockRequirement;  // ivar: _displayNameToUnlockRequirement
@property (retain) NSDictionary *enemyPersistentData;  // ivar: _enemyPersistentData
@property (retain) NSArray *sortedZombieNames;  // ivar: _sortedZombieNames
@property (retain) NSMutableArray *encVCList;  // ivar: _encVCList
@property () long long currentEnemyBeingShown;  // ivar: _currentEnemyBeingShown
@property () BOOL displayingDetailView;  // ivar: _displayingDetailView
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100078348
- (id)getDisplayNameToUnlockRequirement;                                                   // IMP 0x100078738
- (id)mapDisplayNameToName;                                                                // IMP 0x100078b94
- (void)viewDidLoad;                                                                       // IMP 0x100078eb8
- (void)loadView;                                                                          // IMP 0x1000791d0
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x100079378
- (id)getSoundForName:(id)arg1;                                                            // IMP 0x1000795dc
- (id)sortZombieNames;                                                                     // IMP 0x100079610
- (void)addDetailViewControllersToHorizontalScroller;                                      // IMP 0x10007975c
- (void)closeDetail;                                                                       // IMP 0x10007a600
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x10007a7e4
- (float)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                              // IMP 0x10007a854
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x10007a8e0
- (void)tableView:(id)arg1 willDisplayCell:(id)arg2 forRowAtIndexPath:(id)arg3;            // IMP 0x10007ab34
- (void)cellSelectedWithZombieName:(id)arg1;                                               // IMP 0x10007abcc
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10007b0b0
- (void)dealloc;                                                                           // IMP 0x10007b0ec
- (void)backButtonPressed;                                                                 // IMP 0x10007b1a0
- (void)nextButtonPressed:(id)arg1;                                                        // IMP 0x10007b2b4
- (void)previousButtonPressed:(id)arg1;                                                    // IMP 0x10007b628
- (void)scrollViewDidEndDecelerating:(id)arg1;                                             // IMP 0x10007b948
- (void).cxx_destruct;                                                                     // IMP 0x10007be38
- (id)encyclopediaPlaylist;                                                                // IMP 0x10007bc68
- (void)setEncyclopediaPlaylist:(id)arg1;                                                  // IMP 0x10007bc78
- (id)zombieDetailHorizontalScrollTable;                                                   // IMP 0x10007bc84
- (void)setZombieDetailHorizontalScrollTable:(id)arg1;                                     // IMP 0x10007bc94
- (id)zombieNameVerticalTable;                                                             // IMP 0x10007bccc
- (void)setZombieNameVerticalTable:(id)arg1;                                               // IMP 0x10007bcdc
- (id)zombieEnemies;                                                                       // IMP 0x10007bd14
- (void)setZombieEnemies:(id)arg1;                                                         // IMP 0x10007bd24
- (id)itemViewControllers;                                                                 // IMP 0x10007bd30
- (void)setItemViewControllers:(id)arg1;                                                   // IMP 0x10007bd40
- (id)enemiesPlist;                                                                        // IMP 0x10007bd4c
- (void)setEnemiesPlist:(id)arg1;                                                          // IMP 0x10007bd5c
- (id)displayNameToNameMap;                                                                // IMP 0x10007bd68
- (void)setDisplayNameToNameMap:(id)arg1;                                                  // IMP 0x10007bd78
- (id)displayNameToUnlockRequirement;                                                      // IMP 0x10007bd84
- (void)setDisplayNameToUnlockRequirement:(id)arg1;                                        // IMP 0x10007bd94
- (id)enemyPersistentData;                                                                 // IMP 0x10007bda0
- (void)setEnemyPersistentData:(id)arg1;                                                   // IMP 0x10007bdb0
- (id)sortedZombieNames;                                                                   // IMP 0x10007bdbc
- (void)setSortedZombieNames:(id)arg1;                                                     // IMP 0x10007bdcc
- (id)encVCList;                                                                           // IMP 0x10007bdd8
- (void)setEncVCList:(id)arg1;                                                             // IMP 0x10007bde8
- (long long)currentEnemyBeingShown;                                                       // IMP 0x10007bdf4
- (void)setCurrentEnemyBeingShown:(long long)arg1;                                         // IMP 0x10007be04
- (BOOL)displayingDetailView;                                                              // IMP 0x10007be14
- (void)setDisplayingDetailView:(BOOL)arg1;                                                // IMP 0x10007be28
@end

@interface ADEnemy : NSObject   // instance size 288, class @0x100421ff8
{
    CGPoint orientation;                     // +0x8 (16 bytes)  {CGPoint="x"d"y"d}
    CGPoint normalOrientation;               // +0x18 (16 bytes)  {CGPoint="x"d"y"d}
    CGPoint zigzagOrientation;               // +0x28 (16 bytes)  {CGPoint="x"d"y"d}
    S3DPlayList *playlist;                   // +0x38 (8 bytes)  @"S3DPlayList"
    S3DSound *painSound;                     // +0x40 (8 bytes)  @"S3DSound"
    S3DSound *explosionSound;                // +0x48 (8 bytes)  @"S3DSound"
    NSString *ambiantName;                   // +0x50 (8 bytes)  @"NSString"
    BOOL soundWasPlaying;                    // +0x58 (1 bytes)  B
    BOOL spawned;                            // +0x59 (1 bytes)  B
    float normalAngle;                       // +0x5c (4 bytes)  f
    float shieldDamagesTaken;                // +0x60 (4 bytes)  f
    float shieldDuration;                    // +0x64 (4 bytes)  f
    BOOL deadSoundHasPlayed;                 // +0x68 (1 bytes)  B
    BOOL _nextShotWillBeCritical;            // +0x69 (1 bytes)  B
    BOOL _nextShotWillBePrecise;             // +0x6a (1 bytes)  B
    BOOL _useOwnImpactSounds;                // +0x6b (1 bytes)  B
    BOOL _destroyed;                         // +0x6c (1 bytes)  B
    BOOL _requiredPlaylistActivation;        // +0x6d (1 bytes)  B
    BOOL _playlistActivated;                 // +0x6e (1 bytes)  B
    float _randomAdditionalSpawnAngle;       // +0x70 (4 bytes)  f
    float _spawn_time;                       // +0x74 (4 bytes)  f
    float _angleFromPlayer;                  // +0x78 (4 bytes)  f
    float _squaredDistance;                  // +0x7c (4 bytes)  f
    float _attackDistance;                   // +0x80 (4 bytes)  f
    float _life;                             // +0x84 (4 bytes)  f
    float _maxLife;                          // +0x88 (4 bytes)  f
    int _state;                              // +0x8c (4 bytes)  i
    int _tag;                                // +0x90 (4 bytes)  i
    int _comboBonus;                         // +0x94 (4 bytes)  i
    int _score;                              // +0x98 (4 bytes)  i
    int _coinsReward;                        // +0x9c (4 bytes)  i
    float _speed;                            // +0xa0 (4 bytes)  f
    float _agressiveSpeed;                   // +0xa4 (4 bytes)  f
    float _timeInState;                      // +0xa8 (4 bytes)  f
    float _spawn_sound_duration;             // +0xac (4 bytes)  f
    int _multiHitFactor;                     // +0xb0 (4 bytes)  i
    NSString *_name;                         // +0xb8 (8 bytes)  @"NSString"
    NSString *_displayName;                  // +0xc0 (8 bytes)  @"NSString"
    NSString *_soundsPrefix;                 // +0xc8 (8 bytes)  @"NSString"
    NSDictionary *_spawn_after;              // +0xd0 (8 bytes)  @"NSDictionary"
    S3DSound *_sound;                        // +0xd8 (8 bytes)  @"S3DSound"
    NSDictionary *_explosion_dictionary;     // +0xe0 (8 bytes)  @"NSDictionary"
    NSDictionary *_shield_dictionary;        // +0xe8 (8 bytes)  @"NSDictionary"
    NSDictionary *_dodge_dictionary;         // +0xf0 (8 bytes)  @"NSDictionary"
    NSDictionary *_circling_dictionary;      // +0xf8 (8 bytes)  @"NSDictionary"
    NSDictionary *_berserk_dictionary;       // +0x100 (8 bytes)  @"NSDictionary"
    ADBrick *_parentBrick;                   // +0x108 (8 bytes)  @"ADBrick"
    CGPoint _position;                       // +0x110 (16 bytes)  {CGPoint="x"d"y"d}
}
@property (nonatomic) float randomAdditionalSpawnAngle;  // ivar: _randomAdditionalSpawnAngle
@property (nonatomic) float spawn_time;  // ivar: _spawn_time
@property (nonatomic) float angleFromPlayer;  // ivar: _angleFromPlayer
@property (nonatomic) float squaredDistance;  // ivar: _squaredDistance
@property (nonatomic) float attackDistance;  // ivar: _attackDistance
@property (nonatomic) float life;  // ivar: _life
@property (nonatomic) float maxLife;  // ivar: _maxLife
@property (nonatomic) int state;  // ivar: _state
@property (nonatomic) int tag;  // ivar: _tag
@property (nonatomic) int comboBonus;  // ivar: _comboBonus
@property (nonatomic) int score;  // ivar: _score
@property (nonatomic) int coinsReward;  // ivar: _coinsReward
@property (nonatomic) float speed;  // ivar: _speed
@property (nonatomic) float agressiveSpeed;  // ivar: _agressiveSpeed
@property (retain, nonatomic) NSString *name;  // ivar: _name
@property (retain, nonatomic) NSString *displayName;  // ivar: _displayName
@property (retain, nonatomic) NSString *soundsPrefix;  // ivar: _soundsPrefix
@property (retain, nonatomic) NSDictionary *spawn_after;  // ivar: _spawn_after
@property (nonatomic) BOOL nextShotWillBeCritical;  // ivar: _nextShotWillBeCritical
@property (nonatomic) BOOL nextShotWillBePrecise;  // ivar: _nextShotWillBePrecise
@property (nonatomic) CGPoint position;  // ivar: _position
@property () float timeInState;  // ivar: _timeInState
@property () float spawn_sound_duration;  // ivar: _spawn_sound_duration
@property (retain, nonatomic) S3DSound *sound;  // ivar: _sound
@property (nonatomic) BOOL useOwnImpactSounds;  // ivar: _useOwnImpactSounds
@property (retain, nonatomic) NSDictionary *explosion_dictionary;  // ivar: _explosion_dictionary
@property (retain, nonatomic) NSDictionary *shield_dictionary;  // ivar: _shield_dictionary
@property (retain, nonatomic) NSDictionary *dodge_dictionary;  // ivar: _dodge_dictionary
@property (retain, nonatomic) NSDictionary *circling_dictionary;  // ivar: _circling_dictionary
@property (retain, nonatomic) NSDictionary *berserk_dictionary;  // ivar: _berserk_dictionary
@property () BOOL destroyed;  // ivar: _destroyed
@property (retain, nonatomic) ADBrick *parentBrick;  // ivar: _parentBrick
@property (nonatomic) BOOL requiredPlaylistActivation;  // ivar: _requiredPlaylistActivation
@property (nonatomic) BOOL playlistActivated;  // ivar: _playlistActivated
@property (nonatomic) int multiHitFactor;  // ivar: _multiHitFactor
- (id)initWithName:(id)arg1;                                                               // IMP 0x10005ddd4
- (void)setPositionFromDictionary:(id)arg1;                                                // IMP 0x10005e624
- (void)setOrientationWithX:(float)arg1 andY:(float)arg2;                                  // IMP 0x10005e828
- (CGPoint)getOrientation;                                                                 // IMP 0x10005e8d0
- (void)updateOrientation;                                                                 // IMP 0x10005e8e4
- (void)randomizeNormalAngle;                                                              // IMP 0x10005e9b0
- (void)updateNormalOrientation;                                                           // IMP 0x10005e9ec
- (void)setPosition:(CGPoint)arg1;                                                         // IMP 0x10005ea80
- (void)update:(float)arg1;                                                                // IMP 0x10005eb94
- (void)setState:(int)arg1;                                                                // IMP 0x10005fb04
- (void)spawn;                                                                             // IMP 0x10005fbc0
- (void)walk;                                                                              // IMP 0x10005fe0c
- (void)walkOrAgressive;                                                                   // IMP 0x10005fe54
- (void)dodge;                                                                             // IMP 0x10005fefc
- (void)protect;                                                                           // IMP 0x10005ff4c
- (void)aggressive;                                                                        // IMP 0x10005ffd4
- (void)attack;                                                                            // IMP 0x100060304
- (void)afterAttackSound;                                                                  // IMP 0x1000605f4
- (void)transitionToBerserk;                                                               // IMP 0x10006077c
- (void)berserk;                                                                           // IMP 0x100060824
- (void)berserkGoAway;                                                                     // IMP 0x100060944
- (void)stopAfterPlayerWasKilled;                                                          // IMP 0x100060a58
- (void)hitByWeapon:(id)arg1 multiHitFactor:(int)arg2;                                     // IMP 0x100060b2c
- (void)hitByWeapon:(id)arg1;                                                              // IMP 0x100060b30
- (void)hitByProjectile:(id)arg1;                                                          // IMP 0x100061098
- (void)hitByExplosionAtPosition:(CGPoint)arg1 withDamages:(float)arg2 dispersal:(float)arg3 radius:(float)arg4 powerupname:(id)arg5; // IMP 0x100061284
- (void)playImpactAndHitSoundForDamages:(float)arg1 melee:(BOOL)arg2;                      // IMP 0x10006150c
- (void)setLife:(float)arg1;                                                               // IMP 0x100061a00
- (void)setLifeToZero;                                                                     // IMP 0x100061ab8
- (void)die;                                                                               // IMP 0x100061ac8
- (void)explode;                                                                           // IMP 0x100061e6c
- (BOOL)canBeShotAt;                                                                       // IMP 0x100061f68
- (void)blowAway:(float)arg1;                                                              // IMP 0x100061fe8
- (id)displayNameForName;                                                                  // IMP 0x10006207c
- (void)initSounds;                                                                        // IMP 0x10006223c
- (void)deactivate;                                                                        // IMP 0x100062320
- (void)activatePlaylist;                                                                  // IMP 0x10006235c
- (void)deactivatePlaylist;                                                                // IMP 0x100062404
- (float)playAnySoundContaining:(id)arg1 looping:(BOOL)arg2 spatialized:(BOOL)arg3;        // IMP 0x100062420
- (float)playAnySoundContaining:(id)arg1;                                                  // IMP 0x100062d90
- (void)playHitSoundForDamages:(float)arg1;                                                // IMP 0x100062db8
- (void)playDeathSound;                                                                    // IMP 0x100063688
- (void)setReverbAndWetBalanceOnSound:(id)arg1;                                            // IMP 0x100063a48
- (void)stopAllSounds;                                                                     // IMP 0x100063ab0
- (void)destroyEnemy;                                                                      // IMP 0x100063b74
- (id)getAmbiantName;                                                                      // IMP 0x100063c54
- (void)pause;                                                                             // IMP 0x100063c64
- (void)resume;                                                                            // IMP 0x100063d34
- (id)playlist;                                                                            // IMP 0x100063dac
- (unsigned long long)getType;                                                             // IMP 0x100063dbc
- (void)dealloc;                                                                           // IMP 0x100063dc4
- (void).cxx_destruct;                                                                     // IMP 0x100064460
- (id).cxx_construct;                                                                      // IMP 0x1000645a4
- (float)randomAdditionalSpawnAngle;                                                       // IMP 0x100063e60
- (void)setRandomAdditionalSpawnAngle:(float)arg1;                                         // IMP 0x100063e70
- (float)spawn_time;                                                                       // IMP 0x100063e80
- (void)setSpawn_time:(float)arg1;                                                         // IMP 0x100063e90
- (float)angleFromPlayer;                                                                  // IMP 0x100063ea0
- (void)setAngleFromPlayer:(float)arg1;                                                    // IMP 0x100063eb0
- (float)squaredDistance;                                                                  // IMP 0x100063ec0
- (void)setSquaredDistance:(float)arg1;                                                    // IMP 0x100063ed0
- (float)attackDistance;                                                                   // IMP 0x100063ee0
- (void)setAttackDistance:(float)arg1;                                                     // IMP 0x100063ef0
- (float)life;                                                                             // IMP 0x100063f00
- (float)maxLife;                                                                          // IMP 0x100063f10
- (void)setMaxLife:(float)arg1;                                                            // IMP 0x100063f20
- (int)state;                                                                              // IMP 0x100063f30
- (int)tag;                                                                                // IMP 0x100063f40
- (void)setTag:(int)arg1;                                                                  // IMP 0x100063f50
- (int)comboBonus;                                                                         // IMP 0x100063f60
- (void)setComboBonus:(int)arg1;                                                           // IMP 0x100063f70
- (int)score;                                                                              // IMP 0x100063f80
- (void)setScore:(int)arg1;                                                                // IMP 0x100063f90
- (int)coinsReward;                                                                        // IMP 0x100063fa0
- (void)setCoinsReward:(int)arg1;                                                          // IMP 0x100063fb0
- (float)speed;                                                                            // IMP 0x100063fc0
- (void)setSpeed:(float)arg1;                                                              // IMP 0x100063fd0
- (float)agressiveSpeed;                                                                   // IMP 0x100063fe0
- (void)setAgressiveSpeed:(float)arg1;                                                     // IMP 0x100063ff0
- (id)name;                                                                                // IMP 0x100064000
- (void)setName:(id)arg1;                                                                  // IMP 0x100064010
- (id)displayName;                                                                         // IMP 0x100064048
- (void)setDisplayName:(id)arg1;                                                           // IMP 0x100064058
- (id)soundsPrefix;                                                                        // IMP 0x100064090
- (void)setSoundsPrefix:(id)arg1;                                                          // IMP 0x1000640a0
- (id)spawn_after;                                                                         // IMP 0x1000640d8
- (void)setSpawn_after:(id)arg1;                                                           // IMP 0x1000640e8
- (BOOL)nextShotWillBeCritical;                                                            // IMP 0x100064120
- (void)setNextShotWillBeCritical:(BOOL)arg1;                                              // IMP 0x100064130
- (BOOL)nextShotWillBePrecise;                                                             // IMP 0x100064140
- (void)setNextShotWillBePrecise:(BOOL)arg1;                                               // IMP 0x100064150
- (CGPoint)position;                                                                       // IMP 0x100064160
- (float)timeInState;                                                                      // IMP 0x100064174
- (void)setTimeInState:(float)arg1;                                                        // IMP 0x100064188
- (float)spawn_sound_duration;                                                             // IMP 0x10006419c
- (void)setSpawn_sound_duration:(float)arg1;                                               // IMP 0x1000641b0
- (id)sound;                                                                               // IMP 0x1000641c4
- (void)setSound:(id)arg1;                                                                 // IMP 0x1000641d4
- (BOOL)useOwnImpactSounds;                                                                // IMP 0x10006420c
- (void)setUseOwnImpactSounds:(BOOL)arg1;                                                  // IMP 0x10006421c
- (id)explosion_dictionary;                                                                // IMP 0x10006422c
- (void)setExplosion_dictionary:(id)arg1;                                                  // IMP 0x10006423c
- (id)shield_dictionary;                                                                   // IMP 0x100064274
- (void)setShield_dictionary:(id)arg1;                                                     // IMP 0x100064284
- (id)dodge_dictionary;                                                                    // IMP 0x1000642bc
- (void)setDodge_dictionary:(id)arg1;                                                      // IMP 0x1000642cc
- (id)circling_dictionary;                                                                 // IMP 0x100064304
- (void)setCircling_dictionary:(id)arg1;                                                   // IMP 0x100064314
- (id)berserk_dictionary;                                                                  // IMP 0x10006434c
- (void)setBerserk_dictionary:(id)arg1;                                                    // IMP 0x10006435c
- (BOOL)destroyed;                                                                         // IMP 0x100064394
- (void)setDestroyed:(BOOL)arg1;                                                           // IMP 0x1000643a8
- (id)parentBrick;                                                                         // IMP 0x1000643b8
- (void)setParentBrick:(id)arg1;                                                           // IMP 0x1000643c8
- (BOOL)requiredPlaylistActivation;                                                        // IMP 0x100064400
- (void)setRequiredPlaylistActivation:(BOOL)arg1;                                          // IMP 0x100064410
- (BOOL)playlistActivated;                                                                 // IMP 0x100064420
- (void)setPlaylistActivated:(BOOL)arg1;                                                   // IMP 0x100064430
- (int)multiHitFactor;                                                                     // IMP 0x100064440
- (void)setMultiHitFactor:(int)arg1;                                                       // IMP 0x100064450
@end

@interface ADEnemyStatsCell : UITableViewCell   // instance size 128, class @0x1004225e8
{
    UIView *_customView;                     // +0x68 (8 bytes)  @"UIView"
    UILabel *_enemyNameLabel;                // +0x70 (8 bytes)  @"UILabel"
    UILabel *_coinsAmountLabel;              // +0x78 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UIView *customView;  // ivar: _customView
@property (retain, nonatomic) UILabel *enemyNameLabel;  // ivar: _enemyNameLabel
@property (retain, nonatomic) UILabel *coinsAmountLabel;  // ivar: _coinsAmountLabel
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x10007bf2c
- (void)awakeFromNib;                                                                      // IMP 0x10007bf68
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x10007c1a0
- (void).cxx_destruct;                                                                     // IMP 0x10007c2b4
- (id)customView;                                                                          // IMP 0x10007c1dc
- (void)setCustomView:(id)arg1;                                                            // IMP 0x10007c1ec
- (id)enemyNameLabel;                                                                      // IMP 0x10007c224
- (void)setEnemyNameLabel:(id)arg1;                                                        // IMP 0x10007c234
- (id)coinsAmountLabel;                                                                    // IMP 0x10007c26c
- (void)setCoinsAmountLabel:(id)arg1;                                                      // IMP 0x10007c27c
@end

@interface ADEnemyUnlockPopupViewController : ADNoBarViewController   // instance size 352, class @0x1004216e8
{
    NSString *enemyName;                     // +0x140 (8 bytes)  @"NSString"
    UILabel *_nextUnlockLabel;               // +0x148 (8 bytes)  @"UILabel"
    UITextView *_descriptionTextView;        // +0x150 (8 bytes)  @"UITextView"
    UILabel *_titleLabel;                    // +0x158 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UILabel *nextUnlockLabel;  // ivar: _nextUnlockLabel
@property (retain, nonatomic) UITextView *descriptionTextView;  // ivar: _descriptionTextView
@property (retain, nonatomic) UILabel *titleLabel;  // ivar: _titleLabel
- (id)initWithEnemyName:(id)arg1;                                                          // IMP 0x100038dd8
- (void)viewDidLoad;                                                                       // IMP 0x100038e84
- (void)backButtonTouched:(id)arg1;                                                        // IMP 0x1000391c8
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000391f8
- (void).cxx_destruct;                                                                     // IMP 0x10003930c
- (id)nextUnlockLabel;                                                                     // IMP 0x100039234
- (void)setNextUnlockLabel:(id)arg1;                                                       // IMP 0x100039244
- (id)descriptionTextView;                                                                 // IMP 0x10003927c
- (void)setDescriptionTextView:(id)arg1;                                                   // IMP 0x10003928c
- (id)titleLabel;                                                                          // IMP 0x1000392c4
- (void)setTitleLabel:(id)arg1;                                                            // IMP 0x1000392d4
@end

@interface ADFireworksPowerUp : ADPowerUp   // instance size 32, class @0x100422d18
{
    float timeSinceActivation;               // +0x8 (4 bytes)  f
    BOOL active;                             // +0xc (1 bytes)  B
    float nextExplosionTime;                 // +0x10 (4 bytes)  f
    float _dispersal;                        // +0x14 (4 bytes)  f
    float _radius;                           // +0x18 (4 bytes)  f
    float _damages;                          // +0x1c (4 bytes)  f
}
@property () float dispersal;  // ivar: _dispersal
@property () float radius;  // ivar: _radius
@property () float damages;  // ivar: _damages
- (void)preload;                                                                           // IMP 0x100091770
- (void)use;                                                                               // IMP 0x100091860
- (void)update:(float)arg1;                                                                // IMP 0x100091e18
- (void)randomizeNextExplosionTime;                                                        // IMP 0x100091ee4
- (void)playRandomExplosion;                                                               // IMP 0x100091f7c
- (void)clean;                                                                             // IMP 0x1000922c4
- (float)dispersal;                                                                        // IMP 0x100092448
- (void)setDispersal:(float)arg1;                                                          // IMP 0x10009245c
- (float)radius;                                                                           // IMP 0x100092470
- (void)setRadius:(float)arg1;                                                             // IMP 0x100092484
- (float)damages;                                                                          // IMP 0x100092498
- (void)setDamages:(float)arg1;                                                            // IMP 0x1000924ac
@end

@interface ADGameModifiers : NSObject   // instance size 48, class @0x100423ee8
{
    BOOL _slowerEnemies;                     // +0x8 (1 bytes)  B
    BOOL _weakerEnemies;                     // +0x9 (1 bytes)  B
    BOOL _moreMeleeDamages;                  // +0xa (1 bytes)  B
    BOOL _moreDamages;                       // +0xb (1 bytes)  B
    BOOL _moreBullets;                       // +0xc (1 bytes)  B
    BOOL _freeRevive;                        // +0xd (1 bytes)  B
    BOOL _luckyShots;                        // +0xe (1 bytes)  B
    BOOL _metalDetector;                     // +0xf (1 bytes)  B
    BOOL _tesla;                             // +0x10 (1 bytes)  B
    BOOL _goldenBullet;                      // +0x11 (1 bytes)  B
    BOOL _widerSpread;                       // +0x12 (1 bytes)  B
    BOOL _moreHeadshots;                     // +0x13 (1 bytes)  B
    BOOL _baseComboBonus;                    // +0x14 (1 bytes)  B
    BOOL _morePowerUps;                      // +0x15 (1 bytes)  B
    BOOL _betterPowerUps;                    // +0x16 (1 bytes)  B
    BOOL _lessHeadshots;                     // +0x17 (1 bytes)  B
    BOOL _strongerEnemies;                   // +0x18 (1 bytes)  B
    BOOL _rustyWeapons;                      // +0x19 (1 bytes)  B
    BOOL _enragedHorde;                      // +0x1a (1 bytes)  B
    BOOL _narrowedSpread;                    // +0x1b (1 bytes)  B
    BOOL _cows;                              // +0x1c (1 bytes)  B
    BOOL _cars;                              // +0x1d (1 bytes)  B
    BOOL _storm;                             // +0x1e (1 bytes)  B
    BOOL _jukebox;                           // +0x1f (1 bytes)  B
    BOOL _machine;                           // +0x20 (1 bytes)  B
    BOOL _noCritical;                        // +0x21 (1 bytes)  B
    BOOL _fullMoon;                          // +0x22 (1 bytes)  B
    BOOL _bullshit;                          // +0x23 (1 bytes)  B
    BOOL _fasterReloadTime;                  // +0x24 (1 bytes)  B
    BOOL _slowerReloadTime;                  // +0x25 (1 bytes)  B
    BOOL _fasterEnemies;                     // +0x26 (1 bytes)  B
    BOOL _lessDamages;                       // +0x27 (1 bytes)  B
    BOOL _lessMeleeDamages;                  // +0x28 (1 bytes)  B
    BOOL _lessBullets;                       // +0x29 (1 bytes)  B
    float _difficultyModifier;               // +0x2c (4 bytes)  f
}
@property () BOOL slowerEnemies;  // ivar: _slowerEnemies
@property () BOOL weakerEnemies;  // ivar: _weakerEnemies
@property () BOOL moreMeleeDamages;  // ivar: _moreMeleeDamages
@property () BOOL moreDamages;  // ivar: _moreDamages
@property () BOOL moreBullets;  // ivar: _moreBullets
@property () BOOL freeRevive;  // ivar: _freeRevive
@property () BOOL luckyShots;  // ivar: _luckyShots
@property () BOOL metalDetector;  // ivar: _metalDetector
@property (nonatomic) BOOL tesla;  // ivar: _tesla
@property () BOOL goldenBullet;  // ivar: _goldenBullet
@property () BOOL widerSpread;  // ivar: _widerSpread
@property () BOOL moreHeadshots;  // ivar: _moreHeadshots
@property () BOOL baseComboBonus;  // ivar: _baseComboBonus
@property () BOOL morePowerUps;  // ivar: _morePowerUps
@property () BOOL betterPowerUps;  // ivar: _betterPowerUps
@property () BOOL lessHeadshots;  // ivar: _lessHeadshots
@property () BOOL strongerEnemies;  // ivar: _strongerEnemies
@property () BOOL rustyWeapons;  // ivar: _rustyWeapons
@property () BOOL enragedHorde;  // ivar: _enragedHorde
@property () BOOL narrowedSpread;  // ivar: _narrowedSpread
@property () BOOL cows;  // ivar: _cows
@property () BOOL cars;  // ivar: _cars
@property () BOOL storm;  // ivar: _storm
@property () BOOL jukebox;  // ivar: _jukebox
@property () BOOL machine;  // ivar: _machine
@property () BOOL noCritical;  // ivar: _noCritical
@property () BOOL fullMoon;  // ivar: _fullMoon
@property () BOOL bullshit;  // ivar: _bullshit
@property () BOOL fasterReloadTime;  // ivar: _fasterReloadTime
@property () BOOL slowerReloadTime;  // ivar: _slowerReloadTime
@property () BOOL fasterEnemies;  // ivar: _fasterEnemies
@property () BOOL lessDamages;  // ivar: _lessDamages
@property () BOOL lessMeleeDamages;  // ivar: _lessMeleeDamages
@property () BOOL lessBullets;  // ivar: _lessBullets
@property () float difficultyModifier;  // ivar: _difficultyModifier
+ (id)sharedModifiers;                                                                     // IMP 0x1000de10c
- (void)resetModifiers;                                                                    // IMP 0x1000de1f0
- (float)headShotModifier;                                                                 // IMP 0x1000de51c
- (float)enemiLifeModifier;                                                                // IMP 0x1000de584
- (float)enemiSpeedModifier;                                                               // IMP 0x1000de610
- (float)gunDamagesModifier;                                                               // IMP 0x1000de69c
- (float)meleeDamagesModifier;                                                             // IMP 0x1000de714
- (float)reloadTimeModifier;                                                               // IMP 0x1000de77c
- (float)spreadModifier;                                                                   // IMP 0x1000de7f4
- (void)logModifiers;                                                                      // IMP 0x1000de85c
- (void)setTesla:(BOOL)arg1;                                                               // IMP 0x1000de904
- (BOOL)isTodayNewMoon;                                                                    // IMP 0x1000de9e0
- (BOOL)checkFullMoon;                                                                     // IMP 0x1000de9e8
- (BOOL)slowerEnemies;                                                                     // IMP 0x1000dec74
- (void)setSlowerEnemies:(BOOL)arg1;                                                       // IMP 0x1000dec88
- (BOOL)weakerEnemies;                                                                     // IMP 0x1000dec98
- (void)setWeakerEnemies:(BOOL)arg1;                                                       // IMP 0x1000decac
- (BOOL)moreMeleeDamages;                                                                  // IMP 0x1000decbc
- (void)setMoreMeleeDamages:(BOOL)arg1;                                                    // IMP 0x1000decd0
- (BOOL)moreDamages;                                                                       // IMP 0x1000dece0
- (void)setMoreDamages:(BOOL)arg1;                                                         // IMP 0x1000decf4
- (BOOL)moreBullets;                                                                       // IMP 0x1000ded04
- (void)setMoreBullets:(BOOL)arg1;                                                         // IMP 0x1000ded18
- (BOOL)freeRevive;                                                                        // IMP 0x1000ded28
- (void)setFreeRevive:(BOOL)arg1;                                                          // IMP 0x1000ded3c
- (BOOL)luckyShots;                                                                        // IMP 0x1000ded4c
- (void)setLuckyShots:(BOOL)arg1;                                                          // IMP 0x1000ded60
- (BOOL)metalDetector;                                                                     // IMP 0x1000ded70
- (void)setMetalDetector:(BOOL)arg1;                                                       // IMP 0x1000ded84
- (BOOL)tesla;                                                                             // IMP 0x1000ded94
- (BOOL)goldenBullet;                                                                      // IMP 0x1000deda4
- (void)setGoldenBullet:(BOOL)arg1;                                                        // IMP 0x1000dedb8
- (BOOL)widerSpread;                                                                       // IMP 0x1000dedc8
- (void)setWiderSpread:(BOOL)arg1;                                                         // IMP 0x1000deddc
- (BOOL)moreHeadshots;                                                                     // IMP 0x1000dedec
- (void)setMoreHeadshots:(BOOL)arg1;                                                       // IMP 0x1000dee00
- (BOOL)baseComboBonus;                                                                    // IMP 0x1000dee10
- (void)setBaseComboBonus:(BOOL)arg1;                                                      // IMP 0x1000dee24
- (BOOL)morePowerUps;                                                                      // IMP 0x1000dee34
- (void)setMorePowerUps:(BOOL)arg1;                                                        // IMP 0x1000dee48
- (BOOL)betterPowerUps;                                                                    // IMP 0x1000dee58
- (void)setBetterPowerUps:(BOOL)arg1;                                                      // IMP 0x1000dee6c
- (BOOL)lessHeadshots;                                                                     // IMP 0x1000dee7c
- (void)setLessHeadshots:(BOOL)arg1;                                                       // IMP 0x1000dee90
- (BOOL)strongerEnemies;                                                                   // IMP 0x1000deea0
- (void)setStrongerEnemies:(BOOL)arg1;                                                     // IMP 0x1000deeb4
- (BOOL)rustyWeapons;                                                                      // IMP 0x1000deec4
- (void)setRustyWeapons:(BOOL)arg1;                                                        // IMP 0x1000deed8
- (BOOL)enragedHorde;                                                                      // IMP 0x1000deee8
- (void)setEnragedHorde:(BOOL)arg1;                                                        // IMP 0x1000deefc
- (BOOL)narrowedSpread;                                                                    // IMP 0x1000def0c
- (void)setNarrowedSpread:(BOOL)arg1;                                                      // IMP 0x1000def20
- (BOOL)cows;                                                                              // IMP 0x1000def30
- (void)setCows:(BOOL)arg1;                                                                // IMP 0x1000def44
- (BOOL)cars;                                                                              // IMP 0x1000def54
- (void)setCars:(BOOL)arg1;                                                                // IMP 0x1000def68
- (BOOL)storm;                                                                             // IMP 0x1000def78
- (void)setStorm:(BOOL)arg1;                                                               // IMP 0x1000def8c
- (BOOL)jukebox;                                                                           // IMP 0x1000def9c
- (void)setJukebox:(BOOL)arg1;                                                             // IMP 0x1000defb0
- (BOOL)machine;                                                                           // IMP 0x1000defc0
- (void)setMachine:(BOOL)arg1;                                                             // IMP 0x1000defd4
- (BOOL)noCritical;                                                                        // IMP 0x1000defe4
- (void)setNoCritical:(BOOL)arg1;                                                          // IMP 0x1000deff8
- (BOOL)fullMoon;                                                                          // IMP 0x1000df008
- (void)setFullMoon:(BOOL)arg1;                                                            // IMP 0x1000df01c
- (BOOL)bullshit;                                                                          // IMP 0x1000df02c
- (void)setBullshit:(BOOL)arg1;                                                            // IMP 0x1000df040
- (BOOL)fasterReloadTime;                                                                  // IMP 0x1000df050
- (void)setFasterReloadTime:(BOOL)arg1;                                                    // IMP 0x1000df064
- (BOOL)slowerReloadTime;                                                                  // IMP 0x1000df074
- (void)setSlowerReloadTime:(BOOL)arg1;                                                    // IMP 0x1000df088
- (BOOL)fasterEnemies;                                                                     // IMP 0x1000df098
- (void)setFasterEnemies:(BOOL)arg1;                                                       // IMP 0x1000df0ac
- (BOOL)lessDamages;                                                                       // IMP 0x1000df0bc
- (void)setLessDamages:(BOOL)arg1;                                                         // IMP 0x1000df0d0
- (BOOL)lessMeleeDamages;                                                                  // IMP 0x1000df0e0
- (void)setLessMeleeDamages:(BOOL)arg1;                                                    // IMP 0x1000df0f4
- (BOOL)lessBullets;                                                                       // IMP 0x1000df104
- (void)setLessBullets:(BOOL)arg1;                                                         // IMP 0x1000df118
- (float)difficultyModifier;                                                               // IMP 0x1000df128
- (void)setDifficultyModifier:(float)arg1;                                                 // IMP 0x1000df13c
@end

@interface ADGameOverEndlessStatsEnemies : UIScrollView   // instance size 176, class @0x100423da8
{
    float _contentViewWidth;                 // +0x70 (4 bytes)  f
    float _contentViewHeight;                // +0x74 (4 bytes)  f
    NSMutableArray *_labelTags;              // +0x78 (8 bytes)  @"NSMutableArray"
    NSMutableDictionary *_labelTagAnimationTriggers; // +0x80 (8 bytes)  @"NSMutableDictionary"
    UIView *_contentView;                    // +0x88 (8 bytes)  @"UIView"
    CGRect _scrollViewFrame;                 // +0x90 (32 bytes)  {CGRect="origin"{CGPoint="x"d"y"d}"size"{CGSize="width"d"height"d}}
}
@property () CGRect scrollViewFrame;  // ivar: _scrollViewFrame
@property (retain) NSMutableArray *labelTags;  // ivar: _labelTags
@property (retain) NSMutableDictionary *labelTagAnimationTriggers;  // ivar: _labelTagAnimationTriggers
@property (retain) UIView *contentView;  // ivar: _contentView
@property () float contentViewWidth;  // ivar: _contentViewWidth
@property () float contentViewHeight;  // ivar: _contentViewHeight
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x1000db900
- (void)awakeFromNib;                                                                      // IMP 0x1000db93c
- (void)populateViewWithEnemyData:(id)arg1;                                                // IMP 0x1000dbc18
- (void)drawRect:(CGRect)arg1;                                                             // IMP 0x1000dc4d8
- (void).cxx_destruct;                                                                     // IMP 0x1000dc978
- (id).cxx_construct;                                                                      // IMP 0x1000dc9cc
- (CGRect)scrollViewFrame;                                                                 // IMP 0x1000dc854
- (void)setScrollViewFrame:(CGRect)arg1;                                                   // IMP 0x1000dc894
- (id)labelTags;                                                                           // IMP 0x1000dc8d4
- (void)setLabelTags:(id)arg1;                                                             // IMP 0x1000dc8e4
- (id)labelTagAnimationTriggers;                                                           // IMP 0x1000dc8f0
- (void)setLabelTagAnimationTriggers:(id)arg1;                                             // IMP 0x1000dc900
- (id)contentView;                                                                         // IMP 0x1000dc90c
- (void)setContentView:(id)arg1;                                                           // IMP 0x1000dc91c
- (float)contentViewWidth;                                                                 // IMP 0x1000dc928
- (void)setContentViewWidth:(float)arg1;                                                   // IMP 0x1000dc93c
- (float)contentViewHeight;                                                                // IMP 0x1000dc950
- (void)setContentViewHeight:(float)arg1;                                                  // IMP 0x1000dc964
@end

@interface ADGameOverEndlessStatsViewController : ADViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 424, class @0x100420f18
{
    NSDictionary *enemyData;                 // +0x140 (8 bytes)  @"NSDictionary"
    NSDictionary *weaponsData;               // +0x148 (8 bytes)  @"NSDictionary"
    NSDictionary *weaponsCriticalData;       // +0x150 (8 bytes)  @"NSDictionary"
    NSDictionary *miscData;                  // +0x158 (8 bytes)  @"NSDictionary"
    NSArray *weaponsKeys;                    // +0x160 (8 bytes)  @"NSArray"
    NSArray *enemyKeys;                      // +0x168 (8 bytes)  @"NSArray"
    NSMutableArray *cellsTriggered;          // +0x170 (8 bytes)  @"NSMutableArray"
    NSDictionary *enemyPlist;                // +0x178 (8 bytes)  @"NSDictionary"
    UITableView *_tableView;                 // +0x180 (8 bytes)  @"UITableView"
    id _delegate;                            // +0x188 (8 bytes)  @
    long long _numberOfSections;             // +0x190 (8 bytes)  q
    NSMutableArray *_weaponCells;            // +0x198 (8 bytes)  @"NSMutableArray"
    NSDictionary *_sectionsDict;             // +0x1a0 (8 bytes)  @"NSDictionary"
}
@property (weak, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (weak, nonatomic) id delegate;  // ivar: _delegate
@property () long long numberOfSections;  // ivar: _numberOfSections
@property (retain) NSMutableArray *weaponCells;  // ivar: _weaponCells
@property (retain) NSDictionary *sectionsDict;  // ivar: _sectionsDict
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100011550
- (void)viewDidLoad;                                                                       // IMP 0x100011d60
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10001214c
- (void)tableView:(id)arg1 willDisplayCell:(id)arg2 forRowAtIndexPath:(id)arg3;            // IMP 0x100012188
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x100012410
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x1000125f8
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x1000128d0
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x1000128f0
- (id)createMiscCellForRowAtIndexPath:(id)arg1 ForTableView:(id)arg2;                      // IMP 0x100012b74
- (id)createEnemyCellForRowAtIndexPath:(id)arg1 ForTableView:(id)arg2;                     // IMP 0x100012e1c
- (id)createWeaponCellForRow:(long long)arg1;                                              // IMP 0x100013170
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;                     // IMP 0x1000138e8
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;                           // IMP 0x1000139a8
- (void)backButtonPressed;                                                                 // IMP 0x100013c30
- (void)scrollViewDidScroll:(id)arg1;                                                      // IMP 0x100013ccc
- (void).cxx_destruct;                                                                     // IMP 0x100013d90
- (id)tableView;                                                                           // IMP 0x100013cd0
- (void)setTableView:(id)arg1;                                                             // IMP 0x100013cf0
- (id)delegate;                                                                            // IMP 0x100013d04
- (void)setDelegate:(id)arg1;                                                              // IMP 0x100013d24
- (long long)numberOfSections;                                                             // IMP 0x100013d38
- (void)setNumberOfSections:(long long)arg1;                                               // IMP 0x100013d48
- (id)weaponCells;                                                                         // IMP 0x100013d58
- (void)setWeaponCells:(id)arg1;                                                           // IMP 0x100013d68
- (id)sectionsDict;                                                                        // IMP 0x100013d74
- (void)setSectionsDict:(id)arg1;                                                          // IMP 0x100013d84
@end

@interface ADGameOverEndlessViewController : ADGameOverWithStatsViewController <UIAlertViewDelegate, ADMissionBarDelegate>   // instance size 368, class @0x100423a88
{
    BOOL _displayingMissions;                // +0x140 (1 bytes)  B
    UIButton *_statisticsButton;             // +0x148 (8 bytes)  @"UIButton"
    UIImageView *_extraMoneyImage;           // +0x150 (8 bytes)  @"UIImageView"
    UILabel *_highScoreLabel;                // +0x158 (8 bytes)  @"UILabel"
    UILabel *_unlockableWeaponsLabel;        // +0x160 (8 bytes)  @"UILabel"
    UIView *_viewForTwitterScreenshot;       // +0x168 (8 bytes)  @"UIView"
}
@property (retain) UIButton *statisticsButton;  // ivar: _statisticsButton
@property (retain, nonatomic) UIImageView *extraMoneyImage;  // ivar: _extraMoneyImage
@property (retain, nonatomic) UILabel *highScoreLabel;  // ivar: _highScoreLabel
@property (retain, nonatomic) UILabel *unlockableWeaponsLabel;  // ivar: _unlockableWeaponsLabel
@property (retain, nonatomic) UIView *viewForTwitterScreenshot;  // ivar: _viewForTwitterScreenshot
@property () BOOL displayingMissions;  // ivar: _displayingMissions
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000d2fe0
- (void)viewDidLoad;                                                                       // IMP 0x1000d306c
- (void)loadView;                                                                          // IMP 0x1000d3e84
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x1000d41f0
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x1000d424c
- (void)resetCardsModifiersIfNeeded;                                                       // IMP 0x1000d42a8
- (void)backButtonPressed;                                                                 // IMP 0x1000d4430
- (void)playAgainButtonPressed:(id)arg1;                                                   // IMP 0x1000d44d0
- (void)showGameStatistics:(id)arg1;                                                       // IMP 0x1000d4574
- (void)positionView;                                                                      // IMP 0x1000d4620
- (void)swipeLeft;                                                                         // IMP 0x1000d46ec
- (void)swipeRight;                                                                        // IMP 0x1000d46f0
- (void)reportScoreToGameCenter;                                                           // IMP 0x1000d46f4
- (void)twitterScreenshotButtonPressed:(id)arg1;                                           // IMP 0x1000d4a50
- (void)scoreReported:(id)arg1;                                                            // IMP 0x1000d4dd8
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000d4ddc
- (void)dealloc;                                                                           // IMP 0x1000d4e18
- (void)refreshMission:(id)arg1 WithTag:(long long)arg2;                                   // IMP 0x1000d4f34
- (void).cxx_destruct;                                                                     // IMP 0x1000d530c
- (id)statisticsButton;                                                                    // IMP 0x1000d51ac
- (void)setStatisticsButton:(id)arg1;                                                      // IMP 0x1000d51bc
- (id)extraMoneyImage;                                                                     // IMP 0x1000d51c8
- (void)setExtraMoneyImage:(id)arg1;                                                       // IMP 0x1000d51d8
- (id)highScoreLabel;                                                                      // IMP 0x1000d5210
- (void)setHighScoreLabel:(id)arg1;                                                        // IMP 0x1000d5220
- (id)unlockableWeaponsLabel;                                                              // IMP 0x1000d5258
- (void)setUnlockableWeaponsLabel:(id)arg1;                                                // IMP 0x1000d5268
- (id)viewForTwitterScreenshot;                                                            // IMP 0x1000d52a0
- (void)setViewForTwitterScreenshot:(id)arg1;                                              // IMP 0x1000d52b0
- (BOOL)displayingMissions;                                                                // IMP 0x1000d52e8
- (void)setDisplayingMissions:(BOOL)arg1;                                                  // IMP 0x1000d52fc
@end

@interface ADGameOverTableEnemyCell : UITableViewCell   // instance size 128, class @0x100421a08
{
    UILabel *_nameLabel;                     // +0x68 (8 bytes)  @"UILabel"
    UILabel *_killsLabel;                    // +0x70 (8 bytes)  @"UILabel"
    UIView *_mainParentView;                 // +0x78 (8 bytes)  @"UIView"
}
@property (retain) UILabel *nameLabel;  // ivar: _nameLabel
@property (retain) UILabel *killsLabel;  // ivar: _killsLabel
@property (retain) UIView *mainParentView;  // ivar: _mainParentView
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x100040a24
- (void)setupInitialConstraints;                                                           // IMP 0x100041100
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x10004160c
- (void)startKillsAnimationUpTo:(long long)arg1 :(double)arg2;                             // IMP 0x100041648
- (void).cxx_destruct;                                                                     // IMP 0x10004175c
- (id)nameLabel;                                                                           // IMP 0x100041708
- (void)setNameLabel:(id)arg1;                                                             // IMP 0x100041718
- (id)killsLabel;                                                                          // IMP 0x100041724
- (void)setKillsLabel:(id)arg1;                                                            // IMP 0x100041734
- (id)mainParentView;                                                                      // IMP 0x100041740
- (void)setMainParentView:(id)arg1;                                                        // IMP 0x100041750
@end

@interface ADGameOverTableWeaponCell : UITableViewCell   // instance size 200, class @0x100421c38
{
    UILabel *_accuracyLabel;                 // +0x68 (8 bytes)  @"UILabel"
    UILabel *_criticalsLabel;                // +0x70 (8 bytes)  @"UILabel"
    UILabel *_shotsFiredLabel;               // +0x78 (8 bytes)  @"UILabel"
    UILabel *_killsLabel;                    // +0x80 (8 bytes)  @"UILabel"
    UILabel *_timeSpentLabel;                // +0x88 (8 bytes)  @"UILabel"
    UILabel *_timeSpentValue;                // +0x90 (8 bytes)  @"UILabel"
    UILabel *_accuracyValue;                 // +0x98 (8 bytes)  @"UILabel"
    UILabel *_shotsFiredValue;               // +0xa0 (8 bytes)  @"UILabel"
    UILabel *_killsValue;                    // +0xa8 (8 bytes)  @"UILabel"
    UILabel *_criticalsFiredValue;           // +0xb0 (8 bytes)  @"UILabel"
    UILabel *_nameLabel;                     // +0xb8 (8 bytes)  @"UILabel"
    UIView *_mainParentView;                 // +0xc0 (8 bytes)  @"UIView"
}
@property (weak, nonatomic) UILabel *accuracyLabel;  // ivar: _accuracyLabel
@property (weak, nonatomic) UILabel *criticalsLabel;  // ivar: _criticalsLabel
@property (weak, nonatomic) UILabel *shotsFiredLabel;  // ivar: _shotsFiredLabel
@property (retain, nonatomic) UILabel *killsLabel;  // ivar: _killsLabel
@property (weak, nonatomic) UILabel *timeSpentLabel;  // ivar: _timeSpentLabel
@property (weak, nonatomic) UILabel *timeSpentValue;  // ivar: _timeSpentValue
@property (weak, nonatomic) UILabel *accuracyValue;  // ivar: _accuracyValue
@property (weak, nonatomic) UILabel *shotsFiredValue;  // ivar: _shotsFiredValue
@property (retain, nonatomic) UILabel *killsValue;  // ivar: _killsValue
@property (weak, nonatomic) UILabel *criticalsFiredValue;  // ivar: _criticalsFiredValue
@property (weak, nonatomic) UILabel *nameLabel;  // ivar: _nameLabel
@property (weak, nonatomic) UIView *mainParentView;  // ivar: _mainParentView
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x10004a810
- (void)awakeFromNib;                                                                      // IMP 0x10004a84c
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x10004b0b0
- (void)startKillsAnimationUpTo:(long long)arg1 :(double)arg2;                             // IMP 0x10004b0ec
- (void).cxx_destruct;                                                                     // IMP 0x10004b444
- (id)accuracyLabel;                                                                       // IMP 0x10004b1ac
- (void)setAccuracyLabel:(id)arg1;                                                         // IMP 0x10004b1cc
- (id)criticalsLabel;                                                                      // IMP 0x10004b1e0
- (void)setCriticalsLabel:(id)arg1;                                                        // IMP 0x10004b200
- (id)shotsFiredLabel;                                                                     // IMP 0x10004b214
- (void)setShotsFiredLabel:(id)arg1;                                                       // IMP 0x10004b234
- (id)killsLabel;                                                                          // IMP 0x10004b248
- (void)setKillsLabel:(id)arg1;                                                            // IMP 0x10004b258
- (id)timeSpentLabel;                                                                      // IMP 0x10004b290
- (void)setTimeSpentLabel:(id)arg1;                                                        // IMP 0x10004b2b0
- (id)timeSpentValue;                                                                      // IMP 0x10004b2c4
- (void)setTimeSpentValue:(id)arg1;                                                        // IMP 0x10004b2e4
- (id)accuracyValue;                                                                       // IMP 0x10004b2f8
- (void)setAccuracyValue:(id)arg1;                                                         // IMP 0x10004b318
- (id)shotsFiredValue;                                                                     // IMP 0x10004b32c
- (void)setShotsFiredValue:(id)arg1;                                                       // IMP 0x10004b34c
- (id)killsValue;                                                                          // IMP 0x10004b360
- (void)setKillsValue:(id)arg1;                                                            // IMP 0x10004b370
- (id)criticalsFiredValue;                                                                 // IMP 0x10004b3a8
- (void)setCriticalsFiredValue:(id)arg1;                                                   // IMP 0x10004b3c8
- (id)nameLabel;                                                                           // IMP 0x10004b3dc
- (void)setNameLabel:(id)arg1;                                                             // IMP 0x10004b3fc
- (id)mainParentView;                                                                      // IMP 0x10004b410
- (void)setMainParentView:(id)arg1;                                                        // IMP 0x10004b430
@end

@interface ADGameOverWithStatsViewController : ADViewController   // instance size 536, class @0x100421aa8
{
    NSMutableArray *missionsViewControllerArray; // +0x140 (8 bytes)  @"NSMutableArray"
    BOOL _ignoreRewards;                     // +0x148 (1 bytes)  B
    float _delayForDisplayingScore;          // +0x14c (4 bytes)  f
    int _starCoins;                          // +0x150 (4 bytes)  i
    UILabel *_challengeTitle;                // +0x158 (8 bytes)  @"UILabel"
    UILabel *_missionsTitle;                 // +0x160 (8 bytes)  @"UILabel"
    ADButtonWithFont *_missionsButton;       // +0x168 (8 bytes)  @"ADButtonWithFont"
    UILabel *_scoreLabel;                    // +0x170 (8 bytes)  @"UILabel"
    UILabel *_comboLabel;                    // +0x178 (8 bytes)  @"UILabel"
    UILabel *_killsLabel;                    // +0x180 (8 bytes)  @"UILabel"
    UILabel *_accuracyLabel;                 // +0x188 (8 bytes)  @"UILabel"
    UILabel *_timeLabel;                     // +0x190 (8 bytes)  @"UILabel"
    ADLabelWithCoins *_coinsTotal;           // +0x198 (8 bytes)  @"ADLabelWithCoins"
    UILabel *_diamondsTotal;                 // +0x1a0 (8 bytes)  @"UILabel"
    UILabel *_diamondsLoot;                  // +0x1a8 (8 bytes)  @"UILabel"
    UIView *_missionView;                    // +0x1b0 (8 bytes)  @"UIView"
    UIView *_contentView;                    // +0x1b8 (8 bytes)  @"UIView"
    UIView *_buttonsView;                    // +0x1c0 (8 bytes)  @"UIView"
    UIScrollView *_contentScrollView;        // +0x1c8 (8 bytes)  @"UIScrollView"
    UILabel *_killsTitleLabel;               // +0x1d0 (8 bytes)  @"UILabel"
    UILabel *_accuracyTitleLabel;            // +0x1d8 (8 bytes)  @"UILabel"
    UILabel *_timeTitleLabel;                // +0x1e0 (8 bytes)  @"UILabel"
    UIView *_missionPlaceholder1;            // +0x1e8 (8 bytes)  @"UIView"
    UIView *_missionPlaceholder2;            // +0x1f0 (8 bytes)  @"UIView"
    UIView *_missionPlaceholder3;            // +0x1f8 (8 bytes)  @"UIView"
    UIView *_starPlaceholder1;               // +0x200 (8 bytes)  @"UIView"
    UIView *_starPlaceholder2;               // +0x208 (8 bytes)  @"UIView"
    UIView *_starPlaceholder3;               // +0x210 (8 bytes)  @"UIView"
}
@property (retain, nonatomic) UILabel *challengeTitle;  // ivar: _challengeTitle
@property (retain, nonatomic) UILabel *missionsTitle;  // ivar: _missionsTitle
@property (retain, nonatomic) ADButtonWithFont *missionsButton;  // ivar: _missionsButton
@property (retain, nonatomic) UILabel *scoreLabel;  // ivar: _scoreLabel
@property (retain, nonatomic) UILabel *comboLabel;  // ivar: _comboLabel
@property (retain, nonatomic) UILabel *killsLabel;  // ivar: _killsLabel
@property (retain, nonatomic) UILabel *accuracyLabel;  // ivar: _accuracyLabel
@property (retain, nonatomic) UILabel *timeLabel;  // ivar: _timeLabel
@property (retain, nonatomic) ADLabelWithCoins *coinsTotal;  // ivar: _coinsTotal
@property (retain, nonatomic) UILabel *diamondsTotal;  // ivar: _diamondsTotal
@property (retain, nonatomic) UILabel *diamondsLoot;  // ivar: _diamondsLoot
@property (retain, nonatomic) UIView *missionView;  // ivar: _missionView
@property (retain, nonatomic) UIView *contentView;  // ivar: _contentView
@property (retain, nonatomic) UIView *buttonsView;  // ivar: _buttonsView
@property (retain, nonatomic) UIScrollView *contentScrollView;  // ivar: _contentScrollView
@property () BOOL ignoreRewards;  // ivar: _ignoreRewards
@property () float delayForDisplayingScore;  // ivar: _delayForDisplayingScore
@property (retain, nonatomic) UILabel *killsTitleLabel;  // ivar: _killsTitleLabel
@property (retain, nonatomic) UILabel *accuracyTitleLabel;  // ivar: _accuracyTitleLabel
@property (retain, nonatomic) UILabel *timeTitleLabel;  // ivar: _timeTitleLabel
@property (retain, nonatomic) UIView *missionPlaceholder1;  // ivar: _missionPlaceholder1
@property (retain, nonatomic) UIView *missionPlaceholder2;  // ivar: _missionPlaceholder2
@property (retain, nonatomic) UIView *missionPlaceholder3;  // ivar: _missionPlaceholder3
@property (retain, nonatomic) UIView *starPlaceholder1;  // ivar: _starPlaceholder1
@property (retain, nonatomic) UIView *starPlaceholder2;  // ivar: _starPlaceholder2
@property (retain, nonatomic) UIView *starPlaceholder3;  // ivar: _starPlaceholder3
@property () int starCoins;  // ivar: _starCoins
- (void)viewDidLoad;                                                                       // IMP 0x100041958
- (void)awakeFromNib;                                                                      // IMP 0x100042350
- (void)animateCoinsAndDiamonds;                                                           // IMP 0x1000423ac
- (void)viewDidLayoutSubviews;                                                             // IMP 0x100042570
- (BOOL)checkAllAnimationsAreComplete;                                                     // IMP 0x1000425ac
- (id)formattedScoreFromInt:(int)arg1;                                                     // IMP 0x100042674
- (void)checkUnlocksAndPopups;                                                             // IMP 0x10004275c
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x100042760
- (void)initScrollView;                                                                    // IMP 0x1000427bc
- (void)loadMissions;                                                                      // IMP 0x100042c10
- (id)timeStringFromSeconds:(int)arg1;                                                     // IMP 0x1000432dc
- (void)animateButtonsInAndrestoreControl;                                                 // IMP 0x1000433bc
- (void)swipeLeft;                                                                         // IMP 0x1000433c0
- (void)swipeRight;                                                                        // IMP 0x100043410
- (void)goToMissionsButtonPressed:(id)arg1;                                                // IMP 0x100043424
- (void)goToScoreButtonPressed:(id)arg1;                                                   // IMP 0x100043428
- (void)dealloc;                                                                           // IMP 0x1000434ec
- (void).cxx_destruct;                                                                     // IMP 0x100043cbc
- (id)challengeTitle;                                                                      // IMP 0x100043590
- (void)setChallengeTitle:(id)arg1;                                                        // IMP 0x1000435a0
- (id)missionsTitle;                                                                       // IMP 0x1000435d8
- (void)setMissionsTitle:(id)arg1;                                                         // IMP 0x1000435e8
- (id)missionsButton;                                                                      // IMP 0x100043620
- (void)setMissionsButton:(id)arg1;                                                        // IMP 0x100043630
- (id)scoreLabel;                                                                          // IMP 0x100043668
- (void)setScoreLabel:(id)arg1;                                                            // IMP 0x100043678
- (id)comboLabel;                                                                          // IMP 0x1000436b0
- (void)setComboLabel:(id)arg1;                                                            // IMP 0x1000436c0
- (id)killsLabel;                                                                          // IMP 0x1000436f8
- (void)setKillsLabel:(id)arg1;                                                            // IMP 0x100043708
- (id)accuracyLabel;                                                                       // IMP 0x100043740
- (void)setAccuracyLabel:(id)arg1;                                                         // IMP 0x100043750
- (id)timeLabel;                                                                           // IMP 0x100043788
- (void)setTimeLabel:(id)arg1;                                                             // IMP 0x100043798
- (id)coinsTotal;                                                                          // IMP 0x1000437d0
- (void)setCoinsTotal:(id)arg1;                                                            // IMP 0x1000437e0
- (id)diamondsTotal;                                                                       // IMP 0x100043818
- (void)setDiamondsTotal:(id)arg1;                                                         // IMP 0x100043828
- (id)diamondsLoot;                                                                        // IMP 0x100043860
- (void)setDiamondsLoot:(id)arg1;                                                          // IMP 0x100043870
- (id)missionView;                                                                         // IMP 0x1000438a8
- (void)setMissionView:(id)arg1;                                                           // IMP 0x1000438b8
- (id)contentView;                                                                         // IMP 0x1000438f0
- (void)setContentView:(id)arg1;                                                           // IMP 0x100043900
- (id)buttonsView;                                                                         // IMP 0x100043938
- (void)setButtonsView:(id)arg1;                                                           // IMP 0x100043948
- (id)contentScrollView;                                                                   // IMP 0x100043980
- (void)setContentScrollView:(id)arg1;                                                     // IMP 0x100043990
- (BOOL)ignoreRewards;                                                                     // IMP 0x1000439c8
- (void)setIgnoreRewards:(BOOL)arg1;                                                       // IMP 0x1000439dc
- (float)delayForDisplayingScore;                                                          // IMP 0x1000439ec
- (void)setDelayForDisplayingScore:(float)arg1;                                            // IMP 0x100043a00
- (id)killsTitleLabel;                                                                     // IMP 0x100043a14
- (void)setKillsTitleLabel:(id)arg1;                                                       // IMP 0x100043a24
- (id)accuracyTitleLabel;                                                                  // IMP 0x100043a5c
- (void)setAccuracyTitleLabel:(id)arg1;                                                    // IMP 0x100043a6c
- (id)timeTitleLabel;                                                                      // IMP 0x100043aa4
- (void)setTimeTitleLabel:(id)arg1;                                                        // IMP 0x100043ab4
- (id)missionPlaceholder1;                                                                 // IMP 0x100043aec
- (void)setMissionPlaceholder1:(id)arg1;                                                   // IMP 0x100043afc
- (id)missionPlaceholder2;                                                                 // IMP 0x100043b34
- (void)setMissionPlaceholder2:(id)arg1;                                                   // IMP 0x100043b44
- (id)missionPlaceholder3;                                                                 // IMP 0x100043b7c
- (void)setMissionPlaceholder3:(id)arg1;                                                   // IMP 0x100043b8c
- (id)starPlaceholder1;                                                                    // IMP 0x100043bc4
- (void)setStarPlaceholder1:(id)arg1;                                                      // IMP 0x100043bd4
- (id)starPlaceholder2;                                                                    // IMP 0x100043c0c
- (void)setStarPlaceholder2:(id)arg1;                                                      // IMP 0x100043c1c
- (id)starPlaceholder3;                                                                    // IMP 0x100043c54
- (void)setStarPlaceholder3:(id)arg1;                                                      // IMP 0x100043c64
- (int)starCoins;                                                                          // IMP 0x100043c9c
- (void)setStarCoins:(int)arg1;                                                            // IMP 0x100043cac
@end

@interface ADGameParameters : NSObject   // instance size 56, class @0x100423128
{
    BOOL _buttonMode;                        // +0x8 (1 bytes)  B
    BOOL _endlessMode;                       // +0x9 (1 bytes)  B
    BOOL _debugMapVisible;                   // +0xa (1 bytes)  B
    int _controlScheme;                      // +0xc (4 bytes)  i
    float _sensivity;                        // +0x10 (4 bytes)  f
    NSString *_currentLevel;                 // +0x18 (8 bytes)  @"NSString"
    NSString *_playlistName;                 // +0x20 (8 bytes)  @"NSString"
    NSDate *_lastGoodNews;                   // +0x28 (8 bytes)  @"NSDate"
    NSString *_lastChallengeWorld;           // +0x30 (8 bytes)  @"NSString"
}
@property (nonatomic) int controlScheme;  // ivar: _controlScheme
@property (nonatomic) float sensivity;  // ivar: _sensivity
@property (nonatomic) BOOL buttonMode;  // ivar: _buttonMode
@property (nonatomic) BOOL endlessMode;  // ivar: _endlessMode
@property (nonatomic) BOOL debugMapVisible;  // ivar: _debugMapVisible
@property (retain, nonatomic) NSString *currentLevel;  // ivar: _currentLevel
@property (retain, nonatomic) NSString *playlistName;  // ivar: _playlistName
@property (retain, nonatomic) NSDate *lastGoodNews;  // ivar: _lastGoodNews
@property (retain, nonatomic) NSString *lastChallengeWorld;  // ivar: _lastChallengeWorld
+ (id)sharedParameters;                                                                    // IMP 0x1000a3878
- (id)init;                                                                                // IMP 0x1000a360c
- (BOOL)isIphone;                                                                          // IMP 0x1000a3910
- (void)setButtonMode:(BOOL)arg1;                                                          // IMP 0x1000a3a50
- (BOOL)lastButtonMode;                                                                    // IMP 0x1000a3aec
- (void)setMasterGain:(float)arg1;                                                         // IMP 0x1000a3ba0
- (float)lastMasterGain;                                                                   // IMP 0x1000a3ca0
- (void)setAnnouncer:(BOOL)arg1;                                                           // IMP 0x1000a3da4
- (BOOL)lastAnnouncerValue;                                                                // IMP 0x1000a3e60
- (void)setLastGoodNews:(id)arg1;                                                          // IMP 0x1000a3f44
- (float)timeSinceLastGoodNews;                                                            // IMP 0x1000a4010
- (void)setControlScheme:(int)arg1;                                                        // IMP 0x1000a40fc
- (void)setSensivity:(float)arg1;                                                          // IMP 0x1000a419c
- (float)lastSensivity;                                                                    // IMP 0x1000a423c
- (void)setDebugMapVisible:(BOOL)arg1;                                                     // IMP 0x1000a435c
- (BOOL)lastDebugMapVisible;                                                               // IMP 0x1000a43fc
- (int)lastControlScheme;                                                                  // IMP 0x1000a44e8
- (BOOL)isHeadsetPluggedIn;                                                                // IMP 0x1000a45d0
- (void).cxx_destruct;                                                                     // IMP 0x1000a47cc
- (int)controlScheme;                                                                      // IMP 0x1000a4684
- (float)sensivity;                                                                        // IMP 0x1000a4694
- (BOOL)buttonMode;                                                                        // IMP 0x1000a46a4
- (BOOL)endlessMode;                                                                       // IMP 0x1000a46b4
- (void)setEndlessMode:(BOOL)arg1;                                                         // IMP 0x1000a46c4
- (BOOL)debugMapVisible;                                                                   // IMP 0x1000a46d4
- (id)currentLevel;                                                                        // IMP 0x1000a46e4
- (void)setCurrentLevel:(id)arg1;                                                          // IMP 0x1000a46f4
- (id)playlistName;                                                                        // IMP 0x1000a472c
- (void)setPlaylistName:(id)arg1;                                                          // IMP 0x1000a473c
- (id)lastGoodNews;                                                                        // IMP 0x1000a4774
- (id)lastChallengeWorld;                                                                  // IMP 0x1000a4784
- (void)setLastChallengeWorld:(id)arg1;                                                    // IMP 0x1000a4794
@end

@interface ADGameplayViewController : ADNoBarViewController   // instance size 568, class @0x100421fa8
{
    NSTimer *weaponUpdateTimer;              // +0x140 (8 bytes)  @"NSTimer"
    NSTimer *updateTimer;                    // +0x148 (8 bytes)  @"NSTimer"
    NSTimer *statsUpdateTimer;               // +0x150 (8 bytes)  @"NSTimer"
    ADDebugMapViewController *debugMap;      // +0x158 (8 bytes)  @"ADDebugMapViewController"
    float movementOnLastFrame;               // +0x160 (4 bytes)  f
    NSMutableArray *panArray;                // +0x168 (8 bytes)  @"NSMutableArray"
    ADPauseViewController *pauseView;        // +0x170 (8 bytes)  @"ADPauseViewController"
    ADReviveViewController *reviveViewController; // +0x178 (8 bytes)  @"ADReviveViewController"
    int nbRevives;                           // +0x180 (4 bytes)  i
    BOOL announcerValueOnEnteringPause;      // +0x184 (1 bytes)  B
    ADAccessibleGameView *accessibleGameView; // +0x188 (8 bytes)  @"ADAccessibleGameView"
    BOOL _paused;                            // +0x190 (1 bytes)  B
    UIView *_deathOverlay;                   // +0x198 (8 bytes)  @"UIView"
    UIView *_buttonsView;                    // +0x1a0 (8 bytes)  @"UIView"
    ADWeaponTouchArea *_weaponTouchArea;     // +0x1a8 (8 bytes)  @"ADWeaponTouchArea"
    ADButtonWithSwipe *_weaponButton;        // +0x1b0 (8 bytes)  @"ADButtonWithSwipe"
    NSArray *_infiniteScrollViews;           // +0x1b8 (8 bytes)  @"NSArray"
    ADWeaponManager *_weaponManager;         // +0x1c0 (8 bytes)  @"ADWeaponManager"
    ADShakeDetector *_shakeDetector;         // +0x1c8 (8 bytes)  @"ADShakeDetector"
    ADPlayer *_player;                       // +0x1d0 (8 bytes)  @"ADPlayer"
    ADButtonWithSwipe *_meleeButton;         // +0x1d8 (8 bytes)  @"ADButtonWithSwipe"
    ADButtonWithSwipe *_switchWeaponButton;  // +0x1e0 (8 bytes)  @"ADButtonWithSwipe"
    UIView *_scoreView;                      // +0x1e8 (8 bytes)  @"UIView"
    UILabel *_comboLabel;                    // +0x1f0 (8 bytes)  @"UILabel"
    UILabel *_scoreLabel;                    // +0x1f8 (8 bytes)  @"UILabel"
    UIView *_comboMeter;                     // +0x200 (8 bytes)  @"UIView"
    UIView *_timerView;                      // +0x208 (8 bytes)  @"UIView"
    UILabel *_timerLabel;                    // +0x210 (8 bytes)  @"UILabel"
    UIButton *_skipButton;                   // +0x218 (8 bytes)  @"UIButton"
    UIButton *_pauseButton;                  // +0x220 (8 bytes)  @"UIButton"
    UILabel *_scoreTitle;                    // +0x228 (8 bytes)  @"UILabel"
    UILabel *_comboTitle;                    // +0x230 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UIView *deathOverlay;  // ivar: _deathOverlay
@property (retain, nonatomic) UIView *buttonsView;  // ivar: _buttonsView
@property (retain, nonatomic) ADWeaponTouchArea *weaponTouchArea;  // ivar: _weaponTouchArea
@property (retain, nonatomic) ADButtonWithSwipe *weaponButton;  // ivar: _weaponButton
@property (retain, nonatomic) NSArray *infiniteScrollViews;  // ivar: _infiniteScrollViews
@property (retain, nonatomic) ADWeaponManager *weaponManager;  // ivar: _weaponManager
@property (retain, nonatomic) ADShakeDetector *shakeDetector;  // ivar: _shakeDetector
@property (retain, nonatomic) ADPlayer *player;  // ivar: _player
@property (retain, nonatomic) ADButtonWithSwipe *meleeButton;  // ivar: _meleeButton
@property (retain, nonatomic) ADButtonWithSwipe *switchWeaponButton;  // ivar: _switchWeaponButton
@property (retain, nonatomic) UIView *scoreView;  // ivar: _scoreView
@property (retain, nonatomic) UILabel *comboLabel;  // ivar: _comboLabel
@property (retain, nonatomic) UILabel *scoreLabel;  // ivar: _scoreLabel
@property (retain, nonatomic) UIView *comboMeter;  // ivar: _comboMeter
@property (retain, nonatomic) UIView *timerView;  // ivar: _timerView
@property (retain, nonatomic) UILabel *timerLabel;  // ivar: _timerLabel
@property (retain, nonatomic) UIButton *skipButton;  // ivar: _skipButton
@property (retain, nonatomic) UIButton *pauseButton;  // ivar: _pauseButton
@property (nonatomic) BOOL paused;  // ivar: _paused
@property (retain, nonatomic) UILabel *scoreTitle;  // ivar: _scoreTitle
@property (retain, nonatomic) UILabel *comboTitle;  // ivar: _comboTitle
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100056da0
- (void)initDebugMap;                                                                      // IMP 0x100056e2c
- (void)initAmbiantManager;                                                                // IMP 0x100057000
- (void)ambiantManagerDidActivatePlaylist;                                                 // IMP 0x100057128
- (void)initBrickManager;                                                                  // IMP 0x10005712c
- (void)initStats;                                                                         // IMP 0x1000572d4
- (void)initGATrackerStats;                                                                // IMP 0x1000573e8
- (void)initAnnouncer;                                                                     // IMP 0x100057b0c
- (void)viewDidLoad;                                                                       // IMP 0x100057c08
- (void)loadView;                                                                          // IMP 0x100058688
- (void)viewWillDisappear:(BOOL)arg1;                                                      // IMP 0x100058ce0
- (void)setGameModeDimension;                                                              // IMP 0x100058ce4
- (void)goToChallengeFailedScreen;                                                         // IMP 0x100058d60
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x100058d64
- (void)handleLongPress:(id)arg1;                                                          // IMP 0x100059120
- (void)initWeaponManager;                                                                 // IMP 0x1000591cc
- (void)startUpdateTimers;                                                                 // IMP 0x10005948c
- (void)updateStats;                                                                       // IMP 0x1000596d0
- (void)updateWeapons;                                                                     // IMP 0x100059a48
- (void)update;                                                                            // IMP 0x100059b50
- (void)motionEnded:(long long)arg1 withEvent:(id)arg2;                                    // IMP 0x10005a108
- (BOOL)canBecomeFirstResponder;                                                           // IMP 0x10005a1fc
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x10005a204
- (void)initButtonMode;                                                                    // IMP 0x10005a214
- (void)touchesMoveDetected:(float)arg1 justStarted:(BOOL)arg2;                            // IMP 0x10005a3e0
- (void)panDetected:(id)arg1;                                                              // IMP 0x10005a748
- (void)switchWeaponButtonPressed:(id)arg1;                                                // IMP 0x10005a86c
- (void)reloadButtonPressed:(id)arg1;                                                      // IMP 0x10005a8d0
- (void)meleeButtonPressed:(id)arg1;                                                       // IMP 0x10005a934
- (void)powerUpButtonPressed:(id)arg1;                                                     // IMP 0x10005a998
- (void)playerKilledEnemy:(id)arg1 withCombo:(int)arg2;                                    // IMP 0x10005a9fc
- (void)playerDidACriticalHit;                                                             // IMP 0x10005aa00
- (void)updateScoreViewWithAnimation:(BOOL)arg1;                                           // IMP 0x10005aa04
- (id)formattedScoreFromInt:(int)arg1;                                                     // IMP 0x10005b448
- (void)pauseButtonTouched:(id)arg1;                                                       // IMP 0x10005b484
- (void)skipButtonPressed:(id)arg1;                                                        // IMP 0x10005b538
- (void)quitGameplayWithFail;                                                              // IMP 0x10005b53c
- (void)goToScoreScreen;                                                                   // IMP 0x10005b54c
- (void)pauseGame;                                                                         // IMP 0x10005b5fc
- (void)resumeGame;                                                                        // IMP 0x10005b718
- (void)showDeathOverlay;                                                                  // IMP 0x10005b97c
- (void)showReviveView;                                                                    // IMP 0x10005ba78
- (void)revive;                                                                            // IMP 0x10005bec0
- (void)gameOver;                                                                          // IMP 0x10005c10c
- (void)killGameplay;                                                                      // IMP 0x10005c170
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10005c8c8
- (void)stopTimers;                                                                        // IMP 0x10005c904
- (void)dealloc;                                                                           // IMP 0x10005c998
- (void).cxx_destruct;                                                                     // IMP 0x10005cfe4
- (id)deathOverlay;                                                                        // IMP 0x10005ca24
- (void)setDeathOverlay:(id)arg1;                                                          // IMP 0x10005ca34
- (id)buttonsView;                                                                         // IMP 0x10005ca6c
- (void)setButtonsView:(id)arg1;                                                           // IMP 0x10005ca7c
- (id)weaponTouchArea;                                                                     // IMP 0x10005cab4
- (void)setWeaponTouchArea:(id)arg1;                                                       // IMP 0x10005cac4
- (id)weaponButton;                                                                        // IMP 0x10005cafc
- (void)setWeaponButton:(id)arg1;                                                          // IMP 0x10005cb0c
- (id)infiniteScrollViews;                                                                 // IMP 0x10005cb44
- (void)setInfiniteScrollViews:(id)arg1;                                                   // IMP 0x10005cb54
- (id)weaponManager;                                                                       // IMP 0x10005cb8c
- (void)setWeaponManager:(id)arg1;                                                         // IMP 0x10005cb9c
- (id)shakeDetector;                                                                       // IMP 0x10005cbd4
- (void)setShakeDetector:(id)arg1;                                                         // IMP 0x10005cbe4
- (id)player;                                                                              // IMP 0x10005cc1c
- (void)setPlayer:(id)arg1;                                                                // IMP 0x10005cc2c
- (id)meleeButton;                                                                         // IMP 0x10005cc64
- (void)setMeleeButton:(id)arg1;                                                           // IMP 0x10005cc74
- (id)switchWeaponButton;                                                                  // IMP 0x10005ccac
- (void)setSwitchWeaponButton:(id)arg1;                                                    // IMP 0x10005ccbc
- (id)scoreView;                                                                           // IMP 0x10005ccf4
- (void)setScoreView:(id)arg1;                                                             // IMP 0x10005cd04
- (id)comboLabel;                                                                          // IMP 0x10005cd3c
- (void)setComboLabel:(id)arg1;                                                            // IMP 0x10005cd4c
- (id)scoreLabel;                                                                          // IMP 0x10005cd84
- (void)setScoreLabel:(id)arg1;                                                            // IMP 0x10005cd94
- (id)comboMeter;                                                                          // IMP 0x10005cdcc
- (void)setComboMeter:(id)arg1;                                                            // IMP 0x10005cddc
- (id)timerView;                                                                           // IMP 0x10005ce14
- (void)setTimerView:(id)arg1;                                                             // IMP 0x10005ce24
- (id)timerLabel;                                                                          // IMP 0x10005ce5c
- (void)setTimerLabel:(id)arg1;                                                            // IMP 0x10005ce6c
- (id)skipButton;                                                                          // IMP 0x10005cea4
- (void)setSkipButton:(id)arg1;                                                            // IMP 0x10005ceb4
- (id)pauseButton;                                                                         // IMP 0x10005ceec
- (void)setPauseButton:(id)arg1;                                                           // IMP 0x10005cefc
- (BOOL)paused;                                                                            // IMP 0x10005cf34
- (void)setPaused:(BOOL)arg1;                                                              // IMP 0x10005cf44
- (id)scoreTitle;                                                                          // IMP 0x10005cf54
- (void)setScoreTitle:(id)arg1;                                                            // IMP 0x10005cf64
- (id)comboTitle;                                                                          // IMP 0x10005cf9c
- (void)setComboTitle:(id)arg1;                                                            // IMP 0x10005cfac
@end

@interface ADHackHitView : UIView   // instance size 104, class @0x100421968
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x1000404ec
- (id)hitTest:(CGPoint)arg1 withEvent:(id)arg2;                                            // IMP 0x100040528
@end

@interface ADInGameStats : NSObject   // instance size 248, class @0x100423718
{
    double brickTimeIvar;                    // +0x8 (8 bytes)  d
    double challengeTimeElapsedIvar;         // +0x10 (8 bytes)  d
    double timeElapsedIvar;                  // +0x18 (8 bytes)  d
    BOOL _death;                             // +0x20 (1 bytes)  B
    BOOL _sessionCompleted;                  // +0x21 (1 bytes)  B
    NSMutableDictionary *_enemyList;         // +0x28 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_weaponsData;       // +0x30 (8 bytes)  @"NSMutableDictionary"
    unsigned long long _combo;               // +0x38 (8 bytes)  Q
    unsigned long long _meleeSwings;         // +0x40 (8 bytes)  Q
    unsigned long long _meleeHits;           // +0x48 (8 bytes)  Q
    unsigned long long _highestCombo;        // +0x50 (8 bytes)  Q
    unsigned long long _gameScore;           // +0x58 (8 bytes)  Q
    unsigned long long _coinsForKill;        // +0x60 (8 bytes)  Q
    unsigned long long _totalCoins;          // +0x68 (8 bytes)  Q
    unsigned long long _diamondLoot;         // +0x70 (8 bytes)  Q
    NSString *_gameMode;                     // +0x78 (8 bytes)  @"NSString"
    long long _numCriticalHits;              // +0x80 (8 bytes)  q
    NSMutableDictionary *_weaponCriticalHits; // +0x88 (8 bytes)  @"NSMutableDictionary"
    NSString *_currentBrickName;             // +0x90 (8 bytes)  @"NSString"
    unsigned long long _enemyKillsWithPowerup; // +0x98 (8 bytes)  Q
    long long _numberOfEnemyKills;           // +0xa0 (8 bytes)  q
    long long _numberOfBricksDefeated;       // +0xa8 (8 bytes)  q
    long long _numberMissionsCompleted;      // +0xb0 (8 bytes)  q
    long long _numberMissionsSkipped;        // +0xb8 (8 bytes)  q
    unsigned long long _shotsOnTarget;       // +0xc0 (8 bytes)  Q
    unsigned long long _totalShotsFired;     // +0xc8 (8 bytes)  Q
    double _challengeTimeElapsedCalls;       // +0xd0 (8 bytes)  d
    double _timeElapsedCalls;                // +0xd8 (8 bytes)  d
    double _brickTimeCalls;                  // +0xe0 (8 bytes)  d
    NSMutableDictionary *_postGameData;      // +0xe8 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_enemiesToCoins;    // +0xf0 (8 bytes)  @"NSMutableDictionary"
}
@property (retain) NSMutableDictionary *enemyList;  // ivar: _enemyList
@property (retain) NSMutableDictionary *weaponsData;  // ivar: _weaponsData
@property (nonatomic) unsigned long long combo;  // ivar: _combo
@property () unsigned long long meleeSwings;  // ivar: _meleeSwings
@property () unsigned long long meleeHits;  // ivar: _meleeHits
@property () unsigned long long highestCombo;  // ivar: _highestCombo
@property () unsigned long long gameScore;  // ivar: _gameScore
@property () unsigned long long coinsForKill;  // ivar: _coinsForKill
@property () unsigned long long totalCoins;  // ivar: _totalCoins
@property () unsigned long long diamondLoot;  // ivar: _diamondLoot
@property (retain) NSString *gameMode;  // ivar: _gameMode
@property () double timeElapsed;
@property () double brickTime;
@property () double challengeTimeElapsed;
@property () long long numCriticalHits;  // ivar: _numCriticalHits
@property (retain) NSMutableDictionary *weaponCriticalHits;  // ivar: _weaponCriticalHits
@property (retain) NSString *currentBrickName;  // ivar: _currentBrickName
@property () unsigned long long enemyKillsWithPowerup;  // ivar: _enemyKillsWithPowerup
@property () long long numberOfEnemyKills;  // ivar: _numberOfEnemyKills
@property () long long numberOfBricksDefeated;  // ivar: _numberOfBricksDefeated
@property () BOOL death;  // ivar: _death
@property () long long numberMissionsCompleted;  // ivar: _numberMissionsCompleted
@property () long long numberMissionsSkipped;  // ivar: _numberMissionsSkipped
@property () unsigned long long shotsOnTarget;  // ivar: _shotsOnTarget
@property () unsigned long long totalShotsFired;  // ivar: _totalShotsFired
@property () double challengeTimeElapsedCalls;  // ivar: _challengeTimeElapsedCalls
@property () double timeElapsedCalls;  // ivar: _timeElapsedCalls
@property () double brickTimeCalls;  // ivar: _brickTimeCalls
@property () BOOL sessionCompleted;  // ivar: _sessionCompleted
@property (retain) NSMutableDictionary *postGameData;  // ivar: _postGameData
@property (retain) NSMutableDictionary *enemiesToCoins;  // ivar: _enemiesToCoins
+ (id)singleton;                                                                           // IMP 0x1000b7cf4
+ (void)toggleOnOff:(BOOL)arg1;                                                            // IMP 0x1000b7df4
- (void)forceCompleteAccuracy;                                                             // IMP 0x1000b7cb0
- (id)init;                                                                                // IMP 0x1000b7db8
- (void)startNewLevel:(id)arg1;                                                            // IMP 0x1000b83d4
- (void)saveGameSessionStats;                                                              // IMP 0x1000b8900
- (void)endLevel;                                                                          // IMP 0x1000b89f0
- (void)saveStats;                                                                         // IMP 0x1000b8c0c
- (void)filterEnemiesByDisplayName;                                                        // IMP 0x1000b8f50
- (void)filterWeaponsByShotsFired;                                                         // IMP 0x1000b9618
- (id)prepareTotalsStats;                                                                  // IMP 0x1000b9a14
- (void)killedEnemi:(id)arg1;                                                              // IMP 0x1000b9b60
- (void)cheatKillCount:(int)arg1;                                                          // IMP 0x1000b9ec8
- (void)deathByEnemyWithName:(id)arg1;                                                     // IMP 0x1000ba098
- (void)decrementCombo;                                                                    // IMP 0x1000ba240
- (void)updateMeleeWeaponsWithName:(id)arg1 Hit:(BOOL)arg2;                                // IMP 0x1000ba2a0
- (void)updateDataForWeaponWithName:(id)arg1 FiredShot:(BOOL)arg2 HitFired:(BOOL)arg3 Killed:(BOOL)arg4 Critical:(BOOL)arg5 Time:(double)arg6; // IMP 0x1000ba374
- (void)setCombo:(unsigned long long)arg1;                                                 // IMP 0x1000ba90c
- (void)setChallengeTimeElapsed:(double)arg1;                                              // IMP 0x1000ba97c
- (double)challengeTimeElapsed;                                                            // IMP 0x1000ba9dc
- (void)setTimeElapsed:(double)arg1;                                                       // IMP 0x1000ba9ec
- (double)timeElapsed;                                                                     // IMP 0x1000baa4c
- (void)setBrickTime:(double)arg1;                                                         // IMP 0x1000baa5c
- (double)brickTime;                                                                       // IMP 0x1000baabc
- (float)currentAccuracy;                                                                  // IMP 0x1000baacc
- (unsigned long long)computeCurrentEnemyKillCount;                                        // IMP 0x1000bab3c
- (long long)getShotsFired;                                                                // IMP 0x1000bacc8
- (long long)getShotsOnTarget;                                                             // IMP 0x1000bacd8
- (void)resetPowerupKills;                                                                 // IMP 0x1000bace8
- (void)buildMiscPostGameDataDictionary;                                                   // IMP 0x1000bacfc
- (id)getEnemyData;                                                                        // IMP 0x1000bbfa4
- (id)getWeaponData;                                                                       // IMP 0x1000bc22c
- (id)getWeaponCriticalHitsData;                                                           // IMP 0x1000bc280
- (id)getMiscData;                                                                         // IMP 0x1000bc2d4
- (id)getEnemiesToCoinsReward;                                                             // IMP 0x1000bc328
- (id)description;                                                                         // IMP 0x1000bc3a8
- (id)debugDescription;                                                                    // IMP 0x1000bcc70
- (void)dealloc;                                                                           // IMP 0x1000bcc80
- (void).cxx_destruct;                                                                     // IMP 0x1000bd0c4
- (id)enemyList;                                                                           // IMP 0x1000bcd50
- (void)setEnemyList:(id)arg1;                                                             // IMP 0x1000bcd60
- (id)weaponsData;                                                                         // IMP 0x1000bcd6c
- (void)setWeaponsData:(id)arg1;                                                           // IMP 0x1000bcd7c
- (unsigned long long)combo;                                                               // IMP 0x1000bcd88
- (unsigned long long)meleeSwings;                                                         // IMP 0x1000bcd98
- (void)setMeleeSwings:(unsigned long long)arg1;                                           // IMP 0x1000bcda8
- (unsigned long long)meleeHits;                                                           // IMP 0x1000bcdb8
- (void)setMeleeHits:(unsigned long long)arg1;                                             // IMP 0x1000bcdc8
- (unsigned long long)highestCombo;                                                        // IMP 0x1000bcdd8
- (void)setHighestCombo:(unsigned long long)arg1;                                          // IMP 0x1000bcde8
- (unsigned long long)gameScore;                                                           // IMP 0x1000bcdf8
- (void)setGameScore:(unsigned long long)arg1;                                             // IMP 0x1000bce08
- (unsigned long long)coinsForKill;                                                        // IMP 0x1000bce18
- (void)setCoinsForKill:(unsigned long long)arg1;                                          // IMP 0x1000bce28
- (unsigned long long)totalCoins;                                                          // IMP 0x1000bce38
- (void)setTotalCoins:(unsigned long long)arg1;                                            // IMP 0x1000bce48
- (unsigned long long)diamondLoot;                                                         // IMP 0x1000bce58
- (void)setDiamondLoot:(unsigned long long)arg1;                                           // IMP 0x1000bce68
- (id)gameMode;                                                                            // IMP 0x1000bce78
- (void)setGameMode:(id)arg1;                                                              // IMP 0x1000bce88
- (long long)numCriticalHits;                                                              // IMP 0x1000bce94
- (void)setNumCriticalHits:(long long)arg1;                                                // IMP 0x1000bcea4
- (id)weaponCriticalHits;                                                                  // IMP 0x1000bceb4
- (void)setWeaponCriticalHits:(id)arg1;                                                    // IMP 0x1000bcec4
- (id)currentBrickName;                                                                    // IMP 0x1000bced0
- (void)setCurrentBrickName:(id)arg1;                                                      // IMP 0x1000bcee0
- (unsigned long long)enemyKillsWithPowerup;                                               // IMP 0x1000bceec
- (void)setEnemyKillsWithPowerup:(unsigned long long)arg1;                                 // IMP 0x1000bcefc
- (long long)numberOfEnemyKills;                                                           // IMP 0x1000bcf0c
- (void)setNumberOfEnemyKills:(long long)arg1;                                             // IMP 0x1000bcf1c
- (long long)numberOfBricksDefeated;                                                       // IMP 0x1000bcf2c
- (void)setNumberOfBricksDefeated:(long long)arg1;                                         // IMP 0x1000bcf3c
- (BOOL)death;                                                                             // IMP 0x1000bcf4c
- (void)setDeath:(BOOL)arg1;                                                               // IMP 0x1000bcf60
- (long long)numberMissionsCompleted;                                                      // IMP 0x1000bcf70
- (void)setNumberMissionsCompleted:(long long)arg1;                                        // IMP 0x1000bcf80
- (long long)numberMissionsSkipped;                                                        // IMP 0x1000bcf90
- (void)setNumberMissionsSkipped:(long long)arg1;                                          // IMP 0x1000bcfa0
- (unsigned long long)shotsOnTarget;                                                       // IMP 0x1000bcfb0
- (void)setShotsOnTarget:(unsigned long long)arg1;                                         // IMP 0x1000bcfc0
- (unsigned long long)totalShotsFired;                                                     // IMP 0x1000bcfd0
- (void)setTotalShotsFired:(unsigned long long)arg1;                                       // IMP 0x1000bcfe0
- (double)challengeTimeElapsedCalls;                                                       // IMP 0x1000bcff0
- (void)setChallengeTimeElapsedCalls:(double)arg1;                                         // IMP 0x1000bd004
- (double)timeElapsedCalls;                                                                // IMP 0x1000bd018
- (void)setTimeElapsedCalls:(double)arg1;                                                  // IMP 0x1000bd02c
- (double)brickTimeCalls;                                                                  // IMP 0x1000bd040
- (void)setBrickTimeCalls:(double)arg1;                                                    // IMP 0x1000bd054
- (BOOL)sessionCompleted;                                                                  // IMP 0x1000bd068
- (void)setSessionCompleted:(BOOL)arg1;                                                    // IMP 0x1000bd07c
- (id)postGameData;                                                                        // IMP 0x1000bd08c
- (void)setPostGameData:(id)arg1;                                                          // IMP 0x1000bd09c
- (id)enemiesToCoins;                                                                      // IMP 0x1000bd0a8
- (void)setEnemiesToCoins:(id)arg1;                                                        // IMP 0x1000bd0b8
@end

@interface ADInfiniteScrollView : UIScrollView <UIScrollViewDelegate>   // instance size 136, class @0x100422ef8
{
    NSMutableArray *images;                  // +0x70 (8 bytes)  @"NSMutableArray"
    float imageWidth;                        // +0x78 (4 bytes)  f
    int currentControlScheme;                // +0x7c (4 bytes)  i
    NSString *_imageName;                    // +0x80 (8 bytes)  @"NSString"
}
@property (retain, nonatomic) NSString *imageName;  // ivar: _imageName
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (void)awakeFromNib;                                                                      // IMP 0x10009c4b0
- (void)scrollViewDidScroll:(id)arg1;                                                      // IMP 0x10009c814
- (void)scrollViewWillBeginDecelerating:(id)arg1;                                          // IMP 0x10009c8c4
- (void)adjustOffset;                                                                      // IMP 0x10009c928
- (void)sendOffsetToDelegate;                                                              // IMP 0x10009ca34
- (void)controlSchemeChanged;                                                              // IMP 0x10009cb50
- (void)disableGyro;                                                                       // IMP 0x10009cd04
- (void)enableGyro;                                                                        // IMP 0x10009cd68
- (void)update;                                                                            // IMP 0x10009cdcc
- (void)tiltDidMoveFromAngle:(float)arg1;                                                  // IMP 0x10009cfe8
- (void)gyroDidMoveFromAngle:(float)arg1;                                                  // IMP 0x10009d148
- (void)playerSwiped:(float)arg1;                                                          // IMP 0x10009d278
- (void)dealloc;                                                                           // IMP 0x10009d354
- (void).cxx_destruct;                                                                     // IMP 0x10009d46c
- (id)imageName;                                                                           // IMP 0x10009d424
- (void)setImageName:(id)arg1;                                                             // IMP 0x10009d434
@end

@interface ADInfoViewController : ADViewController   // instance size 368, class @0x100421788
{
    NSString *pageName;                      // +0x140 (8 bytes)  @"NSString"
    UILabel *_infoTitle;                     // +0x148 (8 bytes)  @"UILabel"
    UITextView *_infoTextView;               // +0x150 (8 bytes)  @"UITextView"
    UIButton *_armoryButton;                 // +0x158 (8 bytes)  @"UIButton"
    UIButton *_continueButton;               // +0x160 (8 bytes)  @"UIButton"
    UILabel *_titleLabel;                    // +0x168 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UILabel *infoTitle;  // ivar: _infoTitle
@property (retain, nonatomic) UITextView *infoTextView;  // ivar: _infoTextView
@property (retain, nonatomic) UIButton *armoryButton;  // ivar: _armoryButton
@property (retain, nonatomic) UIButton *continueButton;  // ivar: _continueButton
@property (retain, nonatomic) UILabel *titleLabel;  // ivar: _titleLabel
- (id)initWithPageName:(id)arg1;                                                           // IMP 0x100039738
- (void)viewDidLoad;                                                                       // IMP 0x1000397e4
- (void)continueButtonPressed:(id)arg1;                                                    // IMP 0x100039f94
- (void)backButtonPressed;                                                                 // IMP 0x10003a0f8
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10003a198
- (void).cxx_destruct;                                                                     // IMP 0x10003a33c
- (id)infoTitle;                                                                           // IMP 0x10003a1d4
- (void)setInfoTitle:(id)arg1;                                                             // IMP 0x10003a1e4
- (id)infoTextView;                                                                        // IMP 0x10003a21c
- (void)setInfoTextView:(id)arg1;                                                          // IMP 0x10003a22c
- (id)armoryButton;                                                                        // IMP 0x10003a264
- (void)setArmoryButton:(id)arg1;                                                          // IMP 0x10003a274
- (id)continueButton;                                                                      // IMP 0x10003a2ac
- (void)setContinueButton:(id)arg1;                                                        // IMP 0x10003a2bc
- (id)titleLabel;                                                                          // IMP 0x10003a2f4
- (void)setTitleLabel:(id)arg1;                                                            // IMP 0x10003a304
@end

@interface ADInitialControlSchemeViewController : ADNoBarViewController   // instance size 424, class @0x100420c98
{
    UITextView *_swipeDescription;           // +0x140 (8 bytes)  @"UITextView"
    UITextView *_tiltDescription;            // +0x148 (8 bytes)  @"UITextView"
    UITextView *_gyroDescription;            // +0x150 (8 bytes)  @"UITextView"
    UITextView *_descriptionText;            // +0x158 (8 bytes)  @"UITextView"
    UIButton *_gyroButton;                   // +0x160 (8 bytes)  @"UIButton"
    UIButton *_gyroTextButton;               // +0x168 (8 bytes)  @"UIButton"
    UIButton *_tiltButton;                   // +0x170 (8 bytes)  @"UIButton"
    UIButton *_tiltTextButton;               // +0x178 (8 bytes)  @"UIButton"
    UIButton *_swipeButton;                  // +0x180 (8 bytes)  @"UIButton"
    UIButton *_swipeTextButton;              // +0x188 (8 bytes)  @"UIButton"
    UILabel *_titleLabel;                    // +0x190 (8 bytes)  @"UILabel"
    UILabel *_subTitleLabel;                 // +0x198 (8 bytes)  @"UILabel"
    UILabel *_recommededLabel;               // +0x1a0 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UITextView *swipeDescription;  // ivar: _swipeDescription
@property (retain, nonatomic) UITextView *tiltDescription;  // ivar: _tiltDescription
@property (retain, nonatomic) UITextView *gyroDescription;  // ivar: _gyroDescription
@property (retain, nonatomic) UITextView *descriptionText;  // ivar: _descriptionText
@property (retain, nonatomic) UIButton *gyroButton;  // ivar: _gyroButton
@property (retain, nonatomic) UIButton *gyroTextButton;  // ivar: _gyroTextButton
@property (retain, nonatomic) UIButton *tiltButton;  // ivar: _tiltButton
@property (retain, nonatomic) UIButton *tiltTextButton;  // ivar: _tiltTextButton
@property (retain, nonatomic) UIButton *swipeButton;  // ivar: _swipeButton
@property (retain, nonatomic) UIButton *swipeTextButton;  // ivar: _swipeTextButton
@property (retain, nonatomic) UILabel *titleLabel;  // ivar: _titleLabel
@property (retain, nonatomic) UILabel *subTitleLabel;  // ivar: _subTitleLabel
@property (retain, nonatomic) UILabel *recommededLabel;  // ivar: _recommededLabel
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100005fa4
- (void)viewDidLoad;                                                                       // IMP 0x100006030
- (void)loadView;                                                                          // IMP 0x100006784
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000067a0
- (void)tiltControl:(id)arg1;                                                              // IMP 0x1000067dc
- (void)gyroControl:(id)arg1;                                                              // IMP 0x100006868
- (void)buttonControl:(id)arg1;                                                            // IMP 0x1000068f4
- (void)goToMainMenu;                                                                      // IMP 0x100006980
- (void).cxx_destruct;                                                                     // IMP 0x100006dc8
- (id)swipeDescription;                                                                    // IMP 0x100006a20
- (void)setSwipeDescription:(id)arg1;                                                      // IMP 0x100006a30
- (id)tiltDescription;                                                                     // IMP 0x100006a68
- (void)setTiltDescription:(id)arg1;                                                       // IMP 0x100006a78
- (id)gyroDescription;                                                                     // IMP 0x100006ab0
- (void)setGyroDescription:(id)arg1;                                                       // IMP 0x100006ac0
- (id)descriptionText;                                                                     // IMP 0x100006af8
- (void)setDescriptionText:(id)arg1;                                                       // IMP 0x100006b08
- (id)gyroButton;                                                                          // IMP 0x100006b40
- (void)setGyroButton:(id)arg1;                                                            // IMP 0x100006b50
- (id)gyroTextButton;                                                                      // IMP 0x100006b88
- (void)setGyroTextButton:(id)arg1;                                                        // IMP 0x100006b98
- (id)tiltButton;                                                                          // IMP 0x100006bd0
- (void)setTiltButton:(id)arg1;                                                            // IMP 0x100006be0
- (id)tiltTextButton;                                                                      // IMP 0x100006c18
- (void)setTiltTextButton:(id)arg1;                                                        // IMP 0x100006c28
- (id)swipeButton;                                                                         // IMP 0x100006c60
- (void)setSwipeButton:(id)arg1;                                                           // IMP 0x100006c70
- (id)swipeTextButton;                                                                     // IMP 0x100006ca8
- (void)setSwipeTextButton:(id)arg1;                                                       // IMP 0x100006cb8
- (id)titleLabel;                                                                          // IMP 0x100006cf0
- (void)setTitleLabel:(id)arg1;                                                            // IMP 0x100006d00
- (id)subTitleLabel;                                                                       // IMP 0x100006d38
- (void)setSubTitleLabel:(id)arg1;                                                         // IMP 0x100006d48
- (id)recommededLabel;                                                                     // IMP 0x100006d80
- (void)setRecommededLabel:(id)arg1;                                                       // IMP 0x100006d90
@end

@interface ADInventory : NSObject   // instance size 64, class @0x100420e78
{
    int _coins;                              // +0x8 (4 bytes)  i
    int _diamonds;                           // +0xc (4 bytes)  i
    NSMutableArray *_weapons;                // +0x10 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_powerups;               // +0x18 (8 bytes)  @"NSMutableArray"
    NSString *_weaponSlot1;                  // +0x20 (8 bytes)  @"NSString"
    NSString *_weaponSlot2;                  // +0x28 (8 bytes)  @"NSString"
    NSString *_weaponSlotMelee;              // +0x30 (8 bytes)  @"NSString"
    NSString *_powerUpSlot;                  // +0x38 (8 bytes)  @"NSString"
}
@property (nonatomic) int coins;  // ivar: _coins
@property (nonatomic) int diamonds;  // ivar: _diamonds
@property (retain, nonatomic) NSMutableArray *weapons;  // ivar: _weapons
@property (retain, nonatomic) NSMutableArray *powerups;  // ivar: _powerups
@property (weak, nonatomic) NSString *weaponSlot1;  // ivar: _weaponSlot1
@property (weak, nonatomic) NSString *weaponSlot2;  // ivar: _weaponSlot2
@property (weak, nonatomic) NSString *weaponSlotMelee;  // ivar: _weaponSlotMelee
@property (weak, nonatomic) NSString *powerUpSlot;  // ivar: _powerUpSlot
+ (id)sharedInventory;                                                                     // IMP 0x10000c0ac
- (id)init;                                                                                // IMP 0x10000c144
- (void)createOrRestoreWeaponDictionary;                                                   // IMP 0x10000c1c4
- (void)setupWeapons;                                                                      // IMP 0x10000cf5c
- (void)setupPowerups;                                                                     // IMP 0x10000d48c
- (void)setWeaponSlot1:(id)arg1;                                                           // IMP 0x10000d8ec
- (void)setWeaponSlot2:(id)arg1;                                                           // IMP 0x10000da38
- (BOOL)isWeaponEquipped:(id)arg1;                                                         // IMP 0x10000db84
- (void)setWeaponSlotMelee:(id)arg1;                                                       // IMP 0x10000dd40
- (void)setPowerUpSlot:(id)arg1;                                                           // IMP 0x10000de8c
- (void)setCoins:(int)arg1;                                                                // IMP 0x10000dfd8
- (void)setDiamonds:(int)arg1;                                                             // IMP 0x10000e0d4
- (int)levelForWeaponWithName:(id)arg1;                                                    // IMP 0x10000e1d0
- (void)setLevel:(int)arg1 forWeaponWithName:(id)arg2;                                     // IMP 0x10000e404
- (int)levelForPowerUpWithName:(id)arg1;                                                   // IMP 0x10000e654
- (void)setLevel:(int)arg1 forPowerUpWithName:(id)arg2;                                    // IMP 0x10000e888
- (int)quantityForPowerUpWithName:(id)arg1;                                                // IMP 0x10000ead8
- (void)setQuantity:(int)arg1 ForPowerUpWithName:(id)arg2;                                 // IMP 0x10000ed0c
- (BOOL)hasUnlockedWeaponWithName:(id)arg1;                                                // IMP 0x10000ef5c
- (long long)getNumberOfWeaponsUnlocked;                                                   // IMP 0x10000f194
- (void)unlockWeaponWithName:(id)arg1;                                                     // IMP 0x10000f338
- (void)saveWeaponDictionary;                                                              // IMP 0x10000f5d4
- (void).cxx_destruct;                                                                     // IMP 0x10000f818
- (int)coins;                                                                              // IMP 0x10000f6e8
- (int)diamonds;                                                                           // IMP 0x10000f6f8
- (id)weapons;                                                                             // IMP 0x10000f708
- (void)setWeapons:(id)arg1;                                                               // IMP 0x10000f718
- (id)powerups;                                                                            // IMP 0x10000f750
- (void)setPowerups:(id)arg1;                                                              // IMP 0x10000f760
- (id)weaponSlot1;                                                                         // IMP 0x10000f798
- (id)weaponSlot2;                                                                         // IMP 0x10000f7b8
- (id)weaponSlotMelee;                                                                     // IMP 0x10000f7d8
- (id)powerUpSlot;                                                                         // IMP 0x10000f7f8
@end

@interface ADInventoryItemViewController : ADNoBarViewController   // instance size 368, class @0x100421af8
{
    int _type;                               // +0x140 (4 bytes)  i
    UILabel *_titleLabel;                    // +0x148 (8 bytes)  @"UILabel"
    UILabel *_quantityLabel;                 // +0x150 (8 bytes)  @"UILabel"
    NSString *_name;                         // +0x158 (8 bytes)  @"NSString"
    ADArmoryViewController *_armoryViewController; // +0x160 (8 bytes)  @"ADArmoryViewController"
    UIImageView *_weaponImage;               // +0x168 (8 bytes)  @"UIImageView"
}
@property (retain, nonatomic) UILabel *titleLabel;  // ivar: _titleLabel
@property (retain, nonatomic) UILabel *quantityLabel;  // ivar: _quantityLabel
@property (retain, nonatomic) NSString *name;  // ivar: _name
@property (weak, nonatomic) ADArmoryViewController *armoryViewController;  // ivar: _armoryViewController
@property (retain, nonatomic) UIImageView *weaponImage;  // ivar: _weaponImage
@property () int type;  // ivar: _type
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 name:(id)arg3;                              // IMP 0x100043ec8
- (void)viewDidLoad;                                                                       // IMP 0x100043fc4
- (void)loadWeaponWithName:(id)arg1;                                                       // IMP 0x1000440f0
- (void)refreshDisplay;                                                                    // IMP 0x100044214
- (void)makeEmpty;                                                                         // IMP 0x1000445cc
- (void)buttonPressed:(id)arg1;                                                            // IMP 0x1000446d8
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100044788
- (void).cxx_destruct;                                                                     // IMP 0x100044938
- (id)titleLabel;                                                                          // IMP 0x1000447c4
- (void)setTitleLabel:(id)arg1;                                                            // IMP 0x1000447d4
- (id)quantityLabel;                                                                       // IMP 0x10004480c
- (void)setQuantityLabel:(id)arg1;                                                         // IMP 0x10004481c
- (id)name;                                                                                // IMP 0x100044854
- (void)setName:(id)arg1;                                                                  // IMP 0x100044864
- (id)armoryViewController;                                                                // IMP 0x10004489c
- (void)setArmoryViewController:(id)arg1;                                                  // IMP 0x1000448bc
- (id)weaponImage;                                                                         // IMP 0x1000448d0
- (void)setWeaponImage:(id)arg1;                                                           // IMP 0x1000448e0
- (int)type;                                                                               // IMP 0x100044918
- (void)setType:(int)arg1;                                                                 // IMP 0x100044928
@end

@interface ADInventoryViewController : UIViewController   // instance size 368, class @0x100422228
{
    UIImageView *_slot1;                     // +0x140 (8 bytes)  @"UIImageView"
    UIImageView *_slot2;                     // +0x148 (8 bytes)  @"UIImageView"
    UIImageView *_meleeSlot;                 // +0x150 (8 bytes)  @"UIImageView"
    UILabel *_meleeLabel;                    // +0x158 (8 bytes)  @"UILabel"
    UILabel *_gunsLabel;                     // +0x160 (8 bytes)  @"UILabel"
    NSArray *_weapons;                       // +0x168 (8 bytes)  @"NSArray"
}
@property (retain, nonatomic) UIImageView *slot1;  // ivar: _slot1
@property (retain, nonatomic) UIImageView *slot2;  // ivar: _slot2
@property (retain, nonatomic) UIImageView *meleeSlot;  // ivar: _meleeSlot
@property (retain, nonatomic) UILabel *meleeLabel;  // ivar: _meleeLabel
@property (retain, nonatomic) UILabel *gunsLabel;  // ivar: _gunsLabel
@property (retain) NSArray *weapons;  // ivar: _weapons
- (id)initWithChallengeArray:(id)arg1;                                                     // IMP 0x10006d020
- (void)viewDidLoad;                                                                       // IMP 0x10006d18c
- (int)ammoForWeaponInSlot1;                                                               // IMP 0x10006d798
- (int)ammoForWeaponInSlot2;                                                               // IMP 0x10006d8c0
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10006d9e8
- (void).cxx_destruct;                                                                     // IMP 0x10006dba8
- (id)slot1;                                                                               // IMP 0x10006da24
- (void)setSlot1:(id)arg1;                                                                 // IMP 0x10006da34
- (id)slot2;                                                                               // IMP 0x10006da6c
- (void)setSlot2:(id)arg1;                                                                 // IMP 0x10006da7c
- (id)meleeSlot;                                                                           // IMP 0x10006dab4
- (void)setMeleeSlot:(id)arg1;                                                             // IMP 0x10006dac4
- (id)meleeLabel;                                                                          // IMP 0x10006dafc
- (void)setMeleeLabel:(id)arg1;                                                            // IMP 0x10006db0c
- (id)gunsLabel;                                                                           // IMP 0x10006db44
- (void)setGunsLabel:(id)arg1;                                                             // IMP 0x10006db54
- (id)weapons;                                                                             // IMP 0x10006db8c
- (void)setWeapons:(id)arg1;                                                               // IMP 0x10006db9c
@end

@interface ADJukeBox : ADPasserBy   // instance size 12, class @0x100422098
{
    float _pauseTime;                        // +0x8 (4 bytes)  f
}
@property () float pauseTime;  // ivar: _pauseTime
- (id)initWithName:(id)arg1;                                                               // IMP 0x100065f4c
- (void)update:(float)arg1;                                                                // IMP 0x100066148
- (void)spawn;                                                                             // IMP 0x10006623c
- (void)playRandomMusic;                                                                   // IMP 0x10006627c
- (void)hitByWeapon:(id)arg1;                                                              // IMP 0x100066550
- (void)hitByExplosionAtPosition:(CGPoint)arg1 withDamages:(float)arg2 dispersal:(float)arg3 radius:(float)arg4; // IMP 0x100066784
- (BOOL)canBeShotAt;                                                                       // IMP 0x100066834
- (void)endOfPauseState;                                                                   // IMP 0x1000668ac
- (void)setRandomPosition;                                                                 // IMP 0x1000668ec
- (float)pauseTime;                                                                        // IMP 0x100066a44
- (void)setPauseTime:(float)arg1;                                                          // IMP 0x100066a58
@end

@interface ADLabelWithCoins : UILabel   // instance size 136, class @0x100423bc8
{
    BOOL _didAnimate;                        // +0x68 (1 bytes)  B
    int _value;                              // +0x6c (4 bytes)  i
    int _prority;                            // +0x70 (4 bytes)  i
    ADViewController *_delegate;             // +0x78 (8 bytes)  @"ADViewController"
    UIView *_fromView;                       // +0x80 (8 bytes)  @"UIView"
}
@property (weak, nonatomic) ADViewController *delegate;  // ivar: _delegate
@property (weak, nonatomic) UIView *fromView;  // ivar: _fromView
@property () int value;  // ivar: _value
@property () int prority;  // ivar: _prority
@property () BOOL didAnimate;  // ivar: _didAnimate
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x1000d714c
- (void)animateCoins;                                                                      // IMP 0x1000d7188
- (void).cxx_destruct;                                                                     // IMP 0x1000d7348
- (id)delegate;                                                                            // IMP 0x1000d727c
- (void)setDelegate:(id)arg1;                                                              // IMP 0x1000d729c
- (id)fromView;                                                                            // IMP 0x1000d72b0
- (void)setFromView:(id)arg1;                                                              // IMP 0x1000d72d0
- (int)value;                                                                              // IMP 0x1000d72e4
- (void)setValue:(int)arg1;                                                                // IMP 0x1000d72f4
- (int)prority;                                                                            // IMP 0x1000d7304
- (void)setPrority:(int)arg1;                                                              // IMP 0x1000d7314
- (BOOL)didAnimate;                                                                        // IMP 0x1000d7324
- (void)setDidAnimate:(BOOL)arg1;                                                          // IMP 0x1000d7338
@end

@interface ADLoadoutScrollViewController : UIViewController <ScrollViewContainerDelegate>   // instance size 344, class @0x100421008
{
    UIScrollView *_scrollView;               // +0x140 (8 bytes)  @"UIScrollView"
    id<ScrollViewContainerDelegate> _itemDelegate; // +0x148 (8 bytes)  @"<ScrollViewContainerDelegate>"
    id<OBOvumSource> _ovumSource;            // +0x150 (8 bytes)  @"<OBOvumSource>"
}
@property (retain, nonatomic) UIScrollView *scrollView;  // ivar: _scrollView
@property (retain) id<ScrollViewContainerDelegate> itemDelegate;  // ivar: _itemDelegate
@property (retain) id<OBOvumSource> ovumSource;  // ivar: _ovumSource
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100016ff8
- (void)viewDidLoad;                                                                       // IMP 0x1000170ec
- (void)loadView;                                                                          // IMP 0x100017858
- (void)refresh;                                                                           // IMP 0x10001795c
- (void)handleItemTap:(id)arg1;                                                            // IMP 0x100017e84
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100018100
- (void)dealloc;                                                                           // IMP 0x10001813c
- (void).cxx_destruct;                                                                     // IMP 0x10001838c
- (id)scrollView;                                                                          // IMP 0x10001830c
- (void)setScrollView:(id)arg1;                                                            // IMP 0x10001831c
- (id)itemDelegate;                                                                        // IMP 0x100018354
- (void)setItemDelegate:(id)arg1;                                                          // IMP 0x100018364
- (id)ovumSource;                                                                          // IMP 0x100018370
- (void)setOvumSource:(id)arg1;                                                            // IMP 0x100018380
@end

@interface ADLogoScreenViewController : ADNoBarViewController   // instance size 328, class @0x100422f98
{
    UIImageView *_logo;                      // +0x140 (8 bytes)  @"UIImageView"
}
@property (retain, nonatomic) UIImageView *logo;  // ivar: _logo
- (void)viewDidLoad;                                                                       // IMP 0x10009de3c
- (void)loadView;                                                                          // IMP 0x10009ded4
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x10009def0
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10009e0c8
- (void)fireTimer;                                                                         // IMP 0x10009e104
- (void)moveToOpener;                                                                      // IMP 0x10009e154
- (void).cxx_destruct;                                                                     // IMP 0x10009e3d0
- (id)logo;                                                                                // IMP 0x10009e388
- (void)setLogo:(id)arg1;                                                                  // IMP 0x10009e398
@end

@interface ADMachine : ADPasserBy   // instance size 12, class @0x100421dc8
{
    float sleepTime;                         // +0x8 (4 bytes)  f
}
- (id)initWithName:(id)arg1;                                                               // IMP 0x10004f74c
- (void)update:(float)arg1;                                                                // IMP 0x10004f7fc
- (void)startLoop;                                                                         // IMP 0x10004f9fc
- (void)die;                                                                               // IMP 0x10004fa44
@end

@interface ADMainMenuViewController : ADViewController <GKGameCenterControllerDelegate, UIAlertViewDelegate>   // instance size 360, class @0x100422048
{
    UIView *_fullMoonView;                   // +0x140 (8 bytes)  @"UIView"
    UIButton *_cheatMenu;                    // +0x148 (8 bytes)  @"UIButton"
    UILabel *_versionNumberLabel;            // +0x150 (8 bytes)  @"UILabel"
    UIImageView *_useHeadphones;             // +0x158 (8 bytes)  @"UIImageView"
    ADSlidingView *_slidingView;             // +0x160 (8 bytes)  @"ADSlidingView"
}
@property (retain, nonatomic) UIView *fullMoonView;  // ivar: _fullMoonView
@property (retain, nonatomic) UIButton *cheatMenu;  // ivar: _cheatMenu
@property (retain, nonatomic) UILabel *versionNumberLabel;  // ivar: _versionNumberLabel
@property (retain, nonatomic) UIImageView *useHeadphones;  // ivar: _useHeadphones
@property (retain, nonatomic) ADSlidingView *slidingView;  // ivar: _slidingView
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000645a8
- (void)viewDidLoad;                                                                       // IMP 0x100064634
- (void)loadView;                                                                          // IMP 0x100064b8c
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x100064d1c
- (void)armoryButtonPressed:(id)arg1;                                                      // IMP 0x100064fb0
- (void)cheatButtonPressed:(id)arg1;                                                       // IMP 0x100065044
- (void)playButtonPressed:(id)arg1;                                                        // IMP 0x1000650d8
- (void)settingsButtonTouched:(id)arg1;                                                    // IMP 0x100065360
- (void)moveToEncyclopedia:(id)arg1;                                                       // IMP 0x1000653f4
- (void)audioRouteChanged;                                                                 // IMP 0x100065488
- (void)alertView:(id)arg1 willDismissWithButtonIndex:(long long)arg2;                     // IMP 0x100065560
- (void)authenticatePlayerOnGameCenter;                                                    // IMP 0x100065664
- (void)authenticateLocalPlayer;                                                           // IMP 0x100065674
- (void)leaderboardsButtonPressed:(id)arg1;                                                // IMP 0x100065964
- (void)presentGameCenter:(id)arg1;                                                        // IMP 0x100065bb0
- (void)gameCenterViewControllerDidFinish:(id)arg1;                                        // IMP 0x100065bd8
- (BOOL)betaHasExpired;                                                                    // IMP 0x100065c00
- (BOOL)accessibilityPerformMagicTap;                                                      // IMP 0x100065d40
- (void).cxx_destruct;                                                                     // IMP 0x100065ed0
- (id)fullMoonView;                                                                        // IMP 0x100065d68
- (void)setFullMoonView:(id)arg1;                                                          // IMP 0x100065d78
- (id)cheatMenu;                                                                           // IMP 0x100065db0
- (void)setCheatMenu:(id)arg1;                                                             // IMP 0x100065dc0
- (id)versionNumberLabel;                                                                  // IMP 0x100065df8
- (void)setVersionNumberLabel:(id)arg1;                                                    // IMP 0x100065e08
- (id)useHeadphones;                                                                       // IMP 0x100065e40
- (void)setUseHeadphones:(id)arg1;                                                         // IMP 0x100065e50
- (id)slidingView;                                                                         // IMP 0x100065e88
- (void)setSlidingView:(id)arg1;                                                           // IMP 0x100065e98
@end

@interface ADMeleeWeapon : ADWeapon   // instance size 8, class @0x100420d60
- (void)update:(float)arg1;                                                                // IMP 0x10000740c
- (void)singleShot;                                                                        // IMP 0x1000074c0
- (void)playHitSound;                                                                      // IMP 0x100007538
- (void)playMissSound;                                                                     // IMP 0x100007610
@end

@interface ADMinigunPowerUp : ADPowerUp   // instance size 48, class @0x100423538
{
    float timeSinceActivation;               // +0x8 (4 bytes)  f
    BOOL active;                             // +0xc (1 bytes)  B
    float nextBulletTime;                    // +0x10 (4 bytes)  f
    ADWeapon *minigunWeapon;                 // +0x18 (8 bytes)  @"ADWeapon"
    float minigunDuration;                   // +0x20 (4 bytes)  f
    S3DSound *loopSound;                     // +0x28 (8 bytes)  @"S3DSound"
}
- (id)init;                                                                                // IMP 0x1000b23f0
- (void)preload;                                                                           // IMP 0x1000b242c
- (void)use;                                                                               // IMP 0x1000b2850
- (void)update:(float)arg1;                                                                // IMP 0x1000b2934
- (void)clean;                                                                             // IMP 0x1000b2ba4
- (void).cxx_destruct;                                                                     // IMP 0x1000b2d28
@end

@interface ADMission : NSObject <NSCoding>   // instance size 80, class @0x100421b48
{
    BOOL playerIsAlive;                      // +0x8 (1 bytes)  B
    BOOL singleLife;                         // +0x9 (1 bytes)  B
    int objective;                           // +0xc (4 bytes)  i
    int objective_zombies;                   // +0x10 (4 bytes)  i
    int skipCost;                            // +0x14 (4 bytes)  i
    int reward;                              // +0x18 (4 bytes)  i
    float survivalTime;                      // +0x1c (4 bytes)  f
    int progression;                         // +0x20 (4 bytes)  i
    int progression_zombies;                 // +0x24 (4 bytes)  i
    int attempts;                            // +0x28 (4 bytes)  i
    NSString *description;                   // +0x30 (8 bytes)  @"NSString"
    NSString *type;                          // +0x38 (8 bytes)  @"NSString"
    NSString *enemi;                         // +0x40 (8 bytes)  @"NSString"
    NSString *weapon;                        // +0x48 (8 bytes)  @"NSString"
}
@property (nonatomic) int objective;  // ivar: objective
@property (nonatomic) int objective_zombies;  // ivar: objective_zombies
@property (retain) NSString *description;  // ivar: description
@property (retain) NSString *type;  // ivar: type
@property () int skipCost;  // ivar: skipCost
@property () int reward;  // ivar: reward
@property (retain) NSString *enemi;  // ivar: enemi
@property (retain) NSString *weapon;  // ivar: weapon
@property () float survivalTime;  // ivar: survivalTime
@property () BOOL singleLife;  // ivar: singleLife
@property () int progression;  // ivar: progression
@property () int progression_zombies;  // ivar: progression_zombies
@property () int attempts;  // ivar: attempts
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x1000449b0
- (void)startGameplay;                                                                     // IMP 0x100044d80
- (void)update:(float)arg1;                                                                // IMP 0x100044e30
- (void)setObjective:(int)arg1;                                                            // IMP 0x100044ea0
- (void)playerShotWithWeapon:(id)arg1 hitEnemi:(BOOL)arg2;                                 // IMP 0x100044eb0
- (void)enemiKilled:(id)arg1 withWeapon:(id)arg2;                                          // IMP 0x100045010
- (void)playerDied;                                                                        // IMP 0x100045240
- (void)playerUpgradedWeapon;                                                              // IMP 0x1000452f4
- (void)endGameplay;                                                                       // IMP 0x1000453a8
- (void)playerSwappedWeapon;                                                               // IMP 0x1000453b8
- (void)playerMissedAShot;                                                                 // IMP 0x1000453bc
- (BOOL)isMissionCompleted;                                                                // IMP 0x1000453c0
- (id)completionToString;                                                                  // IMP 0x100045710
- (float)completionToFloat;                                                                // IMP 0x100045aac
- (id)cellViewForMissionWithCellIdentifier:(id)arg1;                                       // IMP 0x100045d0c
- (id)initWithCoder:(id)arg1;                                                              // IMP 0x10004612c
- (void)encodeWithCoder:(id)arg1;                                                          // IMP 0x1000464c0
- (void).cxx_destruct;                                                                     // IMP 0x100046934
- (int)objective;                                                                          // IMP 0x1000467a8
- (int)objective_zombies;                                                                  // IMP 0x1000467b8
- (void)setObjective_zombies:(int)arg1;                                                    // IMP 0x1000467c8
- (id)description;                                                                         // IMP 0x1000467d8
- (void)setDescription:(id)arg1;                                                           // IMP 0x1000467e8
- (id)type;                                                                                // IMP 0x1000467f4
- (void)setType:(id)arg1;                                                                  // IMP 0x100046804
- (int)skipCost;                                                                           // IMP 0x100046810
- (void)setSkipCost:(int)arg1;                                                             // IMP 0x100046820
- (int)reward;                                                                             // IMP 0x100046830
- (void)setReward:(int)arg1;                                                               // IMP 0x100046840
- (id)enemi;                                                                               // IMP 0x100046850
- (void)setEnemi:(id)arg1;                                                                 // IMP 0x100046860
- (id)weapon;                                                                              // IMP 0x10004686c
- (void)setWeapon:(id)arg1;                                                                // IMP 0x10004687c
- (float)survivalTime;                                                                     // IMP 0x100046888
- (void)setSurvivalTime:(float)arg1;                                                       // IMP 0x10004689c
- (BOOL)singleLife;                                                                        // IMP 0x1000468b0
- (void)setSingleLife:(BOOL)arg1;                                                          // IMP 0x1000468c4
- (int)progression;                                                                        // IMP 0x1000468d4
- (void)setProgression:(int)arg1;                                                          // IMP 0x1000468e4
- (int)progression_zombies;                                                                // IMP 0x1000468f4
- (void)setProgression_zombies:(int)arg1;                                                  // IMP 0x100046904
- (int)attempts;                                                                           // IMP 0x100046914
- (void)setAttempts:(int)arg1;                                                             // IMP 0x100046924
@end

@interface ADMissionForTopbarViewController : ADNoBarViewController   // instance size 424, class @0x100421828
{
    BOOL canSkip;                            // +0x140 (1 bytes)  B
    UILabel *description;                    // +0x148 (8 bytes)  @"UILabel"
    UILabel *_rewardLabel;                   // +0x150 (8 bytes)  @"UILabel"
    UILabel *_completion;                    // +0x158 (8 bytes)  @"UILabel"
    ADLabelWithCoins *_reward;               // +0x160 (8 bytes)  @"ADLabelWithCoins"
    ADButtonWithFont *_skipButton;           // +0x168 (8 bytes)  @"ADButtonWithFont"
    UILabel *_skipDiamondsLabel;             // +0x170 (8 bytes)  @"UILabel"
    ADMission *_mission;                     // +0x178 (8 bytes)  @"ADMission"
    UIImageView *_starImage;                 // +0x180 (8 bytes)  @"UIImageView"
    UIView *_completionBar;                  // +0x188 (8 bytes)  @"UIView"
    UIView *_completionBarBackground;        // +0x190 (8 bytes)  @"UIView"
    id<ADMissionBarDelegate> _missionBarDelegate; // +0x198 (8 bytes)  @"<ADMissionBarDelegate>"
    long long _placeholderTag;               // +0x1a0 (8 bytes)  q
}
@property (retain, nonatomic) UILabel *rewardLabel;  // ivar: _rewardLabel
@property (retain, nonatomic) UILabel *description;  // ivar: description
@property (retain, nonatomic) UILabel *completion;  // ivar: _completion
@property (retain, nonatomic) ADLabelWithCoins *reward;  // ivar: _reward
@property (retain, nonatomic) ADButtonWithFont *skipButton;  // ivar: _skipButton
@property (retain, nonatomic) UILabel *skipDiamondsLabel;  // ivar: _skipDiamondsLabel
@property (retain) ADMission *mission;  // ivar: _mission
@property (retain, nonatomic) UIImageView *starImage;  // ivar: _starImage
@property (retain, nonatomic) UIView *completionBar;  // ivar: _completionBar
@property (retain, nonatomic) UIView *completionBarBackground;  // ivar: _completionBarBackground
@property (retain) id<ADMissionBarDelegate> missionBarDelegate;  // ivar: _missionBarDelegate
@property () long long placeholderTag;  // ivar: _placeholderTag
- (id)initWithMission:(id)arg1 skippable:(BOOL)arg2;                                       // IMP 0x10003bf9c
- (void)viewDidLoad;                                                                       // IMP 0x10003c060
- (void)awakeFromNib;                                                                      // IMP 0x10003c0bc
- (void)refreshAndLoad;                                                                    // IMP 0x10003c1a4
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x10003cd2c
- (void)disableSkip;                                                                       // IMP 0x10003cf54
- (id)getTopViewController;                                                                // IMP 0x10003d060
- (void)skipButtonTouched:(id)arg1;                                                        // IMP 0x10003d114
- (void)markAsCompletedAndSwapWithReward:(BOOL)arg1;                                       // IMP 0x10003d400
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10003df38
- (void).cxx_destruct;                                                                     // IMP 0x10003e254
- (id)description;                                                                         // IMP 0x10003df74
- (void)setDescription:(id)arg1;                                                           // IMP 0x10003df84
- (id)rewardLabel;                                                                         // IMP 0x10003dfbc
- (void)setRewardLabel:(id)arg1;                                                           // IMP 0x10003dfcc
- (id)completion;                                                                          // IMP 0x10003e004
- (void)setCompletion:(id)arg1;                                                            // IMP 0x10003e014
- (id)reward;                                                                              // IMP 0x10003e04c
- (void)setReward:(id)arg1;                                                                // IMP 0x10003e05c
- (id)skipButton;                                                                          // IMP 0x10003e094
- (void)setSkipButton:(id)arg1;                                                            // IMP 0x10003e0a4
- (id)skipDiamondsLabel;                                                                   // IMP 0x10003e0dc
- (void)setSkipDiamondsLabel:(id)arg1;                                                     // IMP 0x10003e0ec
- (id)mission;                                                                             // IMP 0x10003e124
- (void)setMission:(id)arg1;                                                               // IMP 0x10003e134
- (id)starImage;                                                                           // IMP 0x10003e140
- (void)setStarImage:(id)arg1;                                                             // IMP 0x10003e150
- (id)completionBar;                                                                       // IMP 0x10003e188
- (void)setCompletionBar:(id)arg1;                                                         // IMP 0x10003e198
- (id)completionBarBackground;                                                             // IMP 0x10003e1d0
- (void)setCompletionBarBackground:(id)arg1;                                               // IMP 0x10003e1e0
- (id)missionBarDelegate;                                                                  // IMP 0x10003e218
- (void)setMissionBarDelegate:(id)arg1;                                                    // IMP 0x10003e228
- (long long)placeholderTag;                                                               // IMP 0x10003e234
- (void)setPlaceholderTag:(long long)arg1;                                                 // IMP 0x10003e244
@end

@interface ADMissionManager : NSObject   // instance size 32, class @0x100420d88
{
    int currentMissionIndex;                 // +0x8 (4 bytes)  i
    NSArray *_missionArray;                  // +0x10 (8 bytes)  @"NSArray"
    NSMutableArray *_activeMissions;         // +0x18 (8 bytes)  @"NSMutableArray"
}
@property (retain, nonatomic) NSArray *missionArray;  // ivar: _missionArray
@property (retain, nonatomic) NSMutableArray *activeMissions;  // ivar: _activeMissions
+ (id)sharedMissionManager;                                                                // IMP 0x100007eec
- (id)missionArray;                                                                        // IMP 0x100007f98
- (void)activeMissionsInit;                                                                // IMP 0x1000080a4
- (void)initOrRestore;                                                                     // IMP 0x100008284
- (void)saveMissionProgress;                                                               // IMP 0x10000835c
- (void)loadMissionProgress;                                                               // IMP 0x100008490
- (void)update:(float)arg1;                                                                // IMP 0x1000085ac
- (int)missionsCompleted;                                                                  // IMP 0x100008618
- (id)replaceMission:(id)arg1;                                                             // IMP 0x1000087ac
- (id)getNextMission;                                                                      // IMP 0x1000088cc
- (void)enemiKilled:(id)arg1 withWeapon:(id)arg2;                                          // IMP 0x100008a20
- (void)upgradeWeaponToLevel:(int)arg1;                                                    // IMP 0x100008c10
- (void)startGameplay;                                                                     // IMP 0x100008cf0
- (void)endGameplay;                                                                       // IMP 0x100008dd0
- (void)playerSwappedWeapon;                                                               // IMP 0x100008ed0
- (void)playerMissedAShot;                                                                 // IMP 0x100008fb0
- (void)playerShotWithWeapon:(id)arg1 hitEnemi:(BOOL)arg2;                                 // IMP 0x100009090
- (void)playerDied;                                                                        // IMP 0x100009264
- (void).cxx_destruct;                                                                     // IMP 0x10000934c
- (void)setMissionArray:(id)arg1;                                                          // IMP 0x1000092cc
- (id)activeMissions;                                                                      // IMP 0x100009304
- (void)setActiveMissions:(id)arg1;                                                        // IMP 0x100009314
@end

@interface ADMissionTopbarViewController : ADNoBarViewController   // instance size 360, class @0x1004210f8
{
    BOOL open;                               // +0x140 (1 bytes)  B
    NSMutableArray *missionViewControllers;  // +0x148 (8 bytes)  @"NSMutableArray"
    BOOL canSkip;                            // +0x150 (1 bytes)  B
    UIView *_containerView;                  // +0x158 (8 bytes)  @"UIView"
    UIButton *_missionButton;                // +0x160 (8 bytes)  @"UIButton"
}
@property (retain, nonatomic) UIView *containerView;  // ivar: _containerView
@property (retain, nonatomic) UIButton *missionButton;  // ivar: _missionButton
- (id)initWithSkip:(BOOL)arg1;                                                             // IMP 0x100019c70
- (void)viewDidLoad;                                                                       // IMP 0x100019cd0
- (void)reloadMissions;                                                                    // IMP 0x100019eac
- (void)removeAllMissions;                                                                 // IMP 0x10001a3e4
- (void)missionButtonPressed:(id)arg1;                                                     // IMP 0x10001a57c
- (void)backButtonTouched:(id)arg1;                                                        // IMP 0x10001a89c
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10001ab8c
- (void)dealloc;                                                                           // IMP 0x10001abc8
- (void).cxx_destruct;                                                                     // IMP 0x10001acf8
- (id)containerView;                                                                       // IMP 0x10001ac68
- (void)setContainerView:(id)arg1;                                                         // IMP 0x10001ac78
- (id)missionButton;                                                                       // IMP 0x10001acb0
- (void)setMissionButton:(id)arg1;                                                         // IMP 0x10001acc0
@end

@interface ADMoreGamesViewController : ADViewController <UIWebViewDelegate, UIAlertViewDelegate>   // instance size 360, class @0x100423448
{
    BOOL _didLoadWebPage;                    // +0x140 (1 bytes)  B
    UIWebView *_webView;                     // +0x148 (8 bytes)  @"UIWebView"
    NSDictionary *_creditsDictionary;        // +0x150 (8 bytes)  @"NSDictionary"
    NSArray *_creditKeys;                    // +0x158 (8 bytes)  @"NSArray"
    UIAlertView *_alertView;                 // +0x160 (8 bytes)  @"UIAlertView"
}
@property (retain, nonatomic) UIWebView *webView;  // ivar: _webView
@property (retain) NSDictionary *creditsDictionary;  // ivar: _creditsDictionary
@property (retain) NSArray *creditKeys;  // ivar: _creditKeys
@property (retain) UIAlertView *alertView;  // ivar: _alertView
@property () BOOL didLoadWebPage;  // ivar: _didLoadWebPage
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000afb24
- (void)viewDidLoad;                                                                       // IMP 0x1000afd6c
- (void)viewWillDisappear:(BOOL)arg1;                                                      // IMP 0x1000b0230
- (void)backButtonPressed;                                                                 // IMP 0x1000b0240
- (void)applicationWillEnterForeground:(id)arg1;                                           // IMP 0x1000b02dc
- (void)applicationWillEnterBackground:(id)arg1;                                           // IMP 0x1000b0378
- (BOOL)webView:(id)arg1 shouldStartLoadWithRequest:(id)arg2 navigationType:(long long)arg3; // IMP 0x1000b04b8
- (void)webViewDidStartLoad:(id)arg1;                                                      // IMP 0x1000b06c8
- (void)webViewDidFinishLoad:(id)arg1;                                                     // IMP 0x1000b0800
- (void)webView:(id)arg1 didFailLoadWithError:(id)arg2;                                    // IMP 0x1000b0a50
- (void)dealloc;                                                                           // IMP 0x1000b0c88
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000b0d64
- (void).cxx_destruct;                                                                     // IMP 0x1000b0e60
- (id)webView;                                                                             // IMP 0x1000b0da0
- (void)setWebView:(id)arg1;                                                               // IMP 0x1000b0db0
- (id)creditsDictionary;                                                                   // IMP 0x1000b0de8
- (void)setCreditsDictionary:(id)arg1;                                                     // IMP 0x1000b0df8
- (id)creditKeys;                                                                          // IMP 0x1000b0e04
- (void)setCreditKeys:(id)arg1;                                                            // IMP 0x1000b0e14
- (id)alertView;                                                                           // IMP 0x1000b0e20
- (void)setAlertView:(id)arg1;                                                             // IMP 0x1000b0e30
- (BOOL)didLoadWebPage;                                                                    // IMP 0x1000b0e3c
- (void)setDidLoadWebPage:(BOOL)arg1;                                                      // IMP 0x1000b0e50
@end

@interface ADMotionManager : NSObject   // instance size 24, class @0x100420c70
{
    CMAttitude *lastAttitude;                // +0x8 (8 bytes)  @"CMAttitude"
    float _lastGyroAngle;                    // +0x10 (4 bytes)  f
    float _lastTiltAngle;                    // +0x14 (4 bytes)  f
}
@property (nonatomic) float lastGyroAngle;  // ivar: _lastGyroAngle
@property (nonatomic) float lastTiltAngle;  // ivar: _lastTiltAngle
+ (id)sharedInstance;                                                                      // IMP 0x100005830
+ (id)allocWithZone:(_NSZone *)arg1;                                                       // IMP 0x100005928
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x10000594c
- (void)startMotionManager;                                                                // IMP 0x100005950
- (struct {…})getCurrentAcceleration;                                                      // IMP 0x100005a00
- (id)getCurrentAttitude;                                                                  // IMP 0x100005a90
- (id)getStartingAttitude;                                                                 // IMP 0x100005b08
- (float)getInterval;                                                                      // IMP 0x100005b14
- (double)getStamp;                                                                        // IMP 0x100005b40
- (void)setStartingAttitude:(id)arg1;                                                      // IMP 0x100005bb8
- (BOOL)isDeviceReady;                                                                     // IMP 0x100005c40
- (void)destroyMotionManager;                                                              // IMP 0x100005c58
- (float)getYawDifference;                                                                 // IMP 0x100005c9c
- (float)getTiltAngle;                                                                     // IMP 0x100005dec
- (void).cxx_destruct;                                                                     // IMP 0x100005f90
- (float)lastGyroAngle;                                                                    // IMP 0x100005f50
- (void)setLastGyroAngle:(float)arg1;                                                      // IMP 0x100005f60
- (float)lastTiltAngle;                                                                    // IMP 0x100005f70
- (void)setLastTiltAngle:(float)arg1;                                                      // IMP 0x100005f80
@end

@interface ADMultiCell_iPodTouch : UITableViewCell   // instance size 152, class @0x100420ce8
{
    BOOL _isEnemyCell;                       // +0x68 (1 bytes)  B
    UILabel *_killsLabel;                    // +0x70 (8 bytes)  @"UILabel"
    UILabel *_accuracyLabel;                 // +0x78 (8 bytes)  @"UILabel"
    UILabel *_killsValueLabel;               // +0x80 (8 bytes)  @"UILabel"
    UILabel *_accuracyValueLabel;            // +0x88 (8 bytes)  @"UILabel"
    UILabel *_subTitleLabel;                 // +0x90 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UILabel *killsLabel;  // ivar: _killsLabel
@property (retain, nonatomic) UILabel *accuracyLabel;  // ivar: _accuracyLabel
@property (retain, nonatomic) UILabel *killsValueLabel;  // ivar: _killsValueLabel
@property (retain, nonatomic) UILabel *accuracyValueLabel;  // ivar: _accuracyValueLabel
@property (retain, nonatomic) UILabel *subTitleLabel;  // ivar: _subTitleLabel
@property () BOOL isEnemyCell;  // ivar: _isEnemyCell
- (void)awakeFromNib;                                                                      // IMP 0x100006f3c
- (void)populateWithSubtitleString:(id)arg1 Values:(id)arg2;                               // IMP 0x100006f40
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x1000071c8
- (void).cxx_destruct;                                                                     // IMP 0x100007390
- (id)killsLabel;                                                                          // IMP 0x100007204
- (void)setKillsLabel:(id)arg1;                                                            // IMP 0x100007214
- (id)accuracyLabel;                                                                       // IMP 0x10000724c
- (void)setAccuracyLabel:(id)arg1;                                                         // IMP 0x10000725c
- (id)killsValueLabel;                                                                     // IMP 0x100007294
- (void)setKillsValueLabel:(id)arg1;                                                       // IMP 0x1000072a4
- (id)accuracyValueLabel;                                                                  // IMP 0x1000072dc
- (void)setAccuracyValueLabel:(id)arg1;                                                    // IMP 0x1000072ec
- (id)subTitleLabel;                                                                       // IMP 0x100007324
- (void)setSubTitleLabel:(id)arg1;                                                         // IMP 0x100007334
- (BOOL)isEnemyCell;                                                                       // IMP 0x10000736c
- (void)setIsEnemyCell:(BOOL)arg1;                                                         // IMP 0x100007380
@end

@interface ADNoBarViewController : UIViewController   // instance size 336, class @0x1004210a8
{
    ADMissionTopbarViewController *_missionTopbarViewController; // +0x140 (8 bytes)  @"ADMissionTopbarViewController"
    ADStatusBarViewController *_statusBarViewController; // +0x148 (8 bytes)  @"ADStatusBarViewController"
}
@property (retain, nonatomic) ADMissionTopbarViewController *missionTopbarViewController;  // ivar: _missionTopbarViewController
@property (retain, nonatomic) ADStatusBarViewController *statusBarViewController;  // ivar: _statusBarViewController
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100018a88
- (id)getNibName:(id)arg1;                                                                 // IMP 0x100018b74
- (void)loadMissionOverlay;                                                                // IMP 0x100018de4
- (void)loadStatusBar;                                                                     // IMP 0x100018f50
- (void)dealloc;                                                                           // IMP 0x100019478
- (void)backButtonPressed;                                                                 // IMP 0x1000195e8
- (void)viewDidLayoutSubviews;                                                             // IMP 0x100019604
- (void)toggleArmory;                                                                      // IMP 0x1000197dc
- (void)showNoDiamondsAlert;                                                               // IMP 0x100019990
- (unsigned long long)application:(id)arg1 supportedInterfaceOrientationsForWindow:(id)arg2; // IMP 0x100019b70
- (BOOL)shouldAutorotateToInterfaceOrientation:(long long)arg1;                            // IMP 0x100019b78
- (unsigned long long)supportedInterfaceOrientations;                                      // IMP 0x100019b88
- (BOOL)prefersStatusBarHidden;                                                            // IMP 0x100019b90
- (BOOL)shouldAutorotate;                                                                  // IMP 0x100019b98
- (void).cxx_destruct;                                                                     // IMP 0x100019c30
- (id)missionTopbarViewController;                                                         // IMP 0x100019ba0
- (void)setMissionTopbarViewController:(id)arg1;                                           // IMP 0x100019bb0
- (id)statusBarViewController;                                                             // IMP 0x100019be8
- (void)setStatusBarViewController:(id)arg1;                                               // IMP 0x100019bf8
@end

@interface ADNoMissionBarViewController : ADNoBarViewController   // instance size 320, class @0x1004218c8
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10003e7d0
- (void)viewDidLoad;                                                                       // IMP 0x10003e85c
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10003e8b8
@end

@interface ADOpenerGameplayViewController : ADGameplayViewController   // instance size 328, class @0x100421468
{
    UIButton *_controlModeLabel;             // +0x140 (8 bytes)  @"UIButton"
}
@property (retain, nonatomic) UIButton *controlModeLabel;  // ivar: _controlModeLabel
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100025334
- (void)viewDidLoad;                                                                       // IMP 0x1000253c0
- (void)handleSkipForAccessibleUsers;                                                      // IMP 0x100025994
- (void)loadView;                                                                          // IMP 0x1000259a8
- (void)initAmbiantManager;                                                                // IMP 0x100025c38
- (void)initBrickManager;                                                                  // IMP 0x100025d20
- (void)goToScoreScreen;                                                                   // IMP 0x100025e48
- (void)skipButtonPressed:(id)arg1;                                                        // IMP 0x100025ef8
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100025fac
- (void)dealloc;                                                                           // IMP 0x100025fe8
- (void).cxx_destruct;                                                                     // IMP 0x1000260bc
- (id)controlModeLabel;                                                                    // IMP 0x100026074
- (void)setControlModeLabel:(id)arg1;                                                      // IMP 0x100026084
@end

@interface ADOvumDataObject : NSObject   // instance size 24, class @0x100420fe0
{
    NSString *_objName;                      // +0x8 (8 bytes)  @"NSString"
    long long _objTag;                       // +0x10 (8 bytes)  q
}
@property (retain) NSString *objName;  // ivar: _objName
@property () long long objTag;  // ivar: _objTag
- (void).cxx_destruct;                                                                     // IMP 0x100016fe4
- (id)objName;                                                                             // IMP 0x100016fa8
- (void)setObjName:(id)arg1;                                                               // IMP 0x100016fb8
- (long long)objTag;                                                                       // IMP 0x100016fc4
- (void)setObjTag:(long long)arg1;                                                         // IMP 0x100016fd4
@end

@interface ADParticleScene : SKScene   // instance size 16, class @0x100421738
{
    SKEmitterNode *_emitter;                 // +0x8 (8 bytes)  @"SKEmitterNode"
}
@property (retain) SKEmitterNode *emitter;  // ivar: _emitter
- (id)initWithSize:(CGSize)arg1;                                                           // IMP 0x100039374
- (void)willMoveFromView:(id)arg1;                                                         // IMP 0x100039640
- (void).cxx_destruct;                                                                     // IMP 0x100039724
- (id)emitter;                                                                             // IMP 0x100039708
- (void)setEmitter:(id)arg1;                                                               // IMP 0x100039718
@end

@interface ADPasserBy : ADEnemy   // instance size 8, class @0x100420e50
- (void)update:(float)arg1;                                                                // IMP 0x10000b770
- (void)setPositionFromDictionary:(id)arg1;                                                // IMP 0x10000bb7c
- (void)setRandomPositionAtDistance:(int)arg1;                                             // IMP 0x10000bf30
- (void)setRandomPosition;                                                                 // IMP 0x10000bfdc
- (void)passBy;                                                                            // IMP 0x10000c05c
- (unsigned long long)getType;                                                             // IMP 0x10000c0a4
@end

@interface ADPasserByManager : NSObject   // instance size 24, class @0x100423ad8
{
    NSMutableArray *passersBy;               // +0x8 (8 bytes)  @"NSMutableArray"
    float nextCow;                           // +0x10 (4 bytes)  f
    float nextCar;                           // +0x14 (4 bytes)  f
}
- (id)init;                                                                                // IMP 0x1000d570c
- (void)startTimers;                                                                       // IMP 0x1000d57c0
- (id)allPasserBy;                                                                         // IMP 0x1000d5964
- (void)addPasserBy:(id)arg1;                                                              // IMP 0x1000d5974
- (void)removeAllPassersBy;                                                                // IMP 0x1000d59a0
- (void)clean;                                                                             // IMP 0x1000d59bc
- (void)update:(float)arg1;                                                                // IMP 0x1000d59e4
- (void)generateCow;                                                                       // IMP 0x1000d5d04
- (void)generateCar;                                                                       // IMP 0x1000d5f08
- (void)randomizeNextCar;                                                                  // IMP 0x1000d60e4
- (void)randomizeNextCow;                                                                  // IMP 0x1000d6140
- (id)availablePlaylistNameInArray:(id)arg1;                                               // IMP 0x1000d619c
- (void)addJukebox;                                                                        // IMP 0x1000d63d4
- (void)addMachine;                                                                        // IMP 0x1000d64e4
- (void)pause;                                                                             // IMP 0x1000d65f8
- (void)resume;                                                                            // IMP 0x1000d672c
- (void).cxx_destruct;                                                                     // IMP 0x1000d6860
@end

@interface ADPauseViewController : ADSettingsViewController   // instance size 328, class @0x100421f08
{
    ADGameplayViewController *_gameplayViewController; // +0x140 (8 bytes)  @"ADGameplayViewController"
}
@property (weak, nonatomic) ADGameplayViewController *gameplayViewController;  // ivar: _gameplayViewController
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000555c4
- (void)viewDidLoad;                                                                       // IMP 0x100055650
- (void)loadView;                                                                          // IMP 0x100055804
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x100055950
- (void)backButtonPressed;                                                                 // IMP 0x1000559ac
- (void)quitButtonTouched:(id)arg1;                                                        // IMP 0x1000559c0
- (void)validateButtonPressed:(id)arg1;                                                    // IMP 0x100055bbc
- (void).cxx_destruct;                                                                     // IMP 0x100055d74
- (id)gameplayViewController;                                                              // IMP 0x100055d40
- (void)setGameplayViewController:(id)arg1;                                                // IMP 0x100055d60
@end

@interface ADPersistentStats : NSObject   // instance size 64, class @0x100422a48
{
    NSString *_enemyStatsDataRef;            // +0x8 (8 bytes)  @"NSString"
    NSString *_totalsStatsDataRef;           // +0x10 (8 bytes)  @"NSString"
    NSString *_weaponsStatsDataRef;          // +0x18 (8 bytes)  @"NSString"
    NSString *_enemyBestiaryDataRef;         // +0x20 (8 bytes)  @"NSString"
    NSMutableArray *_unlockedEnemies;        // +0x28 (8 bytes)  @"NSMutableArray"
    NSDictionary *_bestiary;                 // +0x30 (8 bytes)  @"NSDictionary"
    NSDictionary *_enemies;                  // +0x38 (8 bytes)  @"NSDictionary"
}
@property (readonly, nonatomic) NSString *enemyStatsDataRef;  // ivar: _enemyStatsDataRef
@property (readonly, nonatomic) NSString *totalsStatsDataRef;  // ivar: _totalsStatsDataRef
@property (readonly, nonatomic) NSString *weaponsStatsDataRef;  // ivar: _weaponsStatsDataRef
@property (readonly, nonatomic) NSString *enemyBestiaryDataRef;  // ivar: _enemyBestiaryDataRef
@property (retain, nonatomic) NSMutableArray *unlockedEnemies;  // ivar: _unlockedEnemies
@property (retain) NSDictionary *bestiary;  // ivar: _bestiary
@property (retain) NSDictionary *enemies;  // ivar: _enemies
+ (id)persistentStats;                                                                     // IMP 0x100083aec
- (id)init;                                                                                // IMP 0x100083a28
- (id)buildFromDictionary:(id)arg1 ClearItems:(BOOL)arg2;                                  // IMP 0x100084608
- (id)getEnemyStatData;                                                                    // IMP 0x100084adc
- (id)getTotalStatData;                                                                    // IMP 0x100084ba0
- (id)getWeaponStatData;                                                                   // IMP 0x100084c64
- (unsigned long long)getEnemyKillsByName:(id)arg1;                                        // IMP 0x100084d28
- (int)getKillRequirementForEnemyWithName:(id)arg1;                                        // IMP 0x100084ea8
- (long long)getNumberOfZombiesUnlocked;                                                   // IMP 0x10008507c
- (void)saveEnemyData:(id)arg1;                                                            // IMP 0x1000850e4
- (id)getAllUnlockedEnemies;                                                               // IMP 0x100085dd4
- (id)getNextUnlockEnemy;                                                                  // IMP 0x100085fd0
- (void)saveEndlessModeKills:(int)arg1;                                                    // IMP 0x1000861e0
- (void)savePlayTimeData:(double)arg1 AndMode:(id)arg2;                                    // IMP 0x1000864b4
- (void)saveCoinsData:(long long)arg1;                                                     // IMP 0x1000869f4
- (void)saveDiamondsData:(long long)arg1;                                                  // IMP 0x100086c2c
- (void)saveShotsData:(id)arg1;                                                            // IMP 0x100086e64
- (void)saveWeaponsData:(id)arg1;                                                          // IMP 0x1000871b8
- (void)updateCounterStatsWithKey:(id)arg1;                                                // IMP 0x1000878f4
- (void)updateMissionsCompleted:(long long)arg1;                                           // IMP 0x100087b44
- (void)updateMissionsSkipped:(long long)arg1;                                             // IMP 0x100087d7c
- (void)updateDeaths;                                                                      // IMP 0x100087fb4
- (void)updateNumberOfWeaponsOwned;                                                        // IMP 0x1000881e4
- (id)gameTimeToString:(double)arg1;                                                       // IMP 0x100088414
- (id)updateTotalPlayTime:(double)arg1 WithKey:(id)arg2;                                   // IMP 0x1000884c0
- (id)updateLongestEndlessPlayTime:(double)arg1;                                           // IMP 0x100088740
- (unsigned long long)computeTotalEnemyKillCount;                                          // IMP 0x10008895c
- (long long)computeChallengesWonAndSave;                                                  // IMP 0x100088b54
- (int)highScore;                                                                          // IMP 0x100088d80
- (void)saveScore:(int)arg1;                                                               // IMP 0x100088df8
- (id)getEnemyListWithKillsGreaterThan:(long long)arg1;                                    // IMP 0x100088edc
- (id)getUnlockedWeapons;                                                                  // IMP 0x100089188
- (long long)getTotalTimePlayed;                                                           // IMP 0x100089488
- (id)nearestDiscreteTime:(long long)arg1;                                                 // IMP 0x100089704
- (void).cxx_destruct;                                                                     // IMP 0x100089ae4
- (id)enemyStatsDataRef;                                                                   // IMP 0x100089a24
- (id)totalsStatsDataRef;                                                                  // IMP 0x100089a34
- (id)weaponsStatsDataRef;                                                                 // IMP 0x100089a44
- (id)enemyBestiaryDataRef;                                                                // IMP 0x100089a54
- (id)unlockedEnemies;                                                                     // IMP 0x100089a64
- (void)setUnlockedEnemies:(id)arg1;                                                       // IMP 0x100089a74
- (id)bestiary;                                                                            // IMP 0x100089aac
- (void)setBestiary:(id)arg1;                                                              // IMP 0x100089abc
- (id)enemies;                                                                             // IMP 0x100089ac8
- (void)setEnemies:(id)arg1;                                                               // IMP 0x100089ad8
@end

@interface ADPlayMenuViewController : ADViewController   // instance size 368, class @0x1004232b8
{
    BOOL _animateCheck;                      // +0x140 (1 bytes)  B
    UIView *_endlessModeLockView;            // +0x148 (8 bytes)  @"UIView"
    UIButton *_endlessModeButton;            // +0x150 (8 bytes)  @"UIButton"
    UIButton *_challengeInfoButton;          // +0x158 (8 bytes)  @"UIButton"
    UIButton *_endlessInfoButton;            // +0x160 (8 bytes)  @"UIButton"
    ADSlidingView *_slidingView;             // +0x168 (8 bytes)  @"ADSlidingView"
}
@property (retain, nonatomic) UIView *endlessModeLockView;  // ivar: _endlessModeLockView
@property (retain, nonatomic) UIButton *endlessModeButton;  // ivar: _endlessModeButton
@property (retain, nonatomic) UIButton *challengeInfoButton;  // ivar: _challengeInfoButton
@property (retain, nonatomic) UIButton *endlessInfoButton;  // ivar: _endlessInfoButton
@property (retain, nonatomic) ADSlidingView *slidingView;  // ivar: _slidingView
@property () BOOL animateCheck;  // ivar: _animateCheck
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000aaf5c
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 shouldAnimate:(BOOL)arg3;                   // IMP 0x1000aafe8
- (void)viewDidLoad;                                                                       // IMP 0x1000ab0c4
- (void)loadView;                                                                          // IMP 0x1000ab45c
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x1000ab674
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000ab708
- (void)endlessModeButtonTouched:(id)arg1;                                                 // IMP 0x1000ab744
- (void)challengeButtonTouched:(id)arg1;                                                   // IMP 0x1000ab8c8
- (void)backButtonPressed;                                                                 // IMP 0x1000ab96c
- (void)playSound;                                                                         // IMP 0x1000aba0c
- (void)challengeInfoButtonPressed:(id)arg1;                                               // IMP 0x1000abb08
- (void)endlessInfoButtonPressed:(id)arg1;                                                 // IMP 0x1000abbc4
- (BOOL)accessibilityPerformMagicTap;                                                      // IMP 0x1000abc80
- (void).cxx_destruct;                                                                     // IMP 0x1000abeb8
- (id)endlessModeLockView;                                                                 // IMP 0x1000abd2c
- (void)setEndlessModeLockView:(id)arg1;                                                   // IMP 0x1000abd3c
- (id)endlessModeButton;                                                                   // IMP 0x1000abd74
- (void)setEndlessModeButton:(id)arg1;                                                     // IMP 0x1000abd84
- (id)challengeInfoButton;                                                                 // IMP 0x1000abdbc
- (void)setChallengeInfoButton:(id)arg1;                                                   // IMP 0x1000abdcc
- (id)endlessInfoButton;                                                                   // IMP 0x1000abe04
- (void)setEndlessInfoButton:(id)arg1;                                                     // IMP 0x1000abe14
- (id)slidingView;                                                                         // IMP 0x1000abe4c
- (void)setSlidingView:(id)arg1;                                                           // IMP 0x1000abe5c
- (BOOL)animateCheck;                                                                      // IMP 0x1000abe94
- (void)setAnimateCheck:(BOOL)arg1;                                                        // IMP 0x1000abea8
@end

@interface ADPlayer : NSObject   // instance size 60, class @0x100423628
{
    S3DPlayList *tinnitusPlaylist;           // +0x8 (8 bytes)  @"S3DPlayList"
    S3DSound *tinnitusSound;                 // +0x10 (8 bytes)  @"S3DSound"
    float tinnitusDuration;                  // +0x18 (4 bytes)  f
    float tinnitusTimer;                     // +0x1c (4 bytes)  f
    float tinnitusIntensity;                 // +0x20 (4 bytes)  f
    S3DPlayList *playerPlaylist;             // +0x28 (8 bytes)  @"S3DPlayList"
    float proximity_bpm;                     // +0x30 (4 bytes)  f
    float lastHeartbeat;                     // +0x34 (4 bytes)  f
    float totalTime;                         // +0x38 (4 bytes)  f
}
- (id)init;                                                                                // IMP 0x1000b647c
- (void)update:(float)arg1;                                                                // IMP 0x1000b660c
- (void)startTinitusWithIntensity:(float)arg1;                                             // IMP 0x1000b6940
- (void)startTinnitusWithDuration:(float)arg1 gain:(float)arg2;                            // IMP 0x1000b6984
- (void)stopTinnitus;                                                                      // IMP 0x1000b6b4c
- (void)dealloc;                                                                           // IMP 0x1000b6c10
- (void).cxx_destruct;                                                                     // IMP 0x1000b6cdc
@end

@interface ADPlayerStats : NSObject   // instance size 8, class @0x100423e70
@end

@interface ADPowerUp : NSObject   // instance size 32, class @0x100421238
{
    S3DPlayList *_playlist;                  // +0x8 (8 bytes)  @"S3DPlayList"
    NSString *_name;                         // +0x10 (8 bytes)  @"NSString"
    long long _type;                         // +0x18 (8 bytes)  q
}
@property (retain) S3DPlayList *playlist;  // ivar: _playlist
@property (retain) NSString *name;  // ivar: _name
@property () long long type;  // ivar: _type
- (id)initWithType:(int)arg1;                                                              // IMP 0x10001d8c0
- (void)preload;                                                                           // IMP 0x10001da24
- (void)use;                                                                               // IMP 0x10001da28
- (void)update:(float)arg1;                                                                // IMP 0x10001da8c
- (void)clean;                                                                             // IMP 0x10001da90
- (void)activate;                                                                          // IMP 0x10001db08
- (void).cxx_destruct;                                                                     // IMP 0x10001dce8
- (id)playlist;                                                                            // IMP 0x10001dc90
- (void)setPlaylist:(id)arg1;                                                              // IMP 0x10001dca0
- (id)name;                                                                                // IMP 0x10001dcac
- (void)setName:(id)arg1;                                                                  // IMP 0x10001dcbc
- (long long)type;                                                                         // IMP 0x10001dcc8
- (void)setType:(long long)arg1;                                                           // IMP 0x10001dcd8
@end

@interface ADPowerUpContainer : ADPasserBy   // instance size 12, class @0x100422188
{
    int _powerUpType;                        // +0x8 (4 bytes)  i
}
@property (nonatomic) int powerUpType;  // ivar: _powerUpType
- (void)update:(float)arg1;                                                                // IMP 0x100069880
- (void)spawn;                                                                             // IMP 0x100069a90
- (void)die;                                                                               // IMP 0x100069b80
- (BOOL)canBeShotAt;                                                                       // IMP 0x100069c14
- (void)startBeeping;                                                                      // IMP 0x100069c7c
- (void)removePowerUp;                                                                     // IMP 0x100069cc4
- (unsigned long long)getType;                                                             // IMP 0x100069d90
- (int)powerUpType;                                                                        // IMP 0x100069dcc
- (void)setPowerUpType:(int)arg1;                                                          // IMP 0x100069ddc
@end

@interface ADPowerUpManager : NSObject   // instance size 12, class @0x100421c88
{
    float powerupCoolDown;                   // +0x8 (4 bytes)  f
}
- (id)init;                                                                                // IMP 0x10004b524
- (void)update:(float)arg1;                                                                // IMP 0x10004b5a4
- (void)resetPowerUpCooldown;                                                              // IMP 0x10004b640
- (void)tryToPopPowerUp;                                                                   // IMP 0x10004b868
- (void)popPowerUpWithType:(int)arg1;                                                      // IMP 0x10004b8c4
@end

@interface ADProjectile : NSObject   // instance size 104, class @0x100421e68
{
    S3DPlayList *playlist;                   // +0x8 (8 bytes)  @"S3DPlayList"
    S3DSound *movingSound;                   // +0x10 (8 bytes)  @"S3DSound"
    NSString *soundsPrefix;                  // +0x18 (8 bytes)  @"NSString"
    float speed;                             // +0x20 (4 bytes)  f
    float squaredDistanceToCover;            // +0x24 (4 bytes)  f
    float ttl;                               // +0x28 (4 bytes)  f
    CGPoint orientation;                     // +0x30 (16 bytes)  {CGPoint="x"d"y"d}
    int _state;                              // +0x40 (4 bytes)  i
    int _tag;                                // +0x44 (4 bytes)  i
    float _timeInState;                      // +0x48 (4 bytes)  f
    float _explosionRadius;                  // +0x4c (4 bytes)  f
    ADWeapon *_weapon;                       // +0x50 (8 bytes)  @"ADWeapon"
    CGPoint _position;                       // +0x58 (16 bytes)  {CGPoint="x"d"y"d}
}
@property () CGPoint position;  // ivar: _position
@property (nonatomic) int state;  // ivar: _state
@property () int tag;  // ivar: _tag
@property () float timeInState;  // ivar: _timeInState
@property () float explosionRadius;  // ivar: _explosionRadius
@property (weak) ADWeapon *weapon;  // ivar: _weapon
- (id)initWithSpeed:(float)arg1 squaredDistanceToCover:(float)arg2 timeToLive:(float)arg3 soundsPrefix:(id)arg4 orientation:(CGPoint)arg5; // IMP 0x100053660
- (void)update:(float)arg1;                                                                // IMP 0x100053804
- (void)move;                                                                              // IMP 0x100053a54
- (void)playCountDown;                                                                     // IMP 0x100053af4
- (void)explode;                                                                           // IMP 0x100053be0
- (void)setState:(int)arg1;                                                                // IMP 0x100053d54
- (void).cxx_destruct;                                                                     // IMP 0x100053eb0
- (id).cxx_construct;                                                                      // IMP 0x100053f14
- (CGPoint)position;                                                                       // IMP 0x100053d84
- (void)setPosition:(CGPoint)arg1;                                                         // IMP 0x100053dc0
- (int)state;                                                                              // IMP 0x100053dfc
- (int)tag;                                                                                // IMP 0x100053e0c
- (void)setTag:(int)arg1;                                                                  // IMP 0x100053e1c
- (float)timeInState;                                                                      // IMP 0x100053e2c
- (void)setTimeInState:(float)arg1;                                                        // IMP 0x100053e40
- (float)explosionRadius;                                                                  // IMP 0x100053e54
- (void)setExplosionRadius:(float)arg1;                                                    // IMP 0x100053e68
- (id)weapon;                                                                              // IMP 0x100053e7c
- (void)setWeapon:(id)arg1;                                                                // IMP 0x100053e9c
@end

@interface ADPurchaseConfirmationViewController : ADViewController   // instance size 360, class @0x100423df8
{
    NSDictionary *_weaponDict;               // +0x140 (8 bytes)  @"NSDictionary"
    UILabel *_weaponLabel;                   // +0x148 (8 bytes)  @"UILabel"
    UIButton *_purchaseButton;               // +0x150 (8 bytes)  @"UIButton"
    UIButton *_cancelButton;                 // +0x158 (8 bytes)  @"UIButton"
    UIView *_popupView;                      // +0x160 (8 bytes)  @"UIView"
}
@property (retain, nonatomic) NSDictionary *weaponDict;  // ivar: _weaponDict
@property (retain, nonatomic) UILabel *weaponLabel;  // ivar: _weaponLabel
@property (retain, nonatomic) UIButton *purchaseButton;  // ivar: _purchaseButton
@property (retain, nonatomic) UIButton *cancelButton;  // ivar: _cancelButton
@property (retain, nonatomic) UIView *popupView;  // ivar: _popupView
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x1000dc9d0
- (void)viewDidLoad;                                                                       // IMP 0x1000dca84
- (void)purchaseButtonPressed:(id)arg1;                                                    // IMP 0x1000dcc20
- (void)cancelButtonPressed:(id)arg1;                                                      // IMP 0x1000dd4a0
- (void).cxx_destruct;                                                                     // IMP 0x1000dd638
- (id)weaponDict;                                                                          // IMP 0x1000dd4d0
- (void)setWeaponDict:(id)arg1;                                                            // IMP 0x1000dd4e0
- (id)weaponLabel;                                                                         // IMP 0x1000dd518
- (void)setWeaponLabel:(id)arg1;                                                           // IMP 0x1000dd528
- (id)purchaseButton;                                                                      // IMP 0x1000dd560
- (void)setPurchaseButton:(id)arg1;                                                        // IMP 0x1000dd570
- (id)cancelButton;                                                                        // IMP 0x1000dd5a8
- (void)setCancelButton:(id)arg1;                                                          // IMP 0x1000dd5b8
- (id)popupView;                                                                           // IMP 0x1000dd5f0
- (void)setPopupView:(id)arg1;                                                             // IMP 0x1000dd600
@end

@interface ADReviveViewController : ADNoBarViewController   // instance size 384, class @0x100421378
{
    int cost;                                // +0x140 (4 bytes)  i
    S3DPlayList *revivePlaylist;             // +0x148 (8 bytes)  @"S3DPlayList"
    S3DSound *reviveStandBySound;            // +0x150 (8 bytes)  @"S3DSound"
    ADGameplayViewController *_gameplayViewController; // +0x158 (8 bytes)  @"ADGameplayViewController"
    ADButtonWithFont *_reviveButton;         // +0x160 (8 bytes)  @"ADButtonWithFont"
    UIButton *_gameOverButton;               // +0x168 (8 bytes)  @"UIButton"
    UITextView *_tipTextView;                // +0x170 (8 bytes)  @"UITextView"
    UITextView *_tipLabel;                   // +0x178 (8 bytes)  @"UITextView"
}
@property (weak) ADGameplayViewController *gameplayViewController;  // ivar: _gameplayViewController
@property (retain, nonatomic) ADButtonWithFont *reviveButton;  // ivar: _reviveButton
@property (retain, nonatomic) UIButton *gameOverButton;  // ivar: _gameOverButton
@property (retain, nonatomic) UITextView *tipTextView;  // ivar: _tipTextView
@property (retain, nonatomic) UITextView *tipLabel;  // ivar: _tipLabel
- (id)initWithCost:(int)arg1;                                                              // IMP 0x100021168
- (void)viewDidLoad;                                                                       // IMP 0x100021284
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x100021794
- (void)reviveButtonPressed:(id)arg1;                                                      // IMP 0x1000218a8
- (void)gameOverButtonPressed:(id)arg1;                                                    // IMP 0x100021b3c
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100021c78
- (BOOL)accessibilityPerformMagicTap;                                                      // IMP 0x100021cb4
- (void).cxx_destruct;                                                                     // IMP 0x100021e30
- (id)gameplayViewController;                                                              // IMP 0x100021cdc
- (void)setGameplayViewController:(id)arg1;                                                // IMP 0x100021cfc
- (id)reviveButton;                                                                        // IMP 0x100021d10
- (void)setReviveButton:(id)arg1;                                                          // IMP 0x100021d20
- (id)gameOverButton;                                                                      // IMP 0x100021d58
- (void)setGameOverButton:(id)arg1;                                                        // IMP 0x100021d68
- (id)tipTextView;                                                                         // IMP 0x100021da0
- (void)setTipTextView:(id)arg1;                                                           // IMP 0x100021db0
- (id)tipLabel;                                                                            // IMP 0x100021de8
- (void)setTipLabel:(id)arg1;                                                              // IMP 0x100021df8
@end

@interface ADRotationBugFixView : UIView   // instance size 112, class @0x100422278
{
    UIImageView *_rouletteImageView;         // +0x68 (8 bytes)  @"UIImageView"
}
@property (retain, nonatomic) UIImageView *rouletteImageView;  // ivar: _rouletteImageView
- (void)layoutSubviews;                                                                    // IMP 0x10006dc38
- (void).cxx_destruct;                                                                     // IMP 0x10006dd80
- (id)rouletteImageView;                                                                   // IMP 0x10006dd38
- (void)setRouletteImageView:(id)arg1;                                                     // IMP 0x10006dd48
@end

@interface ADRouletteView : UIImageView   // instance size 160, class @0x100421148
{
    NSTimer *rouletteTimer;                  // +0x70 (8 bytes)  @"NSTimer"
    NSArray *rouletteItems;                  // +0x78 (8 bytes)  @"NSArray"
    BOOL launched;                           // +0x80 (1 bytes)  B
    BOOL adjusted;                           // +0x81 (1 bytes)  B
    int numberOfItems;                       // +0x84 (4 bytes)  i
    int selectedItemIndex;                   // +0x88 (4 bytes)  i
    BOOL _revert;                            // +0x8c (1 bytes)  B
    float _speed;                            // +0x90 (4 bytes)  f
    ADScenarioRouletteViewController *_scenarioViewController; // +0x98 (8 bytes)  @"ADScenarioRouletteViewController"
}
@property () float speed;  // ivar: _speed
@property () BOOL revert;  // ivar: _revert
@property (weak) ADScenarioRouletteViewController *scenarioViewController;  // ivar: _scenarioViewController
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x10001ad4c
- (void)awakeFromNib;                                                                      // IMP 0x10001ad88
- (void)initItemsWithArray:(id)arg1;                                                       // IMP 0x10001ae0c
- (void)update;                                                                            // IMP 0x10001b340
- (void)rotateWheel;                                                                       // IMP 0x10001b350
- (void)centerBadRouletteOnClosestItem;                                                    // IMP 0x10001b4f4
- (id)selectedItemDictionary;                                                              // IMP 0x10001b880
- (void)resetSelectedItem;                                                                 // IMP 0x10001b8d0
- (void)launchRoulette;                                                                    // IMP 0x10001b8e4
- (BOOL)isStopped;                                                                         // IMP 0x10001b968
- (void)deactivate;                                                                        // IMP 0x10001b99c
- (void)layoutSubviews;                                                                    // IMP 0x10001ba74
- (void).cxx_destruct;                                                                     // IMP 0x10001bb94
- (float)speed;                                                                            // IMP 0x10001bb14
- (void)setSpeed:(float)arg1;                                                              // IMP 0x10001bb28
- (BOOL)revert;                                                                            // IMP 0x10001bb3c
- (void)setRevert:(BOOL)arg1;                                                              // IMP 0x10001bb50
- (id)scenarioViewController;                                                              // IMP 0x10001bb60
- (void)setScenarioViewController:(id)arg1;                                                // IMP 0x10001bb80
@end

@interface ADScenarioRouletteViewController : ADViewController   // instance size 424, class @0x100423308
{
    NSTimer *goodNewsTimer;                  // +0x140 (8 bytes)  @"NSTimer"
    CGPoint goodRouletteCenter;              // +0x148 (16 bytes)  {CGPoint="x"d"y"d}
    BOOL goodNewsRolled;                     // +0x158 (1 bytes)  B
    ADRouletteView *_goodRoulette;           // +0x160 (8 bytes)  @"ADRouletteView"
    ADRouletteView *_badRoulette;            // +0x168 (8 bytes)  @"ADRouletteView"
    UILabel *_badNewsLabel;                  // +0x170 (8 bytes)  @"UILabel"
    UILabel *_goodNewsLabel;                 // +0x178 (8 bytes)  @"UILabel"
    UIButton *_playButton;                   // +0x180 (8 bytes)  @"UIButton"
    ADButtonWithFont *_rerollGoodNewsButton; // +0x188 (8 bytes)  @"ADButtonWithFont"
    ADButtonWithFont *_removeBadNews;        // +0x190 (8 bytes)  @"ADButtonWithFont"
    UILabel *_goodNewsTitle;                 // +0x198 (8 bytes)  @"UILabel"
    UILabel *_badNewsTitle;                  // +0x1a0 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) ADRouletteView *goodRoulette;  // ivar: _goodRoulette
@property (retain, nonatomic) ADRouletteView *badRoulette;  // ivar: _badRoulette
@property (retain, nonatomic) UILabel *badNewsLabel;  // ivar: _badNewsLabel
@property (retain, nonatomic) UILabel *goodNewsLabel;  // ivar: _goodNewsLabel
@property (retain, nonatomic) UIButton *playButton;  // ivar: _playButton
@property (retain, nonatomic) ADButtonWithFont *rerollGoodNewsButton;  // ivar: _rerollGoodNewsButton
@property (retain, nonatomic) ADButtonWithFont *removeBadNews;  // ivar: _removeBadNews
@property (retain, nonatomic) UILabel *goodNewsTitle;  // ivar: _goodNewsTitle
@property (retain, nonatomic) UILabel *badNewsTitle;  // ivar: _badNewsTitle
- (void)playButtonTouched:(id)arg1;                                                        // IMP 0x1000abf34
- (void)applyBothModifiers;                                                                // IMP 0x1000ac0cc
- (void)applyRouletteModifier:(id)arg1;                                                    // IMP 0x1000ac308
- (void)rerollBadNews:(id)arg1;                                                            // IMP 0x1000ac5dc
- (void)rerollGoodNews:(id)arg1;                                                           // IMP 0x1000ac940
- (void)rouletteDidStop:(id)arg1;                                                          // IMP 0x1000acdd8
- (void)viewDidLoad;                                                                       // IMP 0x1000ad5bc
- (void)update;                                                                            // IMP 0x1000addfc
- (void)checkPlayButton;                                                                   // IMP 0x1000ae020
- (id)timeStringFromSeconds:(int)arg1;                                                     // IMP 0x1000ae2c0
- (void)dealloc;                                                                           // IMP 0x1000ae3a0
- (void).cxx_destruct;                                                                     // IMP 0x1000ae7d4
- (id).cxx_construct;                                                                      // IMP 0x1000ae8b4
- (id)goodRoulette;                                                                        // IMP 0x1000ae54c
- (void)setGoodRoulette:(id)arg1;                                                          // IMP 0x1000ae55c
- (id)badRoulette;                                                                         // IMP 0x1000ae594
- (void)setBadRoulette:(id)arg1;                                                           // IMP 0x1000ae5a4
- (id)badNewsLabel;                                                                        // IMP 0x1000ae5dc
- (void)setBadNewsLabel:(id)arg1;                                                          // IMP 0x1000ae5ec
- (id)goodNewsLabel;                                                                       // IMP 0x1000ae624
- (void)setGoodNewsLabel:(id)arg1;                                                         // IMP 0x1000ae634
- (id)playButton;                                                                          // IMP 0x1000ae66c
- (void)setPlayButton:(id)arg1;                                                            // IMP 0x1000ae67c
- (id)rerollGoodNewsButton;                                                                // IMP 0x1000ae6b4
- (void)setRerollGoodNewsButton:(id)arg1;                                                  // IMP 0x1000ae6c4
- (id)removeBadNews;                                                                       // IMP 0x1000ae6fc
- (void)setRemoveBadNews:(id)arg1;                                                         // IMP 0x1000ae70c
- (id)goodNewsTitle;                                                                       // IMP 0x1000ae744
- (void)setGoodNewsTitle:(id)arg1;                                                         // IMP 0x1000ae754
- (id)badNewsTitle;                                                                        // IMP 0x1000ae78c
- (void)setBadNewsTitle:(id)arg1;                                                          // IMP 0x1000ae79c
@end

@interface ADScoreFeedbackViewController : ADNoBarViewController   // instance size 352, class @0x1004234e8
{
    ADEnemy *enemy;                          // +0x140 (8 bytes)  @"ADEnemy"
    int combo;                               // +0x148 (4 bytes)  i
    int type;                                // +0x14c (4 bytes)  i
    UILabel *_titleLabel;                    // +0x150 (8 bytes)  @"UILabel"
    UILabel *_scoreLabel;                    // +0x158 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UILabel *titleLabel;  // ivar: _titleLabel
@property (retain, nonatomic) UILabel *scoreLabel;  // ivar: _scoreLabel
- (id)initWithEnemi:(id)arg1 combo:(int)arg2;                                              // IMP 0x1000b1cd0
- (id)initWithCritical;                                                                    // IMP 0x1000b1d9c
- (void)viewDidLoad;                                                                       // IMP 0x1000b1e24
- (void)fadeAndRemove;                                                                     // IMP 0x1000b20c4
- (void)dealloc;                                                                           // IMP 0x1000b2280
- (void).cxx_destruct;                                                                     // IMP 0x1000b239c
- (id)titleLabel;                                                                          // IMP 0x1000b230c
- (void)setTitleLabel:(id)arg1;                                                            // IMP 0x1000b231c
- (id)scoreLabel;                                                                          // IMP 0x1000b2354
- (void)setScoreLabel:(id)arg1;                                                            // IMP 0x1000b2364
@end

@interface ADSettingsViewController : ADViewController   // instance size 336, class @0x1004233f8
{
    UIView *_controlSchemeView;              // +0x140 (8 bytes)  @"UIView"
    ADControlSchemeViewController *_controlScheme; // +0x148 (8 bytes)  @"ADControlSchemeViewController"
}
@property (retain, nonatomic) UIView *controlSchemeView;  // ivar: _controlSchemeView
@property (retain) ADControlSchemeViewController *controlScheme;  // ivar: _controlScheme
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000af12c
- (void)viewDidLoad;                                                                       // IMP 0x1000af1b8
- (void)loadView;                                                                          // IMP 0x1000af3dc
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x1000af4e0
- (void)addControlSchemePanel;                                                             // IMP 0x1000af5b8
- (void)dealloc;                                                                           // IMP 0x1000af878
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000af90c
- (void)backButtonPressed;                                                                 // IMP 0x1000af948
- (void)validateButtonPressed:(id)arg1;                                                    // IMP 0x1000afa58
- (void).cxx_destruct;                                                                     // IMP 0x1000afae4
- (id)controlSchemeView;                                                                   // IMP 0x1000afa80
- (void)setControlSchemeView:(id)arg1;                                                     // IMP 0x1000afa90
- (id)controlScheme;                                                                       // IMP 0x1000afac8
- (void)setControlScheme:(id)arg1;                                                         // IMP 0x1000afad8
@end

@interface ADShakeDetector : NSObject   // instance size 24, class @0x100423c68
{
    CMMotionManager *motionManager;          // +0x8 (8 bytes)  @"CMMotionManager"
    ADWeaponManager *_weaponManager;         // +0x10 (8 bytes)  @"ADWeaponManager"
}
@property (retain, nonatomic) ADWeaponManager *weaponManager;  // ivar: _weaponManager
- (id)init;                                                                                // IMP 0x1000d7d14
- (void)motionMethod:(id)arg1;                                                             // IMP 0x1000d7f04
- (void)stopMotionManager;                                                                 // IMP 0x1000d80b0
- (void).cxx_destruct;                                                                     // IMP 0x1000d8138
- (id)weaponManager;                                                                       // IMP 0x1000d80f0
- (void)setWeaponManager:(id)arg1;                                                         // IMP 0x1000d8100
@end

@interface ADSingleEnemyBrickLoader : NSObject   // instance size 8, class @0x1004230b0
+ (id)loadBrickWithSingleEnemyName:(id)arg1;                                               // IMP 0x10009e7d4
@end

@interface ADSlidingView : UIView   // instance size 144, class @0x100421da0
{
    CGPoint originalCenter;                  // +0x68 (16 bytes)  {CGPoint="x"d"y"d}
    id /*block*/ _slideCompletion;           // +0x78 (8 bytes)  @?
    NSNumber *_xCenter;                      // +0x80 (8 bytes)  @"NSNumber"
    NSNumber *_yCenter;                      // +0x88 (8 bytes)  @"NSNumber"
}
@property (copy, nonatomic) id /*block*/ slideCompletion;  // ivar: _slideCompletion
@property (retain, nonatomic) NSNumber *xCenter;  // ivar: _xCenter
@property (retain, nonatomic) NSNumber *yCenter;  // ivar: _yCenter
- (void)awakeFromNib;                                                                      // IMP 0x10004f17c
- (void)slide;                                                                             // IMP 0x10004f190
- (void).cxx_destruct;                                                                     // IMP 0x10004f6f4
- (id).cxx_construct;                                                                      // IMP 0x10004f748
- (id /*block*/)slideCompletion;                                                           // IMP 0x10004f648
- (void)setSlideCompletion:(id /*block*/)arg1;                                             // IMP 0x10004f658
- (id)xCenter;                                                                             // IMP 0x10004f664
- (void)setXCenter:(id)arg1;                                                               // IMP 0x10004f674
- (id)yCenter;                                                                             // IMP 0x10004f6ac
- (void)setYCenter:(id)arg1;                                                               // IMP 0x10004f6bc
@end

@interface ADSlowMotionPowerUp : ADPowerUp   // instance size 8, class @0x100423218
- (void)preload;                                                                           // IMP 0x1000a6cbc
- (void)use;                                                                               // IMP 0x1000a6dac
- (void)clean;                                                                             // IMP 0x1000a6e84
@end

@interface ADSound : NSObject   // instance size 128, class @0x100423588
{
    S3DPlayList *playlist;                   // +0x8 (8 bytes)  @"S3DPlayList"
    float squaredDistanceFromFinalPosition;  // +0x10 (4 bytes)  f
    BOOL soundWasPlaying;                    // +0x14 (1 bytes)  B
    BOOL startedMainMenuMusic;               // +0x15 (1 bytes)  B
    BOOL _loop;                              // +0x16 (1 bytes)  B
    BOOL _blocker;                           // +0x17 (1 bytes)  B
    BOOL _stopsOtherSounds;                  // +0x18 (1 bytes)  B
    BOOL _skippable;                         // +0x19 (1 bytes)  B
    float _speed;                            // +0x1c (4 bytes)  f
    float _spawn_time;                       // +0x20 (4 bytes)  f
    float _gain;                             // +0x24 (4 bytes)  f
    float _timeInState;                      // +0x28 (4 bytes)  f
    int _state;                              // +0x2c (4 bytes)  i
    float _startMusicBeforeEnd;              // +0x30 (4 bytes)  f
    NSString *_name;                         // +0x38 (8 bytes)  @"NSString"
    NSDictionary *_spawn_after;              // +0x40 (8 bytes)  @"NSDictionary"
    S3DSound *_sound;                        // +0x48 (8 bytes)  @"S3DSound"
    CGPoint _position;                       // +0x50 (16 bytes)  {CGPoint="x"d"y"d}
    CGPoint _finalPosition;                  // +0x60 (16 bytes)  {CGPoint="x"d"y"d}
    CGPoint _orientation;                    // +0x70 (16 bytes)  {CGPoint="x"d"y"d}
}
@property (nonatomic) float speed;  // ivar: _speed
@property (retain, nonatomic) NSString *name;  // ivar: _name
@property (nonatomic) float spawn_time;  // ivar: _spawn_time
@property (nonatomic) float gain;  // ivar: _gain
@property (nonatomic) CGPoint position;  // ivar: _position
@property (nonatomic) CGPoint finalPosition;  // ivar: _finalPosition
@property (nonatomic) CGPoint orientation;  // ivar: _orientation
@property () float timeInState;  // ivar: _timeInState
@property (retain, nonatomic) NSDictionary *spawn_after;  // ivar: _spawn_after
@property (nonatomic) int state;  // ivar: _state
@property (nonatomic) BOOL loop;  // ivar: _loop
@property (nonatomic) BOOL blocker;  // ivar: _blocker
@property (nonatomic) BOOL stopsOtherSounds;  // ivar: _stopsOtherSounds
@property (retain, nonatomic) S3DSound *sound;  // ivar: _sound
@property (nonatomic) BOOL skippable;  // ivar: _skippable
@property (nonatomic) float startMusicBeforeEnd;  // ivar: _startMusicBeforeEnd
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x1000b2d68
- (void)initSound;                                                                         // IMP 0x1000b3594
- (void)update:(float)arg1;                                                                // IMP 0x1000b3914
- (void)skip;                                                                              // IMP 0x1000b404c
- (void)finishSoundWithSkip:(BOOL)arg1;                                                    // IMP 0x1000b4060
- (void)play;                                                                              // IMP 0x1000b416c
- (void)stopWithNoCallback;                                                                // IMP 0x1000b4438
- (void)setState:(int)arg1;                                                                // IMP 0x1000b44f0
- (void)pause;                                                                             // IMP 0x1000b45c0
- (void)resume;                                                                            // IMP 0x1000b4674
- (void).cxx_destruct;                                                                     // IMP 0x1000b4974
- (id).cxx_construct;                                                                      // IMP 0x1000b49dc
- (float)speed;                                                                            // IMP 0x1000b46ec
- (void)setSpeed:(float)arg1;                                                              // IMP 0x1000b46fc
- (id)name;                                                                                // IMP 0x1000b470c
- (void)setName:(id)arg1;                                                                  // IMP 0x1000b471c
- (float)spawn_time;                                                                       // IMP 0x1000b4754
- (void)setSpawn_time:(float)arg1;                                                         // IMP 0x1000b4764
- (float)gain;                                                                             // IMP 0x1000b4774
- (void)setGain:(float)arg1;                                                               // IMP 0x1000b4784
- (CGPoint)position;                                                                       // IMP 0x1000b4794
- (void)setPosition:(CGPoint)arg1;                                                         // IMP 0x1000b47a8
- (CGPoint)finalPosition;                                                                  // IMP 0x1000b47bc
- (void)setFinalPosition:(CGPoint)arg1;                                                    // IMP 0x1000b47d0
- (CGPoint)orientation;                                                                    // IMP 0x1000b47e4
- (void)setOrientation:(CGPoint)arg1;                                                      // IMP 0x1000b47f8
- (float)timeInState;                                                                      // IMP 0x1000b480c
- (void)setTimeInState:(float)arg1;                                                        // IMP 0x1000b4820
- (id)spawn_after;                                                                         // IMP 0x1000b4834
- (void)setSpawn_after:(id)arg1;                                                           // IMP 0x1000b4844
- (int)state;                                                                              // IMP 0x1000b487c
- (BOOL)loop;                                                                              // IMP 0x1000b488c
- (void)setLoop:(BOOL)arg1;                                                                // IMP 0x1000b489c
- (BOOL)blocker;                                                                           // IMP 0x1000b48ac
- (void)setBlocker:(BOOL)arg1;                                                             // IMP 0x1000b48bc
- (BOOL)stopsOtherSounds;                                                                  // IMP 0x1000b48cc
- (void)setStopsOtherSounds:(BOOL)arg1;                                                    // IMP 0x1000b48dc
- (id)sound;                                                                               // IMP 0x1000b48ec
- (void)setSound:(id)arg1;                                                                 // IMP 0x1000b48fc
- (BOOL)skippable;                                                                         // IMP 0x1000b4934
- (void)setSkippable:(BOOL)arg1;                                                           // IMP 0x1000b4944
- (float)startMusicBeforeEnd;                                                              // IMP 0x1000b4954
- (void)setStartMusicBeforeEnd:(float)arg1;                                                // IMP 0x1000b4964
@end

@interface ADStarUnlockViewController : ADNoBarViewController   // instance size 408, class @0x1004237b8
{
    NSDictionary *starDictionary;            // +0x140 (8 bytes)  @"NSDictionary"
    int type;                                // +0x148 (4 bytes)  i
    NSString *challenge_id;                  // +0x150 (8 bytes)  @"NSString"
    unsigned long long horzVert;             // +0x158 (8 bytes)  Q
    UILabel *_starDescription;               // +0x160 (8 bytes)  @"UILabel"
    UIImageView *_starImage;                 // +0x168 (8 bytes)  @"UIImageView"
    UILabel *_lockedDescription;             // +0x170 (8 bytes)  @"UILabel"
    UIImageView *_blurImage;                 // +0x178 (8 bytes)  @"UIImageView"
    ADLabelWithCoins *_rewardLabel;          // +0x180 (8 bytes)  @"ADLabelWithCoins"
    UIImageView *_coinsImage;                // +0x188 (8 bytes)  @"UIImageView"
    UIImageView *_completedImage;            // +0x190 (8 bytes)  @"UIImageView"
}
@property (retain, nonatomic) UILabel *starDescription;  // ivar: _starDescription
@property (retain, nonatomic) UIImageView *starImage;  // ivar: _starImage
@property (retain, nonatomic) UILabel *lockedDescription;  // ivar: _lockedDescription
@property (retain, nonatomic) UIImageView *blurImage;  // ivar: _blurImage
@property (retain, nonatomic) ADLabelWithCoins *rewardLabel;  // ivar: _rewardLabel
@property (retain, nonatomic) UIImageView *coinsImage;  // ivar: _coinsImage
@property (retain, nonatomic) UIImageView *completedImage;  // ivar: _completedImage
- (id)initWithtype:(int)arg1 dictionary:(id)arg2 challenge_id:(id)arg3 orientation:(unsigned long long)arg4; // IMP 0x1000bdcfc
- (void)loadView;                                                                          // IMP 0x1000bde10
- (void)setUpOutlets;                                                                      // IMP 0x1000be1a8
- (void)viewDidLoad;                                                                       // IMP 0x1000be3b0
- (void)initStarContent;                                                                   // IMP 0x1000be494
- (void)setRewardToCompleted;                                                              // IMP 0x1000bea04
- (void)unlockStar;                                                                        // IMP 0x1000beb60
- (void)glow;                                                                              // IMP 0x1000bec68
- (void)showReward;                                                                        // IMP 0x1000bee7c
- (int)rewardValue;                                                                        // IMP 0x1000bf018
- (id)timeStringFromSeconds:(int)arg1;                                                     // IMP 0x1000bf094
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000bf174
- (void).cxx_destruct;                                                                     // IMP 0x1000bf3a8
- (id)starDescription;                                                                     // IMP 0x1000bf1b0
- (void)setStarDescription:(id)arg1;                                                       // IMP 0x1000bf1c0
- (id)starImage;                                                                           // IMP 0x1000bf1f8
- (void)setStarImage:(id)arg1;                                                             // IMP 0x1000bf208
- (id)lockedDescription;                                                                   // IMP 0x1000bf240
- (void)setLockedDescription:(id)arg1;                                                     // IMP 0x1000bf250
- (id)blurImage;                                                                           // IMP 0x1000bf288
- (void)setBlurImage:(id)arg1;                                                             // IMP 0x1000bf298
- (id)rewardLabel;                                                                         // IMP 0x1000bf2d0
- (void)setRewardLabel:(id)arg1;                                                           // IMP 0x1000bf2e0
- (id)coinsImage;                                                                          // IMP 0x1000bf318
- (void)setCoinsImage:(id)arg1;                                                            // IMP 0x1000bf328
- (id)completedImage;                                                                      // IMP 0x1000bf360
- (void)setCompletedImage:(id)arg1;                                                        // IMP 0x1000bf370
@end

@interface ADStatsCell : UITableViewCell   // instance size 144, class @0x100422c28
{
    UILabel *_keyLabel;                      // +0x68 (8 bytes)  @"UILabel"
    UILabel *_valueLabel;                    // +0x70 (8 bytes)  @"UILabel"
    UIView *_containerView;                  // +0x78 (8 bytes)  @"UIView"
    UIImageView *_backgroundKeyView;         // +0x80 (8 bytes)  @"UIImageView"
    UIImageView *_backgroundValueView;       // +0x88 (8 bytes)  @"UIImageView"
}
@property (retain) UILabel *keyLabel;  // ivar: _keyLabel
@property (retain) UILabel *valueLabel;  // ivar: _valueLabel
@property (retain) UIView *containerView;  // ivar: _containerView
@property (retain) UIImageView *backgroundKeyView;  // ivar: _backgroundKeyView
@property (retain) UIImageView *backgroundValueView;  // ivar: _backgroundValueView
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x10008c83c
- (void)addContainerViewConstraints;                                                       // IMP 0x10008d448
- (void)addKeyImageConstraintsToCell:(double)arg1;                                         // IMP 0x10008d800
- (void)addValueImageConstraintsToCell;                                                    // IMP 0x10008dbc8
- (void)addKeyLabelConstraints;                                                            // IMP 0x10008df8c
- (void)addValueLabelConstraints;                                                          // IMP 0x10008e350
- (void)keyLabelSize:(double)arg1;                                                         // IMP 0x10008e714
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x10008e8bc
- (void).cxx_destruct;                                                                     // IMP 0x10008e984
- (id)keyLabel;                                                                            // IMP 0x10008e8f8
- (void)setKeyLabel:(id)arg1;                                                              // IMP 0x10008e908
- (id)valueLabel;                                                                          // IMP 0x10008e914
- (void)setValueLabel:(id)arg1;                                                            // IMP 0x10008e924
- (id)containerView;                                                                       // IMP 0x10008e930
- (void)setContainerView:(id)arg1;                                                         // IMP 0x10008e940
- (id)backgroundKeyView;                                                                   // IMP 0x10008e94c
- (void)setBackgroundKeyView:(id)arg1;                                                     // IMP 0x10008e95c
- (id)backgroundValueView;                                                                 // IMP 0x10008e968
- (void)setBackgroundValueView:(id)arg1;                                                   // IMP 0x10008e978
@end

@interface ADStatsCell_iPhone4STableViewCell : UITableViewCell   // instance size 120, class @0x100421a58
{
    UILabel *_placeholderKey;                // +0x68 (8 bytes)  @"UILabel"
    UILabel *_placeholderValue;              // +0x70 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UILabel *placeholderKey;  // ivar: _placeholderKey
@property (retain, nonatomic) UILabel *placeholderValue;  // ivar: _placeholderValue
- (void)awakeFromNib;                                                                      // IMP 0x1000417b0
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x1000417b4
- (void).cxx_destruct;                                                                     // IMP 0x100041880
- (id)placeholderKey;                                                                      // IMP 0x1000417f0
- (void)setPlaceholderKey:(id)arg1;                                                        // IMP 0x100041800
- (id)placeholderValue;                                                                    // IMP 0x100041838
- (void)setPlaceholderValue:(id)arg1;                                                      // IMP 0x100041848
@end

@interface ADStatsCell_iPodTouch : UITableViewCell   // instance size 120, class @0x100423038
{
    UILabel *_placeholderKey;                // +0x68 (8 bytes)  @"UILabel"
    UILabel *_placeholderValue;              // +0x70 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UILabel *placeholderKey;  // ivar: _placeholderKey
@property (retain, nonatomic) UILabel *placeholderValue;  // ivar: _placeholderValue
- (void)awakeFromNib;                                                                      // IMP 0x10009e6c4
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x10009e6c8
- (void).cxx_destruct;                                                                     // IMP 0x10009e794
- (id)placeholderKey;                                                                      // IMP 0x10009e704
- (void)setPlaceholderKey:(id)arg1;                                                        // IMP 0x10009e714
- (id)placeholderValue;                                                                    // IMP 0x10009e74c
- (void)setPlaceholderValue:(id)arg1;                                                      // IMP 0x10009e75c
@end

@interface ADStatsHeader : UITableViewHeaderFooterView   // instance size 136, class @0x100422958
{
    UILabel *_headerTitleLabel;              // +0x68 (8 bytes)  @"UILabel"
    UIView *_containerView;                  // +0x70 (8 bytes)  @"UIView"
    UIImageView *_backgroundImageView;       // +0x78 (8 bytes)  @"UIImageView"
    long long _titleLabelInset;              // +0x80 (8 bytes)  q
}
@property (retain) UILabel *headerTitleLabel;  // ivar: _headerTitleLabel
@property (retain) UIView *containerView;  // ivar: _containerView
@property (retain) UIImageView *backgroundImageView;  // ivar: _backgroundImageView
@property () long long titleLabelInset;  // ivar: _titleLabelInset
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x10007ea10
- (id)init;                                                                                // IMP 0x10007ea90
- (id)initWithReuseIdentifier:(id)arg1;                                                    // IMP 0x10007eb10
- (void)customInit;                                                                        // IMP 0x10007ebbc
- (void)addContainerViewConstraints;                                                       // IMP 0x10007f224
- (void)addBackgroundImageConstraints;                                                     // IMP 0x10007f5dc
- (void)addTitleLabelConstraints;                                                          // IMP 0x10007f9a0
- (void).cxx_destruct;                                                                     // IMP 0x10007fc70
- (id)headerTitleLabel;                                                                    // IMP 0x10007fbfc
- (void)setHeaderTitleLabel:(id)arg1;                                                      // IMP 0x10007fc0c
- (id)containerView;                                                                       // IMP 0x10007fc18
- (void)setContainerView:(id)arg1;                                                         // IMP 0x10007fc28
- (id)backgroundImageView;                                                                 // IMP 0x10007fc34
- (void)setBackgroundImageView:(id)arg1;                                                   // IMP 0x10007fc44
- (long long)titleLabelInset;                                                              // IMP 0x10007fc50
- (void)setTitleLabelInset:(long long)arg1;                                                // IMP 0x10007fc60
@end

@interface ADStatsMultiCell : UITableViewCell   // instance size 216, class @0x1004221d8
{
    BOOL _isPopulated;                       // +0x68 (1 bytes)  B
    UIImageView *_subTitleBackgroundImage;   // +0x70 (8 bytes)  @"UIImageView"
    UILabel *_subTitleLabelCell;             // +0x78 (8 bytes)  @"UILabel"
    double _subTitleCellHeight;              // +0x80 (8 bytes)  d
    double _cellHeight;                      // +0x88 (8 bytes)  d
    double _cellOffset;                      // +0x90 (8 bytes)  d
    UIView *_containerView;                  // +0x98 (8 bytes)  @"UIView"
    UIImage *_keyImage;                      // +0xa0 (8 bytes)  @"UIImage"
    UIImage *_valueImage;                    // +0xa8 (8 bytes)  @"UIImage"
    double _subTitleLabelOffset;             // +0xb0 (8 bytes)  d
    NSMutableArray *_keys;                   // +0xb8 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_values;                 // +0xc0 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_keyLabels;              // +0xc8 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_valueLabels;            // +0xd0 (8 bytes)  @"NSMutableArray"
}
@property (retain) UIImageView *subTitleBackgroundImage;  // ivar: _subTitleBackgroundImage
@property (retain) UILabel *subTitleLabelCell;  // ivar: _subTitleLabelCell
@property () BOOL isPopulated;  // ivar: _isPopulated
@property () double subTitleCellHeight;  // ivar: _subTitleCellHeight
@property () double cellHeight;  // ivar: _cellHeight
@property () double cellOffset;  // ivar: _cellOffset
@property (retain) UIView *containerView;  // ivar: _containerView
@property (retain) UIImage *keyImage;  // ivar: _keyImage
@property (retain) UIImage *valueImage;  // ivar: _valueImage
@property () double subTitleLabelOffset;  // ivar: _subTitleLabelOffset
@property (retain) NSMutableArray *keys;  // ivar: _keys
@property (retain) NSMutableArray *values;  // ivar: _values
@property (retain) NSMutableArray *keyLabels;  // ivar: _keyLabels
@property (retain) NSMutableArray *valueLabels;  // ivar: _valueLabels
+ (double)defaultSubTitleLabelOffset;                                                      // IMP 0x10006a65c
+ (double)defaultSubTitleCellHeight;                                                       // IMP 0x10006a664
+ (double)defaultCellHeight;                                                               // IMP 0x10006a734
+ (double)defaultCellOffset;                                                               // IMP 0x10006a800
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;                              // IMP 0x100069dec
- (double)getHeight;                                                                       // IMP 0x10006a8c8
- (void)setContainerViewConstraints;                                                       // IMP 0x10006aa1c
- (void)setSubtitleConstraints;                                                            // IMP 0x10006add4
- (void)setBackgroundImageConstraints;                                                     // IMP 0x10006b1c8
- (void)populateWithSubtitleString:(id)arg1 Keys:(id)arg2 Values:(id)arg3;                 // IMP 0x10006b58c
- (id)row:(long long)arg1 WithKeyText:(id)arg2 andValueText:(id)arg3;                      // IMP 0x10006ba90
- (void)innerConstraintsForRow:(id)arg1;                                                   // IMP 0x10006bec4
- (void)outerConstraintsForRow:(long long)arg1 :(id)arg2;                                  // IMP 0x10006c664
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x10006cc14
- (void).cxx_destruct;                                                                     // IMP 0x10006ce10
- (id)subTitleBackgroundImage;                                                             // IMP 0x10006cc50
- (void)setSubTitleBackgroundImage:(id)arg1;                                               // IMP 0x10006cc60
- (id)subTitleLabelCell;                                                                   // IMP 0x10006cc6c
- (void)setSubTitleLabelCell:(id)arg1;                                                     // IMP 0x10006cc7c
- (BOOL)isPopulated;                                                                       // IMP 0x10006cc88
- (void)setIsPopulated:(BOOL)arg1;                                                         // IMP 0x10006cc9c
- (double)subTitleCellHeight;                                                              // IMP 0x10006ccac
- (void)setSubTitleCellHeight:(double)arg1;                                                // IMP 0x10006ccc0
- (double)cellHeight;                                                                      // IMP 0x10006ccd4
- (void)setCellHeight:(double)arg1;                                                        // IMP 0x10006cce8
- (double)cellOffset;                                                                      // IMP 0x10006ccfc
- (void)setCellOffset:(double)arg1;                                                        // IMP 0x10006cd10
- (id)containerView;                                                                       // IMP 0x10006cd24
- (void)setContainerView:(id)arg1;                                                         // IMP 0x10006cd34
- (id)keyImage;                                                                            // IMP 0x10006cd40
- (void)setKeyImage:(id)arg1;                                                              // IMP 0x10006cd50
- (id)valueImage;                                                                          // IMP 0x10006cd5c
- (void)setValueImage:(id)arg1;                                                            // IMP 0x10006cd6c
- (double)subTitleLabelOffset;                                                             // IMP 0x10006cd78
- (void)setSubTitleLabelOffset:(double)arg1;                                               // IMP 0x10006cd8c
- (id)keys;                                                                                // IMP 0x10006cda0
- (void)setKeys:(id)arg1;                                                                  // IMP 0x10006cdb0
- (id)values;                                                                              // IMP 0x10006cdbc
- (void)setValues:(id)arg1;                                                                // IMP 0x10006cdcc
- (id)keyLabels;                                                                           // IMP 0x10006cdd8
- (void)setKeyLabels:(id)arg1;                                                             // IMP 0x10006cde8
- (id)valueLabels;                                                                         // IMP 0x10006cdf4
- (void)setValueLabels:(id)arg1;                                                           // IMP 0x10006ce04
@end

@interface ADStatsMultiCell_iPhone4STableViewCell : UITableViewCell   // instance size 152, class @0x100422b88
{
    BOOL _isEnemyCell;                       // +0x68 (1 bytes)  B
    UILabel *_killsLabel;                    // +0x70 (8 bytes)  @"UILabel"
    UILabel *_accuracyLabel;                 // +0x78 (8 bytes)  @"UILabel"
    UILabel *_killsValueLabel;               // +0x80 (8 bytes)  @"UILabel"
    UILabel *_accuracyValueLabel;            // +0x88 (8 bytes)  @"UILabel"
    UILabel *_subTitleLabel;                 // +0x90 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UILabel *killsLabel;  // ivar: _killsLabel
@property (retain, nonatomic) UILabel *accuracyLabel;  // ivar: _accuracyLabel
@property (retain, nonatomic) UILabel *killsValueLabel;  // ivar: _killsValueLabel
@property (retain, nonatomic) UILabel *accuracyValueLabel;  // ivar: _accuracyValueLabel
@property (retain, nonatomic) UILabel *subTitleLabel;  // ivar: _subTitleLabel
@property () BOOL isEnemyCell;  // ivar: _isEnemyCell
- (void)awakeFromNib;                                                                      // IMP 0x10008b458
- (void)populateWithSubtitleString:(id)arg1 Values:(id)arg2;                               // IMP 0x10008b45c
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x10008b6e4
- (void).cxx_destruct;                                                                     // IMP 0x10008b8ac
- (id)killsLabel;                                                                          // IMP 0x10008b720
- (void)setKillsLabel:(id)arg1;                                                            // IMP 0x10008b730
- (id)accuracyLabel;                                                                       // IMP 0x10008b768
- (void)setAccuracyLabel:(id)arg1;                                                         // IMP 0x10008b778
- (id)killsValueLabel;                                                                     // IMP 0x10008b7b0
- (void)setKillsValueLabel:(id)arg1;                                                       // IMP 0x10008b7c0
- (id)accuracyValueLabel;                                                                  // IMP 0x10008b7f8
- (void)setAccuracyValueLabel:(id)arg1;                                                    // IMP 0x10008b808
- (id)subTitleLabel;                                                                       // IMP 0x10008b840
- (void)setSubTitleLabel:(id)arg1;                                                         // IMP 0x10008b850
- (BOOL)isEnemyCell;                                                                       // IMP 0x10008b888
- (void)setIsEnemyCell:(BOOL)arg1;                                                         // IMP 0x10008b89c
@end

@interface ADStatsPortalViewController : ADViewController <UIAlertViewDelegate>   // instance size 352, class @0x100423948
{
    UIButton *_zombipedia;                   // +0x140 (8 bytes)  @"UIButton"
    UIButton *_stats;                        // +0x148 (8 bytes)  @"UIButton"
    UIButton *_moreGames;                    // +0x150 (8 bytes)  @"UIButton"
    UIButton *_credits;                      // +0x158 (8 bytes)  @"UIButton"
}
@property (retain, nonatomic) UIButton *zombipedia;  // ivar: _zombipedia
@property (retain, nonatomic) UIButton *stats;  // ivar: _stats
@property (retain, nonatomic) UIButton *moreGames;  // ivar: _moreGames
@property (retain, nonatomic) UIButton *credits;  // ivar: _credits
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (void)viewDidLoad;                                                                       // IMP 0x1000c9010
- (void)loadView;                                                                          // IMP 0x1000c9314
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000c94ec
- (void)backButtonPressed;                                                                 // IMP 0x1000c9528
- (void)playSound;                                                                         // IMP 0x1000c9594
- (void)buttonPressed:(id)arg1;                                                            // IMP 0x1000c9690
- (void).cxx_destruct;                                                                     // IMP 0x1000c996c
- (id)zombipedia;                                                                          // IMP 0x1000c984c
- (void)setZombipedia:(id)arg1;                                                            // IMP 0x1000c985c
- (id)stats;                                                                               // IMP 0x1000c9894
- (void)setStats:(id)arg1;                                                                 // IMP 0x1000c98a4
- (id)moreGames;                                                                           // IMP 0x1000c98dc
- (void)setMoreGames:(id)arg1;                                                             // IMP 0x1000c98ec
- (id)credits;                                                                             // IMP 0x1000c9924
- (void)setCredits:(id)arg1;                                                               // IMP 0x1000c9934
@end

@interface ADStatsViewController : ADViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 400, class @0x100423a38
{
    BOOL _dataLoaded;                        // +0x140 (1 bytes)  B
    UITableView *_tableView;                 // +0x148 (8 bytes)  @"UITableView"
    NSDictionary *_globalData;               // +0x150 (8 bytes)  @"NSDictionary"
    NSDictionary *_endlessModeData;          // +0x158 (8 bytes)  @"NSDictionary"
    NSArray *_weaponsData;                   // +0x160 (8 bytes)  @"NSArray"
    NSArray *_enemiesData;                   // +0x168 (8 bytes)  @"NSArray"
    NSArray *_endlessModeStatsOrdering;      // +0x170 (8 bytes)  @"NSArray"
    NSArray *_globalStatsOrdering;           // +0x178 (8 bytes)  @"NSArray"
    NSMutableArray *_enemyCells;             // +0x180 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_weaponCells;            // +0x188 (8 bytes)  @"NSMutableArray"
}
@property (weak, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (retain) NSDictionary *globalData;  // ivar: _globalData
@property (retain) NSDictionary *endlessModeData;  // ivar: _endlessModeData
@property (retain) NSArray *weaponsData;  // ivar: _weaponsData
@property (retain) NSArray *enemiesData;  // ivar: _enemiesData
@property (retain) NSArray *endlessModeStatsOrdering;  // ivar: _endlessModeStatsOrdering
@property (retain) NSArray *globalStatsOrdering;  // ivar: _globalStatsOrdering
@property (retain) NSMutableArray *enemyCells;  // ivar: _enemyCells
@property (retain) NSMutableArray *weaponCells;  // ivar: _weaponCells
@property () BOOL dataLoaded;  // ivar: _dataLoaded
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000cc5a0
- (void)viewDidLoad;                                                                       // IMP 0x1000cc88c
- (void)loadView;                                                                          // IMP 0x1000cd1f0
- (void)viewWillDisappear:(BOOL)arg1;                                                      // IMP 0x1000cd2f4
- (void)handleAppEnteringBackground:(id)arg1;                                              // IMP 0x1000cd304
- (void)handleAppEnteringForeground:(id)arg1;                                              // IMP 0x1000cd408
- (void)loadData;                                                                          // IMP 0x1000cd44c
- (void)loadEnemies;                                                                       // IMP 0x1000cd7a0
- (void)loadWeapons;                                                                       // IMP 0x1000ce288
- (void)createSectionsForWeapons;                                                          // IMP 0x1000ceecc
- (void)createSectionsForEnemies;                                                          // IMP 0x1000cf7cc
- (void)createGlobalSection;                                                               // IMP 0x1000cfc5c
- (void)createEndlessModeSection;                                                          // IMP 0x1000cff5c
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000d025c
- (void)backButtonPressed;                                                                 // IMP 0x1000d0298
- (id)configureGlobalCell:(id)arg1 ForRow:(long long)arg2;                                 // IMP 0x1000d0304
- (id)configureEndlessModeCell:(id)arg1 ForRow:(long long)arg2;                            // IMP 0x1000d0740
- (id)formattedScoreFromInt:(int)arg1;                                                     // IMP 0x1000d0b0c
- (void)configureEnemyCell:(id)arg1 ForRow:(long long)arg2;                                // IMP 0x1000d0bf4
- (void)configureWeaponCell:(id)arg1 ForRow:(long long)arg2;                               // IMP 0x1000d0ff0
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x1000d147c
- (void)tableView:(id)arg1 willDisplayCell:(id)arg2 forRowAtIndexPath:(id)arg3;            // IMP 0x1000d2604
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x1000d269c
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x1000d26a4
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;                     // IMP 0x1000d280c
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x1000d2930
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;                           // IMP 0x1000d2c28
- (void).cxx_destruct;                                                                     // IMP 0x1000d2f18
- (id)tableView;                                                                           // IMP 0x1000d2de0
- (void)setTableView:(id)arg1;                                                             // IMP 0x1000d2e00
- (id)globalData;                                                                          // IMP 0x1000d2e14
- (void)setGlobalData:(id)arg1;                                                            // IMP 0x1000d2e24
- (id)endlessModeData;                                                                     // IMP 0x1000d2e30
- (void)setEndlessModeData:(id)arg1;                                                       // IMP 0x1000d2e40
- (id)weaponsData;                                                                         // IMP 0x1000d2e4c
- (void)setWeaponsData:(id)arg1;                                                           // IMP 0x1000d2e5c
- (id)enemiesData;                                                                         // IMP 0x1000d2e68
- (void)setEnemiesData:(id)arg1;                                                           // IMP 0x1000d2e78
- (id)endlessModeStatsOrdering;                                                            // IMP 0x1000d2e84
- (void)setEndlessModeStatsOrdering:(id)arg1;                                              // IMP 0x1000d2e94
- (id)globalStatsOrdering;                                                                 // IMP 0x1000d2ea0
- (void)setGlobalStatsOrdering:(id)arg1;                                                   // IMP 0x1000d2eb0
- (id)enemyCells;                                                                          // IMP 0x1000d2ebc
- (void)setEnemyCells:(id)arg1;                                                            // IMP 0x1000d2ecc
- (id)weaponCells;                                                                         // IMP 0x1000d2ed8
- (void)setWeaponCells:(id)arg1;                                                           // IMP 0x1000d2ee8
- (BOOL)dataLoaded;                                                                        // IMP 0x1000d2ef4
- (void)setDataLoaded:(BOOL)arg1;                                                          // IMP 0x1000d2f08
@end

@interface ADStatusBarViewController : UIViewController   // instance size 456, class @0x1004211e8
{
    NSTimer *animationTimerForCoins;         // +0x140 (8 bytes)  @"NSTimer"
    float coinsFloatValue;                   // +0x148 (4 bytes)  f
    float coinsStep;                         // +0x14c (4 bytes)  f
    int coinsWantedValue;                    // +0x150 (4 bytes)  i
    CGPoint animationCenter;                 // +0x158 (16 bytes)  {CGPoint="x"d"y"d}
    int coinAnimationRatio;                  // +0x168 (4 bytes)  i
    NSTimer *animationTimerForDiamonds;      // +0x170 (8 bytes)  @"NSTimer"
    float diamondsFloatValue;                // +0x178 (4 bytes)  f
    float diamondsStep;                      // +0x17c (4 bytes)  f
    int diamondsWantedValue;                 // +0x180 (4 bytes)  i
    BOOL _armoryLoadoutEnabled;              // +0x184 (1 bytes)  B
    ADNoBarViewController *_delegate;        // +0x188 (8 bytes)  @"ADNoBarViewController"
    UILabel *_coinsLabel;                    // +0x190 (8 bytes)  @"UILabel"
    UILabel *_diamondsLabel;                 // +0x198 (8 bytes)  @"UILabel"
    UILabel *_pageTitle;                     // +0x1a0 (8 bytes)  @"UILabel"
    UIButton *_armoryButton;                 // +0x1a8 (8 bytes)  @"UIButton"
    ADSlidingView *_currenciesView;          // +0x1b0 (8 bytes)  @"ADSlidingView"
    ADButtonWithFont *_backButton;           // +0x1b8 (8 bytes)  @"ADButtonWithFont"
    id<ADBackAction> _backButtonDelegate;    // +0x1c0 (8 bytes)  @"<ADBackAction>"
}
@property (weak, nonatomic) ADNoBarViewController *delegate;  // ivar: _delegate
@property (retain, nonatomic) UILabel *coinsLabel;  // ivar: _coinsLabel
@property (retain, nonatomic) UILabel *diamondsLabel;  // ivar: _diamondsLabel
@property (retain, nonatomic) UILabel *pageTitle;  // ivar: _pageTitle
@property (retain, nonatomic) UIButton *armoryButton;  // ivar: _armoryButton
@property (retain, nonatomic) ADSlidingView *currenciesView;  // ivar: _currenciesView
@property (retain, nonatomic) ADButtonWithFont *backButton;  // ivar: _backButton
@property () BOOL armoryLoadoutEnabled;  // ivar: _armoryLoadoutEnabled
@property (retain) id<ADBackAction> backButtonDelegate;  // ivar: _backButtonDelegate
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10001bd70
- (void)viewDidLoad;                                                                       // IMP 0x10001be70
- (void)loadView;                                                                          // IMP 0x10001c034
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x10001c24c
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x10001c2a8
- (void)setSlideViewCallBack:(id /*block*/)arg1;                                           // IMP 0x10001c33c
- (void)refreshCoinsAndDiamonds;                                                           // IMP 0x10001c3d0
- (void)animateCoins:(int)arg1 fromCenter:(CGPoint)arg2;                                   // IMP 0x10001c704
- (void)animateCoins:(int)arg1;                                                            // IMP 0x10001c728
- (void)animateDiamonds:(int)arg1;                                                         // IMP 0x10001c850
- (void)animateCoins;                                                                      // IMP 0x10001ca14
- (void)animateDiamonds;                                                                   // IMP 0x10001cb68
- (void)stopAllAnimations;                                                                 // IMP 0x10001cc9c
- (void)armoryButtonPressed:(id)arg1;                                                      // IMP 0x10001cce8
- (void)playSound;                                                                         // IMP 0x10001cde8
- (void)deactivateButtons;                                                                 // IMP 0x10001cee4
- (void)activateButtons;                                                                   // IMP 0x10001d018
- (void)setCoinsLabel:(id)arg1;                                                            // IMP 0x10001d278
- (void)setDiamondsLabel:(id)arg1;                                                         // IMP 0x10001d394
- (void)setCurrenciesVisibility:(BOOL)arg1;                                                // IMP 0x10001d4b0
- (void)setArmoryButtonVisibilty:(BOOL)arg1;                                               // IMP 0x10001d514
- (void)setDiamonsdsVisibility:(BOOL)arg1;                                                 // IMP 0x10001d5c8
- (void).cxx_destruct;                                                                     // IMP 0x10001d7e0
- (id).cxx_construct;                                                                      // IMP 0x10001d8bc
- (id)delegate;                                                                            // IMP 0x10001d62c
- (void)setDelegate:(id)arg1;                                                              // IMP 0x10001d64c
- (id)coinsLabel;                                                                          // IMP 0x10001d660
- (id)diamondsLabel;                                                                       // IMP 0x10001d670
- (id)pageTitle;                                                                           // IMP 0x10001d680
- (void)setPageTitle:(id)arg1;                                                             // IMP 0x10001d690
- (id)armoryButton;                                                                        // IMP 0x10001d6c8
- (void)setArmoryButton:(id)arg1;                                                          // IMP 0x10001d6d8
- (id)currenciesView;                                                                      // IMP 0x10001d710
- (void)setCurrenciesView:(id)arg1;                                                        // IMP 0x10001d720
- (id)backButton;                                                                          // IMP 0x10001d758
- (void)setBackButton:(id)arg1;                                                            // IMP 0x10001d768
- (BOOL)armoryLoadoutEnabled;                                                              // IMP 0x10001d7a0
- (void)setArmoryLoadoutEnabled:(BOOL)arg1;                                                // IMP 0x10001d7b4
- (id)backButtonDelegate;                                                                  // IMP 0x10001d7c4
- (void)setBackButtonDelegate:(id)arg1;                                                    // IMP 0x10001d7d4
@end

@interface ADStoryViewController : ADNoBarViewController   // instance size 320, class @0x100423768
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000bd168
- (void)viewDidLoad;                                                                       // IMP 0x1000bd1f4
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000bd230
- (void)skipButtonPressed:(id)arg1;                                                        // IMP 0x1000bd26c
- (void)dealloc;                                                                           // IMP 0x1000bd300
@end

@interface ADTarotCardViewController : ADNoBarViewController   // instance size 416, class @0x1004231c8
{
    NSDictionary *cardDictionary;            // +0x140 (8 bytes)  @"NSDictionary"
    int cost;                                // +0x148 (4 bytes)  i
    NSString *currentTitle;                  // +0x150 (8 bytes)  @"NSString"
    BOOL _flipped;                           // +0x158 (1 bytes)  B
    int _cardLevel;                          // +0x15c (4 bytes)  i
    UILabel *_cardDescription;               // +0x160 (8 bytes)  @"UILabel"
    UILabel *_cardTitle;                     // +0x168 (8 bytes)  @"UILabel"
    ADTarotViewController *_tarotViewController; // +0x170 (8 bytes)  @"ADTarotViewController"
    ADButtonWithFont *_changeCardButton;     // +0x178 (8 bytes)  @"ADButtonWithFont"
    UIImageView *_backgroundImage;           // +0x180 (8 bytes)  @"UIImageView"
    ADButtonWithFont *_accessibleCard;       // +0x188 (8 bytes)  @"ADButtonWithFont"
    UIView *_cardBack;                       // +0x190 (8 bytes)  @"UIView"
    UIView *_cardFront;                      // +0x198 (8 bytes)  @"UIView"
}
@property (retain, nonatomic) UILabel *cardDescription;  // ivar: _cardDescription
@property (retain, nonatomic) UILabel *cardTitle;  // ivar: _cardTitle
@property () int cardLevel;  // ivar: _cardLevel
@property (weak, nonatomic) ADTarotViewController *tarotViewController;  // ivar: _tarotViewController
@property (retain, nonatomic) ADButtonWithFont *changeCardButton;  // ivar: _changeCardButton
@property (retain, nonatomic) UIImageView *backgroundImage;  // ivar: _backgroundImage
@property (retain, nonatomic) ADButtonWithFont *accessibleCard;  // ivar: _accessibleCard
@property (retain, nonatomic) UIView *cardBack;  // ivar: _cardBack
@property (retain, nonatomic) UIView *cardFront;  // ivar: _cardFront
@property () BOOL flipped;  // ivar: _flipped
- (void)viewDidLoad;                                                                       // IMP 0x1000a4bd4
- (id)initWithCardLevel:(int)arg1 forbiddenModifier:(id)arg2;                              // IMP 0x1000a517c
- (id)initWithCardLevel:(int)arg1 modifier:(id)arg2;                                       // IMP 0x1000a54c4
- (void)refreshCard;                                                                       // IMP 0x1000a58e0
- (void)flipCard:(id)arg1;                                                                 // IMP 0x1000a5e50
- (id)accessibleDescription;                                                               // IMP 0x1000a61a0
- (void)changeCardButtonPressed:(id)arg1;                                                  // IMP 0x1000a62b8
- (void)changeCard;                                                                        // IMP 0x1000a65a4
- (id)modifierName;                                                                        // IMP 0x1000a68c8
- (BOOL)isGood;                                                                            // IMP 0x1000a68ec
- (void).cxx_destruct;                                                                     // IMP 0x1000a6be0
- (id)cardDescription;                                                                     // IMP 0x1000a6970
- (void)setCardDescription:(id)arg1;                                                       // IMP 0x1000a6980
- (id)cardTitle;                                                                           // IMP 0x1000a69b8
- (void)setCardTitle:(id)arg1;                                                             // IMP 0x1000a69c8
- (int)cardLevel;                                                                          // IMP 0x1000a6a00
- (void)setCardLevel:(int)arg1;                                                            // IMP 0x1000a6a10
- (id)tarotViewController;                                                                 // IMP 0x1000a6a20
- (void)setTarotViewController:(id)arg1;                                                   // IMP 0x1000a6a40
- (id)changeCardButton;                                                                    // IMP 0x1000a6a54
- (void)setChangeCardButton:(id)arg1;                                                      // IMP 0x1000a6a64
- (id)backgroundImage;                                                                     // IMP 0x1000a6a9c
- (void)setBackgroundImage:(id)arg1;                                                       // IMP 0x1000a6aac
- (id)accessibleCard;                                                                      // IMP 0x1000a6ae4
- (void)setAccessibleCard:(id)arg1;                                                        // IMP 0x1000a6af4
- (id)cardBack;                                                                            // IMP 0x1000a6b2c
- (void)setCardBack:(id)arg1;                                                              // IMP 0x1000a6b3c
- (id)cardFront;                                                                           // IMP 0x1000a6b74
- (void)setCardFront:(id)arg1;                                                             // IMP 0x1000a6b84
- (BOOL)flipped;                                                                           // IMP 0x1000a6bbc
- (void)setFlipped:(BOOL)arg1;                                                             // IMP 0x1000a6bd0
@end

@interface ADTarotViewController : ADViewController   // instance size 376, class @0x100421648
{
    NSMutableArray *tarotCards;              // +0x140 (8 bytes)  @"NSMutableArray"
    S3DPlayList *tarotPlaylist;              // +0x148 (8 bytes)  @"S3DPlayList"
    BOOL backbuttonpressed;                  // +0x150 (1 bytes)  B
    int cardsToLoad;                         // +0x154 (4 bytes)  i
    UIButton *_playButton;                   // +0x158 (8 bytes)  @"UIButton"
    UIButton *_missionButton;                // +0x160 (8 bytes)  @"UIButton"
    UITextView *_infoText;                   // +0x168 (8 bytes)  @"UITextView"
    UIView *_cardContainer;                  // +0x170 (8 bytes)  @"UIView"
}
@property (retain, nonatomic) UIButton *playButton;  // ivar: _playButton
@property (retain, nonatomic) UIButton *missionButton;  // ivar: _missionButton
@property (retain, nonatomic) UITextView *infoText;  // ivar: _infoText
@property (retain, nonatomic) UIView *cardContainer;  // ivar: _cardContainer
- (void)viewDidLoad;                                                                       // IMP 0x10003461c
- (void)loadView;                                                                          // IMP 0x1000351c4
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x100035354
- (void)loadCardWithNumber:(int)arg1;                                                      // IMP 0x100035390
- (void)rerollCardWithNumber:(int)arg1;                                                    // IMP 0x100035a48
- (void)applyAllModifiers;                                                                 // IMP 0x100035a5c
- (void)applyModifier:(id)arg1;                                                            // IMP 0x100035da4
- (void)playButtonPressed:(id)arg1;                                                        // IMP 0x100036020
- (void)showMissionsOverlay:(id)arg1;                                                      // IMP 0x1000361b8
- (void)recordCardReloadWithNumber:(long long)arg1;                                        // IMP 0x100036220
- (void)backButtonPressed;                                                                 // IMP 0x1000364e8
- (void)dealloc;                                                                           // IMP 0x100036598
- (BOOL)accessibilityPerformMagicTap;                                                      // IMP 0x100036634
- (void).cxx_destruct;                                                                     // IMP 0x10003677c
- (id)playButton;                                                                          // IMP 0x10003665c
- (void)setPlayButton:(id)arg1;                                                            // IMP 0x10003666c
- (id)missionButton;                                                                       // IMP 0x1000366a4
- (void)setMissionButton:(id)arg1;                                                         // IMP 0x1000366b4
- (id)infoText;                                                                            // IMP 0x1000366ec
- (void)setInfoText:(id)arg1;                                                              // IMP 0x1000366fc
- (id)cardContainer;                                                                       // IMP 0x100036734
- (void)setCardContainer:(id)arg1;                                                         // IMP 0x100036744
@end

@interface ADTeslaPowerUp : ADPowerUp   // instance size 28, class @0x100423c18
{
    int maxNumberOfKills;                    // +0x8 (4 bytes)  i
    BOOL active;                             // +0xc (1 bytes)  B
    int currentKillCount;                    // +0x10 (4 bytes)  i
    float timeSinceLastKill;                 // +0x14 (4 bytes)  f
    float timeBetweenKills;                  // +0x18 (4 bytes)  f
}
- (void)preload;                                                                           // IMP 0x1000d7380
- (void)use;                                                                               // IMP 0x1000d7774
- (void)update:(float)arg1;                                                                // IMP 0x1000d786c
- (void)clean;                                                                             // IMP 0x1000d7b84
@end

@interface ADTornadoPowerUp : ADPowerUp   // instance size 28, class @0x100422e08
{
    float timeSinceActivation;               // +0x8 (4 bytes)  f
    BOOL active;                             // +0xc (1 bytes)  B
    float blowDistance;                      // +0x10 (4 bytes)  f
    float nextWindTime;                      // +0x14 (4 bytes)  f
    int nb_wind;                             // +0x18 (4 bytes)  i
}
- (void)preload;                                                                           // IMP 0x100097624
- (void)use;                                                                               // IMP 0x100097714
- (void)update:(float)arg1;                                                                // IMP 0x100097af0
- (void)randomizeNextWindTime;                                                             // IMP 0x100097b9c
- (void)playRandomWind;                                                                    // IMP 0x100097c28
- (void)clean;                                                                             // IMP 0x100097e08
@end

@interface ADTracker : NSObject   // instance size 40, class @0x100423e98
{
    BOOL _configured;                        // +0x8 (1 bytes)  B
    NSMutableDictionary *_dimensionDictionary; // +0x10 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_metricDictionary;  // +0x18 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_trackerInventory;  // +0x20 (8 bytes)  @"NSMutableDictionary"
}
@property (retain) NSMutableDictionary *dimensionDictionary;  // ivar: _dimensionDictionary
@property (retain) NSMutableDictionary *metricDictionary;  // ivar: _metricDictionary
@property () BOOL configured;  // ivar: _configured
@property (retain) NSMutableDictionary *trackerInventory;  // ivar: _trackerInventory
+ (id)sharedInstance;                                                                      // IMP 0x1000dd7cc
+ (void)printDimensionTable;                                                               // IMP 0x1000dd918
+ (void)printMetricTable;                                                                  // IMP 0x1000dd91c
+ (unsigned long long)indexForDimensionName:(id)arg1;                                      // IMP 0x1000dd920
+ (unsigned long long)indexForMetricName:(id)arg1;                                         // IMP 0x1000dda34
- (void)setValue:(id)arg1 ForDimension:(id)arg2 AndValue:(id)arg3 ForMetric:(id)arg4;      // IMP 0x1000ddb48
- (void)removeValueForDimension:(id)arg1 AndRemoveValueForMetric:(id)arg2;                 // IMP 0x1000ddd58
- (void).cxx_destruct;                                                                     // IMP 0x1000de0b8
- (id)dimensionDictionary;                                                                 // IMP 0x1000de040
- (void)setDimensionDictionary:(id)arg1;                                                   // IMP 0x1000de050
- (id)metricDictionary;                                                                    // IMP 0x1000de05c
- (void)setMetricDictionary:(id)arg1;                                                      // IMP 0x1000de06c
- (BOOL)configured;                                                                        // IMP 0x1000de078
- (void)setConfigured:(BOOL)arg1;                                                          // IMP 0x1000de08c
- (id)trackerInventory;                                                                    // IMP 0x1000de09c
- (void)setTrackerInventory:(id)arg1;                                                      // IMP 0x1000de0ac
@end

@interface ADTypefaceGenerator : NSObject   // instance size 8, class @0x100422430
+ (void)createTitle:(id)arg1;                                                              // IMP 0x100072a40
+ (void)createButton:(id)arg1;                                                             // IMP 0x100072b48
+ (void)createBlockedButton:(id)arg1;                                                      // IMP 0x100072c5c
+ (void)createInfoText:(id)arg1;                                                           // IMP 0x100072d70
+ (void)createParagraphText:(id)arg1;                                                      // IMP 0x100072e58
@end

@interface ADViewController : ADNoBarViewController   // instance size 344, class @0x1004223b8
{
    UIImageView *_background;                // +0x140 (8 bytes)  @"UIImageView"
    UIView *_firstAccessibleElement;         // +0x148 (8 bytes)  @"UIView"
    SKView *_skView;                         // +0x150 (8 bytes)  @"SKView"
}
@property (retain) UIImageView *background;  // ivar: _background
@property (retain) UIView *firstAccessibleElement;  // ivar: _firstAccessibleElement
@property (retain, nonatomic) SKView *skView;  // ivar: _skView
- (void)viewDidLoad;                                                                       // IMP 0x100072248
- (void)dealloc;                                                                           // IMP 0x1000723f0
- (void)addParticles;                                                                      // IMP 0x100072484
- (BOOL)accessibilityPerformEscape;                                                        // IMP 0x1000728e4
- (BOOL)accessibilityPerformMagicTap;                                                      // IMP 0x100072940
- (void).cxx_destruct;                                                                     // IMP 0x1000729ec
- (id)background;                                                                          // IMP 0x10007296c
- (void)setBackground:(id)arg1;                                                            // IMP 0x10007297c
- (id)firstAccessibleElement;                                                              // IMP 0x100072988
- (void)setFirstAccessibleElement:(id)arg1;                                                // IMP 0x100072998
- (id)skView;                                                                              // IMP 0x1000729a4
- (void)setSkView:(id)arg1;                                                                // IMP 0x1000729b4
@end

@interface ADViewWithWeaponDetailViewController : ADViewController <UIScrollViewDelegate>   // instance size 384, class @0x100421698
{
    NSMutableArray *armoryDetails;           // +0x140 (8 bytes)  @"NSMutableArray"
    BOOL _hideEquipButtonsOnDetailView;      // +0x148 (1 bytes)  B
    UIView *_detailView;                     // +0x150 (8 bytes)  @"UIView"
    UIScrollView *_detailScroller;           // +0x158 (8 bytes)  @"UIScrollView"
    ADButtonWithFont *_rightArrow;           // +0x160 (8 bytes)  @"ADButtonWithFont"
    ADButtonWithFont *_leftArrow;            // +0x168 (8 bytes)  @"ADButtonWithFont"
    NSMutableArray *_itemNames;              // +0x170 (8 bytes)  @"NSMutableArray"
    long long _currentWeaponBrowseIndex;     // +0x178 (8 bytes)  q
}
@property (retain, nonatomic) UIView *detailView;  // ivar: _detailView
@property (retain, nonatomic) UIScrollView *detailScroller;  // ivar: _detailScroller
@property (retain, nonatomic) ADButtonWithFont *rightArrow;  // ivar: _rightArrow
@property (retain, nonatomic) ADButtonWithFont *leftArrow;  // ivar: _leftArrow
@property (retain, nonatomic) NSMutableArray *itemNames;  // ivar: _itemNames
@property (nonatomic) BOOL hideEquipButtonsOnDetailView;  // ivar: _hideEquipButtonsOnDetailView
@property () long long currentWeaponBrowseIndex;  // ivar: _currentWeaponBrowseIndex
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10003680c
- (void)initDetailScroller;                                                                // IMP 0x100036938
- (void)loadArmoryDetailAtIndex:(int)arg1;                                                 // IMP 0x100036cb8
- (void)scrollViewDidEndDragging:(id)arg1 willDecelerate:(BOOL)arg2;                       // IMP 0x1000373f8
- (void)scrollViewDidEndDecelerating:(id)arg1;                                             // IMP 0x100037418
- (void)scrollViewDidEndScrollingAnimation:(id)arg1;                                       // IMP 0x100037438
- (void)loadDetailsAroundView;                                                             // IMP 0x100037458
- (void)nextWeaponButtonPressed:(id)arg1;                                                  // IMP 0x100037558
- (void)previousWeaponButtonPressed:(id)arg1;                                              // IMP 0x10003798c
- (void)checkArrowsAfterClick;                                                             // IMP 0x100037d84
- (void)sendDetailViewToBack;                                                              // IMP 0x100037fac
- (void)openDescriptionForItemWithName:(id)arg1 withButton:(BOOL)arg2;                     // IMP 0x100038180
- (void)openDescriptionForItemAtIndex:(int)arg1 withButton:(BOOL)arg2;                     // IMP 0x100038328
- (void)showNotEnoughMoneyAlert;                                                           // IMP 0x100038828
- (void)backButtonPressed;                                                                 // IMP 0x10003882c
- (void)viewDidLoad;                                                                       // IMP 0x100038894
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100038904
- (void)dealloc;                                                                           // IMP 0x100038940
- (void).cxx_destruct;                                                                     // IMP 0x100038d48
- (id)detailView;                                                                          // IMP 0x100038ba0
- (void)setDetailView:(id)arg1;                                                            // IMP 0x100038bb0
- (id)detailScroller;                                                                      // IMP 0x100038be8
- (void)setDetailScroller:(id)arg1;                                                        // IMP 0x100038bf8
- (id)rightArrow;                                                                          // IMP 0x100038c30
- (void)setRightArrow:(id)arg1;                                                            // IMP 0x100038c40
- (id)leftArrow;                                                                           // IMP 0x100038c78
- (void)setLeftArrow:(id)arg1;                                                             // IMP 0x100038c88
- (id)itemNames;                                                                           // IMP 0x100038cc0
- (void)setItemNames:(id)arg1;                                                             // IMP 0x100038cd0
- (BOOL)hideEquipButtonsOnDetailView;                                                      // IMP 0x100038d08
- (void)setHideEquipButtonsOnDetailView:(BOOL)arg1;                                        // IMP 0x100038d18
- (long long)currentWeaponBrowseIndex;                                                     // IMP 0x100038d28
- (void)setCurrentWeaponBrowseIndex:(long long)arg1;                                       // IMP 0x100038d38
@end

@interface ADWeapon : NSObject   // instance size 184, class @0x100420f68
{
    float timeInContinous;                   // +0x8 (4 bytes)  f
    float timeSinceLastShot;                 // +0xc (4 bytes)  f
    BOOL shotOnce;                           // +0x10 (1 bytes)  B
    float fireRateTimer;                     // +0x14 (4 bytes)  f
    NSString *fireSoundPrefix;               // +0x18 (8 bytes)  @"NSString"
    NSString *clickSoundPrefix;              // +0x20 (8 bytes)  @"NSString"
    S3DSound *continuousSound;               // +0x28 (8 bytes)  @"S3DSound"
    S3DSound *continuousWarning;             // +0x30 (8 bytes)  @"S3DSound"
    float lastAnnouncerSpeech;               // +0x38 (4 bytes)  f
    double previousTickTime;                 // +0x40 (8 bytes)  d
    BOOL _continuousFire;                    // +0x48 (1 bytes)  B
    BOOL _droppedMagasine;                   // +0x49 (1 bytes)  B
    BOOL _multihit;                          // +0x4a (1 bytes)  B
    BOOL _explosive;                         // +0x4b (1 bytes)  B
    float _spread;                           // +0x4c (4 bytes)  f
    float _criticalSpread;                   // +0x50 (4 bytes)  f
    float _criticalChance;                   // +0x54 (4 bytes)  f
    float _criticalMultiplier;               // +0x58 (4 bytes)  f
    float _continuous_spread;                // +0x5c (4 bytes)  f
    float _damages;                          // +0x60 (4 bytes)  f
    float _range;                            // +0x64 (4 bytes)  f
    float _dispersal;                        // +0x68 (4 bytes)  f
    float _reloadTime;                       // +0x6c (4 bytes)  f
    float _switchingTime;                    // +0x70 (4 bytes)  f
    int _bulletsInClip;                      // +0x74 (4 bytes)  i
    int _bulletsTotal;                       // +0x78 (4 bytes)  i
    int _state;                              // +0x7c (4 bytes)  i
    int _capacity;                           // +0x80 (4 bytes)  i
    float _explosionRadius;                  // +0x84 (4 bytes)  f
    float _timeBeforeExplode;                // +0x88 (4 bytes)  f
    float _timeInState;                      // +0x8c (4 bytes)  f
    float _fireRate;                         // +0x90 (4 bytes)  f
    float _projectileSpeed;                  // +0x94 (4 bytes)  f
    S3DPlayList *_playlist;                  // +0x98 (8 bytes)  @"S3DPlayList"
    ADWeaponManager *_weaponManager;         // +0xa0 (8 bytes)  @"ADWeaponManager"
    NSString *_name;                         // +0xa8 (8 bytes)  @"NSString"
    unsigned long long _numShotsFired;       // +0xb0 (8 bytes)  Q
}
@property (retain, nonatomic) S3DPlayList *playlist;  // ivar: _playlist
@property (retain, nonatomic) ADWeaponManager *weaponManager;  // ivar: _weaponManager
@property (nonatomic) float spread;  // ivar: _spread
@property (nonatomic) float criticalSpread;  // ivar: _criticalSpread
@property (nonatomic) float criticalChance;  // ivar: _criticalChance
@property (nonatomic) float criticalMultiplier;  // ivar: _criticalMultiplier
@property (nonatomic) float continuous_spread;  // ivar: _continuous_spread
@property (nonatomic) float damages;  // ivar: _damages
@property (nonatomic) float range;  // ivar: _range
@property (nonatomic) float dispersal;  // ivar: _dispersal
@property (nonatomic) float reloadTime;  // ivar: _reloadTime
@property (nonatomic) float switchingTime;  // ivar: _switchingTime
@property (nonatomic) int bulletsInClip;  // ivar: _bulletsInClip
@property (nonatomic) int bulletsTotal;  // ivar: _bulletsTotal
@property (nonatomic) BOOL continuousFire;  // ivar: _continuousFire
@property (nonatomic) BOOL droppedMagasine;  // ivar: _droppedMagasine
@property (retain, nonatomic) NSString *name;  // ivar: _name
@property (nonatomic) int state;  // ivar: _state
@property (nonatomic) BOOL multihit;  // ivar: _multihit
@property (nonatomic) int capacity;  // ivar: _capacity
@property (nonatomic) float explosionRadius;  // ivar: _explosionRadius
@property (nonatomic) BOOL explosive;  // ivar: _explosive
@property (nonatomic) float timeBeforeExplode;  // ivar: _timeBeforeExplode
@property (nonatomic) float timeInState;  // ivar: _timeInState
@property (nonatomic) float fireRate;  // ivar: _fireRate
@property (nonatomic) float projectileSpeed;  // ivar: _projectileSpeed
@property () unsigned long long numShotsFired;  // ivar: _numShotsFired
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x100013f94
- (void)update:(float)arg1;                                                                // IMP 0x100014c8c
- (BOOL)changeState:(int)arg1;                                                             // IMP 0x100015148
- (void)setState:(int)arg1;                                                                // IMP 0x100015210
- (id)stateToString;                                                                       // IMP 0x100015240
- (BOOL)readyToShoot;                                                                      // IMP 0x10001537c
- (void)singleShot;                                                                        // IMP 0x10001540c
- (void)continuousStart;                                                                   // IMP 0x1000154a4
- (void)continuousStop;                                                                    // IMP 0x1000157f8
- (void)playContinuousTail;                                                                // IMP 0x1000158b0
- (BOOL)resolveShoot;                                                                      // IMP 0x100015a1c
- (void)playSingleShootSound;                                                              // IMP 0x100015c80
- (void)playClickSound;                                                                    // IMP 0x100015f0c
- (float)spread;                                                                           // IMP 0x100016180
- (void)reload;                                                                            // IMP 0x1000161cc
- (void)interruptReload;                                                                   // IMP 0x10001652c
- (BOOL)isReloading;                                                                       // IMP 0x10001667c
- (void)deploy;                                                                            // IMP 0x1000166e4
- (void)clean;                                                                             // IMP 0x100016a2c
- (void)dealloc;                                                                           // IMP 0x100016a78
- (void).cxx_destruct;                                                                     // IMP 0x100016f04
- (id)playlist;                                                                            // IMP 0x100016b4c
- (void)setPlaylist:(id)arg1;                                                              // IMP 0x100016b5c
- (id)weaponManager;                                                                       // IMP 0x100016b94
- (void)setWeaponManager:(id)arg1;                                                         // IMP 0x100016ba4
- (void)setSpread:(float)arg1;                                                             // IMP 0x100016bdc
- (float)criticalSpread;                                                                   // IMP 0x100016bec
- (void)setCriticalSpread:(float)arg1;                                                     // IMP 0x100016bfc
- (float)criticalChance;                                                                   // IMP 0x100016c0c
- (void)setCriticalChance:(float)arg1;                                                     // IMP 0x100016c1c
- (float)criticalMultiplier;                                                               // IMP 0x100016c2c
- (void)setCriticalMultiplier:(float)arg1;                                                 // IMP 0x100016c3c
- (float)continuous_spread;                                                                // IMP 0x100016c4c
- (void)setContinuous_spread:(float)arg1;                                                  // IMP 0x100016c5c
- (float)damages;                                                                          // IMP 0x100016c6c
- (void)setDamages:(float)arg1;                                                            // IMP 0x100016c7c
- (float)range;                                                                            // IMP 0x100016c8c
- (void)setRange:(float)arg1;                                                              // IMP 0x100016c9c
- (float)dispersal;                                                                        // IMP 0x100016cac
- (void)setDispersal:(float)arg1;                                                          // IMP 0x100016cbc
- (float)reloadTime;                                                                       // IMP 0x100016ccc
- (void)setReloadTime:(float)arg1;                                                         // IMP 0x100016cdc
- (float)switchingTime;                                                                    // IMP 0x100016cec
- (void)setSwitchingTime:(float)arg1;                                                      // IMP 0x100016cfc
- (int)bulletsInClip;                                                                      // IMP 0x100016d0c
- (void)setBulletsInClip:(int)arg1;                                                        // IMP 0x100016d1c
- (int)bulletsTotal;                                                                       // IMP 0x100016d2c
- (void)setBulletsTotal:(int)arg1;                                                         // IMP 0x100016d3c
- (BOOL)continuousFire;                                                                    // IMP 0x100016d4c
- (void)setContinuousFire:(BOOL)arg1;                                                      // IMP 0x100016d5c
- (BOOL)droppedMagasine;                                                                   // IMP 0x100016d6c
- (void)setDroppedMagasine:(BOOL)arg1;                                                     // IMP 0x100016d7c
- (id)name;                                                                                // IMP 0x100016d8c
- (void)setName:(id)arg1;                                                                  // IMP 0x100016d9c
- (int)state;                                                                              // IMP 0x100016dd4
- (BOOL)multihit;                                                                          // IMP 0x100016de4
- (void)setMultihit:(BOOL)arg1;                                                            // IMP 0x100016df4
- (int)capacity;                                                                           // IMP 0x100016e04
- (void)setCapacity:(int)arg1;                                                             // IMP 0x100016e14
- (float)explosionRadius;                                                                  // IMP 0x100016e24
- (void)setExplosionRadius:(float)arg1;                                                    // IMP 0x100016e34
- (BOOL)explosive;                                                                         // IMP 0x100016e44
- (void)setExplosive:(BOOL)arg1;                                                           // IMP 0x100016e54
- (float)timeBeforeExplode;                                                                // IMP 0x100016e64
- (void)setTimeBeforeExplode:(float)arg1;                                                  // IMP 0x100016e74
- (float)timeInState;                                                                      // IMP 0x100016e84
- (void)setTimeInState:(float)arg1;                                                        // IMP 0x100016e94
- (float)fireRate;                                                                         // IMP 0x100016ea4
- (void)setFireRate:(float)arg1;                                                           // IMP 0x100016eb4
- (float)projectileSpeed;                                                                  // IMP 0x100016ec4
- (void)setProjectileSpeed:(float)arg1;                                                    // IMP 0x100016ed4
- (unsigned long long)numShotsFired;                                                       // IMP 0x100016ee4
- (void)setNumShotsFired:(unsigned long long)arg1;                                         // IMP 0x100016ef4
@end

@interface ADWeaponManager : NSObject   // instance size 72, class @0x100423268
{
    NSArray *allWeapons;                     // +0x8 (8 bytes)  @"NSArray"
    NSArray *allPowerUps;                    // +0x10 (8 bytes)  @"NSArray"
    NSMutableArray *weaponsArray;            // +0x18 (8 bytes)  @"NSMutableArray"
    NSMutableArray *projectileArray;         // +0x20 (8 bytes)  @"NSMutableArray"
    ADMeleeWeapon *meleeWeapon;              // +0x28 (8 bytes)  @"ADMeleeWeapon"
    int currentWeaponIndex;                  // +0x30 (4 bytes)  i
    ADWeapon *_currentWeapon;                // +0x38 (8 bytes)  @"ADWeapon"
    ADPowerUp *_powerUp;                     // +0x40 (8 bytes)  @"ADPowerUp"
}
@property (retain, nonatomic) ADWeapon *currentWeapon;  // ivar: _currentWeapon
@property (retain, nonatomic) ADPowerUp *powerUp;  // ivar: _powerUp
+ (id)sharedWeaponManager;                                                                 // IMP 0x1000a6ee0
- (id)getAllWeaponsArray;                                                                  // IMP 0x1000a6f78
- (id)dictionaryForWeaponWithName:(id)arg1;                                                // IMP 0x1000a70b8
- (BOOL)isMeleeForWeaponWithName:(id)arg1;                                                 // IMP 0x1000a72a4
- (id)getAllMeleeWeapons;                                                                  // IMP 0x1000a735c
- (id)displayNameForItemWithName:(id)arg1;                                                 // IMP 0x1000a7568
- (id)initWithWeaponsFromArmory;                                                           // IMP 0x1000a76c4
- (id)getEquippedWeaponsList;                                                              // IMP 0x1000a7c84
- (id)initWithWeaponList:(id)arg1;                                                         // IMP 0x1000a7d44
- (id)initWithChallengeWeaponArray:(id)arg1;                                               // IMP 0x1000a80f4
- (id)initWithWeaponDictionary:(id)arg1;                                                   // IMP 0x1000a86cc
- (void)update:(float)arg1;                                                                // IMP 0x1000a8c38
- (int)numberOfWeaponsAvailableForSale;                                                    // IMP 0x1000a8e44
- (int)numberOfWeaponsUpgradable;                                                          // IMP 0x1000a90ec
- (id)getAllPowerUpsArray;                                                                 // IMP 0x1000a9500
- (id)dictionaryForPowerupWithName:(id)arg1;                                               // IMP 0x1000a9640
- (void)initRandomPowerUp;                                                                 // IMP 0x1000a982c
- (void)initPowerUp:(int)arg1;                                                             // IMP 0x1000a9874
- (void)usePowerUp;                                                                        // IMP 0x1000a9cd8
- (void)weaponTouchedDown;                                                                 // IMP 0x1000a9d78
- (void)weaponTouchedUp;                                                                   // IMP 0x1000a9d7c
- (void)weaponSingleShot;                                                                  // IMP 0x1000a9d80
- (void)selectNextWeapon;                                                                  // IMP 0x1000a9e04
- (void)setCurrentWeapon:(id)arg1;                                                         // IMP 0x1000aa124
- (void)shot;                                                                              // IMP 0x1000aa15c
- (void)continuousStart;                                                                   // IMP 0x1000aa26c
- (void)continuousStop;                                                                    // IMP 0x1000aa2f0
- (void)weaponDidFinishReloading;                                                          // IMP 0x1000aa34c
- (BOOL)isWeaponReadyToShoot;                                                              // IMP 0x1000aa350
- (void)createProjectileForCurrentWeapon;                                                  // IMP 0x1000aa3ec
- (id)projectiles;                                                                         // IMP 0x1000aaa88
- (void)shootWithMelee;                                                                    // IMP 0x1000aaa98
- (void)didShotWithMelee;                                                                  // IMP 0x1000aabec
- (id)meleeWeaponName;                                                                     // IMP 0x1000aac60
- (void)reloadGestureDown;                                                                 // IMP 0x1000aac7c
- (void)reloadGestureUp;                                                                   // IMP 0x1000aacd8
- (void)shutDown;                                                                          // IMP 0x1000aad34
- (void)clean;                                                                             // IMP 0x1000aad50
- (void).cxx_destruct;                                                                     // IMP 0x1000aaeb8
- (id)currentWeapon;                                                                       // IMP 0x1000aae60
- (id)powerUp;                                                                             // IMP 0x1000aae70
- (void)setPowerUp:(id)arg1;                                                               // IMP 0x1000aae80
@end

@interface ADWeaponStatBarViewController : ADNoBarViewController   // instance size 368, class @0x100423858
{
    BOOL viewDidLoad;                        // +0x140 (1 bytes)  B
    float _maxValue;                         // +0x144 (4 bytes)  f
    float _currentValue;                     // +0x148 (4 bytes)  f
    float _nextLevelValue;                   // +0x14c (4 bytes)  f
    UIView *_currentValueBar;                // +0x150 (8 bytes)  @"UIView"
    UIView *_nextLevelValueBar;              // +0x158 (8 bytes)  @"UIView"
    UIView *_maxValueBar;                    // +0x160 (8 bytes)  @"UIView"
    UILabel *_currentValueLabel;             // +0x168 (8 bytes)  @"UILabel"
}
@property (retain, nonatomic) UIView *currentValueBar;  // ivar: _currentValueBar
@property (retain, nonatomic) UIView *nextLevelValueBar;  // ivar: _nextLevelValueBar
@property (retain, nonatomic) UIView *maxValueBar;  // ivar: _maxValueBar
@property (retain, nonatomic) UILabel *currentValueLabel;  // ivar: _currentValueLabel
@property (nonatomic) float maxValue;  // ivar: _maxValue
@property (nonatomic) float currentValue;  // ivar: _currentValue
@property (nonatomic) float nextLevelValue;  // ivar: _nextLevelValue
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000c0040
- (void)loadView;                                                                          // IMP 0x1000c0134
- (void)setCurrentValue:(float)arg1;                                                       // IMP 0x1000c030c
- (void)setMaxValue:(float)arg1;                                                           // IMP 0x1000c031c
- (void)setNextLevelValue:(float)arg1;                                                     // IMP 0x1000c032c
- (void)refreshBars;                                                                       // IMP 0x1000c033c
- (void)showNextLevel;                                                                     // IMP 0x1000c0680
- (void)upgradeToNextLevel;                                                                // IMP 0x1000c0a0c
- (void)upgrade;                                                                           // IMP 0x1000c0c28
- (void)viewDidLoad;                                                                       // IMP 0x1000c0d04
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x1000c0da8
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000c0db8
- (void).cxx_destruct;                                                                     // IMP 0x1000c0f44
- (id)currentValueBar;                                                                     // IMP 0x1000c0df4
- (void)setCurrentValueBar:(id)arg1;                                                       // IMP 0x1000c0e04
- (id)nextLevelValueBar;                                                                   // IMP 0x1000c0e3c
- (void)setNextLevelValueBar:(id)arg1;                                                     // IMP 0x1000c0e4c
- (id)maxValueBar;                                                                         // IMP 0x1000c0e84
- (void)setMaxValueBar:(id)arg1;                                                           // IMP 0x1000c0e94
- (id)currentValueLabel;                                                                   // IMP 0x1000c0ecc
- (void)setCurrentValueLabel:(id)arg1;                                                     // IMP 0x1000c0edc
- (float)maxValue;                                                                         // IMP 0x1000c0f14
- (float)currentValue;                                                                     // IMP 0x1000c0f24
- (float)nextLevelValue;                                                                   // IMP 0x1000c0f34
@end

@interface ADWeaponTouchArea : ADButtonWithSwipe   // instance size 160, class @0x1004219b8
{
    UISwipeGestureRecognizer *swipeUpGesture; // +0x90 (8 bytes)  @"UISwipeGestureRecognizer"
    UISwipeGestureRecognizer *swipeDownGesture; // +0x98 (8 bytes)  @"UISwipeGestureRecognizer"
}
@property (nonatomic) BOOL buttonIsDown;
@property (weak, nonatomic) ADWeaponManager *weaponManager;
@property () BOOL allowSwipe;
- (void)initGestureRecognizers;                                                            // IMP 0x1000406a4
- (BOOL)gestureRecognizer:(id)arg1 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg2; // IMP 0x10004087c
- (void)handleSwipeUpGesture;                                                              // IMP 0x100040884
- (void)handleSwipeDownGesture;                                                            // IMP 0x100040934
- (void).cxx_destruct;                                                                     // IMP 0x1000409e4
@end

@interface ADWeaponsStatsDetailCell : UITableViewCell   // instance size 168, class @0x100422638
{
    UILabel *_cellItemLabel;                 // +0x68 (8 bytes)  @"UILabel"
    UIImageView *_cellItemImageView;         // +0x70 (8 bytes)  @"UIImageView"
    UILabel *_nameLabel;                     // +0x78 (8 bytes)  @"UILabel"
    UILabel *_accuracyLabel;                 // +0x80 (8 bytes)  @"UILabel"
    UILabel *_killsLabel;                    // +0x88 (8 bytes)  @"UILabel"
    UILabel *_accuracyValLabel;              // +0x90 (8 bytes)  @"UILabel"
    UILabel *_killsValLabel;                 // +0x98 (8 bytes)  @"UILabel"
    NSArray *_detailViewHierarchy;           // +0xa0 (8 bytes)  @"NSArray"
}
@property (retain, nonatomic) UILabel *cellItemLabel;  // ivar: _cellItemLabel
@property (retain, nonatomic) UIImageView *cellItemImageView;  // ivar: _cellItemImageView
@property (retain, nonatomic) UILabel *nameLabel;  // ivar: _nameLabel
@property (retain, nonatomic) UILabel *accuracyLabel;  // ivar: _accuracyLabel
@property (retain, nonatomic) UILabel *killsLabel;  // ivar: _killsLabel
@property (retain, nonatomic) UILabel *accuracyValLabel;  // ivar: _accuracyValLabel
@property (retain, nonatomic) UILabel *killsValLabel;  // ivar: _killsValLabel
@property (retain) NSArray *detailViewHierarchy;  // ivar: _detailViewHierarchy
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2 data:(id)arg3;                // IMP 0x10007c308
- (void)awakeFromNib;                                                                      // IMP 0x10007c394
- (void)setSelected:(BOOL)arg1 animated:(BOOL)arg2;                                        // IMP 0x10007c81c
- (void).cxx_destruct;                                                                     // IMP 0x10007ca6c
- (id)cellItemLabel;                                                                       // IMP 0x10007c858
- (void)setCellItemLabel:(id)arg1;                                                         // IMP 0x10007c868
- (id)cellItemImageView;                                                                   // IMP 0x10007c8a0
- (void)setCellItemImageView:(id)arg1;                                                     // IMP 0x10007c8b0
- (id)nameLabel;                                                                           // IMP 0x10007c8e8
- (void)setNameLabel:(id)arg1;                                                             // IMP 0x10007c8f8
- (id)accuracyLabel;                                                                       // IMP 0x10007c930
- (void)setAccuracyLabel:(id)arg1;                                                         // IMP 0x10007c940
- (id)killsLabel;                                                                          // IMP 0x10007c978
- (void)setKillsLabel:(id)arg1;                                                            // IMP 0x10007c988
- (id)accuracyValLabel;                                                                    // IMP 0x10007c9c0
- (void)setAccuracyValLabel:(id)arg1;                                                      // IMP 0x10007c9d0
- (id)killsValLabel;                                                                       // IMP 0x10007ca08
- (void)setKillsValLabel:(id)arg1;                                                         // IMP 0x10007ca18
- (id)detailViewHierarchy;                                                                 // IMP 0x10007ca50
- (void)setDetailViewHierarchy:(id)arg1;                                                   // IMP 0x10007ca60
@end

@interface ADWorldChallengeListViewController : ADViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 360, class @0x100421cd8
{
    int totalStarsUnlocked;                  // +0x140 (4 bytes)  i
    UITableView *_tableView;                 // +0x148 (8 bytes)  @"UITableView"
    NSDictionary *_enemyData;                // +0x150 (8 bytes)  @"NSDictionary"
    NSArray *_worldNames;                    // +0x158 (8 bytes)  @"NSArray"
    long long _numberOfSectionsForStats;     // +0x160 (8 bytes)  q
}
@property (weak, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (retain, nonatomic) NSDictionary *enemyData;  // ivar: _enemyData
@property (retain) NSArray *worldNames;  // ivar: _worldNames
@property () long long numberOfSectionsForStats;  // ivar: _numberOfSectionsForStats
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10004ba74
- (void)viewDidLoad;                                                                       // IMP 0x10004bb48
- (void)loadView;                                                                          // IMP 0x10004c168
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10004c26c
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x10004c2a8
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;                           // IMP 0x10004c318
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;                     // IMP 0x10004c508
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x10004c598
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x10004c624
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x10004c644
- (id)tableView:(id)arg1 willSelectRowAtIndexPath:(id)arg2;                                // IMP 0x10004d118
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;                               // IMP 0x10004d270
- (void)backButtonPressed;                                                                 // IMP 0x10004d494
- (void)playButtonSound;                                                                   // IMP 0x10004d534
- (void).cxx_destruct;                                                                     // IMP 0x10004d6e8
- (id)tableView;                                                                           // IMP 0x10004d630
- (void)setTableView:(id)arg1;                                                             // IMP 0x10004d650
- (id)enemyData;                                                                           // IMP 0x10004d664
- (void)setEnemyData:(id)arg1;                                                             // IMP 0x10004d674
- (id)worldNames;                                                                          // IMP 0x10004d6ac
- (void)setWorldNames:(id)arg1;                                                            // IMP 0x10004d6bc
- (long long)numberOfSectionsForStats;                                                     // IMP 0x10004d6c8
- (void)setNumberOfSectionsForStats:(long long)arg1;                                       // IMP 0x10004d6d8
@end

@interface AUFactory : NSObject   // instance size 8, class @0x100424140
+ (AudioComponentDescription)defaultACD;                                                   // IMP 0x1000e31a0
+ (AudioComponentDescription)remoteIO;                                                     // IMP 0x1000e31b4
+ (AudioComponentDescription)mixer;                                                        // IMP 0x1000e3208
+ (AudioComponentDescription)mixer3d;                                                      // IMP 0x1000e325c
+ (AudioComponentDescription)sampler;                                                      // IMP 0x1000e32b0
+ (OpaqueAudioComponent *)audioComponent:(AudioComponentDescription)arg1;                  // IMP 0x1000e3304
@end

@interface Accessible_ADArmoryLoadoutViewController : ADNoBarViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 344, class @0x100421be8
{
    Accessible_ADWeaponDescriptionViewController *detailView; // +0x140 (8 bytes)  @"Accessible_ADWeaponDescriptionViewController"
    UITableView *_tableView;                 // +0x148 (8 bytes)  @"UITableView"
    ADArmoryViewController *_armoryViewController; // +0x150 (8 bytes)  @"ADArmoryViewController"
}
@property (retain, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (weak, nonatomic) ADArmoryViewController *armoryViewController;  // ivar: _armoryViewController
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (void)viewDidLoad;                                                                       // IMP 0x100049410
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x10004956c
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;                     // IMP 0x1000495f8
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x100049684
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;                           // IMP 0x100049864
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x100049a84
- (id)weaponName:(long long)arg1;                                                          // IMP 0x100049a8c
- (id)weaponStatus:(long long)arg1;                                                        // IMP 0x100049c1c
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x100049f18
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;                               // IMP 0x10004a264
- (void)viewWillLayoutSubviews;                                                            // IMP 0x10004a6e8
- (void).cxx_destruct;                                                                     // IMP 0x10004a7c0
- (id)tableView;                                                                           // IMP 0x10004a744
- (void)setTableView:(id)arg1;                                                             // IMP 0x10004a754
- (id)armoryViewController;                                                                // IMP 0x10004a78c
- (void)setArmoryViewController:(id)arg1;                                                  // IMP 0x10004a7ac
@end

@interface Accessible_ADArmoryViewController : ADArmoryViewController   // instance size 320, class @0x1004228b8
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10007dfb8
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 loadoutEnabled:(BOOL)arg3;                  // IMP 0x10007e044
- (void)updateTabsAfterButtonPressed:(id)arg1;                                             // IMP 0x10007e0d8
- (void)viewDidLoad;                                                                       // IMP 0x10007e244
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10007e280
@end

@interface Accessible_ADChallengeCompletedViewController : Accessible_ADGameOverEndlessViewController   // instance size 360, class @0x100422138
{
    NSString *accuracyStarStatus;            // +0x140 (8 bytes)  @"NSString"
    NSString *missionStarStatus;             // +0x148 (8 bytes)  @"NSString"
    NSString *timeStarStatus;                // +0x150 (8 bytes)  @"NSString"
    NSDictionary *_challengeDict;            // +0x158 (8 bytes)  @"NSDictionary"
    UIButton *_nextChallengeButton;          // +0x160 (8 bytes)  @"UIButton"
}
@property (retain, nonatomic) NSDictionary *challengeDict;  // ivar: _challengeDict
@property (retain, nonatomic) UIButton *nextChallengeButton;  // ivar: _nextChallengeButton
- (id)initWithDictionary:(id)arg1;                                                         // IMP 0x1000670f0
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x1000671c0
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x1000671e0
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;                     // IMP 0x10006726c
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;                           // IMP 0x1000672f8
- (void)viewDidLoad;                                                                       // IMP 0x1000673f4
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x1000677a0
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x1000677a8
- (id)cellForStatsAtIndex:(id)arg1;                                                        // IMP 0x100067c0c
- (void)checkCompletion;                                                                   // IMP 0x100068074
- (void)missionSelectButtonPressed:(id)arg1;                                               // IMP 0x100068f64
- (void)nextMissionButtonPressed:(id)arg1;                                                 // IMP 0x100069008
- (void)retryButtonPressed:(id)arg1;                                                       // IMP 0x100069134
- (void)loadView;                                                                          // IMP 0x100069224
- (void)reportScoreToGameCenter;                                                           // IMP 0x1000693f0
- (BOOL)accessibilityPerformMagicTap;                                                      // IMP 0x10006974c
- (void).cxx_destruct;                                                                     // IMP 0x100069804
- (id)challengeDict;                                                                       // IMP 0x100069774
- (void)setChallengeDict:(id)arg1;                                                         // IMP 0x100069784
- (id)nextChallengeButton;                                                                 // IMP 0x1000697bc
- (void)setNextChallengeButton:(id)arg1;                                                   // IMP 0x1000697cc
@end

@interface Accessible_ADChallengeOverviewViewController : ADChallengeOverviewViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 344, class @0x100421918
{
    NSString *requiredWeapon;                // +0x140 (8 bytes)  @"NSString"
    UITableView *_tableView;                 // +0x148 (8 bytes)  @"UITableView"
    UIButton *_playButton;                   // +0x150 (8 bytes)  @"UIButton"
}
@property (retain, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (retain, nonatomic) UIButton *playButton;  // ivar: _playButton
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x10003e8f4
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x10003e980
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10003ee6c
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x10003eea8
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x10003eec8
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x10003eed0
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;                     // IMP 0x10003ef5c
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;                           // IMP 0x10003efe8
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x10003f230
- (void)loadEquipment;                                                                     // IMP 0x10004037c
- (void)missionsButtonPressed:(id)arg1;                                                    // IMP 0x100040380
- (void)viewWillLayoutSubviews;                                                            // IMP 0x100040384
- (BOOL)accessibilityPerformMagicTap;                                                      // IMP 0x1000403e0
- (void).cxx_destruct;                                                                     // IMP 0x100040498
- (id)tableView;                                                                           // IMP 0x100040408
- (void)setTableView:(id)arg1;                                                             // IMP 0x100040418
- (id)playButton;                                                                          // IMP 0x100040450
- (void)setPlayButton:(id)arg1;                                                            // IMP 0x100040460
@end

@interface Accessible_ADChallengeSelectorViewController : ADChallengeSelectorViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 336, class @0x100421eb8
{
    NSString *challengeToLoad;               // +0x140 (8 bytes)  @"NSString"
    UITableView *_tableView;                 // +0x148 (8 bytes)  @"UITableView"
}
@property (retain, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2 loadChallenge:(id)arg3 worldName:(id)arg4;  // IMP 0x100053f18
- (void)viewDidLoad;                                                                       // IMP 0x10005419c
- (void)didReceiveMemoryWarning;                                                           // IMP 0x100054408
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x100054444
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x1000544d0
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x100054558
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x100054570
- (id)statusForChallengeWithDict:(id)arg1;                                                 // IMP 0x100054960
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;                               // IMP 0x100054f8c
- (void)viewWillLayoutSubviews;                                                            // IMP 0x1000554e0
- (void).cxx_destruct;                                                                     // IMP 0x100055584
- (id)tableView;                                                                           // IMP 0x10005553c
- (void)setTableView:(id)arg1;                                                             // IMP 0x10005554c
@end

@interface Accessible_ADControlSchemeViewController : ADControlSchemeViewController <UITableViewDelegate, UITableViewDataSource>   // instance size 328, class @0x1004235d8
{
    UITableView *_tableView;                 // +0x140 (8 bytes)  @"UITableView"
}
@property (retain, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000b49e0
- (void)viewDidLoad;                                                                       // IMP 0x1000b4a6c
- (void)tableView:(id)arg1 willDisplayCell:(id)arg2 forRowAtIndexPath:(id)arg3;            // IMP 0x1000b4aa8
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x1000b4c34
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x1000b4c54
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;                     // IMP 0x1000b4ce0
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;                           // IMP 0x1000b4d6c
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x1000b4fa0
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x1000b4fa8
- (id)tableView:(id)arg1 willSelectRowAtIndexPath:(id)arg2;                                // IMP 0x1000b51b0
- (id)cellForAimingAtIndex:(id)arg1;                                                       // IMP 0x1000b5734
- (id)cellForControlAtIndex:(id)arg1;                                                      // IMP 0x1000b5d64
- (id)cellForSound:(id)arg1;                                                               // IMP 0x1000b619c
- (void).cxx_destruct;                                                                     // IMP 0x1000b6468
- (id)tableView;                                                                           // IMP 0x1000b6420
- (void)setTableView:(id)arg1;                                                             // IMP 0x1000b6430
@end

@interface Accessible_ADGameOverEndlessViewController : ADGameOverEndlessViewController <UITableViewDataSource, UITableViewDelegate>   // instance size 344, class @0x100422ea8
{
    NSMutableArray *_completedMissions;      // +0x140 (8 bytes)  @"NSMutableArray"
    UITableView *_tableView;                 // +0x148 (8 bytes)  @"UITableView"
    NSDictionary *_enemyData;                // +0x150 (8 bytes)  @"NSDictionary"
}
@property (retain, nonatomic) NSMutableArray *completedMissions;  // ivar: _completedMissions
@property (retain, nonatomic) UITableView *tableView;  // ivar: _tableView
@property (retain, nonatomic) NSDictionary *enemyData;  // ivar: _enemyData
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x100099c68
- (void)initMissions;                                                                      // IMP 0x100099d80
- (void)loadView;                                                                          // IMP 0x100099d84
- (void)viewDidLoad;                                                                       // IMP 0x100099f50
- (void)backButtonPressed;                                                                 // IMP 0x10009a330
- (void)tableView:(id)arg1 willDisplayCell:(id)arg2 forRowAtIndexPath:(id)arg3;            // IMP 0x10009a3d0
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;                             // IMP 0x10009a55c
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2;                     // IMP 0x10009a5e8
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;                     // IMP 0x10009a674
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2;                           // IMP 0x10009a690
- (long long)numberOfSectionsInTableView:(id)arg1;                                         // IMP 0x10009a89c
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;                                   // IMP 0x10009a8a4
- (id)cellForRewardsAtIndex:(id)arg1;                                                      // IMP 0x10009aa80
- (id)cellForMissionAtIndex:(id)arg1;                                                      // IMP 0x10009adb4
- (void)skipMission:(id)arg1;                                                              // IMP 0x10009b264
- (id)cellForMissionCompletedAtIndex:(id)arg1;                                             // IMP 0x10009b5a0
- (id)cellForStatsAtIndex:(id)arg1;                                                        // IMP 0x10009b7cc
- (id)timeStringFromSeconds:(int)arg1;                                                     // IMP 0x10009be74
- (void)playAgainButtonPressed:(id)arg1;                                                   // IMP 0x10009bf54
- (BOOL)accessibilityPerformMagicTap;                                                      // IMP 0x10009bff8
- (void)viewWillAppear:(BOOL)arg1;                                                         // IMP 0x10009c020
- (void)scrollViewDidScroll:(id)arg1;                                                      // IMP 0x10009c0c8
- (void)AccessibleTwitterButtonPressed:(id)arg1;                                           // IMP 0x10009c0cc
- (void).cxx_destruct;                                                                     // IMP 0x10009c45c
- (id)completedMissions;                                                                   // IMP 0x10009c384
- (void)setCompletedMissions:(id)arg1;                                                     // IMP 0x10009c394
- (id)tableView;                                                                           // IMP 0x10009c3cc
- (void)setTableView:(id)arg1;                                                             // IMP 0x10009c3dc
- (id)enemyData;                                                                           // IMP 0x10009c414
- (void)setEnemyData:(id)arg1;                                                             // IMP 0x10009c424
@end

@interface Accessible_ADWeaponDescriptionViewController : ADNoBarViewController   // instance size 432, class @0x100422318
{
    NSDictionary *weaponInventoryDict;       // +0x140 (8 bytes)  @"NSDictionary"
    NSDictionary *weaponStatsDict;           // +0x148 (8 bytes)  @"NSDictionary"
    NSDictionary *currentLevelDict;          // +0x150 (8 bytes)  @"NSDictionary"
    NSDictionary *nextLevelDict;             // +0x158 (8 bytes)  @"NSDictionary"
    int current_level;                       // +0x160 (4 bytes)  i
    BOOL _hideButtons;                       // +0x164 (1 bytes)  B
    ADArmoryViewController *_armoryViewController; // +0x168 (8 bytes)  @"ADArmoryViewController"
    UITableView *_parentTableView;           // +0x170 (8 bytes)  @"UITableView"
    UILabel *_weaponName;                    // +0x178 (8 bytes)  @"UILabel"
    UILabel *_weaponDescription;             // +0x180 (8 bytes)  @"UILabel"
    UILabel *_weaponStats;                   // +0x188 (8 bytes)  @"UILabel"
    UIButton *_buyOrUpgradeButton;           // +0x190 (8 bytes)  @"UIButton"
    UIButton *_equip1Button;                 // +0x198 (8 bytes)  @"UIButton"
    UIButton *_equip2Button;                 // +0x1a0 (8 bytes)  @"UIButton"
    UIButton *_equip3Button;                 // +0x1a8 (8 bytes)  @"UIButton"
}
@property (weak, nonatomic) ADArmoryViewController *armoryViewController;  // ivar: _armoryViewController
@property (weak, nonatomic) UITableView *parentTableView;  // ivar: _parentTableView
@property (retain, nonatomic) UILabel *weaponName;  // ivar: _weaponName
@property (retain, nonatomic) UILabel *weaponDescription;  // ivar: _weaponDescription
@property (retain, nonatomic) UILabel *weaponStats;  // ivar: _weaponStats
@property (retain, nonatomic) UIButton *buyOrUpgradeButton;  // ivar: _buyOrUpgradeButton
@property (retain, nonatomic) UIButton *equip1Button;  // ivar: _equip1Button
@property (retain, nonatomic) UIButton *equip2Button;  // ivar: _equip2Button
@property (retain, nonatomic) UIButton *equip3Button;  // ivar: _equip3Button
@property (nonatomic) BOOL hideButtons;  // ivar: _hideButtons
- (id)initWithWeaponDictionary:(id)arg1;                                                   // IMP 0x10006f000
- (void)viewDidLoad;                                                                       // IMP 0x10006f180
- (void)loadInformations;                                                                  // IMP 0x10006f1dc
- (void)checkBuyOrUpgradeButton;                                                           // IMP 0x10006fa68
- (void)checkEquipButtons;                                                                 // IMP 0x10006ff8c
- (void)backButtonPressed:(id)arg1;                                                        // IMP 0x1000707b4
- (void)buyOrUpgradeButtonPressed:(id)arg1;                                                // IMP 0x10007085c
- (void)equipSlot1ButtonPressed:(id)arg1;                                                  // IMP 0x100071058
- (void)equipSlot2ButtonPressed:(id)arg1;                                                  // IMP 0x100071228
- (void)didReceiveMemoryWarning;                                                           // IMP 0x10007130c
- (void).cxx_destruct;                                                                     // IMP 0x1000715c8
- (id)armoryViewController;                                                                // IMP 0x100071348
- (void)setArmoryViewController:(id)arg1;                                                  // IMP 0x100071368
- (id)parentTableView;                                                                     // IMP 0x10007137c
- (void)setParentTableView:(id)arg1;                                                       // IMP 0x10007139c
- (id)weaponName;                                                                          // IMP 0x1000713b0
- (void)setWeaponName:(id)arg1;                                                            // IMP 0x1000713c0
- (id)weaponDescription;                                                                   // IMP 0x1000713f8
- (void)setWeaponDescription:(id)arg1;                                                     // IMP 0x100071408
- (id)weaponStats;                                                                         // IMP 0x100071440
- (void)setWeaponStats:(id)arg1;                                                           // IMP 0x100071450
- (id)buyOrUpgradeButton;                                                                  // IMP 0x100071488
- (void)setBuyOrUpgradeButton:(id)arg1;                                                    // IMP 0x100071498
- (id)equip1Button;                                                                        // IMP 0x1000714d0
- (void)setEquip1Button:(id)arg1;                                                          // IMP 0x1000714e0
- (id)equip2Button;                                                                        // IMP 0x100071518
- (void)setEquip2Button:(id)arg1;                                                          // IMP 0x100071528
- (id)equip3Button;                                                                        // IMP 0x100071560
- (void)setEquip3Button:(id)arg1;                                                          // IMP 0x100071570
- (BOOL)hideButtons;                                                                       // IMP 0x1000715a8
- (void)setHideButtons:(BOOL)arg1;                                                         // IMP 0x1000715b8
@end

@interface CWLOrderedDictionary : NSMutableDictionary   // instance size 24, class @0x100423f38
{
    NSMutableDictionary *dictionary;         // +0x8 (8 bytes)  @"NSMutableDictionary"
    NSMutableArray *array;                   // +0x10 (8 bytes)  @"NSMutableArray"
}
@property (retain, nonatomic) NSMutableDictionary *dictionary;  // ivar: dictionary
@property (retain, nonatomic) NSMutableArray *array;  // ivar: array
- (id)init;                                                                                // IMP 0x1000df2a4
- (id)initWithCapacity:(unsigned long long)arg1;                                           // IMP 0x1000df2c8
- (void)dealloc;                                                                           // IMP 0x1000df40c
- (id)copy;                                                                                // IMP 0x1000df448
- (void)setObject:(id)arg1 forKey:(id)arg2;                                                // IMP 0x1000df458
- (void)removeObjectForKey:(id)arg1;                                                       // IMP 0x1000df538
- (unsigned long long)count;                                                               // IMP 0x1000df5b8
- (id)objectForKey:(id)arg1;                                                               // IMP 0x1000df5d4
- (id)keyEnumerator;                                                                       // IMP 0x1000df608
- (id)reverseKeyEnumerator;                                                                // IMP 0x1000df624
- (void)insertObject:(id)arg1 forKey:(id)arg2 atIndex:(unsigned long long)arg3;            // IMP 0x1000df640
- (id)keyAtIndex:(unsigned long long)arg1;                                                 // IMP 0x1000df740
- (id)descriptionWithLocale:(id)arg1 indent:(unsigned long long)arg2;                      // IMP 0x1000df75c
- (void).cxx_destruct;                                                                     // IMP 0x1000dfaf8
- (id)dictionary;                                                                          // IMP 0x1000dfa68
- (void)setDictionary:(id)arg1;                                                            // IMP 0x1000dfa78
- (id)array;                                                                               // IMP 0x1000dfab0
- (void)setArray:(id)arg1;                                                                 // IMP 0x1000dfac0
@end

@interface DFAutoScrollTableView : UITableView   // instance size 128, class @0x1004220e8
{
    BOOL _scrolling;                         // +0x70 (1 bytes)  B
    double _scrollPointsPerSecond;           // +0x78 (8 bytes)  d
}
@property () double scrollPointsPerSecond;  // ivar: _scrollPointsPerSecond
@property (nonatomic) BOOL scrolling;  // ivar: _scrolling
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x100066a6c
- (void)startScrolling;                                                                    // IMP 0x100066af0
- (void)stopScrolling;                                                                     // IMP 0x100066d84
- (void)scrollTick;                                                                        // IMP 0x100066dfc
- (void)setScrolling:(BOOL)arg1;                                                           // IMP 0x100067018
- (BOOL)isScrolling;                                                                       // IMP 0x10006703c
- (void)drawRect:(CGRect)arg1;                                                             // IMP 0x10006707c
- (double)scrollPointsPerSecond;                                                           // IMP 0x1000670b8
- (void)setScrollPointsPerSecond:(double)arg1;                                             // IMP 0x1000670cc
- (BOOL)scrolling;                                                                         // IMP 0x1000670e0
@end

@interface DFAutoScrollTextView : UITextView   // instance size 128, class @0x100421058
{
    BOOL _scrolling;                         // +0x70 (1 bytes)  B
    double _scrollPointsPerSecond;           // +0x78 (8 bytes)  d
}
@property () double scrollPointsPerSecond;  // ivar: _scrollPointsPerSecond
@property (nonatomic) BOOL scrolling;  // ivar: _scrolling
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x1000183e0
- (void)startScrolling;                                                                    // IMP 0x100018464
- (void)stopScrolling;                                                                     // IMP 0x1000186f8
- (void)scrollTick;                                                                        // IMP 0x100018770
- (void)setScrolling:(BOOL)arg1;                                                           // IMP 0x1000189b0
- (BOOL)isScrolling;                                                                       // IMP 0x1000189d4
- (void)drawRect:(CGRect)arg1;                                                             // IMP 0x100018a14
- (double)scrollPointsPerSecond;                                                           // IMP 0x100018a50
- (void)setScrollPointsPerSecond:(double)arg1;                                             // IMP 0x100018a64
- (BOOL)scrolling;                                                                         // IMP 0x100018a78
@end

@interface GAI : NSObject   // instance size 64, class @0x1004247f8
{
    BOOL trackUncaughtExceptions_;           // +0x8 (1 bytes)  B
    BOOL _dryRun;                            // +0x9 (1 bytes)  B
    BOOL _optOut;                            // +0xa (1 bytes)  B
    GAIBatchingDispatcher *dispatcher_;      // +0x10 (8 bytes)  @"GAIBatchingDispatcher"
    NSMutableDictionary *trackers_;          // +0x18 (8 bytes)  @"NSMutableDictionary"
    id<GAITracker> defaultTracker_;          // +0x20 (8 bytes)  @"<GAITracker>"
    Class trackerImplClass_;                 // +0x28 (8 bytes)  #
    id<GAILogger> logger_;                   // +0x30 (8 bytes)  @"<GAILogger>"
    Class _urlConnectionClass;               // +0x38 (8 bytes)  #
}
@property (nonatomic) id<GAITracker> defaultTracker;  // ivar: defaultTracker_
@property (retain, nonatomic) id<GAILogger> logger;  // ivar: logger_
@property (nonatomic) BOOL optOut;  // ivar: _optOut
@property (nonatomic) double dispatchInterval;
@property (nonatomic) BOOL trackUncaughtExceptions;  // ivar: trackUncaughtExceptions_
@property (nonatomic) BOOL dryRun;  // ivar: _dryRun
@property (retain, nonatomic) GAIBatchingDispatcher *dispatcher;  // ivar: dispatcher_
@property (retain, nonatomic) NSMutableDictionary *trackers;  // ivar: trackers_
@property (nonatomic) Class trackerImplClass;  // ivar: trackerImplClass_
@property (nonatomic) Class urlConnectionClass;  // ivar: _urlConnectionClass
+ (id)sharedInstance;                                                                      // IMP 0x1001164f8
+ (id)allocWithZone:(_NSZone *)arg1;                                                       // IMP 0x100116570
+ (id)sharedLogger;                                                                        // IMP 0x100116870
+ (oneway void)threadMain:(id)arg1;                                                        // IMP 0x100116ba4
+ (id)thread;                                                                              // IMP 0x100116bf8
- (id)defaultTracker;                                                                      // IMP 0x100115f40
- (void)setDefaultTracker:(id)arg1;                                                        // IMP 0x100115fac
- (id)clientId;                                                                            // IMP 0x10011601c
- (double)dispatchInterval;                                                                // IMP 0x1001160a4
- (void)setDispatchInterval:(double)arg1;                                                  // IMP 0x100116134
- (BOOL)trackUncaughtExceptions;                                                           // IMP 0x1001161c0
- (void)setTrackUncaughtExceptions:(BOOL)arg1;                                             // IMP 0x10011622c
- (BOOL)createDispatcher:(id *)arg1;                                                       // IMP 0x1001162ac
- (id)init;                                                                                // IMP 0x100116354
- (id)retain;                                                                              // IMP 0x10011660c
- (unsigned long long)retainCount;                                                         // IMP 0x100116610
- (oneway void)release;                                                                    // IMP 0x100116618
- (id)autorelease;                                                                         // IMP 0x10011661c
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x100116620
- (id)trackerWithName:(id)arg1 trackingId:(id)arg2;                                        // IMP 0x100116624
- (id)trackerWithTrackingId:(id)arg1;                                                      // IMP 0x10011685c
- (void)dispatch;                                                                          // IMP 0x1001168a4
- (void)dispatchWithCompletionHandler:(id /*block*/)arg1;                                  // IMP 0x100116920
- (id)dispatcher;                                                                          // IMP 0x1001169ac
- (void)removeTrackerByName:(id)arg1;                                                      // IMP 0x100116ad0
- (void)setDryRun:(BOOL)arg1;                                                              // IMP 0x100116d14
- (BOOL)dryRun;                                                                            // IMP 0x100116dac
- (BOOL)optOut;                                                                            // IMP 0x100116e18
- (void)setOptOut:(BOOL)arg1;                                                              // IMP 0x100116e84
- (void)setUrlConnectionClass:(Class)arg1;                                                 // IMP 0x100116ef4
- (id)logger;                                                                              // IMP 0x100116f40
- (void)setLogger:(id)arg1;                                                                // IMP 0x100116fac
- (void)reset;                                                                             // IMP 0x100117050
- (void)setDispatcher:(id)arg1;                                                            // IMP 0x10011722c
- (id)trackers;                                                                            // IMP 0x100117248
- (void)setTrackers:(id)arg1;                                                              // IMP 0x100117258
- (Class)trackerImplClass;                                                                 // IMP 0x100117274
- (void)setTrackerImplClass:(Class)arg1;                                                   // IMP 0x100117284
- (Class)urlConnectionClass;                                                               // IMP 0x100117294
@end

@interface GAIBatchingDispatcher : NSObject <GAIReachabilityDelegate, GAIDispatchSender>   // instance size 136, class @0x100424de8
{
    BOOL _optOut;                            // +0x8 (1 bytes)  B
    BOOL _hasHits;                           // +0x9 (1 bytes)  B
    BOOL _hostReachable;                     // +0xa (1 bytes)  B
    unsigned long long _batchingStrategy;    // +0x10 (8 bytes)  Q
    unsigned long long _compressionStrategy; // +0x18 (8 bytes)  Q
    double _dispatchInterval;                // +0x20 (8 bytes)  d
    GAIDataStore *_dataStore;                // +0x28 (8 bytes)  @"GAIDataStore"
    GAIRequestBuilder *_requestBuilder;      // +0x30 (8 bytes)  @"GAIRequestBuilder"
    Class _urlConnectionClass;               // +0x38 (8 bytes)  #
    unsigned long long _maxHitsPerDispatch;  // +0x40 (8 bytes)  Q
    double _maxHitAge;                       // +0x48 (8 bytes)  d
    unsigned long long _maxBodySize;         // +0x50 (8 bytes)  Q
    unsigned long long _maxHitSize;          // +0x58 (8 bytes)  Q
    GAIReachabilityChecker *_reachability;   // +0x60 (8 bytes)  @"GAIReachabilityChecker"
    NSString *_httpURL;                      // +0x68 (8 bytes)  @"NSString"
    NSString *_httpsURL;                     // +0x70 (8 bytes)  @"NSString"
    id _connection;                          // +0x78 (8 bytes)  @
    NSTimer *_timer;                         // +0x80 (8 bytes)  @"NSTimer"
}
@property (readonly, nonatomic) BOOL optOut;  // ivar: _optOut
@property (nonatomic) unsigned long long batchingStrategy;  // ivar: _batchingStrategy
@property (nonatomic) unsigned long long compressionStrategy;  // ivar: _compressionStrategy
@property (nonatomic) double dispatchInterval;  // ivar: _dispatchInterval
@property (readonly, nonatomic) NSString *clientId;
@property (retain, nonatomic) GAIDataStore *dataStore;  // ivar: _dataStore
@property (readonly, nonatomic) GAIRequestBuilder *requestBuilder;  // ivar: _requestBuilder
@property (retain, nonatomic) Class urlConnectionClass;  // ivar: _urlConnectionClass
@property (nonatomic) unsigned long long maxHitsPerDispatch;  // ivar: _maxHitsPerDispatch
@property (nonatomic) double maxHitAge;  // ivar: _maxHitAge
@property (nonatomic) unsigned long long maxBodySize;  // ivar: _maxBodySize
@property (nonatomic) unsigned long long maxHitSize;  // ivar: _maxHitSize
@property (retain, nonatomic) GAIReachabilityChecker *reachability;  // ivar: _reachability
@property (nonatomic) BOOL hasHits;  // ivar: _hasHits
@property (nonatomic) BOOL hostReachable;  // ivar: _hostReachable
@property (retain, nonatomic) NSString *httpURL;  // ivar: _httpURL
@property (retain, nonatomic) NSString *httpsURL;  // ivar: _httpsURL
@property (retain, nonatomic) id connection;  // ivar: _connection
@property (retain, nonatomic) NSTimer *timer;  // ivar: _timer
+ (id)dispatcher;                                                                          // IMP 0x10012a004
+ (id)thread;                                                                              // IMP 0x10012a088
- (void)setTimer:(id)arg1;                                                                 // IMP 0x100126dd0
- (void)setDispatchInterval:(double)arg1;                                                  // IMP 0x100126e40
- (void)setHostReachable:(BOOL)arg1;                                                       // IMP 0x100126e6c
- (void)setHasHits:(BOOL)arg1;                                                             // IMP 0x100126e98
- (void)reachability:(id)arg1 statusChanged:(int)arg2;                                     // IMP 0x100126ec4
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4; // IMP 0x100126edc
- (void)didSendHits:(id)arg1 response:(id)arg2 data:(id)arg3 error:(id)arg4 completionHandler:(id /*block*/)arg5; // IMP 0x100126ff8
- (void)didSendHits:(id)arg1 sendMore:(BOOL)arg2;                                          // IMP 0x100127284
- (id)init;                                                                                // IMP 0x100127444
- (id)initWithDataStore:(id)arg1;                                                          // IMP 0x1001274b8
- (void)dealloc;                                                                           // IMP 0x100127770
- (void)cancelPerformRequests;                                                             // IMP 0x100127884
- (unsigned long long)batchByTimeGap:(id)arg1 maxHits:(unsigned long long)arg2;            // IMP 0x1001278f4
- (unsigned long long)batchBySessionSplit:(id)arg1 maxHits:(unsigned long long)arg2;       // IMP 0x100127af8
- (id)hitsForDispatch;                                                                     // IMP 0x100127c74
- (id)nextPendingHits;                                                                     // IMP 0x1001284f4
- (void)persist:(id)arg1;                                                                  // IMP 0x100128990
- (void)deleteHits:(id)arg1;                                                               // IMP 0x100128b98
- (void)deleteAllHits;                                                                     // IMP 0x100128ec0
- (id)clientId;                                                                            // IMP 0x100129190
- (oneway void)dispatch;                                                                   // IMP 0x1001291ec
- (oneway void)dispatchWithCompletionHandler:(id /*block*/)arg1;                           // IMP 0x100129200
- (id)buildPayload:(id)arg1;                                                               // IMP 0x100129a5c
- (void)queueModel:(id)arg1;                                                               // IMP 0x100129cdc
- (void)queueDispatch:(id)arg1;                                                            // IMP 0x100129d90
- (BOOL)rescheduleIfNeeded:(SEL)arg1 withObject:(id)arg2 andWait:(BOOL)arg3;               // IMP 0x10012a0a8
- (void)initialDispatch;                                                                   // IMP 0x10012a18c
- (void)cancelDispatch;                                                                    // IMP 0x10012a1fc
- (BOOL)canDispatch;                                                                       // IMP 0x10012a294
- (BOOL)canScheduleDispatch;                                                               // IMP 0x10012a2e0
- (void)timerFired;                                                                        // IMP 0x10012a330
- (oneway void)rescheduleDispatch;                                                         // IMP 0x10012a37c
- (void).cxx_destruct;                                                                     // IMP 0x10012a6ec
- (BOOL)optOut;                                                                            // IMP 0x10012a464
- (unsigned long long)batchingStrategy;                                                    // IMP 0x10012a474
- (void)setBatchingStrategy:(unsigned long long)arg1;                                      // IMP 0x10012a484
- (unsigned long long)compressionStrategy;                                                 // IMP 0x10012a494
- (void)setCompressionStrategy:(unsigned long long)arg1;                                   // IMP 0x10012a4a4
- (double)dispatchInterval;                                                                // IMP 0x10012a4b4
- (id)dataStore;                                                                           // IMP 0x10012a4c4
- (void)setDataStore:(id)arg1;                                                             // IMP 0x10012a4d4
- (id)requestBuilder;                                                                      // IMP 0x10012a50c
- (Class)urlConnectionClass;                                                               // IMP 0x10012a51c
- (void)setUrlConnectionClass:(Class)arg1;                                                 // IMP 0x10012a52c
- (unsigned long long)maxHitsPerDispatch;                                                  // IMP 0x10012a540
- (void)setMaxHitsPerDispatch:(unsigned long long)arg1;                                    // IMP 0x10012a550
- (double)maxHitAge;                                                                       // IMP 0x10012a560
- (void)setMaxHitAge:(double)arg1;                                                         // IMP 0x10012a570
- (unsigned long long)maxBodySize;                                                         // IMP 0x10012a580
- (void)setMaxBodySize:(unsigned long long)arg1;                                           // IMP 0x10012a590
- (unsigned long long)maxHitSize;                                                          // IMP 0x10012a5a0
- (void)setMaxHitSize:(unsigned long long)arg1;                                            // IMP 0x10012a5b0
- (id)reachability;                                                                        // IMP 0x10012a5c0
- (void)setReachability:(id)arg1;                                                          // IMP 0x10012a5d0
- (BOOL)hasHits;                                                                           // IMP 0x10012a608
- (BOOL)hostReachable;                                                                     // IMP 0x10012a618
- (id)httpURL;                                                                             // IMP 0x10012a628
- (void)setHttpURL:(id)arg1;                                                               // IMP 0x10012a638
- (id)httpsURL;                                                                            // IMP 0x10012a670
- (void)setHttpsURL:(id)arg1;                                                              // IMP 0x10012a680
- (id)connection;                                                                          // IMP 0x10012a6b8
- (void)setConnection:(id)arg1;                                                            // IMP 0x10012a6c8
- (id)timer;                                                                               // IMP 0x10012a6dc
@end

@interface GAICompressionUtil : NSObject   // instance size 8, class @0x100424f00
+ (id)gai_dataByCompressingBytes:(const void *)arg1 length:(unsigned long long)arg2 compressionLevel:(int)arg3 mode:(int)arg4; // IMP 0x10012b460
+ (id)gai_dataByInflatingBytes:(const void *)arg1 length:(unsigned long long)arg2 isRawData:(BOOL)arg3; // IMP 0x10012b648
+ (id)gai_dataByGzippingBytes:(const void *)arg1 length:(unsigned long long)arg2;          // IMP 0x10012b868
+ (id)gai_dataByGzippingData:(id)arg1;                                                     // IMP 0x10012b880
+ (id)gai_dataByGzippingBytes:(const void *)arg1 length:(unsigned long long)arg2 compressionLevel:(int)arg3; // IMP 0x10012b8f4
+ (id)gai_dataByGzippingData:(id)arg1 compressionLevel:(int)arg2;                          // IMP 0x10012b908
+ (id)gai_dataByDeflatingBytes:(const void *)arg1 length:(unsigned long long)arg2;         // IMP 0x10012b980
+ (id)gai_dataByDeflatingData:(id)arg1;                                                    // IMP 0x10012b998
+ (id)gai_dataByDeflatingBytes:(const void *)arg1 length:(unsigned long long)arg2 compressionLevel:(int)arg3; // IMP 0x10012ba0c
+ (id)gai_dataByDeflatingData:(id)arg1 compressionLevel:(int)arg2;                         // IMP 0x10012ba20
+ (id)gai_dataByInflatingBytes:(const void *)arg1 length:(unsigned long long)arg2;         // IMP 0x10012ba98
+ (id)gai_dataByInflatingData:(id)arg1;                                                    // IMP 0x10012baac
+ (id)gai_dataByRawDeflatingBytes:(const void *)arg1 length:(unsigned long long)arg2;      // IMP 0x10012bb1c
+ (id)gai_dataByRawDeflatingData:(id)arg1;                                                 // IMP 0x10012bb34
+ (id)gai_dataByRawDeflatingBytes:(const void *)arg1 length:(unsigned long long)arg2 compressionLevel:(int)arg3; // IMP 0x10012bba8
+ (id)gai_dataByRawDeflatingData:(id)arg1 compressionLevel:(int)arg2;                      // IMP 0x10012bbbc
+ (id)gai_dataByRawInflatingBytes:(const void *)arg1 length:(unsigned long long)arg2;      // IMP 0x10012bc34
+ (id)gai_dataByRawInflatingData:(id)arg1;                                                 // IMP 0x10012bc48
@end

@interface GAICoreDataUtil : NSObject   // instance size 8, class @0x1004249d8
+ (id)model;                                                                               // IMP 0x10011ca84
+ (id)oldModel;                                                                            // IMP 0x10011caec
+ (id)entityWithDescription:(id)arg1;                                                      // IMP 0x10011cb54
+ (id)modelWithDescription:(id)arg1;                                                       // IMP 0x10011cde4
+ (id)modelDescription;                                                                    // IMP 0x10011d048
+ (id)oldModelDescription;                                                                 // IMP 0x10011d39c
- (id)init;                                                                                // IMP 0x10011ca10
@end

@interface GAIDataStore : NSObject   // instance size 80, class @0x100424898
{
    BOOL _setUpCoreData;                     // +0x8 (1 bytes)  B
    NSString *_clientId;                     // +0x10 (8 bytes)  @"NSString"
    NSString *_hashedIdfa;                   // +0x18 (8 bytes)  @"NSString"
    NSNumber *_lastChangeTimeStamp;          // +0x20 (8 bytes)  @"NSNumber"
    NSNumber *_idfaChangeCount;              // +0x28 (8 bytes)  @"NSNumber"
    unsigned long long _maxHitCount;         // +0x30 (8 bytes)  Q
    NSManagedObjectContext *_oldContext;     // +0x38 (8 bytes)  @"NSManagedObjectContext"
    NSManagedObjectContext *_context;        // +0x40 (8 bytes)  @"NSManagedObjectContext"
    NSManagedObjectContext *_currentContext; // +0x48 (8 bytes)  @"NSManagedObjectContext"
}
@property (retain, nonatomic) NSString *clientId;
@property (retain, nonatomic) NSString *hashedIdfa;
@property (retain, nonatomic) NSNumber *idfaChangeCount;
@property (retain, nonatomic) NSNumber *lastChangeTimeStamp;
@property (nonatomic) unsigned long long maxHitCount;  // ivar: _maxHitCount
@property (retain, nonatomic) NSManagedObjectContext *oldContext;  // ivar: _oldContext
@property (retain, nonatomic) NSManagedObjectContext *context;  // ivar: _context
@property (retain, nonatomic) NSManagedObjectContext *currentContext;  // ivar: _currentContext
+ (id)databaseFullPath:(id)arg1;                                                           // IMP 0x100118634
+ (id)databaseFullURL:(id)arg1;                                                            // IMP 0x1001186f8
+ (id)thread;                                                                              // IMP 0x100118eac
+ (id)dataStore;                                                                           // IMP 0x10011c40c
- (id)requestEntityName:(id)arg1;                                                          // IMP 0x100117fec
- (id)requestHitsWithLimit:(unsigned long long)arg1;                                       // IMP 0x10011805c
- (id)requestPropertyWithName:(id)arg1;                                                    // IMP 0x100118180
- (id)oldHitDescription:(id)arg1;                                                          // IMP 0x100118268
- (BOOL)deleteExcessHits:(id *)arg1;                                                       // IMP 0x100118764
- (long long)context:(id)arg1 hitCount:(id *)arg2;                                         // IMP 0x100118960
- (BOOL)context:(id)arg1 removeStaleHits:(id *)arg2;                                       // IMP 0x100118b10
- (void)gai_performBlockHelper:(id)arg1;                                                   // IMP 0x100118ecc
- (id)performBlockAndWait:(id /*block*/)arg1 withError:(id *)arg2;                         // IMP 0x100118fc8
- (id)coordinatorWithModel:(id)arg1 URL:(id)arg2;                                          // IMP 0x1001193d4
- (id)contextWithModel:(id)arg1 URL:(id)arg2;                                              // IMP 0x100119738
- (BOOL)setProperty:(id)arg1 numberValue:(id)arg2 withError:(id *)arg3;                    // IMP 0x10011981c
- (BOOL)setProperty:(id)arg1 stringValue:(id)arg2 withError:(id *)arg3;                    // IMP 0x100119a58
- (id)lastChangeTimeStamp;                                                                 // IMP 0x100119c94
- (oneway void)setLastChangeTimeStamp:(id)arg1;                                            // IMP 0x100119d54
- (id)idfaChangeCount;                                                                     // IMP 0x100119ebc
- (oneway void)setIdfaChangeCount:(id)arg1;                                                // IMP 0x100119f7c
- (id)hashedIdfa;                                                                          // IMP 0x10011a0e4
- (oneway void)setHashedIdfa:(id)arg1;                                                     // IMP 0x10011a1a4
- (id)clientId;                                                                            // IMP 0x10011a31c
- (id)fetchClientId;                                                                       // IMP 0x10011a3e0
- (oneway void)setClientId:(id)arg1;                                                       // IMP 0x10011a58c
- (long long)hitCount:(id *)arg1;                                                          // IMP 0x10011a6f4
- (void)addHit:(id)arg1;                                                                   // IMP 0x10011a8c0
- (id)fetchHitsWithLimit:(unsigned long long)arg1 error:(id *)arg2;                        // IMP 0x10011ab68
- (BOOL)deleteHitsWithIds:(id)arg1 error:(id *)arg2;                                       // IMP 0x10011afdc
- (BOOL)deleteAllHits:(id *)arg1;                                                          // IMP 0x10011b2e0
- (BOOL)save:(id *)arg1;                                                                   // IMP 0x10011b6cc
- (id)init;                                                                                // IMP 0x10011b908
- (BOOL)setUpCoreData;                                                                     // IMP 0x10011ba88
- (void)onExit:(id)arg1;                                                                   // IMP 0x10011c370
- (void)dealloc;                                                                           // IMP 0x10011c384
- (void).cxx_destruct;                                                                     // IMP 0x10011c534
- (unsigned long long)maxHitCount;                                                         // IMP 0x10011c43c
- (void)setMaxHitCount:(unsigned long long)arg1;                                           // IMP 0x10011c44c
- (id)oldContext;                                                                          // IMP 0x10011c45c
- (void)setOldContext:(id)arg1;                                                            // IMP 0x10011c46c
- (id)context;                                                                             // IMP 0x10011c4a4
- (void)setContext:(id)arg1;                                                               // IMP 0x10011c4b4
- (id)currentContext;                                                                      // IMP 0x10011c4ec
- (void)setCurrentContext:(id)arg1;                                                        // IMP 0x10011c4fc
@end

@interface GAIDefaultLogger : NSObject <GAILogger>   // instance size 16, class @0x1004247a8
{
    unsigned long long _logLevel;            // +0x8 (8 bytes)  Q
}
@property (nonatomic) unsigned long long logLevel;  // ivar: _logLevel
- (id)init;                                                                                // IMP 0x100115d54
- (void)verbose:(id)arg1;                                                                  // IMP 0x100115da4
- (void)info:(id)arg1;                                                                     // IMP 0x100115e04
- (void)warning:(id)arg1;                                                                  // IMP 0x100115e64
- (void)error:(id)arg1;                                                                    // IMP 0x100115ec4
- (unsigned long long)logLevel;                                                            // IMP 0x100115f20
- (void)setLogLevel:(unsigned long long)arg1;                                              // IMP 0x100115f30
@end

@interface GAIDictionaryBuilder : NSObject   // instance size 56, class @0x100424cf8
{
    NSMutableDictionary *_parameters;        // +0x8 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_impressionLists;   // +0x10 (8 bytes)  @"NSMutableDictionary"
    NSMutableArray *_impressionListNames;    // +0x18 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_products;               // +0x20 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_promotions;             // +0x28 (8 bytes)  @"NSMutableArray"
    GAIEcommerceProductAction *_pAction;     // +0x30 (8 bytes)  @"GAIEcommerceProductAction"
}
@property (retain, nonatomic) NSMutableDictionary *parameters;  // ivar: _parameters
@property (retain, nonatomic) NSMutableDictionary *impressionLists;  // ivar: _impressionLists
@property (retain, nonatomic) NSMutableArray *impressionListNames;  // ivar: _impressionListNames
@property (retain, nonatomic) NSMutableArray *products;  // ivar: _products
@property (retain, nonatomic) NSMutableArray *promotions;  // ivar: _promotions
@property (retain, nonatomic) GAIEcommerceProductAction *pAction;  // ivar: _pAction
+ (id)valueForNumber:(id)arg1;                                                             // IMP 0x100122200
+ (id)valueForString:(id)arg1;                                                             // IMP 0x1001222a8
+ (id)createAppView;                                                                       // IMP 0x1001238d0
+ (id)createScreenView;                                                                    // IMP 0x10012396c
+ (id)createEventWithCategory:(id)arg1 action:(id)arg2 label:(id)arg3 value:(id)arg4;      // IMP 0x100123a08
+ (id)gai_exceptionWithDescription:(id)arg1 withFatal:(id)arg2;                            // IMP 0x100123ce4
+ (id)createExceptionWithDescription:(id)arg1 withFatal:(id)arg2;                          // IMP 0x100123e9c
+ (id)createItemWithTransactionId:(id)arg1 name:(id)arg2 sku:(id)arg3 category:(id)arg4 price:(id)arg5 quantity:(id)arg6 currencyCode:(id)arg7; // IMP 0x100123f44
+ (id)createSocialWithNetwork:(id)arg1 action:(id)arg2 target:(id)arg3;                    // IMP 0x1001242e4
+ (id)createTimingWithCategory:(id)arg1 interval:(id)arg2 name:(id)arg3 label:(id)arg4;    // IMP 0x10012453c
+ (id)createTransactionWithId:(id)arg1 affiliation:(id)arg2 revenue:(id)arg3 tax:(id)arg4 shipping:(id)arg5 currencyCode:(id)arg6; // IMP 0x100124814
- (id)init;                                                                                // IMP 0x100122098
- (id)set:(id)arg1 forKey:(id)arg2;                                                        // IMP 0x10012230c
- (id)gai_set:(id)arg1 forKey:(id)arg2;                                                    // IMP 0x1001223b4
- (id)setAll:(id)arg1;                                                                     // IMP 0x1001224e4
- (id)get:(id)arg1;                                                                        // IMP 0x100122844
- (id)build;                                                                               // IMP 0x100122a38
- (id)setCampaignParametersFromUrl:(id)arg1;                                               // IMP 0x100123270
- (id)setProductAction:(id)arg1;                                                           // IMP 0x100124b54
- (id)addProduct:(id)arg1;                                                                 // IMP 0x100124bd8
- (id)addProductImpression:(id)arg1 impressionList:(id)arg2;                               // IMP 0x100124c84
- (id)addPromotion:(id)arg1;                                                               // IMP 0x100124e44
- (void).cxx_destruct;                                                                     // IMP 0x1001250a0
- (id)parameters;                                                                          // IMP 0x100124ef0
- (void)setParameters:(id)arg1;                                                            // IMP 0x100124f00
- (id)impressionLists;                                                                     // IMP 0x100124f38
- (void)setImpressionLists:(id)arg1;                                                       // IMP 0x100124f48
- (id)impressionListNames;                                                                 // IMP 0x100124f80
- (void)setImpressionListNames:(id)arg1;                                                   // IMP 0x100124f90
- (id)products;                                                                            // IMP 0x100124fc8
- (void)setProducts:(id)arg1;                                                              // IMP 0x100124fd8
- (id)promotions;                                                                          // IMP 0x100125010
- (void)setPromotions:(id)arg1;                                                            // IMP 0x100125020
- (id)pAction;                                                                             // IMP 0x100125058
- (void)setPAction:(id)arg1;                                                               // IMP 0x100125068
@end

@interface GAIEcommerceFields : NSObject   // instance size 8, class @0x100424758
+ (id)stripAmpersandIfPresent:(id)arg1;                                                    // IMP 0x100115a8c
+ (id)productFieldForIndex:(unsigned long long)arg1 suffix:(id)arg2;                       // IMP 0x100115b08
+ (id)impressionListForIndex:(unsigned long long)arg1;                                     // IMP 0x100115bd0
+ (id)productImpressionForList:(id)arg1 index:(unsigned long long)arg2 suffix:(id)arg3;    // IMP 0x100115c0c
+ (id)promotionForIndex:(unsigned long long)arg1 suffix:(id)arg2;                          // IMP 0x100115cc0
@end

@interface GAIEcommerceProduct : NSObject   // instance size 16, class @0x100424c08
{
    NSMutableDictionary *_parameters;        // +0x8 (8 bytes)  @"NSMutableDictionary"
}
@property (retain, nonatomic) NSMutableDictionary *parameters;  // ivar: _parameters
- (id)init;                                                                                // IMP 0x100121078
- (id)setString:(id)arg1 forKey:(id)arg2;                                                  // IMP 0x100121104
- (id)setNumber:(id)arg1 forKey:(id)arg2;                                                  // IMP 0x100121234
- (id)setId:(id)arg1;                                                                      // IMP 0x100121364
- (id)setName:(id)arg1;                                                                    // IMP 0x1001213ac
- (id)setBrand:(id)arg1;                                                                   // IMP 0x1001213f4
- (id)setCategory:(id)arg1;                                                                // IMP 0x10012143c
- (id)setVariant:(id)arg1;                                                                 // IMP 0x100121484
- (id)setPrice:(id)arg1;                                                                   // IMP 0x1001214cc
- (id)setQuantity:(id)arg1;                                                                // IMP 0x100121514
- (id)setCouponCode:(id)arg1;                                                              // IMP 0x10012155c
- (id)setPosition:(id)arg1;                                                                // IMP 0x1001215a4
- (id)setCustomDimension:(unsigned long long)arg1 value:(id)arg2;                          // IMP 0x1001215ec
- (id)setCustomMetric:(unsigned long long)arg1 value:(id)arg2;                             // IMP 0x100121698
- (id)buildWithIndex:(unsigned long long)arg1;                                             // IMP 0x100121744
- (id)buildWithListIndex:(unsigned long long)arg1 index:(unsigned long long)arg2;          // IMP 0x100121960
- (void).cxx_destruct;                                                                     // IMP 0x100121c04
- (id)parameters;                                                                          // IMP 0x100121bbc
- (void)setParameters:(id)arg1;                                                            // IMP 0x100121bcc
@end

@interface GAIEcommerceProductAction : NSObject   // instance size 16, class @0x100424e88
{
    NSMutableDictionary *_parameters;        // +0x8 (8 bytes)  @"NSMutableDictionary"
}
@property (retain, nonatomic) NSMutableDictionary *parameters;  // ivar: _parameters
- (id)init;                                                                                // IMP 0x10012afd4
- (id)setString:(id)arg1 forKey:(id)arg2;                                                  // IMP 0x10012b060
- (id)setNumber:(id)arg1 forKey:(id)arg2;                                                  // IMP 0x10012b190
- (id)setAction:(id)arg1;                                                                  // IMP 0x10012b2c0
- (id)setTransactionId:(id)arg1;                                                           // IMP 0x10012b2dc
- (id)setAffiliation:(id)arg1;                                                             // IMP 0x10012b2f8
- (id)setRevenue:(id)arg1;                                                                 // IMP 0x10012b314
- (id)setTax:(id)arg1;                                                                     // IMP 0x10012b330
- (id)setShipping:(id)arg1;                                                                // IMP 0x10012b34c
- (id)setCouponCode:(id)arg1;                                                              // IMP 0x10012b368
- (id)setCheckoutStep:(id)arg1;                                                            // IMP 0x10012b384
- (id)setCheckoutOption:(id)arg1;                                                          // IMP 0x10012b3a0
- (id)setProductActionList:(id)arg1;                                                       // IMP 0x10012b3bc
- (id)setProductListSource:(id)arg1;                                                       // IMP 0x10012b3d8
- (id)build;                                                                               // IMP 0x10012b3f4
- (void).cxx_destruct;                                                                     // IMP 0x10012b44c
- (id)parameters;                                                                          // IMP 0x10012b404
- (void)setParameters:(id)arg1;                                                            // IMP 0x10012b414
@end

@interface GAIEcommercePromotion : NSObject   // instance size 16, class @0x100424d98
{
    NSMutableDictionary *_parameters;        // +0x8 (8 bytes)  @"NSMutableDictionary"
}
@property (retain, nonatomic) NSMutableDictionary *parameters;  // ivar: _parameters
- (id)init;                                                                                // IMP 0x10012692c
- (id)setString:(id)arg1 forKey:(id)arg2;                                                  // IMP 0x1001269b8
- (id)setId:(id)arg1;                                                                      // IMP 0x100126ae8
- (id)setName:(id)arg1;                                                                    // IMP 0x100126b04
- (id)setCreative:(id)arg1;                                                                // IMP 0x100126b20
- (id)setPosition:(id)arg1;                                                                // IMP 0x100126b3c
- (id)buildWithIndex:(unsigned long long)arg1;                                             // IMP 0x100126b58
- (void).cxx_destruct;                                                                     // IMP 0x100126dbc
- (id)parameters;                                                                          // IMP 0x100126d74
- (void)setParameters:(id)arg1;                                                            // IMP 0x100126d84
@end

@interface GAIError : NSObject   // instance size 8, class @0x100424938
+ (id)errorWithCode:(long long)arg1;                                                       // IMP 0x10011c658
+ (id)errorWithCode:(long long)arg1 withDescription:(id)arg2;                              // IMP 0x10011c688
+ (id)errorWithCode:(long long)arg1 withFormat:(id)arg2;                                   // IMP 0x10011c710
+ (id)errorWithCode:(long long)arg1 withFailedFilePath:(id)arg2 withDescription:(id)arg3;  // IMP 0x10011c7a0
+ (id)errorWithCode:(long long)arg1 withFailedFilePath:(id)arg2 withFormat:(id)arg3;       // IMP 0x10011c838
+ (id)errorWithCode:(long long)arg1 withUnderlyingError:(id)arg2 withDescription:(id)arg3; // IMP 0x10011c8d8
+ (id)errorWithCode:(long long)arg1 withUnderlyingError:(id)arg2 withFormat:(id)arg3;      // IMP 0x10011c970
- (id)init;                                                                                // IMP 0x10011c5d8
@end

@interface GAIExceptionParser : NSObject   // instance size 8, class @0x100424c58
+ (id)symbolFromStackFrame:(id)arg1;                                                       // IMP 0x100121c98
+ (id)exceptionDescription:(id)arg1 withMaxLength:(unsigned long long)arg2;                // IMP 0x100121df8
- (id)init;                                                                                // IMP 0x100121c18
@end

@interface GAIFields : NSObject   // instance size 8, class @0x100424cd0
+ (id)contentGroupForIndex:(unsigned long long)arg1;                                       // IMP 0x100121fe4
+ (id)customDimensionForIndex:(unsigned long long)arg1;                                    // IMP 0x100122020
+ (id)customMetricForIndex:(unsigned long long)arg1;                                       // IMP 0x10012205c
@end

@interface GAIHit : NSManagedObject   // instance size 96, class @0x100424910
@property (retain, @dynamic, nonatomic) NSData *parametersData;
@property (retain, @dynamic, nonatomic) NSString *hitType;
@property (retain, @dynamic, nonatomic) NSDate *timestamp;
@property (retain, @dynamic, nonatomic) NSDictionary *parameters;
@property (retain, @dynamic, nonatomic) NSString *dispatchUrl;
@property (retain, @dynamic, nonatomic) NSString *gaiVersion;
@end

@interface GAIHitUtil : NSObject   // instance size 8, class @0x100424a28
+ (id)systemLanguageFromLanguages:(id)arg1;                                                // IMP 0x10011dcbc
+ (id)systemCountryFromLocale:(id)arg1;                                                    // IMP 0x10011dd3c
+ (id)userAgentStringWithProduct:(id)arg1 version:(id)arg2 deviceModel:(id)arg3 systemName:(id)arg4 systemVersion:(id)arg5 systemLanguage:(id)arg6 systemCountry:(id)arg7; // IMP 0x10011dd7c
+ (id)userAgentString;                                                                     // IMP 0x10011ddcc
+ (id)systemLanguage;                                                                      // IMP 0x10011dee0
+ (id)systemCountry;                                                                       // IMP 0x10011df2c
+ (id)systemScreenResolution;                                                              // IMP 0x10011df78
+ (id)systemScreenColorDepth;                                                              // IMP 0x10011dfe4
+ (long long)millisecondsElapsedFrom:(id)arg1 To:(id)arg2;                                 // IMP 0x10011dff0
+ (unsigned int)gaHash:(id)arg1;                                                           // IMP 0x10011e024
+ (id)generateClientId;                                                                    // IMP 0x10011e1ac
+ (id)hashIdfa:(id)arg1 clientId:(id)arg2;                                                 // IMP 0x10011e210
- (id)init;                                                                                // IMP 0x10011dc3c
@end

@interface GAILoggerImpl : NSObject <GAILogger>   // instance size 8, class @0x1004288d0
@property (nonatomic) unsigned long long logLevel;
- (void)info:(id)arg1;                                                                     // IMP 0x10017af10
- (void)verbose:(id)arg1;                                                                  // IMP 0x10017af38
- (void)warning:(id)arg1;                                                                  // IMP 0x10017af60
- (void)error:(id)arg1;                                                                    // IMP 0x10017af88
- (void)setLogLevel:(unsigned long long)arg1;                                              // IMP 0x10017afb0
- (unsigned long long)logLevel;                                                            // IMP 0x10017afd0
- (unsigned long long)gaLogLevelFromGtmLogLevel:(int)arg1;                                 // IMP 0x10017b018
@end

@interface GAIProperty : NSManagedObject   // instance size 96, class @0x1004249b0
@property (retain, @dynamic, nonatomic) NSString *name;
@property (retain, @dynamic, nonatomic) NSString *string;
@property (retain, @dynamic, nonatomic) NSNumber *number;
@property (retain, @dynamic, nonatomic) NSString *gaiVersion;
@end

@interface GAIReachabilityChecker : NSObject   // instance size 48, class @0x100424bb8
{
    int reachabilityStatus_;                 // +0x8 (4 bytes)  i
    const GAIReachabilityApi *reachabilityApi_; // +0x10 (8 bytes)  r^{GAIReachabilityApi=^?^?^?^?^?}
    __SCNetworkReachability *reachability_;  // +0x18 (8 bytes)  ^{__SCNetworkReachability=}
    NSString *host_;                         // +0x20 (8 bytes)  @"NSString"
    id<GAIReachabilityDelegate> delegate_;   // +0x28 (8 bytes)  @"<GAIReachabilityDelegate>"
}
@property (nonatomic) int reachabilityStatus;  // ivar: reachabilityStatus_
@property (copy, nonatomic) NSString *host;  // ivar: host_
@property (nonatomic) id<GAIReachabilityDelegate> delegate;  // ivar: delegate_
@property (readonly, nonatomic) BOOL isActive;
@property (nonatomic) const GAIReachabilityApi *reachabilityApi;  // ivar: reachabilityApi_
@property (nonatomic) __SCNetworkReachability *reachability;  // ivar: reachability_
- (const GAIReachabilityApi *)reachabilityApi;                                             // IMP 0x1001203c8
- (void)setReachabilityApi:(const GAIReachabilityApi *)arg1;                               // IMP 0x1001203d8
- (BOOL)isActive;                                                                          // IMP 0x1001204cc
- (void)setDelegate:(id)arg1;                                                              // IMP 0x1001204e4
- (id)init;                                                                                // IMP 0x1001205f8
- (id)initWithDelegate:(id)arg1 withHost:(id)arg2;                                         // IMP 0x100120678
- (void)dealloc;                                                                           // IMP 0x10012081c
- (BOOL)start;                                                                             // IMP 0x100120890
- (void)stop;                                                                              // IMP 0x1001209bc
- (int)statusForFlags:(unsigned int)arg1;                                                  // IMP 0x100120a48
- (void)reachabilityFlagsChanged:(unsigned int)arg1;                                       // IMP 0x100120a84
- (__SCNetworkReachability *)reachability;                                                 // IMP 0x100120bc8
- (void)setReachability:(__SCNetworkReachability *)arg1;                                   // IMP 0x100120bd8
- (int)reachabilityStatus;                                                                 // IMP 0x100120be8
- (void)setReachabilityStatus:(int)arg1;                                                   // IMP 0x100120bf8
- (id)host;                                                                                // IMP 0x100120c08
- (void)setHost:(id)arg1;                                                                  // IMP 0x100120c18
- (id)delegate;                                                                            // IMP 0x100120c34
@end

@interface GAIRequestBuilder : NSObject   // instance size 16, class @0x100424a78
{
    NSString *userAgent_;                    // +0x8 (8 bytes)  @"NSString"
}
@property (copy, nonatomic) NSString *userAgent;  // ivar: userAgent_
- (id)init;                                                                                // IMP 0x10011e314
- (void)dealloc;                                                                           // IMP 0x10011e398
- (id)encodeParameter:(id)arg1 withValue:(id)arg2;                                         // IMP 0x10011e3fc
- (id)encodeParameters:(id)arg1;                                                           // IMP 0x10011e4e8
- (id)parameterValueToString:(id)arg1;                                                     // IMP 0x10011e700
- (id)parametersForHit:(id)arg1;                                                           // IMP 0x10011e7d4
- (id)baseRequest;                                                                         // IMP 0x10011ead0
- (id)requestPostUrl:(id)arg1 payload:(id)arg2 compression:(unsigned long long)arg3;       // IMP 0x10011ebd4
- (id)requestGetUrl:(id)arg1 payload:(id)arg2;                                             // IMP 0x10011ee78
- (id)userAgent;                                                                           // IMP 0x10011efe8
- (void)setUserAgent:(id)arg1;                                                             // IMP 0x10011eff8
@end

@interface GAIStringUtil : NSObject   // instance size 8, class @0x100424ac8
+ (id)urlParams:(id)arg1;                                                                  // IMP 0x10011f014
+ (id)trim:(id)arg1;                                                                       // IMP 0x10011f11c
+ (id)intString:(long long)arg1;                                                           // IMP 0x10011f164
+ (id)uintString:(unsigned long long)arg1;                                                 // IMP 0x10011f1a0
+ (id)decimalString:(double)arg1 decimals:(int)arg2;                                       // IMP 0x10011f1dc
+ (id)currencyMicrosString:(long long)arg1;                                                // IMP 0x10011f2e4
+ (id)percentEncode:(id)arg1;                                                              // IMP 0x10011f48c
+ (id)percentDecode:(id)arg1;                                                              // IMP 0x10011f504
+ (id)decodeParametersFromQuery:(id)arg1;                                                  // IMP 0x10011f54c
+ (id)decodeParametersFromUrl:(id)arg1;                                                    // IMP 0x10011f7a8
+ (id)stripLeadingAmpersand:(id)arg1;                                                      // IMP 0x10011f878
- (id)init;                                                                                // IMP 0x10011f09c
@end

@interface GAITrackedViewController : UIViewController   // instance size 328, class @0x100424b68
{
    id<GAITracker> _tracker;                 // +0x138 (8 bytes)  @"<GAITracker>"
    NSString *_screenName;                   // +0x140 (8 bytes)  @"NSString"
}
@property (nonatomic) id<GAITracker> tracker;  // ivar: _tracker
@property (copy, nonatomic) NSString *screenName;  // ivar: _screenName
- (void)viewDidAppear:(BOOL)arg1;                                                          // IMP 0x1001200ac
- (void).cxx_destruct;                                                                     // IMP 0x1001203b4
- (id)tracker;                                                                             // IMP 0x100120368
- (void)setTracker:(id)arg1;                                                               // IMP 0x100120378
- (id)screenName;                                                                          // IMP 0x100120388
- (void)setScreenName:(id)arg1;                                                            // IMP 0x100120398
@end

@interface GAITrackerImpl : NSObject <GAITracker>   // instance size 80, class @0x100424848
{
    BOOL allowIDFACollection_;               // +0x8 (1 bytes)  B
    id<GAIDispatchSender> dispatcher_;       // +0x10 (8 bytes)  @"<GAIDispatchSender>"
    double trackingCredits_;                 // +0x18 (8 bytes)  d
    double lastTrackTime_;                   // +0x20 (8 bytes)  d
    NSString *name_;                         // +0x28 (8 bytes)  @"NSString"
    GAITrackerModel *model_;                 // +0x30 (8 bytes)  @"GAITrackerModel"
    unsigned long long _trackCount;          // +0x38 (8 bytes)  Q
    unsigned long long _hitCount;            // +0x40 (8 bytes)  Q
    GAIUsageTracker *_usageTracker;          // +0x48 (8 bytes)  @"GAIUsageTracker"
}
@property (retain, nonatomic) id<GAIDispatchSender> dispatcher;  // ivar: dispatcher_
@property (nonatomic) unsigned long long trackCount;  // ivar: _trackCount
@property (nonatomic) unsigned long long hitCount;  // ivar: _hitCount
@property (nonatomic) double trackingCredits;  // ivar: trackingCredits_
@property (nonatomic) double lastTrackTime;  // ivar: lastTrackTime_
@property (retain, nonatomic) GAITrackerModel *model;  // ivar: model_
@property (retain, nonatomic) GAIUsageTracker *usageTracker;  // ivar: _usageTracker
@property (readonly, nonatomic) NSString *name;  // ivar: name_
@property (nonatomic) BOOL allowIDFACollection;  // ivar: allowIDFACollection_
+ (id)trackerWithDispatcher:(id)arg1 name:(id)arg2;                                        // IMP 0x100117608
- (id)init;                                                                                // IMP 0x1001172a4
- (id)initWithDispatcher:(id)arg1 name:(id)arg2;                                           // IMP 0x100117324
- (void)dealloc;                                                                           // IMP 0x100117538
- (BOOL)shouldRateLimit;                                                                   // IMP 0x100117664
- (void)gai_set:(id)arg1 value:(id)arg2;                                                   // IMP 0x100117720
- (id)gai_get:(id)arg1;                                                                    // IMP 0x100117794
- (void)gai_set:(id)arg1;                                                                  // IMP 0x10011783c
- (void)gai_send:(id)arg1;                                                                 // IMP 0x100117988
- (id)get:(id)arg1;                                                                        // IMP 0x100117d4c
- (void)set:(id)arg1 value:(id)arg2;                                                       // IMP 0x100117db0
- (void)send:(id)arg1;                                                                     // IMP 0x100117e1c
- (id)name;                                                                                // IMP 0x100117e80
- (void)setAllowIDFACollection:(BOOL)arg1;                                                 // IMP 0x100117e90
- (id)dispatcher;                                                                          // IMP 0x100117ed8
- (void)setDispatcher:(id)arg1;                                                            // IMP 0x100117ee8
- (double)trackingCredits;                                                                 // IMP 0x100117f04
- (void)setTrackingCredits:(double)arg1;                                                   // IMP 0x100117f14
- (double)lastTrackTime;                                                                   // IMP 0x100117f24
- (void)setLastTrackTime:(double)arg1;                                                     // IMP 0x100117f34
- (id)model;                                                                               // IMP 0x100117f44
- (void)setModel:(id)arg1;                                                                 // IMP 0x100117f54
- (BOOL)allowIDFACollection;                                                               // IMP 0x100117f70
- (unsigned long long)trackCount;                                                          // IMP 0x100117f80
- (void)setTrackCount:(unsigned long long)arg1;                                            // IMP 0x100117f90
- (unsigned long long)hitCount;                                                            // IMP 0x100117fa0
- (void)setHitCount:(unsigned long long)arg1;                                              // IMP 0x100117fb0
- (id)usageTracker;                                                                        // IMP 0x100117fc0
- (void)setUsageTracker:(id)arg1;                                                          // IMP 0x100117fd0
@end

@interface GAITrackerModel : NSObject <NSCopying>   // instance size 32, class @0x100424d48
{
    BOOL _allowIDFACollection;               // +0x8 (1 bytes)  B
    NSMutableDictionary *_parameters;        // +0x10 (8 bytes)  @"NSMutableDictionary"
    GAIDataStore *_dataStore;                // +0x18 (8 bytes)  @"GAIDataStore"
}
@property (nonatomic) BOOL allowIDFACollection;  // ivar: _allowIDFACollection
@property (retain, nonatomic) NSMutableDictionary *parameters;  // ivar: _parameters
@property (retain, nonatomic) GAIDataStore *dataStore;  // ivar: _dataStore
+ (void)initialize;                                                                        // IMP 0x1001253a8
- (id)buildDictionary;                                                                     // IMP 0x100125130
- (void)willSendScreenView;                                                                // IMP 0x100125384
- (id)forcedParameters;                                                                    // IMP 0x100125ad0
- (id)requiredParameters;                                                                  // IMP 0x100125ae0
- (id)methodsForKeys;                                                                      // IMP 0x100125af0
- (id)defaultParameters;                                                                   // IMP 0x100125b00
- (id)crc;                                                                                 // IMP 0x100125b10
- (id)clientId;                                                                            // IMP 0x100125cd8
- (id)screenResolution;                                                                    // IMP 0x100125cf4
- (id)language;                                                                            // IMP 0x100125d0c
- (id)cacheBuster;                                                                         // IMP 0x100125d24
- (id)idfa;                                                                                // IMP 0x100125dbc
- (id)adTargetingEnabled;                                                                  // IMP 0x1001260b4
- (id)admobId;                                                                             // IMP 0x100126140
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x100126188
- (id)copyWithOverride:(id)arg1;                                                           // IMP 0x100126238
- (id)init;                                                                                // IMP 0x1001263d4
- (id)initWithDataStore:(id)arg1;                                                          // IMP 0x1001263e8
- (id)objectForKeyedSubscript:(id)arg1;                                                    // IMP 0x1001265f4
- (void)setObject:(id)arg1 forKeyedSubscript:(id)arg2;                                     // IMP 0x100126718
- (id)valueForKey:(id)arg1;                                                                // IMP 0x1001267d0
- (id)valueForUndefinedKey:(id)arg1;                                                       // IMP 0x1001267e0
- (void)setValue:(id)arg1 forKey:(id)arg2;                                                 // IMP 0x1001267e8
- (void).cxx_destruct;                                                                     // IMP 0x1001268ec
- (BOOL)allowIDFACollection;                                                               // IMP 0x10012683c
- (void)setAllowIDFACollection:(BOOL)arg1;                                                 // IMP 0x10012684c
- (id)parameters;                                                                          // IMP 0x10012685c
- (void)setParameters:(id)arg1;                                                            // IMP 0x10012686c
- (id)dataStore;                                                                           // IMP 0x1001268a4
- (void)setDataStore:(id)arg1;                                                             // IMP 0x1001268b4
@end

@interface GAIURLConnection : NSObject   // instance size 56, class @0x100424b18
{
    NSURLRequest *request_;                  // +0x8 (8 bytes)  @"NSURLRequest"
    NSURLConnection *connection_;            // +0x10 (8 bytes)  @"NSURLConnection"
    NSURLResponse *response_;                // +0x18 (8 bytes)  @"NSURLResponse"
    NSMutableData *data_;                    // +0x20 (8 bytes)  @"NSMutableData"
    dispatch_queue_s *completionQueue_;      // +0x28 (8 bytes)  ^{dispatch_queue_s=}
    id /*block*/ completionHandler_;         // +0x30 (8 bytes)  @?
}
@property (retain, nonatomic) NSURLRequest *request;  // ivar: request_
@property (retain, nonatomic) NSURLConnection *connection;  // ivar: connection_
@property (retain, nonatomic) NSURLResponse *response;  // ivar: response_
@property (retain, nonatomic) NSMutableData *data;  // ivar: data_
@property (nonatomic) dispatch_queue_s *completionQueue;  // ivar: completionQueue_
@property (copy, nonatomic) id /*block*/ completionHandler;  // ivar: completionHandler_
+ (void)setDryRun:(BOOL)arg1;                                                              // IMP 0x10011f8d8
+ (BOOL)dryRun;                                                                            // IMP 0x10011f8e4
- (void)dealloc;                                                                           // IMP 0x10011f8f0
- (id)init;                                                                                // IMP 0x10011f9b4
- (id)initWithRequest:(id)arg1 completionQueue:(dispatch_queue_s *)arg2 completionHandler:(id /*block*/)arg3; // IMP 0x10011fa34
- (void)start;                                                                             // IMP 0x10011fb28
- (void)cancel;                                                                            // IMP 0x10011fc3c
- (void)connection:(id)arg1 didFailWithError:(id)arg2;                                     // IMP 0x10011fcac
- (id)connection:(id)arg1 willSendRequest:(id)arg2 redirectResponse:(id)arg3;              // IMP 0x10011fdec
- (id)connection:(id)arg1 willCacheResponse:(id)arg2;                                      // IMP 0x10011fdf4
- (void)connection:(id)arg1 didReceiveData:(id)arg2;                                       // IMP 0x10011fdfc
- (void)connection:(id)arg1 didReceiveResponse:(id)arg2;                                   // IMP 0x10011fe5c
- (void)connectionDidFinishLoading:(id)arg1;                                               // IMP 0x10011fed4
- (id)request;                                                                             // IMP 0x10011ffb0
- (void)setRequest:(id)arg1;                                                               // IMP 0x10011ffc0
- (id)connection;                                                                          // IMP 0x10011ffdc
- (void)setConnection:(id)arg1;                                                            // IMP 0x10011ffec
- (id)response;                                                                            // IMP 0x100120008
- (void)setResponse:(id)arg1;                                                              // IMP 0x100120018
- (id)data;                                                                                // IMP 0x100120034
- (void)setData:(id)arg1;                                                                  // IMP 0x100120044
- (dispatch_queue_s *)completionQueue;                                                     // IMP 0x100120060
- (void)setCompletionQueue:(dispatch_queue_s *)arg1;                                       // IMP 0x100120070
- (id /*block*/)completionHandler;                                                         // IMP 0x100120080
- (void)setCompletionHandler:(id /*block*/)arg1;                                           // IMP 0x100120090
@end

@interface GAIUsageTracker : NSObject   // instance size 8, class @0x100424e38
+ (void)initialize;                                                                        // IMP 0x10012a7a4
+ (void)trackTarget:(id)arg1 action:(SEL)arg2;                                             // IMP 0x10012ab94
+ (id)getUsageClearingTarget:(id)arg1;                                                     // IMP 0x10012acb0
+ (void)trackAction:(SEL)arg1;                                                             // IMP 0x10012ae68
+ (id)getUsageSequence;                                                                    // IMP 0x10012ae84
- (void)dealloc;                                                                           // IMP 0x10012ab38
- (id)getUsage;                                                                            // IMP 0x10012af54
- (void)trackAction:(SEL)arg1;                                                             // IMP 0x10012af90
@end

@interface GAIUtil : NSObject   // instance size 8, class @0x100424708
+ (id)descriptionFromException:(id)arg1;                                                   // IMP 0x10011590c
+ (id)descriptionFromError:(id)arg1;                                                       // IMP 0x100115934
+ (id)valueForNumber:(id)arg1;                                                             // IMP 0x1001159dc
+ (id)valueForString:(id)arg1;                                                             // IMP 0x100115a5c
- (id)init;                                                                                // IMP 0x10011588c
@end

@interface GlowingImage : UIImageView   // instance size 112, class @0x1004239e8
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x1000cbd34
- (void)awakeFromNib;                                                                      // IMP 0x1000cbd70
@end

@interface MBBarProgressView : UIView   // instance size 136, class @0x1004215a8
{
    float _progress;                         // +0x68 (4 bytes)  f
    UIColor *_lineColor;                     // +0x70 (8 bytes)  @"UIColor"
    UIColor *_progressRemainingColor;        // +0x78 (8 bytes)  @"UIColor"
    UIColor *_progressColor;                 // +0x80 (8 bytes)  @"UIColor"
}
@property (nonatomic) float progress;  // ivar: _progress
@property (retain, nonatomic) UIColor *lineColor;  // ivar: _lineColor
@property (retain, nonatomic) UIColor *progressRemainingColor;  // ivar: _progressRemainingColor
@property (retain, nonatomic) UIColor *progressColor;  // ivar: _progressColor
- (id)init;                                                                                // IMP 0x1000339f4
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x100033a28
- (void)dealloc;                                                                           // IMP 0x100033bd4
- (void)drawRect:(CGRect)arg1;                                                             // IMP 0x100033c64
- (void)registerForKVO;                                                                    // IMP 0x1000341b0
- (void)unregisterFromKVO;                                                                 // IMP 0x100034308
- (id)observableKeypaths;                                                                  // IMP 0x100034458
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4; // IMP 0x1000344b0
- (void).cxx_destruct;                                                                     // IMP 0x1000345c8
- (float)progress;                                                                         // IMP 0x1000344d0
- (void)setProgress:(float)arg1;                                                           // IMP 0x1000344e0
- (id)lineColor;                                                                           // IMP 0x1000344f0
- (void)setLineColor:(id)arg1;                                                             // IMP 0x100034500
- (id)progressRemainingColor;                                                              // IMP 0x100034538
- (void)setProgressRemainingColor:(id)arg1;                                                // IMP 0x100034548
- (id)progressColor;                                                                       // IMP 0x100034580
- (void)setProgressColor:(id)arg1;                                                         // IMP 0x100034590
@end

@interface MBProgressHUD : UIView   // instance size 400, class @0x100421558
{
    BOOL useAnimation;                       // +0x68 (1 bytes)  B
    SEL methodForExecution;                  // +0x70 (8 bytes)  :
    id targetForExecution;                   // +0x78 (8 bytes)  @
    id objectForExecution;                   // +0x80 (8 bytes)  @
    UILabel *label;                          // +0x88 (8 bytes)  @"UILabel"
    UILabel *detailsLabel;                   // +0x90 (8 bytes)  @"UILabel"
    BOOL isFinished;                         // +0x98 (1 bytes)  B
    CGAffineTransform rotationTransform;     // +0xa0 (48 bytes)  {CGAffineTransform="a"d"b"d"c"d"d"d"tx"d"ty"d}
    BOOL square;                             // +0xd0 (1 bytes)  B
    BOOL dimBackground;                      // +0xd1 (1 bytes)  B
    BOOL taskInProgress;                     // +0xd2 (1 bytes)  B
    BOOL removeFromSuperViewOnHide;          // +0xd3 (1 bytes)  B
    int animationType;                       // +0xd4 (4 bytes)  i
    float opacity;                           // +0xd8 (4 bytes)  f
    float xOffset;                           // +0xdc (4 bytes)  f
    float yOffset;                           // +0xe0 (4 bytes)  f
    float margin;                            // +0xe4 (4 bytes)  f
    float graceTime;                         // +0xe8 (4 bytes)  f
    float minShowTime;                       // +0xec (4 bytes)  f
    int mode;                                // +0xf0 (4 bytes)  i
    float progress;                          // +0xf4 (4 bytes)  f
    float _cornerRadius;                     // +0xf8 (4 bytes)  f
    id<MBProgressHUDDelegate> delegate;      // +0x100 (8 bytes)  @"<MBProgressHUDDelegate>"
    UIColor *color;                          // +0x108 (8 bytes)  @"UIColor"
    UIFont *labelFont;                       // +0x110 (8 bytes)  @"UIFont"
    UIColor *labelColor;                     // +0x118 (8 bytes)  @"UIColor"
    UIFont *detailsLabelFont;                // +0x120 (8 bytes)  @"UIFont"
    UIColor *detailsLabelColor;              // +0x128 (8 bytes)  @"UIColor"
    UIView *indicator;                       // +0x130 (8 bytes)  @"UIView"
    NSTimer *graceTimer;                     // +0x138 (8 bytes)  @"NSTimer"
    NSTimer *minShowTimer;                   // +0x140 (8 bytes)  @"NSTimer"
    UIView *customView;                      // +0x148 (8 bytes)  @"UIView"
    NSDate *showStarted;                     // +0x150 (8 bytes)  @"NSDate"
    NSString *labelText;                     // +0x158 (8 bytes)  @"NSString"
    NSString *detailsLabelText;              // +0x160 (8 bytes)  @"NSString"
    id /*block*/ completionBlock;            // +0x168 (8 bytes)  @?
    CGSize minSize;                          // +0x170 (16 bytes)  {CGSize="width"d"height"d}
    CGSize size;                             // +0x180 (16 bytes)  {CGSize="width"d"height"d}
}
@property (copy) id /*block*/ completionBlock;  // ivar: completionBlock
@property () int mode;  // ivar: mode
@property () int animationType;  // ivar: animationType
@property (retain) UIView *customView;  // ivar: customView
@property (weak) id<MBProgressHUDDelegate> delegate;  // ivar: delegate
@property (copy) NSString *labelText;  // ivar: labelText
@property (copy) NSString *detailsLabelText;  // ivar: detailsLabelText
@property () float opacity;  // ivar: opacity
@property (retain) UIColor *color;  // ivar: color
@property () float xOffset;  // ivar: xOffset
@property () float yOffset;  // ivar: yOffset
@property () float margin;  // ivar: margin
@property () float cornerRadius;  // ivar: _cornerRadius
@property () BOOL dimBackground;  // ivar: dimBackground
@property () float graceTime;  // ivar: graceTime
@property () float minShowTime;  // ivar: minShowTime
@property () BOOL taskInProgress;  // ivar: taskInProgress
@property () BOOL removeFromSuperViewOnHide;  // ivar: removeFromSuperViewOnHide
@property (retain) UIFont *labelFont;  // ivar: labelFont
@property (retain) UIColor *labelColor;  // ivar: labelColor
@property (retain) UIFont *detailsLabelFont;  // ivar: detailsLabelFont
@property (retain) UIColor *detailsLabelColor;  // ivar: detailsLabelColor
@property () float progress;  // ivar: progress
@property () CGSize minSize;  // ivar: minSize
@property (getter=isSquare) BOOL square;  // ivar: square
@property (retain) UIView *indicator;  // ivar: indicator
@property (retain) NSTimer *graceTimer;  // ivar: graceTimer
@property (retain) NSTimer *minShowTimer;  // ivar: minShowTimer
@property (retain) NSDate *showStarted;  // ivar: showStarted
@property () CGSize size;  // ivar: size
+ (id)showHUDAddedTo:(id)arg1 animated:(BOOL)arg2;                                         // IMP 0x10002ecf4
+ (BOOL)hideHUDForView:(id)arg1 animated:(BOOL)arg2;                                       // IMP 0x10002edb4
+ (unsigned long long)hideAllHUDsForView:(id)arg1 animated:(BOOL)arg2;                     // IMP 0x10002ee54
+ (id)HUDForView:(id)arg1;                                                                 // IMP 0x10002f008
+ (id)allHUDsForView:(id)arg1;                                                             // IMP 0x10002f1c8
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x10002f3f8
- (id)initWithView:(id)arg1;                                                               // IMP 0x10002f8b8
- (id)initWithWindow:(id)arg1;                                                             // IMP 0x10002f940
- (void)dealloc;                                                                           // IMP 0x10002f960
- (void)show:(BOOL)arg1;                                                                   // IMP 0x10002fa00
- (void)hide:(BOOL)arg1;                                                                   // IMP 0x10002fb04
- (void)hide:(BOOL)arg1 afterDelay:(double)arg2;                                           // IMP 0x10002fc88
- (void)hideDelayed:(id)arg1;                                                              // IMP 0x10002fd20
- (void)handleGraceTimer:(id)arg1;                                                         // IMP 0x10002fd88
- (void)handleMinShowTimer:(id)arg1;                                                       // IMP 0x10002fde8
- (void)didMoveToSuperview;                                                                // IMP 0x10002fe14
- (void)showUsingAnimation:(BOOL)arg1;                                                     // IMP 0x10002fecc
- (void)hideUsingAnimation:(BOOL)arg1;                                                     // IMP 0x100030134
- (void)animationFinished:(id)arg1 finished:(BOOL)arg2 context:(void *)arg3;               // IMP 0x10003035c
- (void)done;                                                                              // IMP 0x10003037c
- (void)showWhileExecuting:(SEL)arg1 onTarget:(id)arg2 withObject:(id)arg3 animated:(BOOL)arg4; // IMP 0x100030520
- (void)showAnimated:(BOOL)arg1 whileExecutingBlock:(id /*block*/)arg2;                    // IMP 0x100030634
- (void)showAnimated:(BOOL)arg1 whileExecutingBlock:(id /*block*/)arg2 completionBlock:(id /*block*/)arg3; // IMP 0x1000306dc
- (void)showAnimated:(BOOL)arg1 whileExecutingBlock:(id /*block*/)arg2 onQueue:(id)arg3;   // IMP 0x1000307a0
- (void)showAnimated:(BOOL)arg1 whileExecutingBlock:(id /*block*/)arg2 onQueue:(id)arg3 completionBlock:(id /*block*/)arg4; // IMP 0x100030814
- (void)launchExecution;                                                                   // IMP 0x100030a78
- (void)cleanUp;                                                                           // IMP 0x100030afc
- (void)setupLabels;                                                                       // IMP 0x100030b68
- (void)updateIndicators;                                                                  // IMP 0x100030fc0
- (void)layoutSubviews;                                                                    // IMP 0x1000312e4
- (void)drawRect:(CGRect)arg1;                                                             // IMP 0x1000318d8
- (void)registerForKVO;                                                                    // IMP 0x100031d3c
- (void)unregisterFromKVO;                                                                 // IMP 0x100031e94
- (id)observableKeypaths;                                                                  // IMP 0x100031fe4
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4; // IMP 0x10003207c
- (void)updateUIForKeypath:(id)arg1;                                                       // IMP 0x100032114
- (void)registerForNotifications;                                                          // IMP 0x1000324f4
- (void)unregisterFromNotifications;                                                       // IMP 0x10003257c
- (void)deviceOrientationDidChange:(id)arg1;                                               // IMP 0x1000325e8
- (void)setTransformForCurrentOrientation:(BOOL)arg1;                                      // IMP 0x100032708
- (void).cxx_destruct;                                                                     // IMP 0x100032e08
- (id).cxx_construct;                                                                      // IMP 0x100032f84
- (int)animationType;                                                                      // IMP 0x100032968
- (void)setAnimationType:(int)arg1;                                                        // IMP 0x100032978
- (id)delegate;                                                                            // IMP 0x100032988
- (void)setDelegate:(id)arg1;                                                              // IMP 0x1000329a8
- (float)opacity;                                                                          // IMP 0x1000329bc
- (void)setOpacity:(float)arg1;                                                            // IMP 0x1000329d0
- (id)color;                                                                               // IMP 0x1000329e4
- (void)setColor:(id)arg1;                                                                 // IMP 0x1000329f4
- (id)labelFont;                                                                           // IMP 0x100032a00
- (void)setLabelFont:(id)arg1;                                                             // IMP 0x100032a10
- (id)labelColor;                                                                          // IMP 0x100032a1c
- (void)setLabelColor:(id)arg1;                                                            // IMP 0x100032a2c
- (id)detailsLabelFont;                                                                    // IMP 0x100032a38
- (void)setDetailsLabelFont:(id)arg1;                                                      // IMP 0x100032a48
- (id)detailsLabelColor;                                                                   // IMP 0x100032a54
- (void)setDetailsLabelColor:(id)arg1;                                                     // IMP 0x100032a64
- (id)indicator;                                                                           // IMP 0x100032a70
- (void)setIndicator:(id)arg1;                                                             // IMP 0x100032a80
- (float)xOffset;                                                                          // IMP 0x100032a8c
- (void)setXOffset:(float)arg1;                                                            // IMP 0x100032aa0
- (float)yOffset;                                                                          // IMP 0x100032ab4
- (void)setYOffset:(float)arg1;                                                            // IMP 0x100032ac8
- (CGSize)minSize;                                                                         // IMP 0x100032adc
- (void)setMinSize:(CGSize)arg1;                                                           // IMP 0x100032b18
- (BOOL)isSquare;                                                                          // IMP 0x100032b54
- (void)setSquare:(BOOL)arg1;                                                              // IMP 0x100032b68
- (float)margin;                                                                           // IMP 0x100032b78
- (void)setMargin:(float)arg1;                                                             // IMP 0x100032b8c
- (BOOL)dimBackground;                                                                     // IMP 0x100032ba0
- (void)setDimBackground:(BOOL)arg1;                                                       // IMP 0x100032bb4
- (float)graceTime;                                                                        // IMP 0x100032bc4
- (void)setGraceTime:(float)arg1;                                                          // IMP 0x100032bd8
- (float)minShowTime;                                                                      // IMP 0x100032bec
- (void)setMinShowTime:(float)arg1;                                                        // IMP 0x100032c00
- (id)graceTimer;                                                                          // IMP 0x100032c14
- (void)setGraceTimer:(id)arg1;                                                            // IMP 0x100032c24
- (id)minShowTimer;                                                                        // IMP 0x100032c30
- (void)setMinShowTimer:(id)arg1;                                                          // IMP 0x100032c40
- (BOOL)taskInProgress;                                                                    // IMP 0x100032c4c
- (void)setTaskInProgress:(BOOL)arg1;                                                      // IMP 0x100032c60
- (BOOL)removeFromSuperViewOnHide;                                                         // IMP 0x100032c70
- (void)setRemoveFromSuperViewOnHide:(BOOL)arg1;                                           // IMP 0x100032c84
- (id)customView;                                                                          // IMP 0x100032c94
- (void)setCustomView:(id)arg1;                                                            // IMP 0x100032ca4
- (id)showStarted;                                                                         // IMP 0x100032cb0
- (void)setShowStarted:(id)arg1;                                                           // IMP 0x100032cc0
- (int)mode;                                                                               // IMP 0x100032ccc
- (void)setMode:(int)arg1;                                                                 // IMP 0x100032cdc
- (id)labelText;                                                                           // IMP 0x100032cec
- (void)setLabelText:(id)arg1;                                                             // IMP 0x100032cfc
- (id)detailsLabelText;                                                                    // IMP 0x100032d08
- (void)setDetailsLabelText:(id)arg1;                                                      // IMP 0x100032d18
- (float)progress;                                                                         // IMP 0x100032d24
- (void)setProgress:(float)arg1;                                                           // IMP 0x100032d38
- (CGSize)size;                                                                            // IMP 0x100032d4c
- (void)setSize:(CGSize)arg1;                                                              // IMP 0x100032d88
- (id /*block*/)completionBlock;                                                           // IMP 0x100032dc4
- (void)setCompletionBlock:(id /*block*/)arg1;                                             // IMP 0x100032dd4
- (float)cornerRadius;                                                                     // IMP 0x100032de0
- (void)setCornerRadius:(float)arg1;                                                       // IMP 0x100032df4
@end

@interface MBRoundProgressView : UIView   // instance size 128, class @0x100421580
{
    BOOL _annular;                           // +0x68 (1 bytes)  B
    float _progress;                         // +0x6c (4 bytes)  f
    UIColor *_progressTintColor;             // +0x70 (8 bytes)  @"UIColor"
    UIColor *_backgroundTintColor;           // +0x78 (8 bytes)  @"UIColor"
}
@property (nonatomic) float progress;  // ivar: _progress
@property (retain, nonatomic) UIColor *progressTintColor;  // ivar: _progressTintColor
@property (retain, nonatomic) UIColor *backgroundTintColor;  // ivar: _backgroundTintColor
@property (nonatomic, getter=isAnnular) BOOL annular;  // ivar: _annular
- (id)init;                                                                                // IMP 0x100032f88
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x100032fbc
- (void)dealloc;                                                                           // IMP 0x100033170
- (void)drawRect:(CGRect)arg1;                                                             // IMP 0x100033200
- (void)registerForKVO;                                                                    // IMP 0x1000335c4
- (void)unregisterFromKVO;                                                                 // IMP 0x10003371c
- (id)observableKeypaths;                                                                  // IMP 0x10003386c
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4; // IMP 0x1000338c4
- (void).cxx_destruct;                                                                     // IMP 0x1000339b4
- (float)progress;                                                                         // IMP 0x1000338e4
- (void)setProgress:(float)arg1;                                                           // IMP 0x1000338f4
- (id)progressTintColor;                                                                   // IMP 0x100033904
- (void)setProgressTintColor:(id)arg1;                                                     // IMP 0x100033914
- (id)backgroundTintColor;                                                                 // IMP 0x10003394c
- (void)setBackgroundTintColor:(id)arg1;                                                   // IMP 0x10003395c
- (BOOL)isAnnular;                                                                         // IMP 0x100033994
- (void)setAnnular:(BOOL)arg1;                                                             // IMP 0x1000339a4
@end

@interface OBDragDropManager : NSObject <UIGestureRecognizerDelegate>   // instance size 112, class @0x100421508
{
    long long prevNumberOfTouches;           // +0x8 (8 bytes)  q
    CGPoint prevPinchCentroid;               // +0x10 (16 bytes)  {CGPoint="x"d"y"d}
    double initialDistance;                  // +0x20 (8 bytes)  d
    CGRect initialFrame;                     // +0x28 (32 bytes)  {CGRect="origin"{CGPoint="x"d"y"d}"size"{CGSize="width"d"height"d}}
    UIWindow *overlayWindow;                 // +0x48 (8 bytes)  @"UIWindow"
    CGPoint currentLocationInHostWindow;     // +0x50 (16 bytes)  {CGPoint="x"d"y"d}
    CGPoint currentLocationInOverlayWindow;  // +0x60 (16 bytes)  {CGPoint="x"d"y"d}
}
@property (retain, nonatomic) UIWindow *overlayWindow;  // ivar: overlayWindow
@property (nonatomic) CGPoint currentLocationInHostWindow;  // ivar: currentLocationInHostWindow
@property (nonatomic) CGPoint currentLocationInOverlayWindow;  // ivar: currentLocationInOverlayWindow
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
+ (id)sharedManager;                                                                       // IMP 0x10002a178
- (id)init;                                                                                // IMP 0x10002a1d8
- (void)dealloc;                                                                           // IMP 0x10002a470
- (CGAffineTransform)transformForOrientation:(long long)arg1;                              // IMP 0x10002a59c
- (void)handleApplicationOrientationChange:(id)arg1;                                       // IMP 0x10002a5f4
- (void)prepareOverlayWindowUsingMainWindow:(id)arg1;                                      // IMP 0x10002a708
- (id)findDropTargetHandler:(id)arg1;                                                      // IMP 0x10002a9d4
- (id)findDropZoneHandlerInView:(id)arg1 atLocation:(CGPoint)arg2;                         // IMP 0x10002aac0
- (id)findDropZoneHandlerInWindow:(id)arg1 atLocation:(CGPoint)arg2;                       // IMP 0x10002ab5c
- (void)handleOvumMove:(id)arg1 inWindow:(id)arg2 atLocation:(CGPoint)arg3;                // IMP 0x10002addc
- (void)animateOvumReturningToSource:(id)arg1;                                             // IMP 0x10002b19c
- (void)animateOvumDrop:(id)arg1 withAnimation:(id /*block*/)arg2 completion:(id /*block*/)arg3; // IMP 0x10002b610
- (id)createLongPressDragDropGestureRecognizerWithSource:(id)arg1;                         // IMP 0x10002b85c
- (id)createDragDropGestureRecognizerWithClass:(Class)arg1 source:(id)arg2;                // IMP 0x10002b8e4
- (void)handleOvumGesture:(id)arg1;                                                        // IMP 0x10002b9d4
- (CGPoint)applyRecenteringTo:(CGPoint)arg1 withRecognizer:(id)arg2;                       // IMP 0x10002ccdc
- (BOOL)ovumRecognizerShouldHandleTouch:(id)arg1;                                          // IMP 0x10002d57c
- (void)cleanupOvum:(id)arg1;                                                              // IMP 0x10002d6ec
- (double)distanceFrom:(CGPoint)arg1 to:(CGPoint)arg2;                                     // IMP 0x10002d830
- (void)updateOvum:(id)arg1 withZoom:(double)arg2;                                         // IMP 0x10002d84c
- (void).cxx_destruct;                                                                     // IMP 0x10002dcc8
- (id).cxx_construct;                                                                      // IMP 0x10002dcdc
- (id)overlayWindow;                                                                       // IMP 0x10002dc30
- (void)setOverlayWindow:(id)arg1;                                                         // IMP 0x10002dc40
- (CGPoint)currentLocationInHostWindow;                                                    // IMP 0x10002dc78
- (void)setCurrentLocationInHostWindow:(CGPoint)arg1;                                      // IMP 0x10002dc8c
- (CGPoint)currentLocationInOverlayWindow;                                                 // IMP 0x10002dca0
- (void)setCurrentLocationInOverlayWindow:(CGPoint)arg1;                                   // IMP 0x10002dcb4
@end

@interface OBLongPressDragDropGestureRecognizer : UILongPressGestureRecognizer <OBDragDropGestureRecognizer>   // instance size 112, class @0x100422b38
{
    OBOvum *ovum;                            // +0x60 (8 bytes)  @"OBOvum"
    id<OBOvumSource> ovumSource;             // +0x68 (8 bytes)  @"<OBOvumSource>"
}
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) OBOvum *ovum;  // ivar: ovum
@property (nonatomic) id<OBOvumSource> ovumSource;  // ivar: ovumSource
- (void)dealloc;                                                                           // IMP 0x10008b348
- (void).cxx_destruct;                                                                     // IMP 0x10008b444
- (id)ovum;                                                                                // IMP 0x10008b3dc
- (void)setOvum:(id)arg1;                                                                  // IMP 0x10008b3ec
- (id)ovumSource;                                                                          // IMP 0x10008b424
- (void)setOvumSource:(id)arg1;                                                            // IMP 0x10008b434
@end

@interface OBOvum : NSObject   // instance size 120, class @0x1004214b8
{
    id<OBOvumSource> source;                 // +0x8 (8 bytes)  @"<OBOvumSource>"
    id dataObject;                           // +0x10 (8 bytes)  @
    NSString *tag;                           // +0x18 (8 bytes)  @"NSString"
    unsigned long long dropAction;           // +0x20 (8 bytes)  Q
    UIView *currentDropHandlingView;         // +0x28 (8 bytes)  @"UIView"
    UIView *dragView;                        // +0x30 (8 bytes)  @"UIView"
    CGPoint dragViewInitialCenter;           // +0x38 (16 bytes)  {CGPoint="x"d"y"d}
    BOOL isCentered;                         // +0x48 (1 bytes)  B
    BOOL shouldScale;                        // +0x49 (1 bytes)  B
    double scale;                            // +0x50 (8 bytes)  d
    CGPoint offsetOvumAndTouch;              // +0x58 (16 bytes)  {CGPoint="x"d"y"d}
    CGPoint shiftPinchCentroid;              // +0x68 (16 bytes)  {CGPoint="x"d"y"d}
}
@property (weak, nonatomic) id<OBOvumSource> source;  // ivar: source
@property (retain, nonatomic) id dataObject;  // ivar: dataObject
@property (retain, nonatomic) NSString *tag;  // ivar: tag
@property (nonatomic) unsigned long long dropAction;  // ivar: dropAction
@property (weak, nonatomic) UIView *currentDropHandlingView;  // ivar: currentDropHandlingView
@property (retain, nonatomic) UIView *dragView;  // ivar: dragView
@property (nonatomic) CGPoint dragViewInitialCenter;  // ivar: dragViewInitialCenter
@property (nonatomic) BOOL isCentered;  // ivar: isCentered
@property (nonatomic) BOOL shouldScale;  // ivar: shouldScale
@property (nonatomic) CGPoint offsetOvumAndTouch;  // ivar: offsetOvumAndTouch
@property (nonatomic) CGPoint shiftPinchCentroid;  // ivar: shiftPinchCentroid
@property (nonatomic) double scale;  // ivar: scale
- (id)init;                                                                                // IMP 0x100029db8
- (void)dealloc;                                                                           // IMP 0x100029e58
- (void).cxx_destruct;                                                                     // IMP 0x10002a100
- (id).cxx_construct;                                                                      // IMP 0x10002a174
- (id)source;                                                                              // IMP 0x100029eec
- (void)setSource:(id)arg1;                                                                // IMP 0x100029f0c
- (id)dataObject;                                                                          // IMP 0x100029f20
- (void)setDataObject:(id)arg1;                                                            // IMP 0x100029f30
- (id)tag;                                                                                 // IMP 0x100029f44
- (void)setTag:(id)arg1;                                                                   // IMP 0x100029f54
- (unsigned long long)dropAction;                                                          // IMP 0x100029f8c
- (void)setDropAction:(unsigned long long)arg1;                                            // IMP 0x100029f9c
- (id)currentDropHandlingView;                                                             // IMP 0x100029fac
- (void)setCurrentDropHandlingView:(id)arg1;                                               // IMP 0x100029fcc
- (id)dragView;                                                                            // IMP 0x100029fe0
- (void)setDragView:(id)arg1;                                                              // IMP 0x100029ff0
- (CGPoint)dragViewInitialCenter;                                                          // IMP 0x10002a028
- (void)setDragViewInitialCenter:(CGPoint)arg1;                                            // IMP 0x10002a03c
- (BOOL)isCentered;                                                                        // IMP 0x10002a050
- (void)setIsCentered:(BOOL)arg1;                                                          // IMP 0x10002a060
- (BOOL)shouldScale;                                                                       // IMP 0x10002a070
- (void)setShouldScale:(BOOL)arg1;                                                         // IMP 0x10002a080
- (CGPoint)offsetOvumAndTouch;                                                             // IMP 0x10002a090
- (void)setOffsetOvumAndTouch:(CGPoint)arg1;                                               // IMP 0x10002a0a4
- (CGPoint)shiftPinchCentroid;                                                             // IMP 0x10002a0b8
- (void)setShiftPinchCentroid:(CGPoint)arg1;                                               // IMP 0x10002a0cc
- (double)scale;                                                                           // IMP 0x10002a0e0
- (void)setScale:(double)arg1;                                                             // IMP 0x10002a0f0
@end

@interface PECPUMeter : UIView   // instance size 104, class @0x100421878
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x10003e348
- (void)drawRect:(CGRect)arg1;                                                             // IMP 0x10003e384
@end

@interface PEMetricsViewController : UIViewController   // instance size 424, class @0x100423808
{
    NSTimer *mTimer;                         // +0x140 (8 bytes)  @"NSTimer"
    UILabel *_ctrlAppCPU;                    // +0x148 (8 bytes)  @"UILabel"
    UILabel *_ctrlLoadedSnds;                // +0x150 (8 bytes)  @"UILabel"
    UILabel *_ctrlMixPercent;                // +0x158 (8 bytes)  @"UILabel"
    UILabel *_ctrlMixPercentLP;              // +0x160 (8 bytes)  @"UILabel"
    UILabel *_ctrlTotalActiveSnds;           // +0x168 (8 bytes)  @"UILabel"
    UILabel *_ctrlActSpatial;                // +0x170 (8 bytes)  @"UILabel"
    UILabel *_ctrlActNonSpatial;             // +0x178 (8 bytes)  @"UILabel"
    UILabel *_ctrlAudioMemMB;                // +0x180 (8 bytes)  @"UILabel"
    UILabel *_ctrlPapaEngineVersion;         // +0x188 (8 bytes)  @"UILabel"
    UILabel *_ctrlMixPercentMax;             // +0x190 (8 bytes)  @"UILabel"
    UIWindow *_myViewController;             // +0x198 (8 bytes)  @"UIWindow"
    PECPUMeter *_ctrlCPUMeter;               // +0x1a0 (8 bytes)  @"PECPUMeter"
}
@property (retain, nonatomic) UILabel *ctrlAppCPU;  // ivar: _ctrlAppCPU
@property (retain, nonatomic) UILabel *ctrlLoadedSnds;  // ivar: _ctrlLoadedSnds
@property (retain, nonatomic) UILabel *ctrlMixPercent;  // ivar: _ctrlMixPercent
@property (retain, nonatomic) UILabel *ctrlMixPercentLP;  // ivar: _ctrlMixPercentLP
@property (retain, nonatomic) UILabel *ctrlTotalActiveSnds;  // ivar: _ctrlTotalActiveSnds
@property (retain, nonatomic) UILabel *ctrlActSpatial;  // ivar: _ctrlActSpatial
@property (retain, nonatomic) UILabel *ctrlActNonSpatial;  // ivar: _ctrlActNonSpatial
@property (retain, nonatomic) UILabel *ctrlAudioMemMB;  // ivar: _ctrlAudioMemMB
@property (retain, nonatomic) UILabel *ctrlPapaEngineVersion;  // ivar: _ctrlPapaEngineVersion
@property (retain, nonatomic) UILabel *ctrlMixPercentMax;  // ivar: _ctrlMixPercentMax
@property () UIWindow *myViewController;  // ivar: _myViewController
@property (nonatomic) PECPUMeter *ctrlCPUMeter;  // ivar: _ctrlCPUMeter
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;                                            // IMP 0x1000bf474
- (void)updateMetrics;                                                                     // IMP 0x1000bf500
- (BOOL)shouldAutotate;                                                                    // IMP 0x1000bf9e8
- (void)viewDidLoad;                                                                       // IMP 0x1000bf9f0
- (void)didReceiveMemoryWarning;                                                           // IMP 0x1000bfa90
- (void)dealloc;                                                                           // IMP 0x1000bfacc
- (void)viewDidUnload;                                                                     // IMP 0x1000bfb08
- (void).cxx_destruct;                                                                     // IMP 0x1000bff4c
- (id)ctrlAppCPU;                                                                          // IMP 0x1000bfc3c
- (void)setCtrlAppCPU:(id)arg1;                                                            // IMP 0x1000bfc4c
- (id)ctrlLoadedSnds;                                                                      // IMP 0x1000bfc84
- (void)setCtrlLoadedSnds:(id)arg1;                                                        // IMP 0x1000bfc94
- (id)ctrlMixPercent;                                                                      // IMP 0x1000bfccc
- (void)setCtrlMixPercent:(id)arg1;                                                        // IMP 0x1000bfcdc
- (id)ctrlMixPercentLP;                                                                    // IMP 0x1000bfd14
- (void)setCtrlMixPercentLP:(id)arg1;                                                      // IMP 0x1000bfd24
- (id)ctrlTotalActiveSnds;                                                                 // IMP 0x1000bfd5c
- (void)setCtrlTotalActiveSnds:(id)arg1;                                                   // IMP 0x1000bfd6c
- (id)ctrlActSpatial;                                                                      // IMP 0x1000bfda4
- (void)setCtrlActSpatial:(id)arg1;                                                        // IMP 0x1000bfdb4
- (id)ctrlActNonSpatial;                                                                   // IMP 0x1000bfdec
- (void)setCtrlActNonSpatial:(id)arg1;                                                     // IMP 0x1000bfdfc
- (id)ctrlAudioMemMB;                                                                      // IMP 0x1000bfe34
- (void)setCtrlAudioMemMB:(id)arg1;                                                        // IMP 0x1000bfe44
- (id)ctrlPapaEngineVersion;                                                               // IMP 0x1000bfe7c
- (void)setCtrlPapaEngineVersion:(id)arg1;                                                 // IMP 0x1000bfe8c
- (id)ctrlMixPercentMax;                                                                   // IMP 0x1000bfec4
- (void)setCtrlMixPercentMax:(id)arg1;                                                     // IMP 0x1000bfed4
- (id)myViewController;                                                                    // IMP 0x1000bff0c
- (void)setMyViewController:(id)arg1;                                                      // IMP 0x1000bff1c
- (id)ctrlCPUMeter;                                                                        // IMP 0x1000bff2c
- (void)setCtrlCPUMeter:(id)arg1;                                                          // IMP 0x1000bff3c
@end

@interface Reachability : NSObject   // instance size 24, class @0x100422d68
{
    BOOL _alwaysReturnLocalWiFiStatus;       // +0x8 (1 bytes)  B
    __SCNetworkReachability *_reachabilityRef; // +0x10 (8 bytes)  ^{__SCNetworkReachability=}
}
+ (id)reachabilityWithHostName:(id)arg1;                                                   // IMP 0x1000924c0
+ (id)reachabilityWithAddress:(const sockaddr_in *)arg1;                                   // IMP 0x100092584
+ (id)reachabilityForInternetConnection;                                                   // IMP 0x100092604
+ (id)reachabilityForLocalWiFi;                                                            // IMP 0x10009266c
- (BOOL)startNotifier;                                                                     // IMP 0x1000926f0
- (void)stopNotifier;                                                                      // IMP 0x10009280c
- (void)dealloc;                                                                           // IMP 0x100092858
- (long long)localWiFiStatusForFlags:(unsigned int)arg1;                                   // IMP 0x1000928f8
- (long long)networkStatusForFlags:(unsigned int)arg1;                                     // IMP 0x1000929dc
- (BOOL)connectionRequired;                                                                // IMP 0x100092a44
- (long long)currentReachabilityStatus;                                                    // IMP 0x100092a84
@end

@interface S3DAbstractModel : NSObject <S3DEncodable>   // instance size 16, class @0x1004242a8
{
    NSString *xId;                           // +0x8 (8 bytes)  @"NSString"
}
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) NSString *xId;  // ivar: xId
+ (id)decode:(id)arg1;                                                                     // IMP 0x100107624
- (id)encode;                                                                              // IMP 0x100107710
- (id)description;                                                                         // IMP 0x1001077f8
- (void).cxx_destruct;                                                                     // IMP 0x1001078b0
- (id)xId;                                                                                 // IMP 0x100107868
- (void)setXId:(id)arg1;                                                                   // IMP 0x100107878
@end

@interface S3DDefaults : NSObject   // instance size 8, class @0x100424190
+ (id /*block*/)linearPannerWithDuration:(float)arg1 maxLeft:(float)arg2 maxRight:(float)arg3 leftToRight:(BOOL)arg4; // IMP 0x1000f9510
+ (id /*block*/)sinePannerWithDuration:(float)arg1 maxLeft:(float)arg2 maxRight:(float)arg3 leftToRight:(BOOL)arg4; // IMP 0x1000f9620
+ (id /*block*/)fadeIn:(float)arg1;                                                        // IMP 0x1000f9770
+ (id /*block*/)fadeOut:(float)arg1;                                                       // IMP 0x1000f9834
+ (id /*block*/)chain:(id /*block*/)arg1 with:(id /*block*/)arg2;                          // IMP 0x1000f9b60
@end

@interface S3DEngine : NSObject   // instance size 124, class @0x1004241b8
{
    float headOrientation;                   // +0x8 (4 bytes)  f
    float distanceScale;                     // +0xc (4 bytes)  f
    float maxSpatialGain;                    // +0x10 (4 bytes)  f
    int traceLevel;                          // +0x14 (4 bytes)  i
    NSMutableDictionary *playListCache;      // +0x18 (8 bytes)  @"NSMutableDictionary"
    S3DEngineDispatcher *dispatcher;         // +0x20 (8 bytes)  @"S3DEngineDispatcher"
    Fifo *fifo;                              // +0x28 (8 bytes)  ^{Fifo=iii^@}
    Mixer *masterMixer;                      // +0x30 (8 bytes)  ^{Mixer=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^^?{vector<csl::UnitGenerator *, std::allocator<csl::UnitGenerator *> >={_Vector_impl=^^{UnitGenerator}^^{UnitGenerator}^^{UnitGenerator}}}{vector<float, std::allocator<float> >={_Vector_impl=^f^f^f}}{Buffer=^^?IIIIIIQBBBBi^^f}B^^?[13^{Port}]}
    iPhoneIO *io;                            // +0x38 (8 bytes)  ^{iPhoneIO=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBff^{UnitGenerator}{Buffer=^^?IIIIIIQBBBBi^^f}{Buffer=^^?IIIIIIQBBBBi^^f}^f^IIIIIIIIiBBf@^{Fifo}^{OpaqueAudioComponentInstance}}
    Mixer *dryMixer;                         // +0x40 (8 bytes)  ^{Mixer=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^^?{vector<csl::UnitGenerator *, std::allocator<csl::UnitGenerator *> >={_Vector_impl=^^{UnitGenerator}^^{UnitGenerator}^^{UnitGenerator}}}{vector<float, std::allocator<float> >={_Vector_impl=^f^f^f}}{Buffer=^^?IIIIIIQBBBBi^^f}B^^?[13^{Port}]}
    Mixer *wetMixer;                         // +0x48 (8 bytes)  ^{Mixer=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^^?{vector<csl::UnitGenerator *, std::allocator<csl::UnitGenerator *> >={_Vector_impl=^^{UnitGenerator}^^{UnitGenerator}^^{UnitGenerator}}}{vector<float, std::allocator<float> >={_Vector_impl=^f^f^f}}{Buffer=^^?IIIIIIQBBBBi^^f}B^^?[13^{Port}]}
    Stereoverb *reverb;                      // +0x50 (8 bytes)  ^{Stereoverb=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}IB^f^{Freeverb}^{Freeverb}^{Splitter}^{Joiner}B^^?[13^{Port}]}
    dispatch_queue_s *actionQueue;           // +0x58 (8 bytes)  ^{dispatch_queue_s=}
    dispatch_queue_s *callbackQueue;         // +0x60 (8 bytes)  ^{dispatch_queue_s=}
    NSMutableData *receivedData;             // +0x68 (8 bytes)  @"NSMutableData"
    struct {…} headPosition;                 // +0x70 (12 bytes)  {?="x"f"y"f"z"f}
}
@property (nonatomic) struct {…} headPosition;  // ivar: headPosition
@property (nonatomic) float headOrientation;  // ivar: headOrientation
@property (nonatomic) float distanceScale;  // ivar: distanceScale
@property (nonatomic) float maxSpatialGain;  // ivar: maxSpatialGain
@property (nonatomic) int traceLevel;  // ivar: traceLevel
@property (nonatomic) dispatch_queue_s *actionQueue;  // ivar: actionQueue
@property (nonatomic) dispatch_queue_s *callbackQueue;  // ivar: callbackQueue
@property (nonatomic) Fifo *fifo;  // ivar: fifo
@property (nonatomic) iPhoneIO *io;  // ivar: io
@property (nonatomic) Mixer *masterMixer;  // ivar: masterMixer
@property (nonatomic) Mixer *dryMixer;  // ivar: dryMixer
@property (nonatomic) Mixer *wetMixer;  // ivar: wetMixer
@property (nonatomic) Stereoverb *reverb;  // ivar: reverb
@property (retain, nonatomic) S3DEngineDispatcher *dispatcher;  // ivar: dispatcher
@property (retain, nonatomic) NSMutableDictionary *playListCache;  // ivar: playListCache
@property (nonatomic) NSMutableData *receivedData;  // ivar: receivedData
+ (void)setPlayListMetaPath:(id)arg1;                                                      // IMP 0x1000fa6e8
+ (void)setHRTFPath:(id)arg1;                                                              // IMP 0x1000fa714
+ (void)setProductName:(id)arg1;                                                           // IMP 0x1000fa740
+ (void)setMasterSpatialisedGain:(float)arg1;                                              // IMP 0x1000fa78c
+ (float)getMasterSpatialisedGain;                                                         // IMP 0x1000fa79c
+ (void)disableReverb;                                                                     // IMP 0x1000fa7d8
+ (id)engine;                                                                              // IMP 0x1000fb36c
+ (void)dumpSoundFileList;                                                                 // IMP 0x1000fc998
+ (void)metric_Enable:(BOOL)arg1;                                                          // IMP 0x1000fc99c
+ (float)metric_MixPercent;                                                                // IMP 0x1000fc9ac
+ (float)metric_MixPercentLP;                                                              // IMP 0x1000fc9bc
+ (float)metric_MixPercentMax;                                                             // IMP 0x1000fc9cc
+ (float)metric_OpsPercent;                                                                // IMP 0x1000fc9dc
+ (float)metric_OpsPercentLP;                                                              // IMP 0x1000fc9ec
+ (float)metric_OpsPercentMax;                                                             // IMP 0x1000fc9fc
+ (float)metric_TotalPercent;                                                              // IMP 0x1000fca0c
+ (float)metric_TotalPercentLP;                                                            // IMP 0x1000fca1c
+ (float)metric_TotalPercentMax;                                                           // IMP 0x1000fca2c
+ (int)metric_NumSoundsLoaded;                                                             // IMP 0x1000fca3c
+ (int)metric_NumActiveSpatialSounds;                                                      // IMP 0x1000fca4c
+ (int)metric_NumActiveNonSpatialSounds;                                                   // IMP 0x1000fca5c
+ (int)metric_NumActiveSounds;                                                             // IMP 0x1000fca6c
+ (unsigned int)metric_BufferBytesAllocated;                                               // IMP 0x1000fca7c
+ (float)metric_MaxMixTimeSeconds;                                                         // IMP 0x1000fca8c
+ (float)metric_app_cpu_usage;                                                             // IMP 0x1000fca9c
+ (id)engineVersion;                                                                       // IMP 0x1000fcc24
- (id /*block*/)auto_wrapper:(id /*block*/)arg1;                                           // IMP 0x1000f9ea0
- (void)dispatch:(id /*block*/)arg1;                                                       // IMP 0x1000f9f68
- (void)dispatch_after:(unsigned long long)arg1 block:(id /*block*/)arg2;                  // IMP 0x1000fa000
- (void)AU_preSerialize:(id /*block*/)arg1;                                                // IMP 0x1000fa0a0
- (void)quietLog:(int)arg1 format:(id)arg2;                                                // IMP 0x1000fa1c4
- (Fifo *)fifo;                                                                            // IMP 0x1000fa32c
- (void)setHeadPosition:(struct {…})arg1;                                                  // IMP 0x1000fa340
- (void)setDistanceScale:(float)arg1;                                                      // IMP 0x1000fa460
- (void)setHeadOrientation:(float)arg1;                                                    // IMP 0x1000fa4d4
- (void)disableReverb;                                                                     // IMP 0x1000fa594
- (struct {…})normalizeToHeadPosition:(struct {…})arg1;                                    // IMP 0x1000fa5a8
- (void)setMasterGain:(float)arg1;                                                         // IMP 0x1000fa76c
- (id)getEngineVersionString;                                                              // IMP 0x1000fa7ac
- (void)dealloc;                                                                           // IMP 0x1000fa7ec
- (void)setupCSL;                                                                          // IMP 0x1000fa988
- (id)init;                                                                                // IMP 0x1000faa60
- (id)staticPlayLists;                                                                     // IMP 0x1000fb3fc
- (id)playListWithName:(id)arg1;                                                           // IMP 0x1000fc01c
- (id)playListWithName:(id)arg1 atBundlePath:(id)arg2;                                     // IMP 0x1000fc050
- (id)getListOfPlaylists;                                                                  // IMP 0x1000fc380
- (id)getListOfActivePlaylists;                                                            // IMP 0x1000fc4b0
- (void)stopAll;                                                                           // IMP 0x1000fc628
- (void)setReverbRoomSize:(float)arg1;                                                     // IMP 0x1000fc79c
- (void)setReverbDampening:(float)arg1;                                                    // IMP 0x1000fc818
- (void)setReverbVolume:(float)arg1;                                                       // IMP 0x1000fc890
- (void)fadeAllBut:(id)arg1;                                                               // IMP 0x1000fc904
- (void).cxx_destruct;                                                                     // IMP 0x1000fce68
- (id).cxx_construct;                                                                      // IMP 0x1000fcea8
- (struct {…})headPosition;                                                                // IMP 0x1000fcc50
- (float)headOrientation;                                                                  // IMP 0x1000fcc68
- (float)distanceScale;                                                                    // IMP 0x1000fcc78
- (float)maxSpatialGain;                                                                   // IMP 0x1000fcc88
- (void)setMaxSpatialGain:(float)arg1;                                                     // IMP 0x1000fcc98
- (id)playListCache;                                                                       // IMP 0x1000fcca8
- (void)setPlayListCache:(id)arg1;                                                         // IMP 0x1000fccb8
- (int)traceLevel;                                                                         // IMP 0x1000fccf0
- (void)setTraceLevel:(int)arg1;                                                           // IMP 0x1000fcd00
- (id)dispatcher;                                                                          // IMP 0x1000fcd10
- (void)setDispatcher:(id)arg1;                                                            // IMP 0x1000fcd20
- (void)setFifo:(Fifo *)arg1;                                                              // IMP 0x1000fcd58
- (Mixer *)masterMixer;                                                                    // IMP 0x1000fcd68
- (void)setMasterMixer:(Mixer *)arg1;                                                      // IMP 0x1000fcd78
- (iPhoneIO *)io;                                                                          // IMP 0x1000fcd88
- (void)setIo:(iPhoneIO *)arg1;                                                            // IMP 0x1000fcd98
- (Mixer *)dryMixer;                                                                       // IMP 0x1000fcda8
- (void)setDryMixer:(Mixer *)arg1;                                                         // IMP 0x1000fcdb8
- (Mixer *)wetMixer;                                                                       // IMP 0x1000fcdc8
- (void)setWetMixer:(Mixer *)arg1;                                                         // IMP 0x1000fcdd8
- (Stereoverb *)reverb;                                                                    // IMP 0x1000fcde8
- (void)setReverb:(Stereoverb *)arg1;                                                      // IMP 0x1000fcdf8
- (dispatch_queue_s *)actionQueue;                                                         // IMP 0x1000fce08
- (void)setActionQueue:(dispatch_queue_s *)arg1;                                           // IMP 0x1000fce18
- (dispatch_queue_s *)callbackQueue;                                                       // IMP 0x1000fce28
- (void)setCallbackQueue:(dispatch_queue_s *)arg1;                                         // IMP 0x1000fce38
- (id)receivedData;                                                                        // IMP 0x1000fce48
- (void)setReceivedData:(id)arg1;                                                          // IMP 0x1000fce58
@end

@interface S3DEngineDispatcher : NSObject   // instance size 48, class @0x1004242f8
{
    BOOL needsPositionUpdate;                // +0x8 (1 bytes)  B
    NSMutableSet *agents;                    // +0x10 (8 bytes)  @"NSMutableSet"
    NSMutableSet *playLists;                 // +0x18 (8 bytes)  @"NSMutableSet"
    NSMutableSet *lingering;                 // +0x20 (8 bytes)  @"NSMutableSet"
    NSMutableDictionary *monitors;           // +0x28 (8 bytes)  @"NSMutableDictionary"
}
@property (nonatomic) BOOL needsPositionUpdate;  // ivar: needsPositionUpdate
@property (retain, nonatomic) NSMutableSet *agents;  // ivar: agents
@property (retain, nonatomic) NSMutableSet *playLists;  // ivar: playLists
@property (retain, nonatomic) NSMutableSet *lingering;  // ivar: lingering
@property (retain, nonatomic) NSMutableDictionary *monitors;  // ivar: monitors
+ (id)dispatcher;                                                                          // IMP 0x100107cec
- (void)dealloc;                                                                           // IMP 0x1001078c4
- (id)init;                                                                                // IMP 0x100107900
- (void)dispatch_pump;                                                                     // IMP 0x100107b98
- (void)startTrackingPlayList:(id)arg1;                                                    // IMP 0x100107d7c
- (void)stopTrackingPlayList:(id)arg1;                                                     // IMP 0x100107ff4
- (void)startTracking:(id)arg1;                                                            // IMP 0x10010826c
- (void)stopTracking:(id)arg1;                                                             // IMP 0x1001084e4
- (void)fadeAllBut:(id)arg1;                                                               // IMP 0x100108704
- (void)dispatched_fired;                                                                  // IMP 0x100108a4c
- (void)add3DSoundMonitor:(id /*block*/)arg1 forSound:(id)arg2;                            // IMP 0x100109c7c
- (void).cxx_destruct;                                                                     // IMP 0x10010a0b8
- (id)agents;                                                                              // IMP 0x100109f78
- (void)setAgents:(id)arg1;                                                                // IMP 0x100109f88
- (id)playLists;                                                                           // IMP 0x100109fc0
- (void)setPlayLists:(id)arg1;                                                             // IMP 0x100109fd0
- (id)lingering;                                                                           // IMP 0x10010a008
- (void)setLingering:(id)arg1;                                                             // IMP 0x10010a018
- (id)monitors;                                                                            // IMP 0x10010a050
- (void)setMonitors:(id)arg1;                                                              // IMP 0x10010a060
- (BOOL)needsPositionUpdate;                                                               // IMP 0x10010a098
- (void)setNeedsPositionUpdate:(BOOL)arg1;                                                 // IMP 0x10010a0a8
@end

@interface S3DPlayList : NSObject   // instance size 72, class @0x100424208
{
    BOOL active;                             // +0x8 (1 bytes)  B
    BOOL firstHasPlayed;                     // +0x9 (1 bytes)  B
    BOOL activating;                         // +0xa (1 bytes)  B
    BOOL deactivating;                       // +0xb (1 bytes)  B
    int playListRepeatPolicy;                // +0xc (4 bytes)  i
    int cycleIndex;                          // +0x10 (4 bytes)  i
    S3DPlayListModel *model;                 // +0x18 (8 bytes)  @"S3DPlayListModel"
    NSString *name;                          // +0x20 (8 bytes)  @"NSString"
    NSMutableDictionary *agentCache;         // +0x28 (8 bytes)  @"NSMutableDictionary"
    S3DSound *primed;                        // +0x30 (8 bytes)  @"S3DSound"
    _NSRange range;                          // +0x38 (16 bytes)  {_NSRange="location"Q"length"Q}
}
@property (readonly, nonatomic) _NSRange range;  // ivar: range
@property (nonatomic) int playListRepeatPolicy;  // ivar: playListRepeatPolicy
@property (retain, nonatomic) NSString *name;  // ivar: name
@property (retain, nonatomic) S3DPlayListModel *model;  // ivar: model
@property (nonatomic) int cycleIndex;  // ivar: cycleIndex
@property (nonatomic) BOOL activating;  // ivar: activating
@property (nonatomic) BOOL deactivating;  // ivar: deactivating
@property (retain, nonatomic) S3DSound *primed;  // ivar: primed
@property (retain, nonatomic) NSMutableDictionary *agentCache;  // ivar: agentCache
@property (nonatomic) BOOL firstHasPlayed;  // ivar: firstHasPlayed
@property (nonatomic) BOOL active;  // ivar: active
- (BOOL)isActive;                                                                          // IMP 0x1000fceac
- (id)name;                                                                                // IMP 0x1000fcebc
- (_NSRange)range;                                                                         // IMP 0x1000fcfc4
- (id)subPlayListWithRange:(_NSRange)arg1;                                                 // IMP 0x1000fcfd8
- (id)init;                                                                                // IMP 0x1000fd14c
- (int)playListRepeatPolicy;                                                               // IMP 0x1000fd29c
- (void)setPlayListRepeatPolicy:(int)arg1;                                                 // IMP 0x1000fd344
- (id)anySoundMatchingPredicate:(id /*block*/)arg1;                                        // IMP 0x1000fd3f4
- (id)soundsMatchingPredicate:(id /*block*/)arg1;                                          // IMP 0x1000fd760
- (id)anySound;                                                                            // IMP 0x1000fda7c
- (id)anySoundWihPrefix:(id)arg1;                                                          // IMP 0x1000fda9c
- (id)anySoundWihSuffix:(id)arg1;                                                          // IMP 0x1000fdb98
- (id)anySoundContaining:(id)arg1;                                                         // IMP 0x1000fdc94
- (id)cycleSound;                                                                          // IMP 0x1000fdd9c
- (void)deactivate;                                                                        // IMP 0x1000fe06c
- (void)deactivate:(id /*block*/)arg1;                                                     // IMP 0x1000fe140
- (void)transferActivationTo:(id)arg1;                                                     // IMP 0x1000fe42c
- (void)transferActivationTo:(id)arg1 completion:(id /*block*/)arg2;                       // IMP 0x1000fe450
- (void)activate;                                                                          // IMP 0x1000fe8ec
- (void)activate:(id /*block*/)arg1;                                                       // IMP 0x1000fe9c0
- (void)logit:(id)arg1;                                                                    // IMP 0x1000ff5cc
- (void)applyRepeatPolicyTo:(id)arg1;                                                      // IMP 0x1000ff668
- (id)keyFromDict:(id)arg1;                                                                // IMP 0x1000ffd74
- (void)each:(id /*block*/)arg1;                                                           // IMP 0x1000ffeb8
- (id)S3DSound:(id)arg1;                                                                   // IMP 0x100100304
- (void)prime:(id)arg1;                                                                    // IMP 0x1001005ac
- (void)stopAll;                                                                           // IMP 0x1001005cc
- (id)description;                                                                         // IMP 0x100100650
- (void).cxx_destruct;                                                                     // IMP 0x10010081c
- (id).cxx_construct;                                                                      // IMP 0x100100884
- (id)model;                                                                               // IMP 0x10010066c
- (void)setModel:(id)arg1;                                                                 // IMP 0x10010067c
- (void)setName:(id)arg1;                                                                  // IMP 0x1001006b4
- (BOOL)active;                                                                            // IMP 0x1001006ec
- (void)setActive:(BOOL)arg1;                                                              // IMP 0x1001006fc
- (id)agentCache;                                                                          // IMP 0x10010070c
- (void)setAgentCache:(id)arg1;                                                            // IMP 0x10010071c
- (BOOL)firstHasPlayed;                                                                    // IMP 0x100100754
- (void)setFirstHasPlayed:(BOOL)arg1;                                                      // IMP 0x100100764
- (id)primed;                                                                              // IMP 0x100100774
- (void)setPrimed:(id)arg1;                                                                // IMP 0x100100784
- (int)cycleIndex;                                                                         // IMP 0x1001007bc
- (void)setCycleIndex:(int)arg1;                                                           // IMP 0x1001007cc
- (BOOL)activating;                                                                        // IMP 0x1001007dc
- (void)setActivating:(BOOL)arg1;                                                          // IMP 0x1001007ec
- (BOOL)deactivating;                                                                      // IMP 0x1001007fc
- (void)setDeactivating:(BOOL)arg1;                                                        // IMP 0x10010080c
@end

@interface S3DPlayListModel : S3DAbstractModel   // instance size 40, class @0x100424348
{
    int playListRepeatPolicy;                // +0x8 (4 bytes)  i
    NSString *name;                          // +0x10 (8 bytes)  @"NSString"
    NSArray *playList;                       // +0x18 (8 bytes)  @"NSArray"
    NSArray *nested_xIds;                    // +0x20 (8 bytes)  @"NSArray"
}
@property (retain, nonatomic) NSString *name;  // ivar: name
@property (retain, nonatomic) NSArray *playList;  // ivar: playList
@property (retain, nonatomic) NSArray *nested_xIds;  // ivar: nested_xIds
@property (nonatomic) int playListRepeatPolicy;  // ivar: playListRepeatPolicy
+ (int)PlayListRepeatPolicyFromNSString:(id)arg1;                                          // IMP 0x10010a42c
+ (id)NSStringFromRepeatPolicy:(int)arg1;                                                  // IMP 0x10010a4b8
+ (id)decode:(id)arg1;                                                                     // IMP 0x10010a520
- (id)initWithArray:(id)arg1 nested:(id)arg2 name:(id)arg3 repeats:(int)arg4;              // IMP 0x10010a120
- (id)encode;                                                                              // IMP 0x10010afbc
- (void).cxx_destruct;                                                                     // IMP 0x10010ba1c
- (id)name;                                                                                // IMP 0x10010b924
- (void)setName:(id)arg1;                                                                  // IMP 0x10010b934
- (id)playList;                                                                            // IMP 0x10010b96c
- (void)setPlayList:(id)arg1;                                                              // IMP 0x10010b97c
- (int)playListRepeatPolicy;                                                               // IMP 0x10010b9b4
- (void)setPlayListRepeatPolicy:(int)arg1;                                                 // IMP 0x10010b9c4
- (id)nested_xIds;                                                                         // IMP 0x10010b9d4
- (void)setNested_xIds:(id)arg1;                                                           // IMP 0x10010b9e4
@end

@interface S3DRepo : NSObject   // instance size 24, class @0x100424398
{
    NSString *bundlePath;                    // +0x8 (8 bytes)  @"NSString"
    NSMutableDictionary *cache;              // +0x10 (8 bytes)  @"NSMutableDictionary"
}
@property (retain, nonatomic) NSString *bundlePath;  // ivar: bundlePath
@property (retain, nonatomic) NSMutableDictionary *cache;  // ivar: cache
+ (id)repoForBundlePath:(id)arg1;                                                          // IMP 0x10010bdc8
- (void)didReceiveMemoryWarning:(id)arg1;                                                  // IMP 0x10010ba70
- (void)dealloc;                                                                           // IMP 0x10010bb24
- (id)initWithBundlePath:(id)arg1;                                                         // IMP 0x10010bc4c
- (void)each:(Class)arg1 block:(id /*block*/)arg2;                                         // IMP 0x10010bed8
- (id)generateIdForClass:(Class)arg1;                                                      // IMP 0x10010c440
- (id)extractClassName:(id)arg1;                                                           // IMP 0x10010c744
- (id)instancePath:(id)arg1;                                                               // IMP 0x10010c86c
- (id)read:(id)arg1;                                                                       // IMP 0x10010c9f8
- (void)write:(id)arg1 data:(id)arg2;                                                      // IMP 0x10010cb3c
- (id)load:(id)arg1;                                                                       // IMP 0x10010cc40
- (id)store:(id)arg1;                                                                      // IMP 0x10010ced4
- (void).cxx_destruct;                                                                     // IMP 0x10010d17c
- (id)bundlePath;                                                                          // IMP 0x10010d0ec
- (void)setBundlePath:(id)arg1;                                                            // IMP 0x10010d0fc
- (id)cache;                                                                               // IMP 0x10010d134
- (void)setCache:(id)arg1;                                                                 // IMP 0x10010d144
@end

@interface S3DSound : NSObject <NSCopying>   // instance size 216, class @0x100424258
{
    BOOL playing;                            // +0x8 (1 bytes)  B
    BOOL loaded;                             // +0x9 (1 bytes)  B
    BOOL looping;                            // +0xa (1 bytes)  B
    BOOL polarUpdated;                       // +0xb (1 bytes)  B
    BOOL planarNeedsUpdating;                // +0xc (1 bytes)  B
    BOOL spatialized;                        // +0xd (1 bytes)  B
    BOOL preload;                            // +0xe (1 bytes)  B
    BOOL unloadOnStop;                       // +0xf (1 bytes)  B
    BOOL stream;                             // +0x10 (1 bytes)  B
    BOOL active;                             // +0x11 (1 bytes)  B
    BOOL stopping;                           // +0x12 (1 bytes)  B
    BOOL restart;                            // +0x13 (1 bytes)  B
    BOOL restarting;                         // +0x14 (1 bytes)  B
    BOOL localLooping;                       // +0x15 (1 bytes)  B
    BOOL _sendToReverb;                      // +0x16 (1 bytes)  B
    BOOL _autoReverbMix;                     // +0x17 (1 bytes)  B
    BOOL _setup;                             // +0x18 (1 bytes)  B
    BOOL _mPlayWhenLoaded;                   // +0x19 (1 bytes)  B
    float duration;                          // +0x1c (4 bytes)  f
    float pan;                               // +0x20 (4 bytes)  f
    float gain;                              // +0x24 (4 bytes)  f
    float fadeGain;                          // +0x28 (4 bytes)  f
    float wetGain;                           // +0x2c (4 bytes)  f
    float dryGain;                           // +0x30 (4 bytes)  f
    float playRate;                          // +0x34 (4 bytes)  f
    float _minReverbDistance;                // +0x38 (4 bytes)  f
    float _maxReverbDistance;                // +0x3c (4 bytes)  f
    float _minWetSend;                       // +0x40 (4 bytes)  f
    float _maxWetSend;                       // +0x44 (4 bytes)  f
    int _userValue;                          // +0x48 (4 bytes)  i
    float _mStoredFadeDuration;              // +0x4c (4 bytes)  f
    NSString *key;                           // +0x50 (8 bytes)  @"NSString"
    unsigned long long channelCount;         // +0x58 (8 bytes)  Q
    CASoundFile *soundFile;                  // +0x60 (8 bytes)  ^{CASoundFile=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^^?f^^?i{Buffer=^^?IIIIIIQBBBBi^^f}^^?^^?Id^{SoundFileMetadata}{PlayBackEventRecorder=iii^{PlayBackEvent}}B^{_opaque_pthread_t}iiiBiiBBi[2i]B{basic_string<char, std::char_traits<char>, std::allocator<char> >={_Alloc_hider=*}}iiBBiidIIII^v^{__CFURL}^{OpaqueExtAudioFile}B^^?[13^{Port}]}
    Panner *panner;                          // +0x68 (8 bytes)  ^{Panner=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}IB^f^^?^^?[13^{Port}]}
    Mixer *gainControl;                      // +0x70 (8 bytes)  ^{Mixer=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^^?{vector<csl::UnitGenerator *, std::allocator<csl::UnitGenerator *> >={_Vector_impl=^^{UnitGenerator}^^{UnitGenerator}^^{UnitGenerator}}}{vector<float, std::allocator<float> >={_Vector_impl=^f^f^f}}{Buffer=^^?IIIIIIQBBBBi^^f}B^^?[13^{Port}]}
    FanOut *fanout;                          // +0x78 (8 bytes)  ^{FanOut=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}IB^f{Buffer=^^?IIIIIIQBBBBi^^f}II^^?[13^{Port}]}
    Mixer *drygainControl;                   // +0x80 (8 bytes)  ^{Mixer=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^^?{vector<csl::UnitGenerator *, std::allocator<csl::UnitGenerator *> >={_Vector_impl=^^{UnitGenerator}^^{UnitGenerator}^^{UnitGenerator}}}{vector<float, std::allocator<float> >={_Vector_impl=^f^f^f}}{Buffer=^^?IIIIIIQBBBBi^^f}B^^?[13^{Port}]}
    Mixer *wetgainControl;                   // +0x88 (8 bytes)  ^{Mixer=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^^?{vector<csl::UnitGenerator *, std::allocator<csl::UnitGenerator *> >={_Vector_impl=^^{UnitGenerator}^^{UnitGenerator}^^{UnitGenerator}}}{vector<float, std::allocator<float> >={_Vector_impl=^f^f^f}}{Buffer=^^?IIIIIIQBBBBi^^f}B^^?[13^{Port}]}
    Spatializer *spatializer;                // +0x90 (8 bytes)  ^{Spatializer=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^^?fi^{SpatialPanner}{map<csl::SpatialSource *, csl::DistanceSimulator *, std::less<csl::SpatialSource *>, std::allocator<std::pair<csl::SpatialSource *const, csl::DistanceSimulator *> > >={_Rb_tree<csl::SpatialSource *, std::pair<csl::SpatialSource *const, csl::DistanceSimulator *>, std::_Select1st<std::pair<csl::SpatialSource *const, csl::DistanceSimulator *> >, std::less<csl::SpatialSource *>, std::allocator<std::pair<csl::SpatialSource *const, csl::DistanceSimulator *> > >={_Rb_tree_impl<std::less<csl::SpatialSource *>, false>={less<csl::SpatialSource *>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}^{SpeakerLayout}i^{DistanceSimulator}f}
    FanOut *fanner;                          // +0x98 (8 bytes)  ^{FanOut=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}IB^f{Buffer=^^?IIIIIIQBBBBi^^f}II^^?[13^{Port}]}
    SpatialSource *spatialSource;            // +0xa0 (8 bytes)  ^{SpatialSource=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}I^{CPoint}BB^^?^^?[13^{Port}]}
    Butter *lowPassFilter;                   // +0xa8 (8 bytes)  ^{Butter=^^?{vector<csl::Observer *, std::allocator<csl::Observer *> >={_Vector_impl=^^{Observer}^^{Observer}^^{Observer}}}{map<int, std::vector<csl::Observer *, std::allocator<csl::Observer *> >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree<int, std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > >, std::_Select1st<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > >, std::less<int>, std::allocator<std::pair<const int, std::vector<csl::Observer *, std::allocator<csl::Observer *> > > > >={_Rb_tree_impl<std::less<int>, false>={less<int>=}{_Rb_tree_node_base=i^{_Rb_tree_node_base}^{_Rb_tree_node_base}^{_Rb_tree_node_base}}Q}}}BBffIIi{SimpleVector<csl::UnitGenerator *>=QQ^^{UnitGenerator}^^{UnitGenerator}^{UnitGenerator}}I^{Buffer}IB^f^^?^^?[16f][16f]II^{Buffer}^{Buffer}fi^^?[13^{Port}]}
    NSURL *url;                              // +0xb0 (8 bytes)  @"NSURL"
    NSTimer *_timer;                         // +0xb8 (8 bytes)  @"NSTimer"
    struct {…} previous;                     // +0xc0 (12 bytes)  {?="x"f"y"f"z"f}
    struct {…} planar;                       // +0xcc (12 bytes)  {?="x"f"y"f"z"f}
}
@property (nonatomic) BOOL spatialized;  // ivar: spatialized
@property (nonatomic) float gain;  // ivar: gain
@property (nonatomic) BOOL sendToReverb;  // ivar: _sendToReverb
@property (nonatomic) BOOL preload;  // ivar: preload
@property (nonatomic) BOOL unloadOnStop;  // ivar: unloadOnStop
@property (nonatomic) struct {…} planar;  // ivar: planar
@property (nonatomic) BOOL stream;  // ivar: stream
@property (nonatomic) float pan;  // ivar: pan
@property (nonatomic) float wetGain;  // ivar: wetGain
@property (nonatomic) float dryGain;  // ivar: dryGain
@property (nonatomic) BOOL autoReverbMix;  // ivar: _autoReverbMix
@property (nonatomic) float minReverbDistance;  // ivar: _minReverbDistance
@property (nonatomic) float maxReverbDistance;  // ivar: _maxReverbDistance
@property (nonatomic) float minWetSend;  // ivar: _minWetSend
@property (nonatomic) float maxWetSend;  // ivar: _maxWetSend
@property (readonly, nonatomic) NSString *key;  // ivar: key
@property (readonly, nonatomic) BOOL loaded;  // ivar: loaded
@property (readonly, nonatomic) BOOL playing;  // ivar: playing
@property (readonly, nonatomic) unsigned long long channelCount;  // ivar: channelCount
@property (readonly, nonatomic) float duration;  // ivar: duration
@property (readonly, nonatomic) BOOL setup;  // ivar: _setup
@property (readonly, nonatomic) BOOL looping;  // ivar: looping
@property (nonatomic) int userValue;  // ivar: _userValue
@property (retain, nonatomic) NSURL *url;  // ivar: url
@property (nonatomic) float playRate;  // ivar: playRate
@property (nonatomic) CASoundFile *soundFile;  // ivar: soundFile
@property (nonatomic) FanOut *fanner;  // ivar: fanner
@property (nonatomic) Spatializer *spatializer;  // ivar: spatializer
@property (nonatomic) SpatialSource *spatialSource;  // ivar: spatialSource
@property (nonatomic) Butter *lowPassFilter;  // ivar: lowPassFilter
@property (nonatomic) BOOL planarNeedsUpdating;  // ivar: planarNeedsUpdating
@property (nonatomic) BOOL polarUpdated;  // ivar: polarUpdated
@property () BOOL active;  // ivar: active
@property () BOOL stopping;  // ivar: stopping
@property () BOOL restart;  // ivar: restart
@property () BOOL restarting;  // ivar: restarting
@property () BOOL localLooping;  // ivar: localLooping
@property (nonatomic) Panner *panner;  // ivar: panner
@property (nonatomic) Mixer *gainControl;  // ivar: gainControl
@property (nonatomic) FanOut *fanout;  // ivar: fanout
@property (nonatomic) Mixer *drygainControl;  // ivar: drygainControl
@property (nonatomic) Mixer *wetgainControl;  // ivar: wetgainControl
@property (nonatomic) float fadeGain;  // ivar: fadeGain
@property (nonatomic) struct {…} previous;  // ivar: previous
@property (retain, nonatomic) NSTimer *timer;  // ivar: _timer
@property (nonatomic) float mStoredFadeDuration;  // ivar: _mStoredFadeDuration
@property (nonatomic) BOOL mPlayWhenLoaded;  // ivar: _mPlayWhenLoaded
+ (id)agentWithBundleResourceOfName:(id)arg1 inDirectory:(id)arg2 extension:(id)arg3;      // IMP 0x10010512c
+ (id)agentWithURL:(id)arg1;                                                               // IMP 0x1001052c4
+ (id)agentWithDictionary:(id)arg1;                                                        // IMP 0x100105338
- (BOOL)looping;                                                                           // IMP 0x100100888
- (void)setLoopinggg:(BOOL)arg1;                                                           // IMP 0x100100898
- (BOOL)loaded;                                                                            // IMP 0x100100980
- (BOOL)playing;                                                                           // IMP 0x1001009a8
- (float)duration;                                                                         // IMP 0x1001009fc
- (void)setPlayRate:(float)arg1;                                                           // IMP 0x100100a50
- (void)setPan:(float)arg1;                                                                // IMP 0x100100abc
- (void)setGain:(float)arg1;                                                               // IMP 0x100100b34
- (unsigned long long)channelCount;                                                        // IMP 0x100100d48
- (id)description;                                                                         // IMP 0x100100da0
- (void)setPlanarInternalInternal;                                                         // IMP 0x100100f74
- (void)setPlanarInternal;                                                                 // IMP 0x1001011c8
- (void)setPlanar:(struct {…})arg1;                                                        // IMP 0x100101394
- (void)setSpatialized:(BOOL)arg1;                                                         // IMP 0x100101410
- (void)cleanup;                                                                           // IMP 0x1001014c4
- (void)deactivate;                                                                        // IMP 0x100102dc8
- (void)setupPlain;                                                                        // IMP 0x10010322c
- (void)setupSpatialized;                                                                  // IMP 0x100103b64
- (void)activate;                                                                          // IMP 0x100104660
- (void)soundFileOpen;                                                                     // IMP 0x100104674
- (void)activate:(id /*block*/)arg1;                                                       // IMP 0x1001047fc
- (void)dealloc;                                                                           // IMP 0x100104b9c
- (void)cleardown;                                                                         // IMP 0x100104cec
- (id)initWithURL:(id)arg1;                                                                // IMP 0x100104e00
- (void)pause;                                                                             // IMP 0x100105680
- (void)resume;                                                                            // IMP 0x100105694
- (void)play;                                                                              // IMP 0x1001056a8
- (void)playAsIs;                                                                          // IMP 0x100105740
- (void)setup_complete:(float)arg1 loop:(BOOL)arg2;                                        // IMP 0x100105a54
- (void)setup_either:(float)arg1 loop:(BOOL)arg2;                                          // IMP 0x100105da4
- (void)play:(BOOL)arg1 fadein:(float)arg2;                                                // IMP 0x100105eb8
- (void)play:(BOOL)arg1;                                                                   // IMP 0x100106148
- (void)prepareForPlay:(float)arg1 looping:(BOOL)arg2;                                     // IMP 0x100106208
- (void)fadeIn:(float)arg1 looping:(BOOL)arg2;                                             // IMP 0x10010643c
- (void)fadeOut;                                                                           // IMP 0x1001064f4
- (void)fadeOut:(float)arg1;                                                               // IMP 0x10010650c
- (void)fadeIn:(float)arg1 from:(id)arg2;                                                  // IMP 0x1001066ac
- (void)stopInternal;                                                                      // IMP 0x1001067f8
- (void)stop;                                                                              // IMP 0x10010690c
- (void)add3DSoundMonitor:(id /*block*/)arg1;                                              // IMP 0x100106b44
- (void)add3DSoundEndCallback:(id /*block*/)arg1;                                          // IMP 0x100106be0
- (void)setWetGain:(float)arg1;                                                            // IMP 0x100106d10
- (void)setDryGain:(float)arg1;                                                            // IMP 0x100106ed4
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x100107098
- (void).cxx_destruct;                                                                     // IMP 0x1001075cc
- (id).cxx_construct;                                                                      // IMP 0x100107620
- (id)key;                                                                                 // IMP 0x10010709c
- (struct {…})previous;                                                                    // IMP 0x1001070ac
- (void)setPrevious:(struct {…})arg1;                                                      // IMP 0x1001070c4
- (BOOL)polarUpdated;                                                                      // IMP 0x1001070e0
- (void)setPolarUpdated:(BOOL)arg1;                                                        // IMP 0x1001070f0
- (struct {…})planar;                                                                      // IMP 0x100107100
- (BOOL)planarNeedsUpdating;                                                               // IMP 0x100107118
- (void)setPlanarNeedsUpdating:(BOOL)arg1;                                                 // IMP 0x100107128
- (BOOL)spatialized;                                                                       // IMP 0x100107138
- (BOOL)preload;                                                                           // IMP 0x100107148
- (void)setPreload:(BOOL)arg1;                                                             // IMP 0x100107158
- (BOOL)unloadOnStop;                                                                      // IMP 0x100107168
- (void)setUnloadOnStop:(BOOL)arg1;                                                        // IMP 0x100107178
- (float)pan;                                                                              // IMP 0x100107188
- (float)gain;                                                                             // IMP 0x100107198
- (float)fadeGain;                                                                         // IMP 0x1001071a8
- (void)setFadeGain:(float)arg1;                                                           // IMP 0x1001071b8
- (CASoundFile *)soundFile;                                                                // IMP 0x1001071c8
- (void)setSoundFile:(CASoundFile *)arg1;                                                  // IMP 0x1001071d8
- (Panner *)panner;                                                                        // IMP 0x1001071e8
- (void)setPanner:(Panner *)arg1;                                                          // IMP 0x1001071f8
- (Mixer *)gainControl;                                                                    // IMP 0x100107208
- (void)setGainControl:(Mixer *)arg1;                                                      // IMP 0x100107218
- (FanOut *)fanout;                                                                        // IMP 0x100107228
- (void)setFanout:(FanOut *)arg1;                                                          // IMP 0x100107238
- (Mixer *)drygainControl;                                                                 // IMP 0x100107248
- (void)setDrygainControl:(Mixer *)arg1;                                                   // IMP 0x100107258
- (Mixer *)wetgainControl;                                                                 // IMP 0x100107268
- (void)setWetgainControl:(Mixer *)arg1;                                                   // IMP 0x100107278
- (float)wetGain;                                                                          // IMP 0x100107288
- (float)dryGain;                                                                          // IMP 0x100107298
- (BOOL)stream;                                                                            // IMP 0x1001072a8
- (void)setStream:(BOOL)arg1;                                                              // IMP 0x1001072b8
- (Spatializer *)spatializer;                                                              // IMP 0x1001072c8
- (void)setSpatializer:(Spatializer *)arg1;                                                // IMP 0x1001072d8
- (FanOut *)fanner;                                                                        // IMP 0x1001072e8
- (void)setFanner:(FanOut *)arg1;                                                          // IMP 0x1001072f8
- (SpatialSource *)spatialSource;                                                          // IMP 0x100107308
- (void)setSpatialSource:(SpatialSource *)arg1;                                            // IMP 0x100107318
- (Butter *)lowPassFilter;                                                                 // IMP 0x100107328
- (void)setLowPassFilter:(Butter *)arg1;                                                   // IMP 0x100107338
- (id)url;                                                                                 // IMP 0x100107348
- (void)setUrl:(id)arg1;                                                                   // IMP 0x100107358
- (float)playRate;                                                                         // IMP 0x100107390
- (BOOL)active;                                                                            // IMP 0x1001073a0
- (void)setActive:(BOOL)arg1;                                                              // IMP 0x1001073b4
- (BOOL)stopping;                                                                          // IMP 0x1001073c4
- (void)setStopping:(BOOL)arg1;                                                            // IMP 0x1001073d8
- (BOOL)restart;                                                                           // IMP 0x1001073e8
- (void)setRestart:(BOOL)arg1;                                                             // IMP 0x1001073fc
- (BOOL)restarting;                                                                        // IMP 0x10010740c
- (void)setRestarting:(BOOL)arg1;                                                          // IMP 0x100107420
- (BOOL)localLooping;                                                                      // IMP 0x100107430
- (void)setLocalLooping:(BOOL)arg1;                                                        // IMP 0x100107444
- (BOOL)sendToReverb;                                                                      // IMP 0x100107454
- (void)setSendToReverb:(BOOL)arg1;                                                        // IMP 0x100107464
- (BOOL)autoReverbMix;                                                                     // IMP 0x100107474
- (void)setAutoReverbMix:(BOOL)arg1;                                                       // IMP 0x100107484
- (float)minReverbDistance;                                                                // IMP 0x100107494
- (void)setMinReverbDistance:(float)arg1;                                                  // IMP 0x1001074a4
- (float)maxReverbDistance;                                                                // IMP 0x1001074b4
- (void)setMaxReverbDistance:(float)arg1;                                                  // IMP 0x1001074c4
- (float)minWetSend;                                                                       // IMP 0x1001074d4
- (void)setMinWetSend:(float)arg1;                                                         // IMP 0x1001074e4
- (float)maxWetSend;                                                                       // IMP 0x1001074f4
- (void)setMaxWetSend:(float)arg1;                                                         // IMP 0x100107504
- (BOOL)setup;                                                                             // IMP 0x100107514
- (int)userValue;                                                                          // IMP 0x100107524
- (void)setUserValue:(int)arg1;                                                            // IMP 0x100107534
- (id)timer;                                                                               // IMP 0x100107544
- (void)setTimer:(id)arg1;                                                                 // IMP 0x100107554
- (float)mStoredFadeDuration;                                                              // IMP 0x10010758c
- (void)setMStoredFadeDuration:(float)arg1;                                                // IMP 0x10010759c
- (BOOL)mPlayWhenLoaded;                                                                   // IMP 0x1001075ac
- (void)setMPlayWhenLoaded:(BOOL)arg1;                                                     // IMP 0x1001075bc
@end

@interface SExp : NSObject   // instance size 32, class @0x100424028
{
    NSMutableArray *children;                // +0x8 (8 bytes)  @"NSMutableArray"
    NSMutableArray *attributes;              // +0x10 (8 bytes)  @"NSMutableArray"
    NSString *token;                         // +0x18 (8 bytes)  @"NSString"
}
@property (retain, nonatomic) NSMutableArray *children;  // ivar: children
@property (retain, nonatomic) NSMutableArray *attributes;  // ivar: attributes
@property (retain, nonatomic) NSString *token;  // ivar: token
+ (id)sexp;                                                                                // IMP 0x1000e0874
+ (id)sexp:(id)arg1;                                                                       // IMP 0x1000e08ac
+ (id)sexp:(id)arg1 root:(id *)arg2;                                                       // IMP 0x1000e0940
- (id)dateFormatter;                                                                       // IMP 0x1000e07f8
- (id)addAttribute:(id)arg1;                                                               // IMP 0x1000e0bdc
- (id)addIntAttribute:(int)arg1;                                                           // IMP 0x1000e0c78
- (id)addFloatAttribute:(float)arg1;                                                       // IMP 0x1000e0d44
- (id)addDateAttribute:(id)arg1;                                                           // IMP 0x1000e0e1c
- (id)addBoolAttribute:(BOOL)arg1;                                                         // IMP 0x1000e0f34
- (id)init;                                                                                // IMP 0x1000e0fc0
- (BOOL)stringValue:(id *)arg1;                                                            // IMP 0x1000e10fc
- (BOOL)stringValue:(id *)arg1 at:(unsigned long long)arg2;                                // IMP 0x1000e1110
- (BOOL)intValue:(int *)arg1;                                                              // IMP 0x1000e123c
- (BOOL)intValue:(int *)arg1 at:(unsigned long long)arg2;                                  // IMP 0x1000e1250
- (BOOL)dateValue:(id *)arg1;                                                              // IMP 0x1000e12f0
- (BOOL)dateValue:(id *)arg1 at:(unsigned long long)arg2;                                  // IMP 0x1000e1304
- (BOOL)floatValue:(float *)arg1;                                                          // IMP 0x1000e13ec
- (BOOL)floatValue:(float *)arg1 at:(unsigned long long)arg2;                              // IMP 0x1000e1400
- (BOOL)boolValue:(BOOL *)arg1;                                                            // IMP 0x1000e14a0
- (BOOL)boolValue:(BOOL *)arg1 at:(unsigned long long)arg2;                                // IMP 0x1000e14b4
- (id)description;                                                                         // IMP 0x1000e15c4
- (id)subnode:(id)arg1;                                                                    // IMP 0x1000e1664
- (id)subnode:(id)arg1 sibling:(unsigned long long)arg2;                                   // IMP 0x1000e1690
- (id)subnode:(id)arg1 enumerator:(id)arg2 sibling:(unsigned long long)arg3;               // IMP 0x1000e17a8
- (void)each:(id /*block*/)arg1;                                                           // IMP 0x1000e1a90
- (void).cxx_destruct;                                                                     // IMP 0x1000e1cc8
- (id)children;                                                                            // IMP 0x1000e1bf0
- (void)setChildren:(id)arg1;                                                              // IMP 0x1000e1c00
- (id)attributes;                                                                          // IMP 0x1000e1c38
- (void)setAttributes:(id)arg1;                                                            // IMP 0x1000e1c48
- (id)token;                                                                               // IMP 0x1000e1c80
- (void)setToken:(id)arg1;                                                                 // IMP 0x1000e1c90
@end

@interface SExpIO : NSObject   // instance size 12, class @0x100424078
{
    int contiguousClose;                     // +0x8 (4 bytes)  i
}
@property (nonatomic) int contiguousClose;  // ivar: contiguousClose
+ (id)properties;                                                                          // IMP 0x1000e1d9c
+ (id)sexpio;                                                                              // IMP 0x1000e1f6c
+ (id)decode:(id)arg1;                                                                     // IMP 0x1000e1fa4
+ (id)encode:(id)arg1;                                                                     // IMP 0x1000e25d4
- (id)header;                                                                              // IMP 0x1000e1d1c
- (id)read:(id)arg1;                                                                       // IMP 0x1000e21d4
- (id)write:(id)arg1 toString:(id)arg2;                                                    // IMP 0x1000e26fc
- (id)write:(id)arg1 toString:(id)arg2 atLevel:(long long)arg3;                            // IMP 0x1000e2800
- (void)dump:(id)arg1;                                                                     // IMP 0x1000e2d10
- (int)contiguousClose;                                                                    // IMP 0x1000e2df4
- (void)setContiguousClose:(int)arg1;                                                      // IMP 0x1000e2e04
@end

@interface SExpTokenizer : NSObject   // instance size 24, class @0x100423f88
{
    SimpleUnicharInputStream *inStream;      // +0x8 (8 bytes)  @"SimpleUnicharInputStream"
    NSString *stringValue;                   // +0x10 (8 bytes)  @"NSString"
}
@property (retain, nonatomic) NSString *stringValue;  // ivar: stringValue
@property (retain, nonatomic) SimpleUnicharInputStream *inStream;  // ivar: inStream
+ (id)simpleSExpTokenizer:(id)arg1;                                                        // IMP 0x1000dfc10
- (id)initWithInputStream:(id)arg1;                                                        // IMP 0x1000dfc84
- (unsigned long long)nextToken;                                                           // IMP 0x1000dfe28
- (unsigned long long)nextTokenInternal;                                                   // IMP 0x1000dfe70
- (void)dealloc;                                                                           // IMP 0x1000e0450
- (void).cxx_destruct;                                                                     // IMP 0x1000e0550
- (id)inStream;                                                                            // IMP 0x1000e04c0
- (void)setInStream:(id)arg1;                                                              // IMP 0x1000e04d0
- (id)stringValue;                                                                         // IMP 0x1000e0508
- (void)setStringValue:(id)arg1;                                                           // IMP 0x1000e0518
@end

@interface SExpValidityChecker : NSObject   // instance size 16, class @0x100423fd8
{
    SimpleUnicharInputStream *inStream;      // +0x8 (8 bytes)  @"SimpleUnicharInputStream"
}
+ (id)simpleValidityChecker:(id)arg1;                                                      // IMP 0x1000e0590
- (id)initWithUnicharStream:(id)arg1;                                                      // IMP 0x1000e0604
- (BOOL)isBasicSyntaxValid;                                                                // IMP 0x1000e06a8
- (void)dealloc;                                                                           // IMP 0x1000e0788
- (void).cxx_destruct;                                                                     // IMP 0x1000e07e4
@end

@interface SharkfoodMuteSwitchDetector : NSObject   // instance size 32, class @0x100422868
{
    BOOL _isMute;                            // +0x8 (1 bytes)  B
    BOOL _forceEmit;                         // +0x9 (1 bytes)  B
    BOOL _isPaused;                          // +0xa (1 bytes)  B
    BOOL _isPlaying;                         // +0xb (1 bytes)  B
    unsigned int _soundId;                   // +0xc (4 bytes)  I
    id /*block*/ _silentNotify;              // +0x10 (8 bytes)  @?
    double _interval;                        // +0x18 (8 bytes)  d
}
@property (readonly, nonatomic) BOOL isMute;  // ivar: _isMute
@property (copy, nonatomic) id /*block*/ silentNotify;  // ivar: _silentNotify
@property (nonatomic) double interval;  // ivar: _interval
@property (nonatomic) unsigned int soundId;  // ivar: _soundId
@property (nonatomic) BOOL forceEmit;  // ivar: _forceEmit
@property (nonatomic) BOOL isPaused;  // ivar: _isPaused
@property (nonatomic) BOOL isPlaying;  // ivar: _isPlaying
+ (id)shared;                                                                              // IMP 0x10007db1c
- (id)init;                                                                                // IMP 0x10007d78c
- (void)didEnterBackground;                                                                // IMP 0x10007da24
- (void)willReturnToForeground;                                                            // IMP 0x10007da38
- (void)setSilentNotify:(id /*block*/)arg1;                                                // IMP 0x10007da9c
- (void)scheduleCall;                                                                      // IMP 0x10007db6c
- (void)complete;                                                                          // IMP 0x10007dbdc
- (void)loopCheck;                                                                         // IMP 0x10007dd44
- (void)dealloc;                                                                           // IMP 0x10007ddd8
- (void).cxx_destruct;                                                                     // IMP 0x10007dfa4
- (BOOL)isMute;                                                                            // IMP 0x10007dee4
- (id /*block*/)silentNotify;                                                              // IMP 0x10007def4
- (double)interval;                                                                        // IMP 0x10007df04
- (void)setInterval:(double)arg1;                                                          // IMP 0x10007df14
- (unsigned int)soundId;                                                                   // IMP 0x10007df24
- (void)setSoundId:(unsigned int)arg1;                                                     // IMP 0x10007df34
- (BOOL)forceEmit;                                                                         // IMP 0x10007df44
- (void)setForceEmit:(BOOL)arg1;                                                           // IMP 0x10007df54
- (BOOL)isPaused;                                                                          // IMP 0x10007df64
- (void)setIsPaused:(BOOL)arg1;                                                            // IMP 0x10007df74
- (BOOL)isPlaying;                                                                         // IMP 0x10007df84
- (void)setIsPlaying:(BOOL)arg1;                                                           // IMP 0x10007df94
@end

@interface SimpleUnicharInputStream : NSObject   // instance size 32, class @0x1004240c8
{
    NSString *backingStore;                  // +0x8 (8 bytes)  @"NSString"
    long long current;                       // +0x10 (8 bytes)  q
    long long limit;                         // +0x18 (8 bytes)  q
}
+ (id)simpleStreamWithString:(id)arg1;                                                     // IMP 0x1000e2e14
- (id)initWithString:(id)arg1;                                                             // IMP 0x1000e2e88
- (BOOL)hasNext;                                                                           // IMP 0x1000e2f68
- (void)back;                                                                              // IMP 0x1000e2f8c
- (unsigned short)next;                                                                    // IMP 0x1000e3030
- (long long)mark;                                                                         // IMP 0x1000e3104
- (id)chunk:(_NSRange)arg1;                                                                // IMP 0x1000e3114
- (void)dealloc;                                                                           // IMP 0x1000e3130
- (void).cxx_destruct;                                                                     // IMP 0x1000e318c
@end

@interface TAGAdIdAccess : NSObject <TAGAdIdAccess>   // instance size 8, class @0x100427a20
+ (void)load;                                                                              // IMP 0x100172924
+ (id)retrieveId;                                                                          // IMP 0x100172974
+ (BOOL)retrieveTrackingFlag;                                                              // IMP 0x1001729d8
@end

@interface TAGAddRemoveMacrosPopulator : NSObject <TAGAddRemoveSetPopulator>   // instance size 24, class @0x1004277c8
{
    NSDictionary *_addMacros;                // +0x8 (8 bytes)  @"NSDictionary"
    NSDictionary *_removeMacros;             // +0x10 (8 bytes)  @"NSDictionary"
}
@property (retain, nonatomic) NSDictionary *addMacros;  // ivar: _addMacros
@property (retain, nonatomic) NSDictionary *removeMacros;  // ivar: _removeMacros
- (id)initWithAddMacros:(id)arg1 removeMacros:(id)arg2;                                    // IMP 0x1001685d4
- (void)rulePassed:(id)arg1 add:(id)arg2 remove:(id)arg3;                                  // IMP 0x1001686b8
- (void).cxx_destruct;                                                                     // IMP 0x1001688f0
- (id)addMacros;                                                                           // IMP 0x100168860
- (void)setAddMacros:(id)arg1;                                                             // IMP 0x100168870
- (id)removeMacros;                                                                        // IMP 0x1001688a8
- (void)setRemoveMacros:(id)arg1;                                                          // IMP 0x1001688b8
@end

@interface TAGAddRemoveTagsPopulator : NSObject <TAGAddRemoveSetPopulator>   // instance size 8, class @0x100427840
- (void)rulePassed:(id)arg1 add:(id)arg2 remove:(id)arg3;                                  // IMP 0x100168930
@end

@interface TAGAdvertiserId : TAGFunctionCallImplementation   // instance size 8, class @0x100427a48
+ (id)functionId;                                                                          // IMP 0x100172a24
- (id)init;                                                                                // IMP 0x100172a50
- (BOOL)isCacheable;                                                                       // IMP 0x100172b00
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100172b08
- (id)rawAdvertiserId;                                                                     // IMP 0x100172bc8
@end

@interface TAGAdvertiserIdFixed : TAGAdvertiserId   // instance size 8, class @0x100427a98
+ (id)functionId;                                                                          // IMP 0x100172be0
- (id)init;                                                                                // IMP 0x100172c0c
@end

@interface TAGAdvertisingTrackingEnabledMacro : TAGFunctionCallImplementation   // instance size 8, class @0x100427ae8
+ (id)functionId;                                                                          // IMP 0x100172cbc
- (id)init;                                                                                // IMP 0x100172ce8
- (BOOL)isCacheable;                                                                       // IMP 0x100172d98
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100172da0
- (BOOL)advertisingTrackingEnabled;                                                        // IMP 0x100172e44
@end

@interface TAGAdwordsClickReferrer : TAGFunctionCallImplementation   // instance size 8, class @0x100427b38
+ (id)functionId;                                                                          // IMP 0x100172e5c
+ (id)componentKey;                                                                        // IMP 0x100172e88
+ (id)conversionIdKey;                                                                     // IMP 0x100172eb4
- (id)init;                                                                                // IMP 0x100172ee0
- (BOOL)isCacheable;                                                                       // IMP 0x100172f98
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100172fa0
@end

@interface TAGAdwordsClickReferrerListener : NSObject <TAGDataLayerListener>   // instance size 8, class @0x100426e40
- (void)changed:(id)arg1;                                                                  // IMP 0x100158720
@end

@interface TAGAppId : TAGFunctionCallImplementation   // instance size 8, class @0x100427b88
+ (id)functionId;                                                                          // IMP 0x1001731a8
- (id)init;                                                                                // IMP 0x1001731d4
- (BOOL)isCacheable;                                                                       // IMP 0x100173284
- (id)evaluate:(id)arg1;                                                                   // IMP 0x10017328c
@end

@interface TAGAppName : TAGFunctionCallImplementation   // instance size 8, class @0x100427bd8
+ (id)functionId;                                                                          // IMP 0x100173358
+ (id)infoDictionary;                                                                      // IMP 0x1001735d4
- (id)init;                                                                                // IMP 0x100173384
- (BOOL)isCacheable;                                                                       // IMP 0x100173434
- (id)evaluate:(id)arg1;                                                                   // IMP 0x10017343c
@end

@interface TAGAppVersion : TAGFunctionCallImplementation   // instance size 8, class @0x100427c28
+ (id)functionId;                                                                          // IMP 0x10017364c
+ (id)infoDictionary;                                                                      // IMP 0x10017380c
- (id)init;                                                                                // IMP 0x100173678
- (BOOL)isCacheable;                                                                       // IMP 0x100173728
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100173730
@end

@interface TAGArbitraryPixel : TAGTrackingTag   // instance size 8, class @0x1004287b8
+ (id)functionId;                                                                          // IMP 0x100179920
+ (id)urlKey;                                                                              // IMP 0x10017994c
- (id)init;                                                                                // IMP 0x100179978
- (void)evaluateTrackingTag:(id)arg1;                                                      // IMP 0x100179a30
- (void)addDictionary:(id)arg1 toArray:(id)arg2;                                           // IMP 0x10017a18c
- (id)getQueryParametersStringFromArray:(id)arg1;                                          // IMP 0x10017a4d0
- (id)getHitSender;                                                                        // IMP 0x10017a508
- (BOOL)idProcessed:(id)arg1;                                                              // IMP 0x10017a520
- (void)cacheUnrepeatableId:(id)arg1;                                                      // IMP 0x10017a5fc
- (BOOL)idInPlist:(id)arg1;                                                                // IMP 0x10017a6a0
- (void)clearCache;                                                                        // IMP 0x10017a758
- (BOOL)idInCache:(id)arg1;                                                                // IMP 0x10017a770
@end

@interface TAGAsyncUtil : NSObject   // instance size 8, class @0x100426e90
+ (void)invokeAsync:(id /*block*/)arg1 resultBlock:(id /*block*/)arg2;                     // IMP 0x100158998
@end

@interface TAGBase16 : NSObject   // instance size 8, class @0x100426ee0
+ (id)encode:(id)arg1;                                                                     // IMP 0x100158d58
+ (id)decode:(id)arg1;                                                                     // IMP 0x100158f0c
+ (unsigned char)byteFromChar:(char)arg1;                                                  // IMP 0x1001590a8
@end

@interface TAGBase64Encoder : NSData   // instance size 8, class @0x100426f30
+ (id)encode:(id)arg1 noPadding:(BOOL)arg2;                                                // IMP 0x10015914c
+ (id)encodeWebSafe:(id)arg1 noPadding:(BOOL)arg2;                                         // IMP 0x100159210
+ (id)decode:(id)arg1 noPadding:(BOOL)arg2;                                                // IMP 0x1001592d4
+ (id)decodeWebSafe:(id)arg1 noPadding:(BOOL)arg2;                                         // IMP 0x100159398
@end

@interface TAGBoolean : NSObject <NSCopying, NSCoding>   // instance size 9, class @0x100426f58
{
    BOOL _boolValue;                         // +0x8 (1 bytes)  B
}
@property (nonatomic) BOOL boolValue;  // ivar: _boolValue
+ (void)initialize;                                                                        // IMP 0x10015945c
+ (id)booleanWithBool:(BOOL)arg1;                                                          // IMP 0x100159544
+ (id)booleanWithString:(id)arg1;                                                          // IMP 0x10015958c
+ (id)yes;                                                                                 // IMP 0x100159664
+ (id)no;                                                                                  // IMP 0x100159674
- (id)initWithBool:(BOOL)arg1;                                                             // IMP 0x1001594ec
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x100159684
- (id)description;                                                                         // IMP 0x1001596e4
- (BOOL)isEqual:(id)arg1;                                                                  // IMP 0x10015971c
- (unsigned long long)hash;                                                                // IMP 0x1001597d8
- (id)initWithCoder:(id)arg1;                                                              // IMP 0x100159808
- (void)encodeWithCoder:(id)arg1;                                                          // IMP 0x10015989c
- (BOOL)boolValue;                                                                         // IMP 0x100159910
- (void)setBoolValue:(BOOL)arg1;                                                           // IMP 0x100159920
@end

@interface TAGBooleanAndStatic : TAGObjectAndStatic   // instance size 24, class @0x1004273b8
+ (id)booleanWithBoolean:(id)arg1 isStatic:(BOOL)arg2;                                     // IMP 0x100162838
+ (id)booleanWithBool:(BOOL)arg1 isStatic:(BOOL)arg2;                                      // IMP 0x1001628b4
- (id)initWithBoolean:(id)arg1 isStatic:(BOOL)arg2;                                        // IMP 0x1001627ec
- (id)boolean;                                                                             // IMP 0x100162828
@end

@interface TAGCachedMacro : NSObject   // instance size 24, class @0x100427728
{
    TAGPValueAndStatic *_valueAndStatic;     // +0x8 (8 bytes)  @"TAGPValueAndStatic"
    TAGPValue *_pushAfterEvaluate;           // +0x10 (8 bytes)  @"TAGPValue"
}
@property (retain, nonatomic) TAGPValueAndStatic *valueAndStatic;  // ivar: _valueAndStatic
@property (retain, nonatomic) TAGPValue *pushAfterEvaluate;  // ivar: _pushAfterEvaluate
- (id)initWithValueAndStatic:(id)arg1 pushAfterEvaluate:(id)arg2;                          // IMP 0x100167e84
- (void).cxx_destruct;                                                                     // IMP 0x100167ff8
- (id)valueAndStatic;                                                                      // IMP 0x100167f68
- (void)setValueAndStatic:(id)arg1;                                                        // IMP 0x100167f78
- (id)pushAfterEvaluate;                                                                   // IMP 0x100167fb0
- (void)setPushAfterEvaluate:(id)arg1;                                                     // IMP 0x100167fc0
@end

@interface TAGClickReferrerUtil : NSObject   // instance size 8, class @0x100426fa8
+ (void)initialize;                                                                        // IMP 0x100159930
+ (void)addClickReferrer:(id)arg1;                                                         // IMP 0x100159948
+ (id)extractComponent:(id)arg1 fromReferrer:(id)arg2;                                     // IMP 0x100159aac
+ (id)parseComponentsFromQueryParameters:(id)arg1;                                         // IMP 0x100159bb0
+ (id)clickReferrerForConversionId:(id)arg1 component:(id)arg2;                            // IMP 0x100159f88
+ (void)clearCache;                                                                        // IMP 0x10015a104
@end

@interface TAGConstantMacro : TAGFunctionCallImplementation   // instance size 8, class @0x100427c78
+ (id)functionId;                                                                          // IMP 0x100173884
+ (id)valueKey;                                                                            // IMP 0x100173968
- (id)init;                                                                                // IMP 0x1001738b0
- (BOOL)isCacheable;                                                                       // IMP 0x100173994
- (id)evaluate:(id)arg1;                                                                   // IMP 0x10017399c
@end

@interface TAGContainer : NSObject   // instance size 144, class @0x100426990
{
    NSString *_ctfeServerAddress;            // +0x8 (8 bytes)  @"NSString"
    BOOL _diskLoadFinished;                  // +0x10 (1 bytes)  B
    int _resourceFormatVersion;              // +0x14 (4 bytes)  i
    NSString *_containerId;                  // +0x18 (8 bytes)  @"NSString"
    double _lastRefreshTime;                 // +0x20 (8 bytes)  d
    id<TAGResourceStorage> _resourceStorage; // +0x28 (8 bytes)  @"<TAGResourceStorage>"
    TAGManager *_tagManager;                 // +0x30 (8 bytes)  @"TAGManager"
    NSString *_ctfeUrlPathAndQuery;          // +0x38 (8 bytes)  @"NSString"
    unsigned long long _numTokens;           // +0x40 (8 bytes)  Q
    TAGPSupplementedResource *_lastLoadedSupplementedResource; // +0x48 (8 bytes)  @"TAGPSupplementedResource"
    TAGNetworkLoadCallback *_networkLoadCallback; // +0x50 (8 bytes)  @"TAGNetworkLoadCallback"
    TAGDiskLoadCallback *_diskLoadCallback;  // +0x58 (8 bytes)  @"TAGDiskLoadCallback"
    TAGResourceLoaderScheduler *_networkLoadScheduler; // +0x60 (8 bytes)  @"TAGResourceLoaderScheduler"
    TAGRuntime *_runtime;                    // +0x68 (8 bytes)  @"TAGRuntime"
    NSMutableDictionary *_functionCallTagHandlers; // +0x70 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_functionCallMacroHandlers; // +0x78 (8 bytes)  @"NSMutableDictionary"
    NSString *_resourceVersion;              // +0x80 (8 bytes)  @"NSString"
    double _lastRefreshMethodCalledTime;     // +0x88 (8 bytes)  d
}
@property (readonly, copy, nonatomic) NSString *containerId;  // ivar: _containerId
@property () double lastRefreshTime;  // ivar: _lastRefreshTime
@property (retain) id<TAGResourceStorage> resourceStorage;  // ivar: _resourceStorage
@property (retain) TAGManager *tagManager;  // ivar: _tagManager
@property (copy, nonatomic) NSString *ctfeServerAddress;
@property (copy, nonatomic) NSString *ctfeUrlPathAndQuery;  // ivar: _ctfeUrlPathAndQuery
@property () unsigned long long numTokens;  // ivar: _numTokens
@property (retain) TAGPSupplementedResource *lastLoadedSupplementedResource;  // ivar: _lastLoadedSupplementedResource
@property (retain) TAGNetworkLoadCallback *networkLoadCallback;  // ivar: _networkLoadCallback
@property (retain) TAGDiskLoadCallback *diskLoadCallback;  // ivar: _diskLoadCallback
@property (retain) TAGResourceLoaderScheduler *networkLoadScheduler;  // ivar: _networkLoadScheduler
@property (retain) TAGRuntime *runtime;  // ivar: _runtime
@property (retain) NSMutableDictionary *functionCallTagHandlers;  // ivar: _functionCallTagHandlers
@property (retain) NSMutableDictionary *functionCallMacroHandlers;  // ivar: _functionCallMacroHandlers
@property () BOOL diskLoadFinished;  // ivar: _diskLoadFinished
@property (copy) NSString *resourceVersion;  // ivar: _resourceVersion
@property () int resourceFormatVersion;  // ivar: _resourceFormatVersion
@property () double lastRefreshMethodCalledTime;  // ivar: _lastRefreshMethodCalledTime
+ (double)refreshPeriodOnSuccess;                                                          // IMP 0x10014ece8
+ (double)refreshPeriodOnFailure;                                                          // IMP 0x10014ecf4
+ (double)minimumRefreshPeriod;                                                            // IMP 0x10014ed00
+ (double)minimumRefreshPeriodInBurstMode;                                                 // IMP 0x10014ed0c
+ (int)maximumTokenCount;                                                                  // IMP 0x10014ed18
- (id)initWithId:(id)arg1 tagManager:(id)arg2 resourceStorage:(id)arg3;                    // IMP 0x10014e9e0
- (id)initWithId:(id)arg1 tagManager:(id)arg2;                                             // IMP 0x10014ec00
- (BOOL)booleanForKey:(id)arg1;                                                            // IMP 0x10014ed20
- (double)doubleForKey:(id)arg1;                                                           // IMP 0x10014f03c
- (long long)int64ForKey:(id)arg1;                                                         // IMP 0x10014f360
- (id)stringForKey:(id)arg1;                                                               // IMP 0x10014f680
- (void)refresh;                                                                           // IMP 0x10014f91c
- (void)close;                                                                             // IMP 0x10014fb60
- (BOOL)isDefault;                                                                         // IMP 0x10014fe40
- (void)registerFunctionCallTagHandler:(id)arg1 forTag:(id)arg2;                           // IMP 0x10014fe68
- (void)registerFunctionCallMacroHandler:(id)arg1 forMacro:(id)arg2;                       // IMP 0x10014ff58
- (id)functionCallTagHandlerForTag:(id)arg1;                                               // IMP 0x100150048
- (id)functionCallMacroHandlerForMacro:(id)arg1;                                           // IMP 0x100150120
- (void)evaluateTags:(id)arg1;                                                             // IMP 0x1001501f8
- (void)loadWithCallback:(id)arg1;                                                         // IMP 0x10015028c
- (void)loadWithCallback:(id)arg1 resourceLoaderScheduler:(id)arg2;                        // IMP 0x100150374
- (void)loadAfterDelay:(double)arg1;                                                       // IMP 0x100150874
- (void)setCtfeUrlPathAndQuery:(id)arg1;                                                   // IMP 0x1001509b4
- (void)saveResourceToDisk:(id)arg1;                                                       // IMP 0x100150a60
- (void)setupEvaluatorsWithResource:(id)arg1;                                              // IMP 0x100150c84
- (void)setSupplementals:(id)arg1;                                                         // IMP 0x100150e48
- (void)setupEvaluatorsWithExpandedResource:(id)arg1;                                      // IMP 0x100150edc
- (double)currentTimeInMilliseconds;                                                       // IMP 0x1001510d4
- (void)createInitialContainer;                                                            // IMP 0x100151154
- (id)ctfeServerAddress;                                                                   // IMP 0x1001513ec
- (void)setCtfeServerAddress:(id)arg1;                                                     // IMP 0x10015144c
- (BOOL)isDefaultContainerRefreshMode;                                                     // IMP 0x100151530
- (BOOL)useAvailableTokenWithCurrentTime:(double)arg1;                                     // IMP 0x10015159c
- (void).cxx_destruct;                                                                     // IMP 0x1001518c8
- (id)containerId;                                                                         // IMP 0x1001516dc
- (double)lastRefreshTime;                                                                 // IMP 0x1001516ec
- (void)setLastRefreshTime:(double)arg1;                                                   // IMP 0x100151700
- (id)resourceStorage;                                                                     // IMP 0x100151714
- (void)setResourceStorage:(id)arg1;                                                       // IMP 0x100151724
- (id)tagManager;                                                                          // IMP 0x100151730
- (void)setTagManager:(id)arg1;                                                            // IMP 0x100151740
- (id)ctfeUrlPathAndQuery;                                                                 // IMP 0x10015174c
- (unsigned long long)numTokens;                                                           // IMP 0x10015175c
- (void)setNumTokens:(unsigned long long)arg1;                                             // IMP 0x10015176c
- (id)lastLoadedSupplementedResource;                                                      // IMP 0x10015177c
- (void)setLastLoadedSupplementedResource:(id)arg1;                                        // IMP 0x10015178c
- (id)networkLoadCallback;                                                                 // IMP 0x100151798
- (void)setNetworkLoadCallback:(id)arg1;                                                   // IMP 0x1001517a8
- (id)diskLoadCallback;                                                                    // IMP 0x1001517b4
- (void)setDiskLoadCallback:(id)arg1;                                                      // IMP 0x1001517c4
- (id)networkLoadScheduler;                                                                // IMP 0x1001517d0
- (void)setNetworkLoadScheduler:(id)arg1;                                                  // IMP 0x1001517e0
- (id)runtime;                                                                             // IMP 0x1001517ec
- (void)setRuntime:(id)arg1;                                                               // IMP 0x1001517fc
- (id)functionCallTagHandlers;                                                             // IMP 0x100151808
- (void)setFunctionCallTagHandlers:(id)arg1;                                               // IMP 0x100151818
- (id)functionCallMacroHandlers;                                                           // IMP 0x100151824
- (void)setFunctionCallMacroHandlers:(id)arg1;                                             // IMP 0x100151834
- (BOOL)diskLoadFinished;                                                                  // IMP 0x100151840
- (void)setDiskLoadFinished:(BOOL)arg1;                                                    // IMP 0x100151854
- (id)resourceVersion;                                                                     // IMP 0x100151864
- (void)setResourceVersion:(id)arg1;                                                       // IMP 0x100151874
- (int)resourceFormatVersion;                                                              // IMP 0x100151880
- (void)setResourceFormatVersion:(int)arg1;                                                // IMP 0x100151890
- (double)lastRefreshMethodCalledTime;                                                     // IMP 0x1001518a0
- (void)setLastRefreshMethodCalledTime:(double)arg1;                                       // IMP 0x1001518b4
@end

@interface TAGContainerFutureImpl : NSObject <TAGContainerFuture>   // instance size 16, class @0x100426b20
{
    TAGContainer *_container;                // +0x8 (8 bytes)  @"TAGContainer"
}
@property (retain) TAGContainer *container;  // ivar: _container
- (id)get;                                                                                 // IMP 0x100151f2c
- (BOOL)isDone;                                                                            // IMP 0x10015206c
- (void).cxx_destruct;                                                                     // IMP 0x1001520c8
- (id)container;                                                                           // IMP 0x1001520ac
- (void)setContainer:(id)arg1;                                                             // IMP 0x1001520bc
@end

@interface TAGContainerOpener : NSObject   // instance size 56, class @0x100426b98
{
    BOOL _haveNotified;                      // +0x8 (1 bytes)  B
    TAGManager *_tagManager;                 // +0x10 (8 bytes)  @"TAGManager"
    NSString *_containerId;                  // +0x18 (8 bytes)  @"NSString"
    double _timeout;                         // +0x20 (8 bytes)  d
    id<TAGContainerOpenerNotifier> _notifier; // +0x28 (8 bytes)  @"<TAGContainerOpenerNotifier>"
    TAGContainer *_container;                // +0x30 (8 bytes)  @"TAGContainer"
}
@property (retain, nonatomic) TAGManager *tagManager;  // ivar: _tagManager
@property (copy, nonatomic) NSString *containerId;  // ivar: _containerId
@property (nonatomic) double timeout;  // ivar: _timeout
@property () BOOL haveNotified;  // ivar: _haveNotified
@property (retain, nonatomic) id<TAGContainerOpenerNotifier> notifier;  // ivar: _notifier
@property (retain) TAGContainer *container;  // ivar: _container
+ (void)initialize;                                                                        // IMP 0x100152390
+ (double)defaultTimeout;                                                                  // IMP 0x1001523f4
+ (id)openContainerWithId:(id)arg1 tagManager:(id)arg2 openType:(int)arg3 timeout:(double *)arg4; // IMP 0x1001523fc
+ (void)openContainerWithId:(id)arg1 tagManager:(id)arg2 openType:(int)arg3 timeout:(double *)arg4 notifier:(id)arg5; // IMP 0x100152590
- (id)initWithContainerId:(id)arg1 tagManager:(id)arg2 timeout:(double *)arg3 notifier:(id)arg4; // IMP 0x1001521a0
- (void)openWithRefreshType:(int)arg1;                                                     // IMP 0x10015270c
- (void)callNotifiers:(id)arg1;                                                            // IMP 0x100152dc0
- (void)handleTimer:(id)arg1;                                                              // IMP 0x1001530a0
- (void).cxx_destruct;                                                                     // IMP 0x1001531fc
- (id)tagManager;                                                                          // IMP 0x100153114
- (void)setTagManager:(id)arg1;                                                            // IMP 0x100153124
- (id)containerId;                                                                         // IMP 0x10015315c
- (void)setContainerId:(id)arg1;                                                           // IMP 0x10015316c
- (double)timeout;                                                                         // IMP 0x100153178
- (void)setTimeout:(double)arg1;                                                           // IMP 0x100153188
- (BOOL)haveNotified;                                                                      // IMP 0x100153198
- (void)setHaveNotified:(BOOL)arg1;                                                        // IMP 0x1001531ac
- (id)notifier;                                                                            // IMP 0x1001531bc
- (void)setNotifier:(id)arg1;                                                              // IMP 0x1001531cc
- (id)container;                                                                           // IMP 0x1001531e0
- (void)setContainer:(id)arg1;                                                             // IMP 0x1001531f0
@end

@interface TAGContainerVersionMacro : TAGFunctionCallImplementation   // instance size 16, class @0x100427cc8
{
    NSString *_version;                      // +0x8 (8 bytes)  @"NSString"
}
@property (readonly) NSString *version;  // ivar: _version
+ (id)functionId;                                                                          // IMP 0x1001739d4
- (id)initWithVersion:(id)arg1;                                                            // IMP 0x100173a00
- (BOOL)isCacheable;                                                                       // IMP 0x100173af0
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100173af8
- (void).cxx_destruct;                                                                     // IMP 0x100173b90
- (id)version;                                                                             // IMP 0x100173b80
@end

@interface TAGContains : TAGStringPredicate   // instance size 8, class @0x1004283f8
+ (id)functionId;                                                                          // IMP 0x1001785d0
- (id)init;                                                                                // IMP 0x1001785fc
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x100178640
@end

@interface TAGCustomFunctionCall : TAGFunctionCallImplementation   // instance size 16, class @0x100426ff8
{
    id<TAGCustomEvaluator> _functionCallEvaluator; // +0x8 (8 bytes)  @"<TAGCustomEvaluator>"
}
@property (retain, nonatomic) id<TAGCustomEvaluator> functionCallEvaluator;  // ivar: _functionCallEvaluator
+ (id)functionId;                                                                          // IMP 0x10015a114
+ (id)functionCallNameKey;                                                                 // IMP 0x10015a140
+ (id)additionalParametersKey;                                                             // IMP 0x10015a16c
- (id)initWithEvaluator:(id)arg1;                                                          // IMP 0x10015a198
- (BOOL)isCacheable;                                                                       // IMP 0x10015a288
- (id)evaluate:(id)arg1;                                                                   // IMP 0x10015a290
- (void).cxx_destruct;                                                                     // IMP 0x10015a86c
- (id)functionCallEvaluator;                                                               // IMP 0x10015a848
- (void)setFunctionCallEvaluator:(id)arg1;                                                 // IMP 0x10015a858
@end

@interface TAGDataLayer : NSObject   // instance size 96, class @0x1004270e8
{
    BOOL _persistentStoreLoaded;             // +0x8 (1 bytes)  B
    NSDictionary *_dataLayer;                // +0x10 (8 bytes)  @"NSDictionary"
    NSMutableSet *_listeners;                // +0x18 (8 bytes)  @"NSMutableSet"
    NSMutableDictionary *_model;             // +0x20 (8 bytes)  @"NSMutableDictionary"
    NSRecursiveLock *_pushLock;              // +0x28 (8 bytes)  @"NSRecursiveLock"
    NSMutableArray *_updateQueue;            // +0x30 (8 bytes)  @"NSMutableArray"
    long long _pushDepth;                    // +0x38 (8 bytes)  q
    id<TAGDataLayerPersistentStore> _persistentStore; // +0x40 (8 bytes)  @"<TAGDataLayerPersistentStore>"
    NSCondition *_persistentStoreLoadingCondition; // +0x48 (8 bytes)  @"NSCondition"
    NSArray *_lifetimeKeyComponents;         // +0x50 (8 bytes)  @"NSArray"
    NSRegularExpression *_lifetimePattern;   // +0x58 (8 bytes)  @"NSRegularExpression"
}
@property (readonly, nonatomic) NSDictionary *dataLayer;  // ivar: _dataLayer
@property (retain) NSMutableSet *listeners;  // ivar: _listeners
@property (retain) NSMutableDictionary *model;  // ivar: _model
@property (retain) NSRecursiveLock *pushLock;  // ivar: _pushLock
@property (retain) NSMutableArray *updateQueue;  // ivar: _updateQueue
@property () long long pushDepth;  // ivar: _pushDepth
@property (readonly) id<TAGDataLayerPersistentStore> persistentStore;  // ivar: _persistentStore
@property (readonly) NSCondition *persistentStoreLoadingCondition;  // ivar: _persistentStoreLoadingCondition
@property () BOOL persistentStoreLoaded;  // ivar: _persistentStoreLoaded
@property (readonly) NSArray *lifetimeKeyComponents;  // ivar: _lifetimeKeyComponents
@property (readonly) NSRegularExpression *lifetimePattern;  // ivar: _lifetimePattern
+ (void)initialize;                                                                        // IMP 0x10015aa68
- (id)initWithPersistentStore:(id)arg1;                                                    // IMP 0x10015aab0
- (id)init;                                                                                // IMP 0x10015ad70
- (void)loadSavedMaps;                                                                     // IMP 0x10015ae08
- (void)onKeyValuesLoaded:(id)arg1;                                                        // IMP 0x10015aec0
- (void)pushValue:(id)arg1 forKey:(id)arg2;                                                // IMP 0x10015b1f4
- (id)get:(id)arg1;                                                                        // IMP 0x10015b290
- (void)push:(id)arg1;                                                                     // IMP 0x10015b63c
- (void)pushWithoutWaitingForSaved:(id)arg1;                                               // IMP 0x10015b7a4
- (void)processQueuedUpdates;                                                              // IMP 0x10015b994
- (void)savePersistentlyIfNeeded:(id)arg1;                                                 // IMP 0x10015bba4
- (void)clearPersistentKeysWithPrefix:(id)arg1;                                            // IMP 0x10015bcd8
- (id)flattenMap:(id)arg1;                                                                 // IMP 0x10015be1c
- (void)flattenMapHelper:(id)arg1 keyPrefix:(id)arg2 accum:(id)arg3;                       // IMP 0x10015becc
- (id)getLifetimeValue:(id)arg1;                                                           // IMP 0x10015c264
- (id)getLifetimeObject:(id)arg1;                                                          // IMP 0x10015c334
- (id)parseLifetime:(id)arg1;                                                              // IMP 0x10015c59c
- (void)processUpdate:(id)arg1;                                                            // IMP 0x10015ca00
- (void)registerListener:(id)arg1;                                                         // IMP 0x10015ccd0
- (void)unregisterListener:(id)arg1;                                                       // IMP 0x10015cdac
- (void)notifyListeners:(id)arg1;                                                          // IMP 0x10015ce88
- (void)mergeMap:(id)arg1 intoMap:(id)arg2;                                                // IMP 0x10015d0a8
- (void)mergeList:(id)arg1 intoList:(id)arg2;                                              // IMP 0x10015d548
- (id)expandKey:(id)arg1 value:(id)arg2;                                                   // IMP 0x10015d974
- (void).cxx_destruct;                                                                     // IMP 0x10015dd14
- (id)dataLayer;                                                                           // IMP 0x10015dc10
- (id)listeners;                                                                           // IMP 0x10015dc20
- (void)setListeners:(id)arg1;                                                             // IMP 0x10015dc30
- (id)model;                                                                               // IMP 0x10015dc3c
- (void)setModel:(id)arg1;                                                                 // IMP 0x10015dc4c
- (id)pushLock;                                                                            // IMP 0x10015dc58
- (void)setPushLock:(id)arg1;                                                              // IMP 0x10015dc68
- (id)updateQueue;                                                                         // IMP 0x10015dc74
- (void)setUpdateQueue:(id)arg1;                                                           // IMP 0x10015dc84
- (long long)pushDepth;                                                                    // IMP 0x10015dc90
- (void)setPushDepth:(long long)arg1;                                                      // IMP 0x10015dca0
- (id)persistentStore;                                                                     // IMP 0x10015dcb0
- (id)persistentStoreLoadingCondition;                                                     // IMP 0x10015dcc0
- (BOOL)persistentStoreLoaded;                                                             // IMP 0x10015dcd0
- (void)setPersistentStoreLoaded:(BOOL)arg1;                                               // IMP 0x10015dce4
- (id)lifetimeKeyComponents;                                                               // IMP 0x10015dcf4
- (id)lifetimePattern;                                                                     // IMP 0x10015dd04
@end

@interface TAGDataLayerCallback : NSObject <TAGDataLayerPersistentStoreCallback>   // instance size 16, class @0x100427098
{
    TAGDataLayer *_dataLayer;                // +0x8 (8 bytes)  @"TAGDataLayer"
}
@property (readonly) TAGDataLayer *dataLayer;  // ivar: _dataLayer
- (id)initWithDataLayer:(id)arg1;                                                          // IMP 0x10015a90c
- (void)onKeyValuesLoaded:(id)arg1;                                                        // IMP 0x10015a9b0
- (void).cxx_destruct;                                                                     // IMP 0x10015aa54
- (id)dataLayer;                                                                           // IMP 0x10015aa44
@end

@interface TAGDataLayerMacro : TAGFunctionCallImplementation   // instance size 16, class @0x100427d18
{
    TAGDataLayer *_dataLayer;                // +0x8 (8 bytes)  @"TAGDataLayer"
}
@property (readonly) TAGDataLayer *dataLayer;  // ivar: _dataLayer
+ (id)functionId;                                                                          // IMP 0x100173ba4
+ (id)nameKey;                                                                             // IMP 0x100173cc8
+ (id)defaultValueKey;                                                                     // IMP 0x100173cf4
- (id)initWithDataLayer:(id)arg1;                                                          // IMP 0x100173bd0
- (BOOL)isCacheable;                                                                       // IMP 0x100173d20
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100173d28
- (void).cxx_destruct;                                                                     // IMP 0x100173f4c
- (id)dataLayer;                                                                           // IMP 0x100173f3c
@end

@interface TAGDataLayerPersistentStoreImpl : NSObject <TAGDataLayerPersistentStore>   // instance size 80, class @0x1004271d8
{
    NSString *_databaseName;                 // +0x8 (8 bytes)  @"NSString"
    unsigned long long _maxNumStoredItems;   // +0x10 (8 bytes)  Q
    NSOperationQueue *_operationQueue;       // +0x18 (8 bytes)  @"NSOperationQueue"
    sqlite3 *_database;                      // +0x20 (8 bytes)  ^{sqlite3=}
    sqlite3_stmt *_insertAnEntryStmt;        // +0x28 (8 bytes)  ^{sqlite3_stmt=}
    sqlite3_stmt *_queryNumberEntriesStmt;   // +0x30 (8 bytes)  ^{sqlite3_stmt=}
    sqlite3_stmt *_queryAllEntriesStmt;      // +0x38 (8 bytes)  ^{sqlite3_stmt=}
    sqlite3_stmt *_queryEntryIdsStmt;        // +0x40 (8 bytes)  ^{sqlite3_stmt=}
    sqlite3_stmt *_deleteOlderThanStmt;      // +0x48 (8 bytes)  ^{sqlite3_stmt=}
}
@property (readonly) NSString *databaseName;  // ivar: _databaseName
@property () unsigned long long maxNumStoredItems;  // ivar: _maxNumStoredItems
@property (readonly) NSOperationQueue *operationQueue;  // ivar: _operationQueue
@property () sqlite3 *database;  // ivar: _database
@property () sqlite3_stmt *insertAnEntryStmt;  // ivar: _insertAnEntryStmt
@property () sqlite3_stmt *queryNumberEntriesStmt;  // ivar: _queryNumberEntriesStmt
@property () sqlite3_stmt *queryAllEntriesStmt;  // ivar: _queryAllEntriesStmt
@property () sqlite3_stmt *queryEntryIdsStmt;  // ivar: _queryEntryIdsStmt
@property () sqlite3_stmt *deleteOlderThanStmt;  // ivar: _deleteOlderThanStmt
- (id)init;                                                                                // IMP 0x10015e5ac
- (id)initWithDatabaseName:(id)arg1 maxNumStoredItems:(unsigned int)arg2 operationQueue:(id)arg3; // IMP 0x10015e650
- (void)dealloc;                                                                           // IMP 0x10015e778
- (void)saveKeyValues:(id)arg1 lifetimeInMillis:(unsigned long long)arg2;                  // IMP 0x10015e80c
- (void)loadSaved:(id)arg1;                                                                // IMP 0x10015e9d4
- (void)clearKeysWithPrefix:(id)arg1;                                                      // IMP 0x10015eba0
- (id)loadSingleThreaded;                                                                  // IMP 0x10015ed1c
- (void)saveSingleThreaded:(id)arg1 lifetimeInMillis:(unsigned long long)arg2;             // IMP 0x10015ee3c
- (void)clearKeysWithPrefixSingleThreaded:(id)arg1;                                        // IMP 0x10015ef40
- (id)unserializeValues:(id)arg1;                                                          // IMP 0x10015f184
- (id)serializeValues:(id)arg1;                                                            // IMP 0x10015f458
- (id)unserialize:(id)arg1;                                                                // IMP 0x10015f72c
- (id)serialize:(id)arg1;                                                                  // IMP 0x10015f75c
- (id)loadSerialized;                                                                      // IMP 0x10015f78c
- (void)writeEntriesToDatabase:(id)arg1 expireTime:(unsigned long long)arg2;               // IMP 0x10015f98c
- (void)makeRoomForEntries:(unsigned long long)arg1;                                       // IMP 0x10015fd18
- (void)deleteEntries:(id)arg1;                                                            // IMP 0x10015fe60
- (id)peekEntryIds:(unsigned long long)arg1;                                               // IMP 0x100160170
- (unsigned long long)numStoredEntries;                                                    // IMP 0x1001602e8
- (id)questionMarks:(unsigned long long)arg1;                                              // IMP 0x1001603f0
- (void)deleteEntriesOlderThan:(unsigned long long)arg1;                                   // IMP 0x1001604b0
- (BOOL)tablePresent:(id)arg1;                                                             // IMP 0x1001605ac
- (sqlite3_stmt *)prepareSql:(id)arg1 description:(id)arg2;                                // IMP 0x100160740
- (BOOL)openDatabaseAndInitStatements;                                                     // IMP 0x1001608ac
- (void)closeDatabase;                                                                     // IMP 0x100160f80
- (double)currentTimeInMilliseconds;                                                       // IMP 0x1001610f8
- (void).cxx_destruct;                                                                     // IMP 0x100161278
- (id)databaseName;                                                                        // IMP 0x100161178
- (unsigned long long)maxNumStoredItems;                                                   // IMP 0x100161188
- (void)setMaxNumStoredItems:(unsigned long long)arg1;                                     // IMP 0x100161198
- (id)operationQueue;                                                                      // IMP 0x1001611a8
- (sqlite3 *)database;                                                                     // IMP 0x1001611b8
- (void)setDatabase:(sqlite3 *)arg1;                                                       // IMP 0x1001611c8
- (sqlite3_stmt *)insertAnEntryStmt;                                                       // IMP 0x1001611d8
- (void)setInsertAnEntryStmt:(sqlite3_stmt *)arg1;                                         // IMP 0x1001611e8
- (sqlite3_stmt *)queryNumberEntriesStmt;                                                  // IMP 0x1001611f8
- (void)setQueryNumberEntriesStmt:(sqlite3_stmt *)arg1;                                    // IMP 0x100161208
- (sqlite3_stmt *)queryAllEntriesStmt;                                                     // IMP 0x100161218
- (void)setQueryAllEntriesStmt:(sqlite3_stmt *)arg1;                                       // IMP 0x100161228
- (sqlite3_stmt *)queryEntryIdsStmt;                                                       // IMP 0x100161238
- (void)setQueryEntryIdsStmt:(sqlite3_stmt *)arg1;                                         // IMP 0x100161248
- (sqlite3_stmt *)deleteOlderThanStmt;                                                     // IMP 0x100161258
- (void)setDeleteOlderThanStmt:(sqlite3_stmt *)arg1;                                       // IMP 0x100161268
@end

@interface TAGDataLayerWrite : TAGTrackingTag   // instance size 16, class @0x100428808
{
    TAGDataLayer *_dataLayer;                // +0x8 (8 bytes)  @"TAGDataLayer"
}
@property (retain, nonatomic) TAGDataLayer *dataLayer;  // ivar: _dataLayer
+ (id)functionId;                                                                          // IMP 0x10017a7b8
+ (id)valueKey;                                                                            // IMP 0x10017a7e4
- (id)initWithDataLayer:(id)arg1;                                                          // IMP 0x10017a810
- (void)evaluateTrackingTag:(id)arg1;                                                      // IMP 0x10017a908
- (void)clearPersistent:(id)arg1;                                                          // IMP 0x10017a9f4
- (void)pushToDataLayer:(id)arg1;                                                          // IMP 0x10017ab24
- (void).cxx_destruct;                                                                     // IMP 0x10017ae48
- (id)dataLayer;                                                                           // IMP 0x10017ae00
- (void)setDataLayer:(id)arg1;                                                             // IMP 0x10017ae10
@end

@interface TAGDataProvider : NSObject   // instance size 40, class @0x1004243e8
{
    BOOL _hasHits;                           // +0x8 (1 bytes)  B
    unsigned long long _maxHitCount;         // +0x10 (8 bytes)  Q
    double _maxHitAge;                       // +0x18 (8 bytes)  d
    NSManagedObjectContext *_context;        // +0x20 (8 bytes)  @"NSManagedObjectContext"
}
@property (nonatomic) BOOL hasHits;  // ivar: _hasHits
@property (nonatomic) unsigned long long maxHitCount;  // ivar: _maxHitCount
@property (nonatomic) double maxHitAge;  // ivar: _maxHitAge
@property (retain, nonatomic) NSManagedObjectContext *context;  // ivar: _context
- (oneway void)updateFailedHits:(id)arg1;                                                  // IMP 0x10010d1bc
- (oneway void)addHitWithURLString:(id)arg1;                                               // IMP 0x10010d514
- (oneway void)fetchHitsWithLimit:(unsigned long long)arg1 completion:(id /*block*/)arg2;  // IMP 0x10010d7ac
- (oneway void)fetchNotRecentlyAttemptedHitsWithLimit:(unsigned long long)arg1 completion:(id /*block*/)arg2; // IMP 0x10010da70
- (oneway void)deleteHits:(id)arg1;                                                        // IMP 0x10010dd88
- (void)onExit:(id)arg1;                                                                   // IMP 0x10010e094
- (BOOL)context:(id)arg1 deleteRequest:(id)arg2 error:(id *)arg3;                          // IMP 0x10010e17c
- (BOOL)deleteExcessHits:(id *)arg1;                                                       // IMP 0x10010e378
- (unsigned long long)context:(id)arg1 hitCount:(id *)arg2;                                // IMP 0x10010e63c
- (void)save;                                                                              // IMP 0x10010e6ec
- (id)init;                                                                                // IMP 0x10010e89c
- (void)dealloc;                                                                           // IMP 0x10010eb80
- (void).cxx_destruct;                                                                     // IMP 0x10010ed04
- (BOOL)hasHits;                                                                           // IMP 0x10010ec5c
- (void)setHasHits:(BOOL)arg1;                                                             // IMP 0x10010ec6c
- (unsigned long long)maxHitCount;                                                         // IMP 0x10010ec7c
- (void)setMaxHitCount:(unsigned long long)arg1;                                           // IMP 0x10010ec8c
- (double)maxHitAge;                                                                       // IMP 0x10010ec9c
- (void)setMaxHitAge:(double)arg1;                                                         // IMP 0x10010ecac
- (id)context;                                                                             // IMP 0x10010ecbc
- (void)setContext:(id)arg1;                                                               // IMP 0x10010eccc
@end

@interface TAGDefaultLogger : NSObject <TAGLogger>   // instance size 12, class @0x100427228
{
    int _logLevel;                           // +0x8 (4 bytes)  i
}
@property () int logLevel;  // ivar: _logLevel
- (id)init;                                                                                // IMP 0x1001612b8
- (void)error:(id)arg1;                                                                    // IMP 0x100161308
- (void)warning:(id)arg1;                                                                  // IMP 0x100161384
- (void)info:(id)arg1;                                                                     // IMP 0x100161400
- (void)debug:(id)arg1;                                                                    // IMP 0x10016147c
- (void)verbose:(id)arg1;                                                                  // IMP 0x1001614f8
- (int)logLevel;                                                                           // IMP 0x100161570
- (void)setLogLevel:(int)arg1;                                                             // IMP 0x100161580
@end

@interface TAGDeviceName : TAGFunctionCallImplementation   // instance size 8, class @0x100427d68
+ (id)functionId;                                                                          // IMP 0x100173f60
- (id)init;                                                                                // IMP 0x100173f8c
- (BOOL)isCacheable;                                                                       // IMP 0x10017403c
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100174044
@end

@interface TAGDiskLoadCallback : NSObject <TAGLoadCallback>   // instance size 24, class @0x100426968
{
    id<TAGContainerCallback> _callback;      // +0x8 (8 bytes)  @"<TAGContainerCallback>"
    TAGContainer *_container;                // +0x10 (8 bytes)  @"TAGContainer"
}
@property (retain) id<TAGContainerCallback> callback;  // ivar: _callback
@property (retain) TAGContainer *container;  // ivar: _container
- (id)initWithCallback:(id)arg1 container:(id)arg2;                                        // IMP 0x10014ce9c
- (void)startLoad;                                                                         // IMP 0x10014cf78
- (void)onSuccess:(id)arg1;                                                                // IMP 0x10014d06c
- (void)onFailure:(long long)arg1;                                                         // IMP 0x10014d924
- (int)failureToRefreshFailure:(long long)arg1;                                            // IMP 0x10014dac4
- (void)close;                                                                             // IMP 0x10014daec
- (void).cxx_destruct;                                                                     // IMP 0x10014dba0
- (id)callback;                                                                            // IMP 0x10014db68
- (void)setCallback:(id)arg1;                                                              // IMP 0x10014db78
- (id)container;                                                                           // IMP 0x10014db84
- (void)setContainer:(id)arg1;                                                             // IMP 0x10014db94
@end

@interface TAGDispatchUtil : NSObject   // instance size 8, class @0x100424460
+ (void)background:(id /*block*/)arg1 wait:(BOOL)arg2;                                     // IMP 0x10010ed18
+ (id)databaseFullPath:(id)arg1;                                                           // IMP 0x10010ee40
+ (id)databaseFullURL:(id)arg1;                                                            // IMP 0x10010ef38
+ (void)threadMain:(id)arg1;                                                               // IMP 0x10010efc0
+ (id)thread;                                                                              // IMP 0x10010f048
+ (id)userAgentString;                                                                     // IMP 0x10010f160
+ (id)userAgentStringWithProduct:(id)arg1 version:(id)arg2 deviceModel:(id)arg3 systemName:(id)arg4 systemVersion:(id)arg5 systemLanguage:(id)arg6 systemCountry:(id)arg7; // IMP 0x10010f414
+ (id)systemLanguageFromLanguages:(id)arg1;                                                // IMP 0x10010f554
+ (id)systemCountryFromLocale:(id)arg1;                                                    // IMP 0x10010f628
@end

@interface TAGDispatcher : NSObject <TAGHitSender>   // instance size 88, class @0x100424488
{
    TAGDataProvider *_store;                 // +0x8 (8 bytes)  @"TAGDataProvider"
    TAGNetworking *_network;                 // +0x10 (8 bytes)  @"TAGNetworking"
    NSString *_wrapperUrl;                   // +0x18 (8 bytes)  @"NSString"
    NSString *_wrapperQueryParameter;        // +0x20 (8 bytes)  @"NSString"
    id<TAGLogger> _logger;                   // +0x28 (8 bytes)  @"<TAGLogger>"
    double _dispatchInterval;                // +0x30 (8 bytes)  d
    TAGRateLimiter *_rateLimiter;            // +0x38 (8 bytes)  @"TAGRateLimiter"
    NSMutableSet *_operations;               // +0x40 (8 bytes)  @"NSMutableSet"
    NSTimer *_timer;                         // +0x48 (8 bytes)  @"NSTimer"
    unsigned long long _maxRequestsPerDispatch; // +0x50 (8 bytes)  Q
}
@property (retain, nonatomic) TAGDataProvider *store;  // ivar: _store
@property (retain, nonatomic) TAGNetworking *network;  // ivar: _network
@property (retain, nonatomic) NSString *wrapperUrl;  // ivar: _wrapperUrl
@property (retain, nonatomic) NSString *wrapperQueryParameter;  // ivar: _wrapperQueryParameter
@property (weak, nonatomic) id<TAGLogger> logger;  // ivar: _logger
@property (nonatomic) double dispatchInterval;  // ivar: _dispatchInterval
@property (readonly, nonatomic) BOOL canDispatch;
@property (readonly, nonatomic) BOOL canScheduleDispatch;
@property (retain, nonatomic) TAGRateLimiter *rateLimiter;  // ivar: _rateLimiter
@property (retain, nonatomic) NSMutableSet *operations;  // ivar: _operations
@property (retain, nonatomic) NSTimer *timer;  // ivar: _timer
@property (nonatomic) unsigned long long maxRequestsPerDispatch;  // ivar: _maxRequestsPerDispatch
+ (id)instance;                                                                            // IMP 0x100110da8
+ (void)initialize;                                                                        // IMP 0x100110e70
+ (id)keyPathsForValuesAffectingCanScheduleDispatch;                                       // IMP 0x100110f54
+ (id)keyPathsForValuesAffectingCanDispatch;                                               // IMP 0x100110f64
- (id)init;                                                                                // IMP 0x10010f6b4
- (void)dealloc;                                                                           // IMP 0x10010f890
- (void)initialDispatch;                                                                   // IMP 0x10010f97c
- (BOOL)canScheduleDispatch;                                                               // IMP 0x10010fa4c
- (BOOL)canDispatch;                                                                       // IMP 0x10010fa9c
- (oneway void)rescheduleDispatch;                                                         // IMP 0x10010fb64
- (void)timerFired;                                                                        // IMP 0x10010fca8
- (void)cancelTimer;                                                                       // IMP 0x10010fcf4
- (void)startTimer;                                                                        // IMP 0x10010fd6c
- (oneway void)dispatch;                                                                   // IMP 0x10010fe08
- (void)dispatchWithCallback:(id /*block*/)arg1;                                           // IMP 0x10010fe1c
- (void)sendHitToUrl:(id)arg1;                                                             // IMP 0x100110af8
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4; // IMP 0x100110f74
- (double)timerInterval;                                                                   // IMP 0x10011135c
- (void).cxx_destruct;                                                                     // IMP 0x100111638
- (id)store;                                                                               // IMP 0x1001113cc
- (void)setStore:(id)arg1;                                                                 // IMP 0x1001113dc
- (id)network;                                                                             // IMP 0x100111414
- (void)setNetwork:(id)arg1;                                                               // IMP 0x100111424
- (id)wrapperUrl;                                                                          // IMP 0x10011145c
- (void)setWrapperUrl:(id)arg1;                                                            // IMP 0x10011146c
- (id)wrapperQueryParameter;                                                               // IMP 0x1001114a4
- (void)setWrapperQueryParameter:(id)arg1;                                                 // IMP 0x1001114b4
- (id)logger;                                                                              // IMP 0x1001114ec
- (void)setLogger:(id)arg1;                                                                // IMP 0x10011150c
- (double)dispatchInterval;                                                                // IMP 0x100111520
- (void)setDispatchInterval:(double)arg1;                                                  // IMP 0x100111530
- (id)rateLimiter;                                                                         // IMP 0x100111540
- (void)setRateLimiter:(id)arg1;                                                           // IMP 0x100111550
- (id)operations;                                                                          // IMP 0x100111588
- (void)setOperations:(id)arg1;                                                            // IMP 0x100111598
- (id)timer;                                                                               // IMP 0x1001115d0
- (void)setTimer:(id)arg1;                                                                 // IMP 0x1001115e0
- (unsigned long long)maxRequestsPerDispatch;                                              // IMP 0x100111618
- (void)setMaxRequestsPerDispatch:(unsigned long long)arg1;                                // IMP 0x100111628
@end

@interface TAGDistinctZero : NSNumber   // instance size 8, class @0x100427930
+ (void)initialize;                                                                        // IMP 0x10016f08c
+ (id)distinctZero;                                                                        // IMP 0x10016f0d4
- (const char *)objCType;                                                                  // IMP 0x10016f104
- (char)charValue;                                                                         // IMP 0x10016f130
- (unsigned char)unsignedCharValue;                                                        // IMP 0x10016f14c
- (short)shortValue;                                                                       // IMP 0x10016f168
- (unsigned short)unsignedShortValue;                                                      // IMP 0x10016f184
- (int)intValue;                                                                           // IMP 0x10016f1a0
- (unsigned int)unsignedIntValue;                                                          // IMP 0x10016f1bc
- (long long)longValue;                                                                    // IMP 0x10016f1d8
- (unsigned long long)unsignedLongValue;                                                   // IMP 0x10016f1f4
- (long long)longLongValue;                                                                // IMP 0x10016f210
- (unsigned long long)unsignedLongLongValue;                                               // IMP 0x10016f22c
- (float)floatValue;                                                                       // IMP 0x10016f248
- (double)doubleValue;                                                                     // IMP 0x10016f264
- (BOOL)boolValue;                                                                         // IMP 0x10016f280
- (long long)integerValue;                                                                 // IMP 0x10016f29c
- (unsigned long long)unsignedIntegerValue;                                                // IMP 0x10016f2b8
- (id)stringValue;                                                                         // IMP 0x10016f2d4
- (long long)compare:(id)arg1;                                                             // IMP 0x10016f2f0
- (BOOL)isEqualToNumber:(id)arg1;                                                          // IMP 0x10016f31c
- (id)descriptionWithLocale:(id)arg1;                                                      // IMP 0x10016f348
@end

@interface TAGEncode : TAGFunctionCallImplementation   // instance size 8, class @0x100427db8
+ (id)functionId;                                                                          // IMP 0x100174110
+ (id)arg0Key;                                                                             // IMP 0x10017413c
+ (id)noPaddingKey;                                                                        // IMP 0x100174168
+ (id)inputFormatKey;                                                                      // IMP 0x100174194
+ (id)outputFormatKey;                                                                     // IMP 0x1001741c0
- (id)init;                                                                                // IMP 0x1001741ec
- (BOOL)isCacheable;                                                                       // IMP 0x1001742a4
- (id)evaluate:(id)arg1;                                                                   // IMP 0x1001742ac
@end

@interface TAGEndsWith : TAGStringPredicate   // instance size 8, class @0x100428448
+ (id)functionId;                                                                          // IMP 0x1001786ec
- (id)init;                                                                                // IMP 0x100178718
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x10017875c
@end

@interface TAGEquals : TAGStringPredicate   // instance size 8, class @0x100428498
+ (id)functionId;                                                                          // IMP 0x100178800
- (id)init;                                                                                // IMP 0x10017882c
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x100178870
@end

@interface TAGEventMacro : TAGFunctionCallImplementation   // instance size 16, class @0x100427e08
{
    TAGRuntime *_runtime;                    // +0x8 (8 bytes)  @"TAGRuntime"
}
@property (readonly) TAGRuntime *runtime;  // ivar: _runtime
+ (id)functionId;                                                                          // IMP 0x1001749ec
- (id)initWithRuntime:(id)arg1;                                                            // IMP 0x100174a18
- (BOOL)isCacheable;                                                                       // IMP 0x100174afc
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100174b04
- (void).cxx_destruct;                                                                     // IMP 0x100174c08
- (id)runtime;                                                                             // IMP 0x100174be8
@end

@interface TAGExpandedFunctionCall : NSObject <NSCopying>   // instance size 24, class @0x1004274f8
{
    TAGPValue *_pushAfterEvaluate;           // +0x8 (8 bytes)  @"TAGPValue"
    NSMutableDictionary *_propertiesMap;     // +0x10 (8 bytes)  @"NSMutableDictionary"
}
@property (readonly, retain, nonatomic) NSDictionary *properties;
@property (retain, nonatomic) TAGPValue *pushAfterEvaluate;  // ivar: _pushAfterEvaluate
@property (retain, nonatomic) NSMutableDictionary *propertiesMap;  // ivar: _propertiesMap
+ (id)builder;                                                                             // IMP 0x1001633d0
+ (id)instanceNameKey;                                                                     // IMP 0x100163408
+ (id)functionKey;                                                                         // IMP 0x100163434
+ (id)notDefaultMacroKey;                                                                  // IMP 0x100163460
- (id)initWithPropertiesMap:(id)arg1 pushAfterEvaluate:(id)arg2;                           // IMP 0x1001632d0
- (int)approximateByteSize;                                                                // IMP 0x10016348c
- (id)propertyForKey:(id)arg1;                                                             // IMP 0x1001636b4
- (void)updateCacheablePropertyWithValue:(id)arg1 forKey:(id)arg2;                         // IMP 0x10016375c
- (id)properties;                                                                          // IMP 0x100163814
- (id)description;                                                                         // IMP 0x100163824
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x1001638f8
- (void).cxx_destruct;                                                                     // IMP 0x100163a60
- (id)pushAfterEvaluate;                                                                   // IMP 0x1001639d0
- (void)setPushAfterEvaluate:(id)arg1;                                                     // IMP 0x1001639e0
- (id)propertiesMap;                                                                       // IMP 0x100163a18
- (void)setPropertiesMap:(id)arg1;                                                         // IMP 0x100163a28
@end

@interface TAGExpandedFunctionCallBuilder : NSObject   // instance size 24, class @0x100427520
{
    NSMutableDictionary *_propertiesMap;     // +0x8 (8 bytes)  @"NSMutableDictionary"
    TAGPValue *_pushAfterEvaluate;           // +0x10 (8 bytes)  @"TAGPValue"
}
@property (retain, nonatomic) NSMutableDictionary *propertiesMap;  // ivar: _propertiesMap
@property (retain, nonatomic) TAGPValue *pushAfterEvaluate;  // ivar: _pushAfterEvaluate
- (id)init;                                                                                // IMP 0x100163aa0
- (void)addPropertyWithValue:(id)arg1 forKey:(id)arg2;                                     // IMP 0x100163b54
- (id)build;                                                                               // IMP 0x100163c0c
- (void).cxx_destruct;                                                                     // IMP 0x100163d74
- (id)propertiesMap;                                                                       // IMP 0x100163ce4
- (void)setPropertiesMap:(id)arg1;                                                         // IMP 0x100163cf4
- (id)pushAfterEvaluate;                                                                   // IMP 0x100163d2c
- (void)setPushAfterEvaluate:(id)arg1;                                                     // IMP 0x100163d3c
@end

@interface TAGExpandedResource : NSObject   // instance size 40, class @0x100427638
{
    int _resourceFormatVersion;              // +0x8 (4 bytes)  i
    NSArray *_rules;                         // +0x10 (8 bytes)  @"NSArray"
    NSString *_version;                      // +0x18 (8 bytes)  @"NSString"
    NSDictionary *_macros;                   // +0x20 (8 bytes)  @"NSDictionary"
}
@property (readonly, retain, nonatomic) NSArray *rules;  // ivar: _rules
@property (readonly, copy, nonatomic) NSString *version;  // ivar: _version
@property (readonly, nonatomic) int resourceFormatVersion;  // ivar: _resourceFormatVersion
@property (readonly, retain, nonatomic) NSDictionary *macros;  // ivar: _macros
+ (id)builder;                                                                             // IMP 0x100164d30
- (id)initWithRules:(id)arg1 macros:(id)arg2 version:(id)arg3 resourceFormatVersion:(int)arg4; // IMP 0x100164bf4
- (id)macrosByName:(id)arg1;                                                               // IMP 0x100164d68
- (id)allMacros;                                                                           // IMP 0x100164e10
- (id)description;                                                                         // IMP 0x100164e20
- (void).cxx_destruct;                                                                     // IMP 0x100164f8c
- (id)rules;                                                                               // IMP 0x100164f4c
- (id)version;                                                                             // IMP 0x100164f5c
- (int)resourceFormatVersion;                                                              // IMP 0x100164f6c
- (id)macros;                                                                              // IMP 0x100164f7c
@end

@interface TAGExpandedResourceBuilder : NSObject   // instance size 40, class @0x100427660
{
    int _resourceFormatVersion;              // +0x8 (4 bytes)  i
    NSString *_version;                      // +0x10 (8 bytes)  @"NSString"
    NSMutableArray *_rules;                  // +0x18 (8 bytes)  @"NSMutableArray"
    NSMutableDictionary *_macros;            // +0x20 (8 bytes)  @"NSMutableDictionary"
}
@property (copy, nonatomic) NSString *version;  // ivar: _version
@property (nonatomic) int resourceFormatVersion;  // ivar: _resourceFormatVersion
@property (retain, nonatomic) NSMutableArray *rules;  // ivar: _rules
@property (retain, nonatomic) NSMutableDictionary *macros;  // ivar: _macros
- (id)init;                                                                                // IMP 0x100164fe0
- (void)addRule:(id)arg1;                                                                  // IMP 0x1001650f4
- (void)addMacro:(id)arg1;                                                                 // IMP 0x100165188
- (id)build;                                                                               // IMP 0x1001653bc
- (void).cxx_destruct;                                                                     // IMP 0x1001655bc
- (id)version;                                                                             // IMP 0x1001654f0
- (void)setVersion:(id)arg1;                                                               // IMP 0x100165500
- (int)resourceFormatVersion;                                                              // IMP 0x10016550c
- (void)setResourceFormatVersion:(int)arg1;                                                // IMP 0x10016551c
- (id)rules;                                                                               // IMP 0x10016552c
- (void)setRules:(id)arg1;                                                                 // IMP 0x10016553c
- (id)macros;                                                                              // IMP 0x100165574
- (void)setMacros:(id)arg1;                                                                // IMP 0x100165584
@end

@interface TAGExpandedRule : NSObject <NSCopying>   // instance size 56, class @0x100427598
{
    NSArray *_positivePredicates;            // +0x8 (8 bytes)  @"NSArray"
    NSArray *_negativePredicates;            // +0x10 (8 bytes)  @"NSArray"
    NSArray *_addTags;                       // +0x18 (8 bytes)  @"NSArray"
    NSArray *_removeTags;                    // +0x20 (8 bytes)  @"NSArray"
    NSArray *_addMacros;                     // +0x28 (8 bytes)  @"NSArray"
    NSArray *_removeMacros;                  // +0x30 (8 bytes)  @"NSArray"
}
@property (readonly, retain, nonatomic) NSArray *positivePredicates;  // ivar: _positivePredicates
@property (readonly, retain, nonatomic) NSArray *negativePredicates;  // ivar: _negativePredicates
@property (readonly, retain, nonatomic) NSArray *addTags;  // ivar: _addTags
@property (readonly, retain, nonatomic) NSArray *removeTags;  // ivar: _removeTags
@property (readonly, retain, nonatomic) NSArray *addMacros;  // ivar: _addMacros
@property (readonly, retain, nonatomic) NSArray *removeMacros;  // ivar: _removeMacros
+ (id)builder;                                                                             // IMP 0x100163fa8
- (id)initWithPositivePredicates:(id)arg1 negativePredicates:(id)arg2 addTags:(id)arg3 removeTags:(id)arg4 addMacros:(id)arg5 removeMacros:(id)arg6; // IMP 0x100163db4
- (id)description;                                                                         // IMP 0x100163fe0
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x1001641ac
- (void).cxx_destruct;                                                                     // IMP 0x100164210
- (id)positivePredicates;                                                                  // IMP 0x1001641b0
- (id)negativePredicates;                                                                  // IMP 0x1001641c0
- (id)addTags;                                                                             // IMP 0x1001641d0
- (id)removeTags;                                                                          // IMP 0x1001641e0
- (id)addMacros;                                                                           // IMP 0x1001641f0
- (id)removeMacros;                                                                        // IMP 0x100164200
@end

@interface TAGExpandedRuleBuilder : NSObject   // instance size 56, class @0x1004275c0
{
    NSMutableArray *_positivePredicates;     // +0x8 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_negativePredicates;     // +0x10 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_addTags;                // +0x18 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_removeTags;             // +0x20 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_addMacros;              // +0x28 (8 bytes)  @"NSMutableArray"
    NSMutableArray *_removeMacros;           // +0x30 (8 bytes)  @"NSMutableArray"
}
@property (retain, nonatomic) NSMutableArray *positivePredicates;  // ivar: _positivePredicates
@property (retain, nonatomic) NSMutableArray *negativePredicates;  // ivar: _negativePredicates
@property (retain, nonatomic) NSMutableArray *addTags;  // ivar: _addTags
@property (retain, nonatomic) NSMutableArray *removeTags;  // ivar: _removeTags
@property (retain, nonatomic) NSMutableArray *addMacros;  // ivar: _addMacros
@property (retain, nonatomic) NSMutableArray *removeMacros;  // ivar: _removeMacros
- (id)init;                                                                                // IMP 0x1001642a0
- (void)addPositivePredicate:(id)arg1;                                                     // IMP 0x100164464
- (void)addNegativePredicate:(id)arg1;                                                     // IMP 0x1001644f8
- (void)addAddTag:(id)arg1;                                                                // IMP 0x10016458c
- (void)addRemoveTag:(id)arg1;                                                             // IMP 0x100164620
- (void)addAddMacro:(id)arg1;                                                              // IMP 0x1001646b4
- (void)addRemoveMacro:(id)arg1;                                                           // IMP 0x100164748
- (id)build;                                                                               // IMP 0x1001647dc
- (void).cxx_destruct;                                                                     // IMP 0x100164b64
- (id)positivePredicates;                                                                  // IMP 0x1001649b4
- (void)setPositivePredicates:(id)arg1;                                                    // IMP 0x1001649c4
- (id)negativePredicates;                                                                  // IMP 0x1001649fc
- (void)setNegativePredicates:(id)arg1;                                                    // IMP 0x100164a0c
- (id)addTags;                                                                             // IMP 0x100164a44
- (void)setAddTags:(id)arg1;                                                               // IMP 0x100164a54
- (id)removeTags;                                                                          // IMP 0x100164a8c
- (void)setRemoveTags:(id)arg1;                                                            // IMP 0x100164a9c
- (id)addMacros;                                                                           // IMP 0x100164ad4
- (void)setAddMacros:(id)arg1;                                                             // IMP 0x100164ae4
- (id)removeMacros;                                                                        // IMP 0x100164b1c
- (void)setRemoveMacros:(id)arg1;                                                          // IMP 0x100164b2c
@end

@interface TAGExperimentMacroHelper : NSObject   // instance size 8, class @0x1004272a0
+ (void)handleExperimentSupplemental:(id)arg1 supplemental:(id)arg2;                       // IMP 0x100161590
+ (void)clearKeys:(id)arg1 expSupplemental:(id)arg2;                                       // IMP 0x100161718
+ (void)pushValues:(id)arg1 expSupplemental:(id)arg2;                                      // IMP 0x1001618e4
+ (void)setRandomValues:(id)arg1 expSupplemental:(id)arg2;                                 // IMP 0x100161ab4
+ (id)valueToMap:(id)arg1;                                                                 // IMP 0x10016216c
@end

@interface TAGFunctionCallImplementation : NSObject   // instance size 24, class @0x1004272c8
{
    NSString *_instanceFunctionId;           // +0x8 (8 bytes)  @"NSString"
    NSSet *_requiredKeys;                    // +0x10 (8 bytes)  @"NSSet"
}
@property (readonly, copy, nonatomic) NSString *instanceFunctionId;  // ivar: _instanceFunctionId
@property (readonly, retain, nonatomic) NSSet *requiredKeys;  // ivar: _requiredKeys
+ (id)functionKey;                                                                         // IMP 0x100162290
+ (id)instanceNameKey;                                                                     // IMP 0x1001622bc
+ (id)notDefaultMacroKey;                                                                  // IMP 0x1001622e8
- (id)init;                                                                                // IMP 0x100162314
- (id)initWithFunctionId:(id)arg1 requiredKeys:(id)arg2;                                   // IMP 0x100162368
- (BOOL)isCacheable;                                                                       // IMP 0x100162468
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100162494
- (BOOL)hasRequiredKeys:(id)arg1;                                                          // IMP 0x1001624c0
- (void).cxx_destruct;                                                                     // IMP 0x100162580
- (id)instanceFunctionId;                                                                  // IMP 0x100162560
- (id)requiredKeys;                                                                        // IMP 0x100162570
@end

@interface TAGFunctionCallMacroHandlerAdapter : NSObject <TAGCustomEvaluator>   // instance size 16, class @0x100426918
{
    TAGContainer *_container;                // +0x8 (8 bytes)  @"TAGContainer"
}
@property (retain) TAGContainer *container;  // ivar: _container
- (id)initWithContainer:(id)arg1;                                                          // IMP 0x10014ccbc
- (id)evaluate:(id)arg1 parameters:(id)arg2;                                               // IMP 0x10014cd60
- (void).cxx_destruct;                                                                     // IMP 0x10014ce88
- (id)container;                                                                           // IMP 0x10014ce6c
- (void)setContainer:(id)arg1;                                                             // IMP 0x10014ce7c
@end

@interface TAGFunctionCallTagHandlerAdapter : NSObject <TAGCustomEvaluator>   // instance size 16, class @0x1004268c8
{
    TAGContainer *_container;                // +0x8 (8 bytes)  @"TAGContainer"
}
@property (retain) TAGContainer *container;  // ivar: _container
- (id)initWithContainer:(id)arg1;                                                          // IMP 0x10014cac4
- (id)evaluate:(id)arg1 parameters:(id)arg2;                                               // IMP 0x10014cb68
- (void).cxx_destruct;                                                                     // IMP 0x10014cca8
- (id)container;                                                                           // IMP 0x10014cc8c
- (void)setContainer:(id)arg1;                                                             // IMP 0x10014cc9c
@end

@interface TAGFutureNotifier : NSObject <TAGContainerOpenerNotifier>   // instance size 16, class @0x100426b70
{
    TAGContainerFutureImpl *_future;         // +0x8 (8 bytes)  @"TAGContainerFutureImpl"
}
@property (retain) TAGContainerFutureImpl *future;  // ivar: _future
- (void)containerAvailable:(id)arg1;                                                       // IMP 0x1001520dc
- (void).cxx_destruct;                                                                     // IMP 0x10015218c
- (id)future;                                                                              // IMP 0x100152170
- (void)setFuture:(id)arg1;                                                                // IMP 0x100152180
@end

@interface TAGGTMStringEncoding : NSObject   // instance size 552, class @0x1004246b8
{
    NSData *charMapData_;                    // +0x8 (8 bytes)  @"NSData"
    char *charMap_;                          // +0x10 (8 bytes)  *
    int[128] reverseCharMap_;                // +0x18 (512 bytes)  [128i]
    int shift_;                              // +0x218 (4 bytes)  i
    int mask_;                               // +0x21c (4 bytes)  i
    BOOL doPad_;                             // +0x220 (1 bytes)  B
    char paddingChar_;                       // +0x221 (1 bytes)  c
    int padLen_;                             // +0x224 (4 bytes)  i
}
+ (id)binaryStringEncoding;                                                                // IMP 0x100114bd0
+ (id)hexStringEncoding;                                                                   // IMP 0x100114be8
+ (id)rfc4648Base32StringEncoding;                                                         // IMP 0x100114c38
+ (id)rfc4648Base32HexStringEncoding;                                                      // IMP 0x100114c9c
+ (id)crockfordBase32StringEncoding;                                                       // IMP 0x100114d00
+ (id)rfc4648Base64StringEncoding;                                                         // IMP 0x100114d50
+ (id)rfc4648Base64WebsafeStringEncoding;                                                  // IMP 0x100114db4
+ (id)stringEncodingWithString:(id)arg1;                                                   // IMP 0x100114e18
- (id)initWithString:(id)arg1;                                                             // IMP 0x100114e64
- (void)dealloc;                                                                           // IMP 0x100115090
- (id)description;                                                                         // IMP 0x1001150f4
- (void)addDecodeSynonyms:(id)arg1;                                                        // IMP 0x100115154
- (void)ignoreCharacters:(id)arg1;                                                         // IMP 0x1001151d4
- (BOOL)doPad;                                                                             // IMP 0x1001152ec
- (void)setDoPad:(BOOL)arg1;                                                               // IMP 0x1001152fc
- (void)setPaddingChar:(char)arg1;                                                         // IMP 0x10011530c
- (id)encode:(id)arg1;                                                                     // IMP 0x100115330
- (id)encodeString:(id)arg1;                                                               // IMP 0x1001155c0
- (id)decode:(id)arg1;                                                                     // IMP 0x10011560c
- (id)stringByDecoding:(id)arg1;                                                           // IMP 0x100115824
@end

@interface TAGGreaterEquals : TAGNumberPredicate   // instance size 8, class @0x1004284e8
+ (id)functionId;                                                                          // IMP 0x1001788fc
- (id)init;                                                                                // IMP 0x100178928
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x10017896c
@end

@interface TAGGreaterThan : TAGNumberPredicate   // instance size 8, class @0x100428538
+ (id)functionId;                                                                          // IMP 0x1001789fc
- (id)init;                                                                                // IMP 0x100178a28
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x100178a6c
@end

@interface TAGGtmVersionMacro : TAGFunctionCallImplementation   // instance size 8, class @0x100427e58
+ (id)functionId;                                                                          // IMP 0x100174c18
- (id)init;                                                                                // IMP 0x100174c44
- (BOOL)isCacheable;                                                                       // IMP 0x100174cf4
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100174cfc
@end

@interface TAGHashMacro : TAGFunctionCallImplementation   // instance size 16, class @0x100428038
{
    NSDictionary *_hashAlgorithms;           // +0x8 (8 bytes)  @"NSDictionary"
}
@property (retain, nonatomic) NSDictionary *hashAlgorithms;  // ivar: _hashAlgorithms
+ (id)functionId;                                                                          // IMP 0x10017510c
- (id)init;                                                                                // IMP 0x100175138
- (BOOL)isCacheable;                                                                       // IMP 0x1001753bc
- (id)evaluate:(id)arg1;                                                                   // IMP 0x1001753c4
- (id)hash:(id)arg1 algorithm:(id)arg2;                                                    // IMP 0x1001758bc
- (void).cxx_destruct;                                                                     // IMP 0x100175aa4
- (id)hashAlgorithms;                                                                      // IMP 0x100175a5c
- (void)setHashAlgorithms:(id)arg1;                                                        // IMP 0x100175a6c
@end

@interface TAGHit : NSManagedObject   // instance size 96, class @0x100424500
@property (retain, @dynamic, nonatomic) NSString *dispatchURL;
@property (retain, @dynamic, nonatomic) NSDate *timestamp;
@property (retain, @dynamic, nonatomic) NSNumber *retryCount;
@property (retain, @dynamic, nonatomic) NSDate *dispatchTime;
@property (retain, @dynamic, nonatomic) NSDate *lastDispatchTime;
@end

@interface TAGJoinerMacro : TAGFunctionCallImplementation   // instance size 8, class @0x100428088
+ (id)functionId;                                                                          // IMP 0x100175ab8
- (id)init;                                                                                // IMP 0x100175ae4
- (BOOL)isCacheable;                                                                       // IMP 0x100175b9c
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100175ba4
- (void)addTo:(id)arg1 charsInString:(id)arg2;                                             // IMP 0x10017670c
- (id)escape:(id)arg1 escapeType:(int)arg2 charsToBackslashEscape:(id)arg3;                // IMP 0x100176810
@end

@interface TAGKeyAndSerialized : NSObject   // instance size 24, class @0x100427188
{
    NSString *_key;                          // +0x8 (8 bytes)  @"NSString"
    NSData *_serialized;                     // +0x10 (8 bytes)  @"NSData"
}
@property (readonly) NSString *key;  // ivar: _key
@property (readonly) NSData *serialized;  // ivar: _serialized
- (id)initWithKey:(id)arg1 serialized:(id)arg2;                                            // IMP 0x10015e384
- (id)description;                                                                         // IMP 0x10015e468
- (void).cxx_destruct;                                                                     // IMP 0x10015e56c
- (id)key;                                                                                 // IMP 0x10015e54c
- (id)serialized;                                                                          // IMP 0x10015e55c
@end

@interface TAGKeyValue : NSObject <NSCopying>   // instance size 24, class @0x100427110
{
    NSString *_key;                          // +0x8 (8 bytes)  @"NSString"
    NSObject *_value;                        // +0x10 (8 bytes)  @"NSObject"
}
@property (readonly, copy, nonatomic) NSString *key;  // ivar: _key
@property (readonly, retain, nonatomic) NSObject *value;  // ivar: _value
- (BOOL)isEqual:(id)arg1;                                                                  // IMP 0x10015dde0
- (unsigned long long)hash;                                                                // IMP 0x10015dfc8
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x10015e094
- (id)initWithKey:(id)arg1 value:(id)arg2;                                                 // IMP 0x10015e16c
- (id)description;                                                                         // IMP 0x10015e250
- (void).cxx_destruct;                                                                     // IMP 0x10015e344
- (id)key;                                                                                 // IMP 0x10015e324
- (id)value;                                                                               // IMP 0x10015e334
@end

@interface TAGLanguage : TAGFunctionCallImplementation   // instance size 8, class @0x1004280d8
+ (id)functionId;                                                                          // IMP 0x100176ad8
- (id)init;                                                                                // IMP 0x100176b04
- (BOOL)isCacheable;                                                                       // IMP 0x100176bb4
- (id)preferredLanguages;                                                                  // IMP 0x100176bbc
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100176bd4
@end

@interface TAGLessEquals : TAGNumberPredicate   // instance size 8, class @0x100428588
+ (id)functionId;                                                                          // IMP 0x100178afc
- (id)init;                                                                                // IMP 0x100178b28
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x100178b6c
@end

@interface TAGLessThan : TAGNumberPredicate   // instance size 8, class @0x1004285d8
+ (id)functionId;                                                                          // IMP 0x100178bfc
- (id)init;                                                                                // IMP 0x100178c28
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x100178c6c
@end

@interface TAGLog : NSObject   // instance size 8, class @0x100427340
+ (void)initialize;                                                                        // IMP 0x1001625c0
+ (void)error:(id)arg1;                                                                    // IMP 0x100162608
+ (void)warning:(id)arg1;                                                                  // IMP 0x100162630
+ (void)info:(id)arg1;                                                                     // IMP 0x100162658
+ (void)debug:(id)arg1;                                                                    // IMP 0x100162680
+ (void)verbose:(id)arg1;                                                                  // IMP 0x1001626a8
+ (void)setLogger:(id)arg1;                                                                // IMP 0x1001626d0
+ (id)logger;                                                                              // IMP 0x1001626e0
+ (int)logLevel;                                                                           // IMP 0x1001626ec
@end

@interface TAGMD5HashAlgorithm : NSObject <TAGHashAlgorithm>   // instance size 8, class @0x100427ed0
- (id)hashData:(id)arg1;                                                                   // IMP 0x100174d38
@end

@interface TAGMacroInfo : NSObject   // instance size 40, class @0x100427778
{
    NSMutableSet *_rules;                    // +0x8 (8 bytes)  @"NSMutableSet"
    NSMutableDictionary *_addMacros;         // +0x10 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_removeMacros;      // +0x18 (8 bytes)  @"NSMutableDictionary"
    TAGExpandedFunctionCall *_defaultFunctionCall; // +0x20 (8 bytes)  @"TAGExpandedFunctionCall"
}
@property (retain, nonatomic) NSMutableSet *rules;  // ivar: _rules
@property (retain, nonatomic) NSMutableDictionary *addMacros;  // ivar: _addMacros
@property (retain, nonatomic) NSMutableDictionary *removeMacros;  // ivar: _removeMacros
@property (retain, nonatomic) TAGExpandedFunctionCall *defaultFunctionCall;  // ivar: _defaultFunctionCall
- (id)init;                                                                                // IMP 0x100168038
- (void)addAddMacro:(id)arg1 forRule:(id)arg2;                                             // IMP 0x100168154
- (void)addRemoveMacro:(id)arg1 forRule:(id)arg2;                                          // IMP 0x1001682d0
- (void).cxx_destruct;                                                                     // IMP 0x10016856c
- (id)rules;                                                                               // IMP 0x10016844c
- (void)setRules:(id)arg1;                                                                 // IMP 0x10016845c
- (id)addMacros;                                                                           // IMP 0x100168494
- (void)setAddMacros:(id)arg1;                                                             // IMP 0x1001684a4
- (id)removeMacros;                                                                        // IMP 0x1001684dc
- (void)setRemoveMacros:(id)arg1;                                                          // IMP 0x1001684ec
- (id)defaultFunctionCall;                                                                 // IMP 0x100168524
- (void)setDefaultFunctionCall:(id)arg1;                                                   // IMP 0x100168534
@end

@interface TAGManager : NSObject   // instance size 40, class @0x100426c38
{
    NSString *_ctfeServerAddress;            // +0x8 (8 bytes)  @"NSString"
    int _refreshMode;                        // +0x10 (4 bytes)  i
    TAGDataLayer *_dataLayer;                // +0x18 (8 bytes)  @"TAGDataLayer"
    NSMutableDictionary *_containers;        // +0x20 (8 bytes)  @"NSMutableDictionary"
}
@property (retain, nonatomic) id<TAGLogger> logger;
@property (nonatomic) int refreshMode;  // ivar: _refreshMode
@property (readonly, nonatomic) TAGDataLayer *dataLayer;  // ivar: _dataLayer
@property (copy) NSString *ctfeServerAddress;
@property (retain) NSMutableDictionary *containers;  // ivar: _containers
+ (id)instance;                                                                            // IMP 0x100154178
+ (void)clearManagerInstance;                                                              // IMP 0x1001541a8
- (id)init;                                                                                // IMP 0x100153460
- (id)initWithSameInstance:(BOOL)arg1;                                                     // IMP 0x100153484
- (id)openContainerById:(id)arg1 callback:(id)arg2;                                        // IMP 0x100153720
- (id)getContainerById:(id)arg1;                                                           // IMP 0x1001539dc
- (BOOL)previewWithUrl:(id)arg1;                                                           // IMP 0x100153ab4
- (void)setLogger:(id)arg1;                                                                // IMP 0x100154074
- (id)logger;                                                                              // IMP 0x10015409c
- (void)removeContainerById:(id)arg1;                                                      // IMP 0x1001540b4
- (id)containerById:(id)arg1;                                                              // IMP 0x100154204
- (id)ctfeServerAddress;                                                                   // IMP 0x100154280
- (void)setCtfeServerAddress:(id)arg1;                                                     // IMP 0x1001542e0
- (void)refreshTagsInAllContainers:(id)arg1;                                               // IMP 0x100154344
- (void)dispatch;                                                                          // IMP 0x1001544f8
- (void)dispatchWithCompletionHandler:(id /*block*/)arg1;                                  // IMP 0x100154598
- (void).cxx_destruct;                                                                     // IMP 0x1001547c8
- (int)refreshMode;                                                                        // IMP 0x10015477c
- (void)setRefreshMode:(int)arg1;                                                          // IMP 0x10015478c
- (id)dataLayer;                                                                           // IMP 0x10015479c
- (id)containers;                                                                          // IMP 0x1001547ac
- (void)setContainers:(id)arg1;                                                            // IMP 0x1001547bc
@end

@interface TAGManagerListener : NSObject <TAGDataLayerListener>   // instance size 16, class @0x100426be8
{
    TAGManager *_tagManager;                 // +0x8 (8 bytes)  @"TAGManager"
}
@property (retain, nonatomic) TAGManager *tagManager;  // ivar: _tagManager
- (id)initWithTagManager:(id)arg1;                                                         // IMP 0x100153264
- (void)changed:(id)arg1;                                                                  // IMP 0x100153308
- (void).cxx_destruct;                                                                     // IMP 0x10015344c
- (id)tagManager;                                                                          // IMP 0x100153404
- (void)setTagManager:(id)arg1;                                                            // IMP 0x100153414
@end

@interface TAGMobileAdwordsUniqueIdMacro : TAGFunctionCallImplementation   // instance size 8, class @0x100428128
+ (id)functionId;                                                                          // IMP 0x100176d0c
- (id)init;                                                                                // IMP 0x100176d38
- (BOOL)isCacheable;                                                                       // IMP 0x100176de8
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100176df0
- (id)rawAdvertiserId;                                                                     // IMP 0x100176eb0
@end

@interface TAGModel : NSObject   // instance size 8, class @0x100424550
+ (id)entityWithDescription:(id)arg1;                                                      // IMP 0x1001116ec
+ (id)modelWithDescription:(id)arg1;                                                       // IMP 0x1001119fc
+ (id)modelDescription;                                                                    // IMP 0x100111ce8
+ (id)previousModelDescription;                                                            // IMP 0x1001123e0
+ (BOOL)migrateToCurrentVersion:(id)arg1;                                                  // IMP 0x1001129cc
+ (id)coordinatorWithURL:(id)arg1;                                                         // IMP 0x100112dec
+ (id)contextWithURL:(id)arg1;                                                             // IMP 0x100113054
+ (id)model;                                                                               // IMP 0x100113140
+ (id)requestHitsWithLimit:(unsigned long long)arg1;                                       // IMP 0x1001131bc
+ (id)requestHitsWithLimit:(unsigned long long)arg1 lastDispatchedBefore:(id)arg2;         // IMP 0x100113314
@end

@interface TAGNetOperation : NSOperation   // instance size 80, class @0x1004245a0
{
    BOOL _isCancelled;                       // +0x18 (1 bytes)  B
    BOOL _isExecuting;                       // +0x19 (1 bytes)  B
    BOOL _isFinished;                        // +0x1a (1 bytes)  B
    NSURLRequest *_request;                  // +0x20 (8 bytes)  @"NSURLRequest"
    NSURLResponse *_response;                // +0x28 (8 bytes)  @"NSURLResponse"
    NSMutableData *_data;                    // +0x30 (8 bytes)  @"NSMutableData"
    NSError *_error;                         // +0x38 (8 bytes)  @"NSError"
    NSURLConnection *_connection;            // +0x40 (8 bytes)  @"NSURLConnection"
    id /*block*/ _completion;                // +0x48 (8 bytes)  @?
}
@property (retain, nonatomic) NSURLRequest *request;  // ivar: _request
@property (retain, nonatomic) NSURLResponse *response;  // ivar: _response
@property (retain, nonatomic) NSMutableData *data;  // ivar: _data
@property (retain, nonatomic) NSError *error;  // ivar: _error
@property (nonatomic, getter=isCancelled) BOOL isCancelled;  // ivar: _isCancelled
@property (nonatomic, getter=isExecuting) BOOL isExecuting;  // ivar: _isExecuting
@property (nonatomic, getter=isFinished) BOOL isFinished;  // ivar: _isFinished
@property (retain, nonatomic) NSURLConnection *connection;  // ivar: _connection
@property (copy, nonatomic) id /*block*/ completion;  // ivar: _completion
+ (BOOL)automaticallyNotifiesObserversForKey:(id)arg1;                                     // IMP 0x100113410
+ (id)operationWithRequest:(id)arg1 andCompletion:(id /*block*/)arg2;                      // IMP 0x100113918
- (BOOL)isConcurrent;                                                                      // IMP 0x100113418
- (void)finish;                                                                            // IMP 0x100113420
- (oneway void)start;                                                                      // IMP 0x100113598
- (oneway void)cancel;                                                                     // IMP 0x1001137b0
- (void)connection:(id)arg1 didFailWithError:(id)arg2;                                     // IMP 0x1001139f0
- (void)connection:(id)arg1 didReceiveData:(id)arg2;                                       // IMP 0x100113a5c
- (void)connection:(id)arg1 didReceiveResponse:(id)arg2;                                   // IMP 0x100113af0
- (void)connectionDidFinishLoading:(id)arg1;                                               // IMP 0x100113ba4
- (id)connection:(id)arg1 willSendRequest:(id)arg2 redirectResponse:(id)arg3;              // IMP 0x100113bc4
- (id)connection:(id)arg1 willCacheResponse:(id)arg2;                                      // IMP 0x100113bdc
- (void).cxx_destruct;                                                                     // IMP 0x100113dc8
- (id)request;                                                                             // IMP 0x100113be4
- (void)setRequest:(id)arg1;                                                               // IMP 0x100113bf4
- (id)response;                                                                            // IMP 0x100113c2c
- (void)setResponse:(id)arg1;                                                              // IMP 0x100113c3c
- (id)data;                                                                                // IMP 0x100113c74
- (void)setData:(id)arg1;                                                                  // IMP 0x100113c84
- (id)error;                                                                               // IMP 0x100113cbc
- (void)setError:(id)arg1;                                                                 // IMP 0x100113ccc
- (BOOL)isCancelled;                                                                       // IMP 0x100113d04
- (void)setIsCancelled:(BOOL)arg1;                                                         // IMP 0x100113d14
- (BOOL)isExecuting;                                                                       // IMP 0x100113d24
- (void)setIsExecuting:(BOOL)arg1;                                                         // IMP 0x100113d34
- (BOOL)isFinished;                                                                        // IMP 0x100113d44
- (void)setIsFinished:(BOOL)arg1;                                                          // IMP 0x100113d54
- (id)connection;                                                                          // IMP 0x100113d64
- (void)setConnection:(id)arg1;                                                            // IMP 0x100113d74
- (id /*block*/)completion;                                                                // IMP 0x100113dac
- (void)setCompletion:(id /*block*/)arg1;                                                  // IMP 0x100113dbc
@end

@interface TAGNetReachability : NSObject   // instance size 48, class @0x1004245c8
{
    __SCNetworkReachability *_reachability;  // +0x8 (8 bytes)  ^{__SCNetworkReachability=}
    NSString *_host;                         // +0x10 (8 bytes)  @"NSString"
    BOOL _isExecuting;                       // +0x18 (1 bytes)  B
    int _status;                             // +0x1c (4 bytes)  i
    int _reachabilityStatus;                 // +0x20 (4 bytes)  i
    id /*block*/ _statusChange;              // +0x28 (8 bytes)  @?
}
@property (readonly, nonatomic) int status;  // ivar: _status
@property (readonly, copy, nonatomic) NSString *host;  // ivar: _host
@property (readonly, nonatomic) BOOL isExecuting;  // ivar: _isExecuting
@property (copy, nonatomic) id /*block*/ statusChange;  // ivar: _statusChange
@property (nonatomic) int reachabilityStatus;  // ivar: _reachabilityStatus
- (void)setReachabilityStatus:(int)arg1;                                                   // IMP 0x100113e58
- (BOOL)start;                                                                             // IMP 0x100113f10
- (void)stop;                                                                              // IMP 0x100114028
- (id)initWithHostName:(id)arg1;                                                           // IMP 0x100114094
- (void)dealloc;                                                                           // IMP 0x100114154
- (void).cxx_destruct;                                                                     // IMP 0x100114280
- (int)status;                                                                             // IMP 0x100114224
- (id)host;                                                                                // IMP 0x100114234
- (BOOL)isExecuting;                                                                       // IMP 0x100114244
- (id /*block*/)statusChange;                                                              // IMP 0x100114254
- (void)setStatusChange:(id /*block*/)arg1;                                                // IMP 0x100114264
- (int)reachabilityStatus;                                                                 // IMP 0x100114270
@end

@interface TAGNetworkLoadCallback : NSObject <TAGLoadCallback>   // instance size 24, class @0x1004269e0
{
    id<TAGContainerCallback> _callback;      // +0x8 (8 bytes)  @"<TAGContainerCallback>"
    TAGContainer *_container;                // +0x10 (8 bytes)  @"TAGContainer"
}
@property (retain) id<TAGContainerCallback> callback;  // ivar: _callback
@property (retain) TAGContainer *container;  // ivar: _container
- (id)initWithCallback:(id)arg1 container:(id)arg2;                                        // IMP 0x10014dbe0
- (void)startLoad;                                                                         // IMP 0x10014dcbc
- (void)onSuccess:(id)arg1;                                                                // IMP 0x10014ddb0
- (void)onFailure:(long long)arg1;                                                         // IMP 0x10014e750
- (int)failureToRefreshFailure:(long long)arg1;                                            // IMP 0x10014e8c0
- (void)close;                                                                             // IMP 0x10014e8ec
- (void).cxx_destruct;                                                                     // IMP 0x10014e9a0
- (id)callback;                                                                            // IMP 0x10014e968
- (void)setCallback:(id)arg1;                                                              // IMP 0x10014e978
- (id)container;                                                                           // IMP 0x10014e984
- (void)setContainer:(id)arg1;                                                             // IMP 0x10014e994
@end

@interface TAGNetworking : NSOperationQueue   // instance size 40, class @0x100424618
{
    BOOL _isReachable;                       // +0x18 (1 bytes)  B
    TAGNetReachability *_reachability;       // +0x20 (8 bytes)  @"TAGNetReachability"
}
@property (nonatomic) BOOL isReachable;  // ivar: _isReachable
@property (retain, nonatomic) TAGNetReachability *reachability;  // ivar: _reachability
- (id)init;                                                                                // IMP 0x1001142c0
- (void)dealloc;                                                                           // IMP 0x100114508
- (id)sendURL:(id)arg1 completion:(id /*block*/)arg2;                                      // IMP 0x1001145d8
- (id)requestWithURL:(id)arg1;                                                             // IMP 0x1001146dc
- (void).cxx_destruct;                                                                     // IMP 0x100114860
- (BOOL)isReachable;                                                                       // IMP 0x1001147f8
- (void)setIsReachable:(BOOL)arg1;                                                         // IMP 0x100114808
- (id)reachability;                                                                        // IMP 0x100114818
- (void)setReachability:(id)arg1;                                                          // IMP 0x100114828
@end

@interface TAGNoopDataLayerPersistentStore : NSObject <TAGDataLayerPersistentStore>   // instance size 8, class @0x100427070
- (void)saveKeyValues:(id)arg1 lifetimeInMillis:(unsigned long long)arg2;                  // IMP 0x10015a880
- (void)loadSaved:(id)arg1;                                                                // IMP 0x10015a884
- (void)clearKeysWithPrefix:(id)arg1;                                                      // IMP 0x10015a908
@end

@interface TAGNumberPredicate : TAGPredicate   // instance size 8, class @0x100428650
- (BOOL)evaluateNoDefaultValues:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                // IMP 0x100178cf8
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x100178ebc
@end

@interface TAGObjectAndStatic : NSObject   // instance size 24, class @0x100427368
{
    BOOL _isStatic;                          // +0x8 (1 bytes)  B
    NSObject *_object;                       // +0x10 (8 bytes)  @"NSObject"
}
@property (readonly, nonatomic) BOOL isStatic;  // ivar: _isStatic
@property (readonly, retain, nonatomic) NSObject *object;  // ivar: _object
- (id)initWithObject:(id)arg1 isStatic:(BOOL)arg2;                                         // IMP 0x100162704
- (void).cxx_destruct;                                                                     // IMP 0x1001627d8
- (BOOL)isStatic;                                                                          // IMP 0x1001627b8
- (id)object;                                                                              // IMP 0x1001627c8
@end

@interface TAGOsVersion : TAGFunctionCallImplementation   // instance size 8, class @0x100428178
+ (id)functionId;                                                                          // IMP 0x100176ec8
- (id)init;                                                                                // IMP 0x100176ef4
- (BOOL)isCacheable;                                                                       // IMP 0x100176fa4
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100176fac
@end

@interface TAGPBArray : NSObject <NSCopying, NSMutableCopying, NSFastEnumeration>   // instance size 40, class @0x100425ce8
{
    int _valueType;                          // +0x8 (4 bytes)  i
    unsigned long long _capacity;            // +0x10 (8 bytes)  Q
    unsigned long long _count;               // +0x18 (8 bytes)  Q
    char *_data;                             // +0x20 (8 bytes)  *
}
@property (readonly, nonatomic) int valueType;  // ivar: _valueType
@property (readonly, nonatomic) const void *data;
@property (readonly, nonatomic) unsigned long long count;  // ivar: _count
+ (id)arrayWithValueType:(int)arg1;                                                        // IMP 0x10012ea24
+ (id)arrayWithValues:(const void *)arg1 count:(unsigned long long)arg2 valueType:(int)arg3; // IMP 0x10012ea70
+ (id)arrayWithArray:(id)arg1 valueType:(int)arg2;                                         // IMP 0x10012ead4
+ (id)arrayWithObject:(id)arg1;                                                            // IMP 0x10012eb28
+ (id)arrayWithObjects:(id)arg1;                                                           // IMP 0x10012eb74
+ (id)arrayWithInt32:(int)arg1;                                                            // IMP 0x10012ec40
+ (id)arrayWithInt32s:(int)arg1;                                                           // IMP 0x10012ec8c
- (id)initWithCount:(unsigned long long)arg1 valueType:(int)arg2;                          // IMP 0x10012d5ac
- (unsigned long long)hash;                                                                // IMP 0x10012d67c
- (const void *)data;                                                                      // IMP 0x10012d6a8
- (unsigned long long)countByEnumeratingWithState:(struct {…} *)arg1 objects:(id *)arg2 count:(unsigned long long)arg3; // IMP 0x10012d6b8
- (void)enumerateObjectsUsingBlock:(id /*block*/)arg1;                                     // IMP 0x10012d764
- (void)enumerateInt32sUsingBlock:(id /*block*/)arg1;                                      // IMP 0x10012d860
- (BOOL)isEqual:(id)arg1;                                                                  // IMP 0x10012d960
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x10012da90
- (id)mutableCopyWithZone:(_NSZone *)arg1;                                                 // IMP 0x10012daa0
- (void)dealloc;                                                                           // IMP 0x10012db04
- (id)description;                                                                         // IMP 0x10012dbd0
- (id)objectAtIndex:(unsigned long long)arg1;                                              // IMP 0x10012dd60
- (id)objectAtIndexedSubscript:(unsigned long long)arg1;                                   // IMP 0x10012de54
- (id)firstObject;                                                                         // IMP 0x10012de64
- (id)lastObject;                                                                          // IMP 0x10012df08
- (BOOL)boolAtIndex:(unsigned long long)arg1;                                              // IMP 0x10012dfac
- (int)int32AtIndex:(unsigned long long)arg1;                                              // IMP 0x10012e0a4
- (unsigned int)uint32AtIndex:(unsigned long long)arg1;                                    // IMP 0x10012e19c
- (long long)int64AtIndex:(unsigned long long)arg1;                                        // IMP 0x10012e294
- (unsigned long long)uint64AtIndex:(unsigned long long)arg1;                              // IMP 0x10012e38c
- (float)floatAtIndex:(unsigned long long)arg1;                                            // IMP 0x10012e484
- (double)doubleAtIndex:(unsigned long long)arg1;                                          // IMP 0x10012e57c
- (id)array;                                                                               // IMP 0x10012e674
- (id)arrayWithConversion:(id /*block*/)arg1;                                              // IMP 0x10012e78c
- (id)arrayByAppendingArray:(id)arg1;                                                      // IMP 0x10012e88c
- (id)initWithValueType:(int)arg1;                                                         // IMP 0x10012ed74
- (id)initWithValues:(const void *)arg1 count:(unsigned long long)arg2 valueType:(int)arg3; // IMP 0x10012ed90
- (id)initWithArray:(id)arg1 valueType:(int)arg2;                                          // IMP 0x10012ee64
- (id)initWithObject:(id)arg1;                                                             // IMP 0x10012f1d0
- (id)initWithInt32:(int)arg1;                                                             // IMP 0x10012f208
- (id)valueForKey:(id)arg1;                                                                // IMP 0x10012f240
- (void)setValue:(id)arg1 forKey:(id)arg2;                                                 // IMP 0x10012f3a4
- (int)valueType;                                                                          // IMP 0x10012f4a4
- (unsigned long long)count;                                                               // IMP 0x10012f4b4
@end

@interface TAGPBCodedInputStream : NSObject   // instance size 64, class @0x100425d88
{
    NSData *buffer_;                         // +0x8 (8 bytes)  @"NSData"
    TAGPBInputBufferState state_;            // +0x10 (32 bytes)  {TAGPBInputBufferState="bytes"*"bufferSize"Q"bufferPos"Q"currentLimit"Q}
    int lastTag_;                            // +0x30 (4 bytes)  i
    unsigned long long recursionDepth_;      // +0x38 (8 bytes)  Q
}
+ (id)streamWithData:(id)arg1;                                                             // IMP 0x1001318d8
- (id)initWithData:(id)arg1;                                                               // IMP 0x10013192c
- (void)dealloc;                                                                           // IMP 0x1001319f0
- (int)readTag;                                                                            // IMP 0x100131a54
- (void)checkLastTagWas:(int)arg1;                                                         // IMP 0x100131a58
- (BOOL)skipField:(int)arg1;                                                               // IMP 0x100131ab8
- (void)skipMessage;                                                                       // IMP 0x100131da0
- (double)readDouble;                                                                      // IMP 0x100131dec
- (float)readFloat;                                                                        // IMP 0x100131eb8
- (unsigned long long)readUInt64;                                                          // IMP 0x100131f84
- (long long)readInt64;                                                                    // IMP 0x1001320a4
- (int)readInt32;                                                                          // IMP 0x1001321c4
- (unsigned long long)readFixed64;                                                         // IMP 0x1001321d4
- (unsigned int)readFixed32;                                                               // IMP 0x10013229c
- (BOOL)readBool;                                                                          // IMP 0x100132364
- (id)readString;                                                                          // IMP 0x10013238c
- (void)readGroup:(int)arg1 builder:(id)arg2 extensionRegistry:(id)arg3;                   // IMP 0x1001323ac
- (void)readUnknownGroup:(int)arg1 builder:(id)arg2;                                       // IMP 0x100132490
- (void)readMessage:(id)arg1 extensionRegistry:(id)arg2;                                   // IMP 0x10013256c
- (id)readData;                                                                            // IMP 0x10013266c
- (unsigned int)readUInt32;                                                                // IMP 0x10013268c
- (int)readEnum;                                                                           // IMP 0x10013269c
- (int)readSFixed32;                                                                       // IMP 0x1001326ac
- (long long)readSFixed64;                                                                 // IMP 0x100132774
- (int)readSInt32;                                                                         // IMP 0x10013283c
- (long long)readSInt64;                                                                   // IMP 0x100132868
- (unsigned long long)pushLimit:(unsigned long long)arg1;                                  // IMP 0x100132990
- (void)popLimit:(unsigned long long)arg1;                                                 // IMP 0x100132998
- (unsigned long long)bytesUntilLimit;                                                     // IMP 0x1001329ac
- (BOOL)isAtEnd;                                                                           // IMP 0x1001329d8
@end

@interface TAGPBCodedOutputStream : NSObject   // instance size 48, class @0x100425e28
{
    TAGPBOutputBufferState state_;           // +0x8 (32 bytes)  {TAGPBOutputBufferState="bytes"*"size"Q"position"Q"output"@"NSOutputStream"}
    NSMutableData *buffer_;                  // +0x28 (8 bytes)  @"NSMutableData"
}
+ (id)streamWithOutputStream:(id)arg1 bufferSize:(unsigned long long)arg2;                 // IMP 0x100133290
+ (id)streamWithOutputStream:(id)arg1;                                                     // IMP 0x1001332ec
+ (id)streamWithData:(id)arg1;                                                             // IMP 0x100133344
- (void)dealloc;                                                                           // IMP 0x10013303c
- (id)initWithOutputStream:(id)arg1;                                                       // IMP 0x1001330e0
- (id)initWithData:(id)arg1;                                                               // IMP 0x100133134
- (id)initWithOutputStream:(id)arg1 bufferSize:(unsigned long long)arg2;                   // IMP 0x100133150
- (id)initWithOutputStream:(id)arg1 data:(id)arg2;                                         // IMP 0x1001331a4
- (void)writeDoubleNoTag:(double)arg1;                                                     // IMP 0x100133398
- (void)writeDouble:(int)arg1 value:(double)arg2;                                          // IMP 0x100133430
- (void)writeFloatNoTag:(float)arg1;                                                       // IMP 0x100133478
- (void)writeFloat:(int)arg1 value:(float)arg2;                                            // IMP 0x1001334d4
- (void)writeUInt64NoTag:(unsigned long long)arg1;                                         // IMP 0x10013351c
- (void)writeUInt64:(int)arg1 value:(unsigned long long)arg2;                              // IMP 0x100133588
- (void)writeInt64NoTag:(long long)arg1;                                                   // IMP 0x1001335c4
- (void)writeInt64:(int)arg1 value:(long long)arg2;                                        // IMP 0x1001335d8
- (void)writeInt32NoTag:(int)arg1;                                                         // IMP 0x100133614
- (void)writeInt32:(int)arg1 value:(int)arg2;                                              // IMP 0x10013363c
- (void)writeFixed64NoTag:(unsigned long long)arg1;                                        // IMP 0x100133678
- (void)writeFixed64:(int)arg1 value:(unsigned long long)arg2;                             // IMP 0x10013368c
- (void)writeFixed32NoTag:(unsigned int)arg1;                                              // IMP 0x1001336cc
- (void)writeFixed32:(int)arg1 value:(unsigned int)arg2;                                   // IMP 0x1001336e0
- (void)writeBoolNoTag:(BOOL)arg1;                                                         // IMP 0x100133720
- (void)writeBool:(int)arg1 value:(BOOL)arg2;                                              // IMP 0x10013377c
- (void)writeStringNoTag:(id)arg1;                                                         // IMP 0x1001337b8
- (void)writeString:(int)arg1 value:(id)arg2;                                              // IMP 0x100133ab8
- (void)writeGroupNoTag:(int)arg1 value:(id)arg2;                                          // IMP 0x100133b04
- (void)writeGroup:(int)arg1 value:(id)arg2;                                               // IMP 0x100133b50
- (void)writeUnknownGroupNoTag:(int)arg1 value:(id)arg2;                                   // IMP 0x100133bac
- (void)writeUnknownGroup:(int)arg1 value:(id)arg2;                                        // IMP 0x100133bf8
- (void)writeMessageNoTag:(id)arg1;                                                        // IMP 0x100133c54
- (void)writeMessage:(int)arg1 value:(id)arg2;                                             // IMP 0x100133cbc
- (void)writeDataNoTag:(id)arg1;                                                           // IMP 0x100133d08
- (void)writeData:(int)arg1 value:(id)arg2;                                                // IMP 0x100133d70
- (void)writeUInt32NoTag:(unsigned int)arg1;                                               // IMP 0x100133dbc
- (void)writeUInt32:(int)arg1 value:(unsigned int)arg2;                                    // IMP 0x100133dd0
- (void)writeEnumNoTag:(int)arg1;                                                          // IMP 0x100133e0c
- (void)writeEnum:(int)arg1 value:(int)arg2;                                               // IMP 0x100133e20
- (void)writeSFixed32NoTag:(int)arg1;                                                      // IMP 0x100133e5c
- (void)writeSFixed32:(int)arg1 value:(int)arg2;                                           // IMP 0x100133e70
- (void)writeSFixed64NoTag:(long long)arg1;                                                // IMP 0x100133eb0
- (void)writeSFixed64:(int)arg1 value:(long long)arg2;                                     // IMP 0x100133ec4
- (void)writeSInt32NoTag:(int)arg1;                                                        // IMP 0x100133f04
- (void)writeSInt32:(int)arg1 value:(int)arg2;                                             // IMP 0x100133f1c
- (void)writeSInt64NoTag:(long long)arg1;                                                  // IMP 0x100133f5c
- (void)writeSInt64:(int)arg1 value:(long long)arg2;                                       // IMP 0x100133f74
- (void)writeDoubles:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                     // IMP 0x100133fb4
- (void)writeFloats:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                      // IMP 0x100134090
- (void)writeUInt64s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                     // IMP 0x10013416c
- (void)writeInt64s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                      // IMP 0x10013426c
- (void)writeInt32s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                      // IMP 0x10013436c
- (void)writeUInt32s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                     // IMP 0x1001344ac
- (void)writeFixed64s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                    // IMP 0x1001345dc
- (void)writeFixed32s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                    // IMP 0x1001346b8
- (void)writeSInt32s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                     // IMP 0x100134794
- (void)writeSInt64s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                     // IMP 0x1001348d4
- (void)writeSFixed64s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                   // IMP 0x1001349dc
- (void)writeSFixed32s:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                   // IMP 0x100134ab8
- (void)writeBools:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                       // IMP 0x100134b94
- (void)writeEnums:(int)arg1 values:(id)arg2 tag:(unsigned int)arg3;                       // IMP 0x100134c6c
- (void)writeStrings:(int)arg1 values:(id)arg2;                                            // IMP 0x100134d9c
- (void)writeMessages:(int)arg1 values:(id)arg2;                                           // IMP 0x100134e1c
- (void)writeDatas:(int)arg1 values:(id)arg2;                                              // IMP 0x100134e9c
- (void)writeGroups:(int)arg1 values:(id)arg2;                                             // IMP 0x100134f1c
- (void)writeUnknownGroups:(int)arg1 values:(id)arg2;                                      // IMP 0x100134f9c
- (void)writeMessageSetExtension:(int)arg1 value:(id)arg2;                                 // IMP 0x10013501c
- (void)writeRawMessageSetExtension:(int)arg1 value:(id)arg2;                              // IMP 0x10013509c
- (void)flush;                                                                             // IMP 0x10013511c
- (void)writeRawByte:(unsigned char)arg1;                                                  // IMP 0x1001351e0
- (void)writeRawData:(id)arg1;                                                             // IMP 0x1001351f4
- (void)writeRawPtr:(const void *)arg1 offset:(unsigned long long)arg2 length:(unsigned long long)arg3; // IMP 0x100135264
- (void)writeTag:(unsigned int)arg1 format:(int)arg2;                                      // IMP 0x100135368
- (void)writeRawVarint32:(int)arg1;                                                        // IMP 0x10013537c
- (void)writeRawVarintSizeTAs32:(unsigned long long)arg1;                                  // IMP 0x100135390
- (void)writeRawVarint64:(long long)arg1;                                                  // IMP 0x1001353a4
- (void)writeRawLittleEndian32:(int)arg1;                                                  // IMP 0x1001353b8
- (void)writeRawLittleEndian64:(long long)arg1;                                            // IMP 0x1001353cc
@end

@interface TAGPBDescriptor : NSObject <NSCopying>   // instance size 64, class @0x100424fc8
{
    TAGPBArray *fields_;                     // +0x8 (8 bytes)  @"TAGPBArray"
    Class messageClass_;                     // +0x10 (8 bytes)  #
    TAGPBArray *enums_;                      // +0x18 (8 bytes)  @"TAGPBArray"
    TAGPBArray *extensions_;                 // +0x20 (8 bytes)  @"TAGPBArray"
    unsigned long long storageSize_;         // +0x28 (8 bytes)  Q
    BOOL wireFormat_;                        // +0x30 (1 bytes)  B
    TAGPBArray *extensionRanges_;            // +0x38 (8 bytes)  @"TAGPBArray"
}
@property (readonly, retain, nonatomic) NSString *name;
@property (readonly, retain, nonatomic) TAGPBArray *fields;  // ivar: fields_
@property (readonly, retain, nonatomic) TAGPBArray *enums;  // ivar: enums_
@property (readonly, retain, nonatomic) TAGPBArray *extensions;  // ivar: extensions_
@property (readonly, retain, nonatomic) TAGPBArray *extensionRanges;  // ivar: extensionRanges_
@property (readonly, nonatomic) unsigned long long storageSize;  // ivar: storageSize_
@property (readonly, nonatomic, getter=isWireFormat) BOOL wireFormat;  // ivar: wireFormat_
@property (readonly, nonatomic) Class messageClass;  // ivar: messageClass_
+ (id)allocDescriptorForClass:(Class)arg1 rootClass:(Class)arg2 fields:(TAGPBMessageFieldDescription *)arg3 fieldCount:(unsigned long long)arg4 enums:(TAGPBMessageEnumDescription *)arg5 enumCount:(unsigned long long)arg6 ranges:(TAGPBMessageExtensionRangeDescription *)arg7 rangeCount:(unsigned long long)arg8 storageSize:(unsigned long long)arg9 wireFormat:(BOOL)arg10; // IMP 0x100135ab4
+ (id)allocDescriptorForClass:(Class)arg1 rootClass:(Class)arg2 fields:(TAGPBMessageFieldDescription *)arg3 fieldCount:(unsigned long long)arg4 enums:(TAGPBMessageEnumDescription *)arg5 enumCount:(unsigned long long)arg6 ranges:(TAGPBMessageExtensionRangeDescription *)arg7 rangeCount:(unsigned long long)arg8 storageSize:(unsigned long long)arg9 wireFormat:(BOOL)arg10 extraTextFormatInfo:(const char *)arg11; // IMP 0x100135e58
- (id)initWithClass:(Class)arg1 fields:(id)arg2 enums:(id)arg3 extensions:(id)arg4 extensionRanges:(id)arg5 storageSize:(unsigned long long)arg6 wireFormat:(BOOL)arg7; // IMP 0x100135ff4
- (void)dealloc;                                                                           // IMP 0x100136108
- (id)name;                                                                                // IMP 0x1001361ac
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x1001361bc
- (id)fieldWithNumber:(unsigned int)arg1;                                                  // IMP 0x1001361cc
- (id)fieldWithName:(id)arg1;                                                              // IMP 0x1001362fc
- (id)enumWithName:(id)arg1;                                                               // IMP 0x100136458
- (id)extensionWithNumber:(unsigned int)arg1;                                              // IMP 0x1001365b4
- (id)extensionWithName:(id)arg1;                                                          // IMP 0x1001366e4
- (Class)messageClass;                                                                     // IMP 0x100136840
- (id)fields;                                                                              // IMP 0x100136850
- (id)enums;                                                                               // IMP 0x100136860
- (id)extensions;                                                                          // IMP 0x100136870
- (id)extensionRanges;                                                                     // IMP 0x100136880
- (unsigned long long)storageSize;                                                         // IMP 0x100136890
- (BOOL)isWireFormat;                                                                      // IMP 0x1001368a0
@end

@interface TAGPBDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x1004250e0
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *fieldArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *extensionArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *nestedTypeArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *enumTypeArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *extensionRangeArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *oneofDeclArray;
@property (@dynamic, nonatomic) BOOL hasOptions;
@property (retain, @dynamic, nonatomic) TAGPBMessageOptions *options;
+ (id)descriptor;                                                                          // IMP 0x10012be20
@end

@interface TAGPBDescriptorProto_ExtensionRange : TAGPBGeneratedMessage   // instance size 8, class @0x100425130
@property (@dynamic, nonatomic) BOOL hasStart;
@property (@dynamic, nonatomic) int start;
@property (@dynamic, nonatomic) BOOL hasEnd;
@property (@dynamic, nonatomic) int end;
+ (id)descriptor;                                                                          // IMP 0x10012bed4
@end

@interface TAGPBDescriptorRoot : TAGPBRootObject   // instance size 8, class @0x100424fa0
@end

@interface TAGPBEnumDescriptor : NSObject   // instance size 40, class @0x1004251d0
{
    NSString *name_;                         // +0x8 (8 bytes)  @"NSString"
    TAGPBArray *values_;                     // +0x10 (8 bytes)  @"TAGPBArray"
    void /*unknown*/ *enumVerifier_;         // +0x18 (8 bytes)  ^?
    const char *extraTextFormatInfo_;        // +0x20 (8 bytes)  r*
}
@property (readonly, retain, nonatomic) NSString *name;  // ivar: name_
@property (readonly, retain, nonatomic) TAGPBArray *values;  // ivar: values_
@property (readonly, nonatomic) void /*unknown*/ *enumVerifier;  // ivar: enumVerifier_
+ (id)allocDescriptorForName:(id)arg1 values:(TAGPBMessageEnumValueDescription *)arg2 valueCount:(unsigned long long)arg3 enumVerifier:(void /*unknown*/ *)arg4; // IMP 0x100137ab8
+ (id)allocDescriptorForName:(id)arg1 values:(TAGPBMessageEnumValueDescription *)arg2 valueCount:(unsigned long long)arg3 enumVerifier:(void /*unknown*/ *)arg4 extraTextFormatInfo:(const char *)arg5; // IMP 0x100137bfc
+ (id)descriptorForName:(const char *)arg1;                                                // IMP 0x100137c34
- (id)initWithName:(id)arg1 values:(id)arg2 enumVerifier:(void /*unknown*/ *)arg3;         // IMP 0x100137cec
- (id)enumValueWithNumber:(int)arg1;                                                       // IMP 0x100137d9c
- (id)enumValueWithName:(id)arg1;                                                          // IMP 0x100137ee0
- (void)dealloc;                                                                           // IMP 0x10013803c
- (id)textFormatNameForEnumValue:(int)arg1;                                                // IMP 0x1001380b8
- (id)name;                                                                                // IMP 0x1001382d8
- (id)values;                                                                              // IMP 0x1001382e8
- (void /*unknown*/ *)enumVerifier;                                                        // IMP 0x1001382f8
@end

@interface TAGPBEnumDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x100425338
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *valueArray;
@property (@dynamic, nonatomic) BOOL hasOptions;
@property (retain, @dynamic, nonatomic) TAGPBEnumOptions *options;
+ (id)descriptor;                                                                          // IMP 0x10012c1d8
@end

@interface TAGPBEnumOptions : TAGPBGeneratedMessage   // instance size 8, class @0x100425798
@property (@dynamic, nonatomic) BOOL hasProto1Name;
@property (retain, @dynamic, nonatomic) NSString *proto1Name;
@property (@dynamic, nonatomic) BOOL hasAllowAlias;
@property (@dynamic, nonatomic) BOOL allowAlias;
@property (@dynamic, nonatomic) BOOL hasDeprecated;
@property (@dynamic, nonatomic) BOOL deprecated;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *uninterpretedOptionArray;
+ (id)descriptor;                                                                          // IMP 0x10012ca94
@end

@interface TAGPBEnumValueDescriptor : NSObject   // instance size 24, class @0x100425f18
{
    TAGPBMessageEnumValueDescription *description_; // +0x8 (8 bytes)  ^{TAGPBMessageEnumValueDescription=*i}
    NSString *name_;                         // +0x10 (8 bytes)  @"NSString"
}
@property (readonly, retain, nonatomic) NSString *name;  // ivar: name_
@property (readonly, nonatomic) int number;
- (id)initWithEnumValueDescription:(TAGPBMessageEnumValueDescription *)arg1 prefix:(id)arg2; // IMP 0x100137940
- (void)dealloc;                                                                           // IMP 0x100137a30
- (int)number;                                                                             // IMP 0x100137a94
- (id)name;                                                                                // IMP 0x100137aa8
@end

@interface TAGPBEnumValueDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x100425388
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (@dynamic, nonatomic) BOOL hasNumber;
@property (@dynamic, nonatomic) int number;
@property (@dynamic, nonatomic) BOOL hasOptions;
@property (retain, @dynamic, nonatomic) TAGPBEnumValueOptions *options;
+ (id)descriptor;                                                                          // IMP 0x10012c28c
@end

@interface TAGPBEnumValueOptions : TAGPBGeneratedMessage   // instance size 8, class @0x1004257e8
@property (@dynamic, nonatomic) BOOL hasDeprecated;
@property (@dynamic, nonatomic) BOOL deprecated;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *uninterpretedOptionArray;
+ (id)descriptor;                                                                          // IMP 0x10012cb5c
@end

@interface TAGPBExtensionDescriptor : NSObject   // instance size 16, class @0x100425fb8
{
    TAGPBExtensionDescription *description_; // +0x8 (8 bytes)  ^{TAGPBExtensionDescription=*i*i(?=BIifQqdiqiqIQ@@@@i@@)*I*}
}
@property (readonly, nonatomic) unsigned int fieldNumber;
@property (readonly, nonatomic) int type;
@property (readonly, nonatomic, getter=isRepeated) BOOL repeated;
@property (readonly, nonatomic, getter=isPackable) BOOL packable;
@property (readonly, nonatomic, getter=isMessage) BOOL message;
@property (readonly, nonatomic) Class msgClass;
@property (readonly, nonatomic) NSString *singletonName;
@property (readonly, retain, nonatomic) TAGPBEnumDescriptor *enumDescriptor;
- (id)initWithExtensionDescription:(TAGPBExtensionDescription *)arg1;                      // IMP 0x100138408
- (id)singletonName;                                                                       // IMP 0x100138460
- (const char *)singletonNameC;                                                            // IMP 0x10013848c
- (unsigned int)fieldNumber;                                                               // IMP 0x1001384a0
- (int)type;                                                                               // IMP 0x1001384b4
- (BOOL)isRepeated;                                                                        // IMP 0x1001384c8
- (BOOL)isPackable;                                                                        // IMP 0x1001384e0
- (BOOL)isMessage;                                                                         // IMP 0x1001384f8
- (Class)msgClass;                                                                         // IMP 0x100138518
- (id)enumDescriptor;                                                                      // IMP 0x10013852c
@end

@interface TAGPBExtensionField : NSObject <NSCopying>   // instance size 48, class @0x100425c20
{
    TAGPBExtensionDescription *description_; // +0x8 (8 bytes)  ^{TAGPBExtensionDescription=*i*i(?=BIifQqdiqiqIQ@@@@i@@)*I*}
    union {…} defaultTAGPBValue_;            // +0x10 (8 bytes)  (?="valueBool"B"valueFixed32"I"valueSFixed32"i"valueFloat"f"valueFixed64"Q"valueSFixed64"q"valueDouble"d"valueInt32"i"valueInt64"q"valueSInt32"i"valueSInt64"q"valueUInt32"I"valueUInt64"Q"valueData"@"NSData""valueString"@"NSString""valueMessage"@"TAGPBGeneratedMessage""valueGroup"@"TAGPBGeneratedMessage""valueEnum"i"valueArray"@"TAGPBArray""valueObject"@)
    Class messageOrGroupClass_;              // +0x18 (8 bytes)  #
    TAGPBExtensionDescriptor *descriptor_;   // +0x20 (8 bytes)  @"TAGPBExtensionDescriptor"
    TAGPBDescriptor *containingType_;        // +0x28 (8 bytes)  @"TAGPBDescriptor"
}
@property (readonly, nonatomic) int fieldNumber;
@property (readonly, nonatomic) int wireType;
@property (readonly, nonatomic) BOOL isRepeated;
@property (readonly, nonatomic) TAGPBDescriptor *containingType;  // ivar: containingType_
@property (readonly, nonatomic) id defaultValue;
@property (readonly, nonatomic) TAGPBExtensionDescriptor *descriptor;  // ivar: descriptor_
- (id)init;                                                                                // IMP 0x100138744
- (id)initWithDescription:(TAGPBExtensionDescription *)arg1;                               // IMP 0x1001387a8
- (void)dealloc;                                                                           // IMP 0x100138a14
- (BOOL)isRepeated;                                                                        // IMP 0x100138ab8
- (int)fieldNumber;                                                                        // IMP 0x100138ad0
- (int)wireType;                                                                           // IMP 0x100138ae4
- (void)writeTAGPBValue:(union {…})arg1 includingTagToCodedOutputStream:(id)arg2;          // IMP 0x100138b14
- (void)writeTAGPBValue:(union {…})arg1 noTagToCodedOutputStream:(id)arg2;                 // IMP 0x100138d04
- (unsigned long long)computeTAGPBSerializedSizeNoTag:(union {…})arg1;                     // IMP 0x100138ea4
- (unsigned long long)computeTAGPBSerializedSizeIncludingTag:(union {…})arg1;              // IMP 0x100139098
- (id)defaultValue;                                                                        // IMP 0x10013934c
- (void)writeTAGPBValues:(id)arg1 includingTagsToCodedOutputStream:(id)arg2;               // IMP 0x10013954c
- (void)writeValue:(id)arg1 includingTagToCodedOutputStream:(id)arg2;                      // IMP 0x100139730
- (unsigned long long)computeTAGPBSerializedSizesIncludingTags:(id)arg1;                   // IMP 0x100139954
- (unsigned long long)computeSerializedSizeIncludingTag:(id)arg1;                          // IMP 0x100139b38
- (id)description;                                                                         // IMP 0x100139b9c
- (id)readSingleValueFromCodedInputStream:(id)arg1 extensionRegistry:(id)arg2 existingValue:(id)arg3; // IMP 0x100139c34
- (void)mergeFromCodedInputStream:(id)arg1 extensionRegistry:(id)arg2 builder:(id)arg3;    // IMP 0x10013a008
- (long long)compareByFieldNumber:(id)arg1;                                                // IMP 0x10013a19c
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x10013a1cc
- (id)containingType;                                                                      // IMP 0x10013a1dc
- (id)descriptor;                                                                          // IMP 0x10013a1ec
@end

@interface TAGPBExtensionRange : NSObject   // instance size 16, class @0x100425ea0
{
    TAGPBMessageExtensionRangeDescription *description_; // +0x8 (8 bytes)  ^{TAGPBMessageExtensionRangeDescription=II}
}
@property (readonly, nonatomic) unsigned int start;
@property (readonly, nonatomic) unsigned int end;
- (id)initWithRangeDescription:(TAGPBMessageExtensionRangeDescription *)arg1;              // IMP 0x100138388
- (unsigned int)start;                                                                     // IMP 0x1001383e0
- (unsigned int)end;                                                                       // IMP 0x1001383f4
@end

@interface TAGPBExtensionRegistry : NSObject   // instance size 16, class @0x100425bf8
{
    NSMutableDictionary *mutableClassMap_;   // +0x8 (8 bytes)  @"NSMutableDictionary"
}
- (id)init;                                                                                // IMP 0x10013a1fc
- (void)dealloc;                                                                           // IMP 0x10013a27c
- (id)extensionMapForContainingType:(id)arg1;                                              // IMP 0x10013a2e0
- (void)addExtension:(id)arg1;                                                             // IMP 0x10013a368
- (id)getExtension:(id)arg1 fieldNumber:(long long)arg2;                                   // IMP 0x10013a420
- (void)addExtensions:(id)arg1;                                                            // IMP 0x10013a490
@end

@interface TAGPBField : NSObject   // instance size 56, class @0x100426058
{
    int number_;                             // +0x8 (4 bytes)  i
    TAGPBMutableArray *mutableVarintList_;   // +0x10 (8 bytes)  @"TAGPBMutableArray"
    TAGPBMutableArray *mutableFixed32List_;  // +0x18 (8 bytes)  @"TAGPBMutableArray"
    TAGPBMutableArray *mutableFixed64List_;  // +0x20 (8 bytes)  @"TAGPBMutableArray"
    TAGPBMutableArray *mutableLengthDelimitedList_; // +0x28 (8 bytes)  @"TAGPBMutableArray"
    TAGPBMutableArray *mutableGroupList_;    // +0x30 (8 bytes)  @"TAGPBMutableArray"
}
@property (readonly, retain, nonatomic) TAGPBArray *varintList;  // ivar: mutableVarintList_
@property (readonly, retain, nonatomic) TAGPBArray *fixed32List;  // ivar: mutableFixed32List_
@property (readonly, retain, nonatomic) TAGPBArray *fixed64List;  // ivar: mutableFixed64List_
@property (readonly, retain, nonatomic) TAGPBArray *lengthDelimitedList;  // ivar: mutableLengthDelimitedList_
@property (readonly, retain, nonatomic) TAGPBArray *groupList;  // ivar: mutableGroupList_
@property (readonly, nonatomic) int number;  // ivar: number_
- (void)dealloc;                                                                           // IMP 0x10013a600
- (BOOL)isEqual:(id)arg1;                                                                  // IMP 0x10013a6b8
- (void)writeToOutput:(id)arg1;                                                            // IMP 0x10013a8c4
- (unsigned long long)serializedSize;                                                      // IMP 0x10013aa38
- (void)writeAsMessageSetExtensionToOutput:(id)arg1;                                       // IMP 0x10013ae00
- (unsigned long long)serializedSizeAsMessageSetExtension;                                 // IMP 0x10013af40
- (id)description;                                                                         // IMP 0x10013b078
- (id)varintList;                                                                          // IMP 0x10013b464
- (id)fixed32List;                                                                         // IMP 0x10013b474
- (id)fixed64List;                                                                         // IMP 0x10013b484
- (id)lengthDelimitedList;                                                                 // IMP 0x10013b494
- (id)groupList;                                                                           // IMP 0x10013b4a4
- (int)number;                                                                             // IMP 0x10013b4b4
@end

@interface TAGPBFieldDescriptor : NSObject   // instance size 80, class @0x100425e78
{
    TAGPBMessageFieldDescription *description_; // +0x8 (8 bytes)  ^{TAGPBMessageFieldDescription=*IIIiQ*(?=BIifQqdiqiqIQ@@@@i@@)(?=*^?)}
    SEL getSel_;                             // +0x10 (8 bytes)  :
    SEL setSel_;                             // +0x18 (8 bytes)  :
    SEL hasSel_;                             // +0x20 (8 bytes)  :
    SEL setHasSel_;                          // +0x28 (8 bytes)  :
    union {…} defaultValue_;                 // +0x30 (8 bytes)  (?="valueBool"B"valueFixed32"I"valueSFixed32"i"valueFloat"f"valueFixed64"Q"valueSFixed64"q"valueDouble"d"valueInt32"i"valueInt64"q"valueSInt32"i"valueSInt64"q"valueUInt32"I"valueUInt64"Q"valueData"@"NSData""valueString"@"NSString""valueMessage"@"TAGPBGeneratedMessage""valueGroup"@"TAGPBGeneratedMessage""valueEnum"i"valueArray"@"TAGPBArray""valueObject"@)
    TAGPBFieldOptions *fieldOptions_;        // +0x38 (8 bytes)  @"TAGPBFieldOptions"
    Class msgClass_;                         // +0x40 (8 bytes)  #
    union {…} enumHandling_;                 // +0x48 (8 bytes)  (?="enumDescriptor_"@"TAGPBEnumDescriptor""enumVerifier_"^?)
}
@property (readonly, retain, nonatomic) NSString *name;
@property (readonly, nonatomic) unsigned int number;
@property (readonly, nonatomic) int type;
@property (readonly, nonatomic) BOOL hasDefaultValue;
@property (readonly, nonatomic) union {…} defaultValue;
@property (readonly, nonatomic, getter=isRequired) BOOL required;
@property (readonly, nonatomic, getter=isOptional) BOOL optional;
@property (readonly, nonatomic, getter=isRepeated) BOOL repeated;
@property (readonly, nonatomic, getter=isPackable) BOOL packable;
@property (readonly, nonatomic, getter=isMessage) BOOL message;
@property (readonly, nonatomic) SEL getSel;  // ivar: getSel_
@property (readonly, nonatomic) unsigned long long offset;
@property (readonly, nonatomic) unsigned int tag;
@property (readonly, nonatomic) SEL setSel;  // ivar: setSel_
@property (readonly, nonatomic) TAGPBFieldOptions *fieldOptions;  // ivar: fieldOptions_
@property (readonly, nonatomic) SEL hasSel;  // ivar: hasSel_
@property (readonly, nonatomic) SEL setHasSel;  // ivar: setHasSel_
@property (readonly, nonatomic) unsigned int hasIndex;
@property (readonly, nonatomic) Class msgClass;  // ivar: msgClass_
@property (readonly, retain, nonatomic) TAGPBEnumDescriptor *enumDescriptor;
- (id)init;                                                                                // IMP 0x1001368b0
- (id)initWithFieldDescription:(TAGPBMessageFieldDescription *)arg1 rootClass:(Class)arg2; // IMP 0x100136914
- (void)dealloc;                                                                           // IMP 0x100136de0
- (int)type;                                                                               // IMP 0x100136e8c
- (unsigned int)hasIndex;                                                                  // IMP 0x100136ea0
- (BOOL)hasDefaultValue;                                                                   // IMP 0x100136eb4
- (unsigned int)number;                                                                    // IMP 0x100136ecc
- (unsigned long long)offset;                                                              // IMP 0x100136ee0
- (unsigned int)tag;                                                                       // IMP 0x100136ef4
- (id)name;                                                                                // IMP 0x100136f2c
- (BOOL)isRequired;                                                                        // IMP 0x100136f58
- (BOOL)isOptional;                                                                        // IMP 0x100136f70
- (BOOL)isRepeated;                                                                        // IMP 0x100136f88
- (BOOL)isPackable;                                                                        // IMP 0x100136fa0
- (BOOL)isMessage;                                                                         // IMP 0x100136fb8
- (BOOL)isValidEnumValue:(int)arg1;                                                        // IMP 0x100136fd8
- (id)enumDescriptor;                                                                      // IMP 0x1001370cc
- (union {…})defaultValue;                                                                 // IMP 0x1001370f8
- (id)textFormatName;                                                                      // IMP 0x1001371e0
- (SEL)getSel;                                                                             // IMP 0x1001378e0
- (id)fieldOptions;                                                                        // IMP 0x1001378f0
- (SEL)hasSel;                                                                             // IMP 0x100137900
- (SEL)setHasSel;                                                                          // IMP 0x100137910
- (SEL)setSel;                                                                             // IMP 0x100137920
- (Class)msgClass;                                                                         // IMP 0x100137930
@end

@interface TAGPBFieldDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x100425180
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (@dynamic, nonatomic) BOOL hasNumber;
@property (@dynamic, nonatomic) int number;
@property (@dynamic, nonatomic) BOOL hasLabel;
@property (@dynamic, nonatomic) long long label;
@property (@dynamic, nonatomic) BOOL hasType;
@property (@dynamic, nonatomic) long long type;
@property (@dynamic, nonatomic) BOOL hasTypeName;
@property (retain, @dynamic, nonatomic) NSString *typeName;
@property (@dynamic, nonatomic) BOOL hasExtendee;
@property (retain, @dynamic, nonatomic) NSString *extendee;
@property (@dynamic, nonatomic) BOOL hasDefaultValue;
@property (retain, @dynamic, nonatomic) NSString *defaultValue;
@property (@dynamic, nonatomic) BOOL hasOneofIndex;
@property (@dynamic, nonatomic) int oneofIndex;
@property (@dynamic, nonatomic) BOOL hasOptions;
@property (retain, @dynamic, nonatomic) TAGPBFieldOptions *options;
+ (id)descriptor;                                                                          // IMP 0x10012bf88
@end

@interface TAGPBFieldDescriptorProto_LabelEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x1004252c0
+ (id)enumDescriptor;                                                                      // IMP 0x10012c0c4
@end

@interface TAGPBFieldDescriptorProto_TypeEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100425270
+ (id)enumDescriptor;                                                                      // IMP 0x10012c054
@end

@interface TAGPBFieldOptions : TAGPBGeneratedMessage   // instance size 8, class @0x100425608
@property (@dynamic, nonatomic) BOOL hasCtype;
@property (@dynamic, nonatomic) long long ctype;
@property (@dynamic, nonatomic) BOOL hasPacked;
@property (@dynamic, nonatomic) BOOL packed;
@property (@dynamic, nonatomic) BOOL hasJtype;
@property (@dynamic, nonatomic) long long jtype;
@property (@dynamic, nonatomic) BOOL hasJstype;
@property (@dynamic, nonatomic) long long jstype;
@property (@dynamic, nonatomic) BOOL hasLazy;
@property (@dynamic, nonatomic) BOOL lazy;
@property (@dynamic, nonatomic) BOOL hasDeprecated;
@property (@dynamic, nonatomic) BOOL deprecated;
@property (@dynamic, nonatomic) BOOL hasExperimentalMapKey;
@property (retain, @dynamic, nonatomic) NSString *experimentalMapKey;
@property (@dynamic, nonatomic) BOOL hasWeak;
@property (@dynamic, nonatomic) BOOL weak;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *upgradedOptionArray;
@property (@dynamic, nonatomic) BOOL hasDeprecatedRawMessage;
@property (@dynamic, nonatomic) BOOL deprecatedRawMessage;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *uninterpretedOptionArray;
+ (id)descriptor;                                                                          // IMP 0x10012c7d8
@end

@interface TAGPBFieldOptions_CTypeEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100425680
+ (id)enumDescriptor;                                                                      // IMP 0x10012c8a8
@end

@interface TAGPBFieldOptions_JSTypeEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100425720
+ (id)enumDescriptor;                                                                      // IMP 0x10012c980
@end

@interface TAGPBFieldOptions_JTypeEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x1004256d0
+ (id)enumDescriptor;                                                                      // IMP 0x10012c914
@end

@interface TAGPBFieldOptions_UpgradedOption : TAGPBGeneratedMessage   // instance size 8, class @0x100425748
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (@dynamic, nonatomic) BOOL hasValue;
@property (retain, @dynamic, nonatomic) NSString *value;
+ (id)descriptor;                                                                          // IMP 0x10012c9e0
@end

@interface TAGPBFileDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x100425090
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (@dynamic, nonatomic) BOOL hasPackage;
@property (retain, @dynamic, nonatomic) NSString *package;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *dependencyArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *publicDependencyArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *weakDependencyArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *messageTypeArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *enumTypeArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *serviceArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *extensionArray;
@property (@dynamic, nonatomic) BOOL hasOptions;
@property (retain, @dynamic, nonatomic) TAGPBFileOptions *options;
@property (@dynamic, nonatomic) BOOL hasSourceCodeInfo;
@property (retain, @dynamic, nonatomic) TAGPBSourceCodeInfo *sourceCodeInfo;
+ (id)descriptor;                                                                          // IMP 0x10012bd6c
@end

@interface TAGPBFileDescriptorSet : TAGPBGeneratedMessage   // instance size 8, class @0x100424ff0
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *fileArray;
+ (id)descriptor;                                                                          // IMP 0x10012bcb8
@end

@interface TAGPBFileOptions : TAGPBGeneratedMessage   // instance size 8, class @0x1004254c8
@property (@dynamic, nonatomic) BOOL hasCcApiVersion;
@property (@dynamic, nonatomic) int ccApiVersion;
@property (@dynamic, nonatomic) BOOL hasCcApiCompatibility;
@property (@dynamic, nonatomic) long long ccApiCompatibility;
@property (@dynamic, nonatomic) BOOL hasCcProtoArrayCompatible;
@property (@dynamic, nonatomic) BOOL ccProtoArrayCompatible;
@property (@dynamic, nonatomic) BOOL hasCcUtf8Verification;
@property (@dynamic, nonatomic) BOOL ccUtf8Verification;
@property (@dynamic, nonatomic) BOOL hasCcProto1TextFormat;
@property (@dynamic, nonatomic) BOOL ccProto1TextFormat;
@property (@dynamic, nonatomic) BOOL hasJavaPackage;
@property (retain, @dynamic, nonatomic) NSString *javaPackage;
@property (@dynamic, nonatomic) BOOL hasPyApiVersion;
@property (@dynamic, nonatomic) int pyApiVersion;
@property (@dynamic, nonatomic) BOOL hasJavaApiVersion;
@property (@dynamic, nonatomic) int javaApiVersion;
@property (@dynamic, nonatomic) BOOL hasJavaUseJavaproto2;
@property (@dynamic, nonatomic) BOOL javaUseJavaproto2;
@property (@dynamic, nonatomic) BOOL hasJavaJava5Enums;
@property (@dynamic, nonatomic) BOOL javaJava5Enums;
@property (@dynamic, nonatomic) BOOL hasJavaGenerateRpcBaseimpl;
@property (@dynamic, nonatomic) BOOL javaGenerateRpcBaseimpl;
@property (@dynamic, nonatomic) BOOL hasJavaUseJavastrings;
@property (@dynamic, nonatomic) BOOL javaUseJavastrings;
@property (@dynamic, nonatomic) BOOL hasJavaAltApiPackage;
@property (retain, @dynamic, nonatomic) NSString *javaAltApiPackage;
@property (@dynamic, nonatomic) BOOL hasJavaEnableDualGenerateMutableApi;
@property (@dynamic, nonatomic) BOOL javaEnableDualGenerateMutableApi;
@property (@dynamic, nonatomic) BOOL hasJavaOuterClassname;
@property (retain, @dynamic, nonatomic) NSString *javaOuterClassname;
@property (@dynamic, nonatomic) BOOL hasJavaMultipleFiles;
@property (@dynamic, nonatomic) BOOL javaMultipleFiles;
@property (@dynamic, nonatomic) BOOL hasJavaGenerateEqualsAndHash;
@property (@dynamic, nonatomic) BOOL javaGenerateEqualsAndHash;
@property (@dynamic, nonatomic) BOOL hasJavaStringCheckUtf8;
@property (@dynamic, nonatomic) BOOL javaStringCheckUtf8;
@property (@dynamic, nonatomic) BOOL hasJavaMutableApi;
@property (@dynamic, nonatomic) BOOL javaMutableApi;
@property (@dynamic, nonatomic) BOOL hasJavaMultipleFilesMutablePackage;
@property (retain, @dynamic, nonatomic) NSString *javaMultipleFilesMutablePackage;
@property (@dynamic, nonatomic) BOOL hasOptimizeFor;
@property (@dynamic, nonatomic) long long optimizeFor;
@property (@dynamic, nonatomic) BOOL hasGoPackage;
@property (retain, @dynamic, nonatomic) NSString *goPackage;
@property (@dynamic, nonatomic) BOOL hasJavascriptPackage;
@property (retain, @dynamic, nonatomic) NSString *javascriptPackage;
@property (@dynamic, nonatomic) BOOL hasSzlApiVersion;
@property (@dynamic, nonatomic) int szlApiVersion;
@property (@dynamic, nonatomic) BOOL hasCcGenericServices;
@property (@dynamic, nonatomic) BOOL ccGenericServices;
@property (@dynamic, nonatomic) BOOL hasJavaGenericServices;
@property (@dynamic, nonatomic) BOOL javaGenericServices;
@property (@dynamic, nonatomic) BOOL hasPyGenericServices;
@property (@dynamic, nonatomic) BOOL pyGenericServices;
@property (@dynamic, nonatomic) BOOL hasDeprecated;
@property (@dynamic, nonatomic) BOOL deprecated;
@property (@dynamic, nonatomic) BOOL hasExperimentalStyle;
@property (retain, @dynamic, nonatomic) NSString *experimentalStyle;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *uninterpretedOptionArray;
+ (id)descriptor;                                                                          // IMP 0x10012c55c
@end

@interface TAGPBFileOptions_CompatibilityLevelEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100425540
+ (id)enumDescriptor;                                                                      // IMP 0x10012c640
@end

@interface TAGPBFileOptions_OptimizeModeEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100425590
+ (id)enumDescriptor;                                                                      // IMP 0x10012c6b0
@end

@interface TAGPBGeneratedEnumDescriptor : NSObject   // instance size 8, class @0x100425248
+ (id)enumDescriptor;                                                                      // IMP 0x100138308
- (id)enumDescriptor;                                                                      // IMP 0x10013835c
@end

@interface TAGPBGeneratedMessage : TAGPBRootObject <TAGPBMutableArrayDelegate, NSCoding, NSCopying, NSMutableCopying>   // instance size 68, class @0x100425068
{
    TAGPBUnknownFieldSet *unknownFields_;    // +0x8 (8 bytes)  @"TAGPBUnknownFieldSet"
    NSMutableDictionary *extensionMap_;      // +0x10 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *autocreatedExtensionMap_; // +0x18 (8 bytes)  @"NSMutableDictionary"
    TAGPBGeneratedMessage *autocreator_;     // +0x20 (8 bytes)  @"TAGPBGeneratedMessage"
    TAGPBFieldDescriptor *autocreatorField_; // +0x28 (8 bytes)  @"TAGPBFieldDescriptor"
    TAGPBExtensionField *autocreatorExtension_; // +0x30 (8 bytes)  @"TAGPBExtensionField"
    TAGPBGeneratedMessage_Storage *messageStorage_; // +0x38 (8 bytes)  ^{TAGPBGeneratedMessage_Storage=}
    int readOnlyMutex_;                      // +0x40 (4 bytes)  i
}
@property (retain, nonatomic) TAGPBUnknownFieldSet *unknownFields;  // ivar: unknownFields_
@property (readonly, nonatomic, getter=isInitialized) BOOL initialized;
+ (void)initialize;                                                                        // IMP 0x10013ba90
+ (id)allocWithZone:(_NSZone *)arg1;                                                       // IMP 0x10013bb44
+ (id)alloc;                                                                               // IMP 0x10013bb90
+ (id)descriptor;                                                                          // IMP 0x10013bba4
+ (id)message;                                                                             // IMP 0x10013bc30
+ (id)newMessageWithAutocreator:(id)arg1 field:(id)arg2;                                   // IMP 0x10013bc6c
+ (id)newMessageWithAutocreator:(id)arg1 extension:(id)arg2;                               // IMP 0x10013bce8
+ (id)parseFromData:(id)arg1;                                                              // IMP 0x10013efac
+ (id)parseFromData:(id)arg1 extensionRegistry:(id)arg2;                                   // IMP 0x10013efc0
+ (id)parseFromCodedInputStream:(id)arg1 extensionRegistry:(id)arg2;                       // IMP 0x10013f038
+ (id)parseDelimitedFromCodedInputStream:(id)arg1 extensionRegistry:(id)arg2;              // IMP 0x10013f0b0
+ (BOOL)resolveInstanceMethod:(SEL)arg1;                                                   // IMP 0x100144d6c
+ (BOOL)accessInstanceVariablesDirectly;                                                   // IMP 0x100146ad8
+ (id)builder;                                                                             // IMP 0x100146cdc
- (id)init;                                                                                // IMP 0x10013bd64
- (void)dealloc;                                                                           // IMP 0x10013bde8
- (void)copyFieldsInto:(id)arg1 zone:(_NSZone *)arg2;                                      // IMP 0x10013bee0
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x10013c2e0
- (id)mutableCopyWithZone:(_NSZone *)arg1;                                                 // IMP 0x10013c2f0
- (void)clear;                                                                             // IMP 0x10013c3bc
- (void)internalClear;                                                                     // IMP 0x10013c42c
- (BOOL)isInitialized;                                                                     // IMP 0x10013ca18
- (id)descriptor;                                                                          // IMP 0x10013cde8
- (id)data;                                                                                // IMP 0x10013ce14
- (id)delimitedData;                                                                       // IMP 0x10013cecc
- (void)writeToOutputStream:(id)arg1;                                                      // IMP 0x10013cfb8
- (void)writeToCodedOutputStream:(id)arg1;                                                 // IMP 0x10013d030
- (void)writeDelimitedToOutputStream:(id)arg1;                                             // IMP 0x10013d250
- (void)writeDelimitedToCodedOutputStream:(id)arg1;                                        // IMP 0x10013d2c8
- (void)writeField:(id)arg1 toCodedOutputStream:(id)arg2;                                  // IMP 0x10013d324
- (BOOL)isInitialized:(id)arg1;                                                            // IMP 0x10013e12c
- (id)getExtension:(id)arg1;                                                               // IMP 0x10013e2d8
- (id)getExistingExtension:(id)arg1;                                                       // IMP 0x10013e5a8
- (BOOL)hasExtension:(id)arg1;                                                             // IMP 0x10013e5c4
- (id)extensionsCurrentlySet;                                                              // IMP 0x10013e5f8
- (void)writeExtensionsToCodedOutputStream:(id)arg1 range:(id)arg2;                        // IMP 0x10013e614
- (id)sortedExtensionsInUse;                                                               // IMP 0x10013e7fc
- (unsigned long long)extensionsSerializedSize;                                            // IMP 0x10013e840
- (void)setExtension:(id)arg1 value:(id)arg2;                                              // IMP 0x10013e9a4
- (void)addExtension:(id)arg1 value:(id)arg2;                                              // IMP 0x10013eb60
- (void)setExtension:(id)arg1 index:(unsigned long long)arg2 value:(id)arg3;               // IMP 0x10013ec8c
- (void)clearExtension:(id)arg1;                                                           // IMP 0x10013ed7c
- (void)clearAutocreator;                                                                  // IMP 0x10013edfc
- (BOOL)wasAutocreatedBy:(id)arg1;                                                         // IMP 0x10013ee70
- (void)mergeFromData:(id)arg1 extensionRegistry:(id)arg2;                                 // IMP 0x10013ee88
- (void)mergeDelimitedFromCodedInputStream:(id)arg1 extensionRegistry:(id)arg2;            // IMP 0x10013ef28
- (void)setUnknownFields:(id)arg1;                                                         // IMP 0x10013f128
- (id)mutableUnknownFields;                                                                // IMP 0x10013f1a0
- (void)mergeUnknownFields:(id)arg1;                                                       // IMP 0x10013f210
- (void)parseMessageSet:(id)arg1 extensionRegistry:(id)arg2;                               // IMP 0x10013f264
- (BOOL)parseUnknownField:(id)arg1 extensionRegistry:(id)arg2 tag:(unsigned int)arg3;      // IMP 0x10013f468
- (void)mergeFromCodedInputStream:(id)arg1 extensionRegistry:(id)arg2;                     // IMP 0x10013f5bc
- (void)mergeFrom:(id)arg1;                                                                // IMP 0x100140f84
- (BOOL)isEqual:(id)arg1;                                                                  // IMP 0x100141a1c
- (unsigned long long)hash;                                                                // IMP 0x1001423b0
- (id)description;                                                                         // IMP 0x1001423c0
- (unsigned long long)serializedSize;                                                      // IMP 0x1001424ac
- (id)initWithCoder:(id)arg1;                                                              // IMP 0x100146a30
- (void)encodeWithCoder:(id)arg1;                                                          // IMP 0x100146a98
- (void)pbMutableArray:(id)arg1 willAddElements:(unsigned long long)arg2;                  // IMP 0x100146ae0
- (id)builder;                                                                             // IMP 0x100146d18
- (id)build;                                                                               // IMP 0x100146d44
- (id)unknownFields;                                                                       // IMP 0x100146d70
@end

@interface TAGPBMessageOptions : TAGPBGeneratedMessage   // instance size 8, class @0x1004255b8
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *experimentalJavaMessageInterfaceArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *experimentalJavaBuilderInterfaceArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *experimentalJavaInterfaceExtendsArray;
@property (@dynamic, nonatomic) BOOL hasMessageSetWireFormat;
@property (@dynamic, nonatomic) BOOL messageSetWireFormat;
@property (@dynamic, nonatomic) BOOL hasNoStandardDescriptorAccessor;
@property (@dynamic, nonatomic) BOOL noStandardDescriptorAccessor;
@property (@dynamic, nonatomic) BOOL hasDeprecated;
@property (@dynamic, nonatomic) BOOL deprecated;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *uninterpretedOptionArray;
+ (id)descriptor;                                                                          // IMP 0x10012c710
@end

@interface TAGPBMessageSignatureProtocol : NSObject <TAGPBMessageSignatureProtocol>   // instance size 8, class @0x100426170
@end

@interface TAGPBMethodDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x100425428
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (@dynamic, nonatomic) BOOL hasInputType;
@property (retain, @dynamic, nonatomic) NSString *inputType;
@property (@dynamic, nonatomic) BOOL hasOutputType;
@property (retain, @dynamic, nonatomic) NSString *outputType;
@property (@dynamic, nonatomic) BOOL hasOptions;
@property (retain, @dynamic, nonatomic) TAGPBMethodOptions *options;
+ (id)descriptor;                                                                          // IMP 0x10012c3f4
@end

@interface TAGPBMethodOptions : TAGPBGeneratedMessage   // instance size 8, class @0x100425888
@property (@dynamic, nonatomic) BOOL hasProtocol;
@property (@dynamic, nonatomic) long long protocol;
@property (@dynamic, nonatomic) BOOL hasDeadline;
@property (@dynamic, nonatomic) double deadline;
@property (@dynamic, nonatomic) BOOL hasDuplicateSuppression;
@property (@dynamic, nonatomic) BOOL duplicateSuppression;
@property (@dynamic, nonatomic) BOOL hasFailFast;
@property (@dynamic, nonatomic) BOOL failFast;
@property (@dynamic, nonatomic) BOOL hasEndUserCredsRequested;
@property (@dynamic, nonatomic) BOOL endUserCredsRequested;
@property (@dynamic, nonatomic) BOOL hasClientLogging;
@property (@dynamic, nonatomic) int clientLogging;
@property (@dynamic, nonatomic) BOOL hasServerLogging;
@property (@dynamic, nonatomic) int serverLogging;
@property (@dynamic, nonatomic) BOOL hasSecurityLevel;
@property (@dynamic, nonatomic) long long securityLevel;
@property (@dynamic, nonatomic) BOOL hasResponseFormat;
@property (@dynamic, nonatomic) long long responseFormat;
@property (@dynamic, nonatomic) BOOL hasRequestFormat;
@property (@dynamic, nonatomic) long long requestFormat;
@property (@dynamic, nonatomic) BOOL hasStreamType;
@property (retain, @dynamic, nonatomic) NSString *streamType;
@property (@dynamic, nonatomic) BOOL hasSecurityLabel;
@property (retain, @dynamic, nonatomic) NSString *securityLabel;
@property (@dynamic, nonatomic) BOOL hasClientStreaming;
@property (@dynamic, nonatomic) BOOL clientStreaming;
@property (@dynamic, nonatomic) BOOL hasServerStreaming;
@property (@dynamic, nonatomic) BOOL serverStreaming;
@property (@dynamic, nonatomic) BOOL hasLegacyStreamType;
@property (retain, @dynamic, nonatomic) NSString *legacyStreamType;
@property (@dynamic, nonatomic) BOOL hasLegacyResultType;
@property (retain, @dynamic, nonatomic) NSString *legacyResultType;
@property (@dynamic, nonatomic) BOOL hasLegacyClientInitialTokens;
@property (@dynamic, nonatomic) long long legacyClientInitialTokens;
@property (@dynamic, nonatomic) BOOL hasLegacyServerInitialTokens;
@property (@dynamic, nonatomic) long long legacyServerInitialTokens;
@property (@dynamic, nonatomic) BOOL hasLogLevel;
@property (@dynamic, nonatomic) long long logLevel;
@property (@dynamic, nonatomic) BOOL hasDeprecated;
@property (@dynamic, nonatomic) BOOL deprecated;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *uninterpretedOptionArray;
+ (id)descriptor;                                                                          // IMP 0x10012ccec
@end

@interface TAGPBMethodOptions_FormatEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x1004259a0
+ (id)enumDescriptor;                                                                      // IMP 0x10012ce94
@end

@interface TAGPBMethodOptions_LogLevelEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x1004259f0
+ (id)enumDescriptor;                                                                      // IMP 0x10012cf00
@end

@interface TAGPBMethodOptions_ProtocolEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100425900
+ (id)enumDescriptor;                                                                      // IMP 0x10012cdbc
@end

@interface TAGPBMethodOptions_SecurityLevelEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100425950
+ (id)enumDescriptor;                                                                      // IMP 0x10012ce28
@end

@interface TAGPBMutableArray : TAGPBArray   // instance size 56, class @0x100425d10
{
    unsigned long long _mutationCount;       // +0x28 (8 bytes)  Q
    id<TAGPBMutableArrayDelegate> _delegate; // +0x30 (8 bytes)  @"<TAGPBMutableArrayDelegate>"
}
@property (nonatomic) id<TAGPBMutableArrayDelegate> delegate;  // ivar: _delegate
+ (id)arrayWithValueType:(int)arg1 capacity:(unsigned long long)arg2;                      // IMP 0x10012f698
- (void)dealloc;                                                                           // IMP 0x10012f5b0
- (id)initWithValueType:(int)arg1 capacity:(unsigned long long)arg2;                       // IMP 0x10012f6ec
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x10012f73c
- (unsigned long long)countByEnumeratingWithState:(struct {…} *)arg1 objects:(id *)arg2 count:(unsigned long long)arg3; // IMP 0x10012f7a0
- (void)enumerateObjectsUsingBlock:(id /*block*/)arg1;                                     // IMP 0x10012f854
- (void)enumerateInt32sUsingBlock:(id /*block*/)arg1;                                      // IMP 0x10012f9b0
- (void)ensureAdditionalCapacity:(unsigned long long)arg1;                                 // IMP 0x10012fb6c
- (void)addObject:(id)arg1;                                                                // IMP 0x10012fc6c
- (void)addBool:(BOOL)arg1;                                                                // IMP 0x10012fca4
- (void)addInt32:(int)arg1;                                                                // IMP 0x10012fd8c
- (void)addUInt32:(unsigned int)arg1;                                                      // IMP 0x10012fe74
- (void)addInt64:(long long)arg1;                                                          // IMP 0x10012ff5c
- (void)addUInt64:(unsigned long long)arg1;                                                // IMP 0x100130044
- (void)addFloat:(float)arg1;                                                              // IMP 0x10013012c
- (void)addDouble:(double)arg1;                                                            // IMP 0x100130214
- (void)replaceObjectAtIndex:(unsigned long long)arg1 withObject:(id)arg2;                 // IMP 0x1001302fc
- (void)setObject:(id)arg1 atIndexedSubscript:(unsigned long long)arg2;                    // IMP 0x100130438
- (void)replaceBoolAtIndex:(unsigned long long)arg1 withBool:(BOOL)arg2;                   // IMP 0x10013047c
- (void)replaceInt32AtIndex:(unsigned long long)arg1 withInt32:(int)arg2;                  // IMP 0x100130584
- (void)replaceUInt32AtIndex:(unsigned long long)arg1 withUInt32:(unsigned int)arg2;       // IMP 0x10013068c
- (void)replaceInt64AtIndex:(unsigned long long)arg1 withInt64:(long long)arg2;            // IMP 0x100130794
- (void)replaceUInt64AtIndex:(unsigned long long)arg1 withUInt64:(unsigned long long)arg2; // IMP 0x10013089c
- (void)replaceFloatAtIndex:(unsigned long long)arg1 withFloat:(float)arg2;                // IMP 0x1001309a4
- (void)replaceDoubleAtIndex:(unsigned long long)arg1 withDouble:(double)arg2;             // IMP 0x100130ab4
- (void)setArray:(id)arg1;                                                                 // IMP 0x100130bc4
- (void)appendArray:(id)arg1;                                                              // IMP 0x100130c20
- (void)appendValues:(const void *)arg1 valueType:(int)arg2 count:(unsigned long long)arg3; // IMP 0x100130d74
- (void)removeAllValues;                                                                   // IMP 0x100130ea4
- (id)delegate;                                                                            // IMP 0x100130f70
- (void)setDelegate:(id)arg1;                                                              // IMP 0x100130f80
@end

@interface TAGPBMutableField : TAGPBField   // instance size 56, class @0x1004260a8
- (id)initWithNumber:(int)arg1;                                                            // IMP 0x10013b4c4
- (void)mergeFromField:(id)arg1;                                                           // IMP 0x10013b51c
- (void)addVarint:(unsigned long long)arg1;                                                // IMP 0x10013b768
- (void)addFixed32:(unsigned int)arg1;                                                     // IMP 0x10013b7ec
- (void)addFixed64:(unsigned long long)arg1;                                               // IMP 0x10013b870
- (void)addLengthDelimited:(id)arg1;                                                       // IMP 0x10013b8f4
- (void)addGroup:(id)arg1;                                                                 // IMP 0x10013b978
@end

@interface TAGPBObjectiveCFileOptions : TAGPBGeneratedMessage   // instance size 8, class @0x100425c98
@property (@dynamic, nonatomic) BOOL hasPackage;
@property (retain, @dynamic, nonatomic) NSString *package;
@property (@dynamic, nonatomic) BOOL hasClassPrefix;
@property (retain, @dynamic, nonatomic) NSString *classPrefix;
@property (@dynamic, nonatomic) BOOL hasCamelcaseOutputFilename;
@property (@dynamic, nonatomic) BOOL camelcaseOutputFilename;
+ (id)descriptor;                                                                          // IMP 0x10012d4f8
@end

@interface TAGPBObjectivecDescriptorRoot : TAGPBRootObject   // instance size 8, class @0x100425c70
+ (id)extensionRegistry;                                                                   // IMP 0x10012d360
+ (void)load;                                                                              // IMP 0x10012d48c
@end

@interface TAGPBOneofDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x1004252e8
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
+ (id)descriptor;                                                                          // IMP 0x10012c124
@end

@interface TAGPBRootObject : NSObject   // instance size 8, class @0x100424f78
+ (void)initialize;                                                                        // IMP 0x100146d80
+ (id)extensionRegistry;                                                                   // IMP 0x100146e74
+ (void)globallyRegisterExtension:(id)arg1;                                                // IMP 0x100146e7c
+ (BOOL)resolveClassMethod:(SEL)arg1;                                                      // IMP 0x100146ed0
@end

@interface TAGPBServiceDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x1004253d8
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *methodArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *streamArray;
@property (@dynamic, nonatomic) BOOL hasOptions;
@property (retain, @dynamic, nonatomic) TAGPBServiceOptions *options;
+ (id)descriptor;                                                                          // IMP 0x10012c340
@end

@interface TAGPBServiceOptions : TAGPBGeneratedMessage   // instance size 8, class @0x100425838
@property (@dynamic, nonatomic) BOOL hasMulticastStub;
@property (@dynamic, nonatomic) BOOL multicastStub;
@property (@dynamic, nonatomic) BOOL hasFailureDetectionDelay;
@property (@dynamic, nonatomic) double failureDetectionDelay;
@property (@dynamic, nonatomic) BOOL hasDeprecated;
@property (@dynamic, nonatomic) BOOL deprecated;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *uninterpretedOptionArray;
+ (id)descriptor;                                                                          // IMP 0x10012cc24
@end

@interface TAGPBSourceCodeInfo : TAGPBGeneratedMessage   // instance size 8, class @0x100425b58
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *locationArray;
+ (id)descriptor;                                                                          // IMP 0x10012d1f8
@end

@interface TAGPBSourceCodeInfo_Location : TAGPBGeneratedMessage   // instance size 8, class @0x100425ba8
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *pathArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *spanArray;
@property (@dynamic, nonatomic) BOOL hasLeadingComments;
@property (retain, @dynamic, nonatomic) NSString *leadingComments;
@property (@dynamic, nonatomic) BOOL hasTrailingComments;
@property (retain, @dynamic, nonatomic) NSString *trailingComments;
+ (id)descriptor;                                                                          // IMP 0x10012d2ac
@end

@interface TAGPBStreamDescriptorProto : TAGPBGeneratedMessage   // instance size 8, class @0x100425478
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (@dynamic, nonatomic) BOOL hasClientMessageType;
@property (retain, @dynamic, nonatomic) NSString *clientMessageType;
@property (@dynamic, nonatomic) BOOL hasServerMessageType;
@property (retain, @dynamic, nonatomic) NSString *serverMessageType;
@property (@dynamic, nonatomic) BOOL hasOptions;
@property (retain, @dynamic, nonatomic) TAGPBStreamOptions *options;
+ (id)descriptor;                                                                          // IMP 0x10012c4a8
@end

@interface TAGPBStreamOptions : TAGPBGeneratedMessage   // instance size 8, class @0x100425a18
@property (@dynamic, nonatomic) BOOL hasClientInitialTokens;
@property (@dynamic, nonatomic) long long clientInitialTokens;
@property (@dynamic, nonatomic) BOOL hasServerInitialTokens;
@property (@dynamic, nonatomic) long long serverInitialTokens;
@property (@dynamic, nonatomic) BOOL hasTokenUnit;
@property (@dynamic, nonatomic) long long tokenUnit;
@property (@dynamic, nonatomic) BOOL hasSecurityLevel;
@property (@dynamic, nonatomic) long long securityLevel;
@property (@dynamic, nonatomic) BOOL hasSecurityLabel;
@property (retain, @dynamic, nonatomic) NSString *securityLabel;
@property (@dynamic, nonatomic) BOOL hasClientLogging;
@property (@dynamic, nonatomic) int clientLogging;
@property (@dynamic, nonatomic) BOOL hasServerLogging;
@property (@dynamic, nonatomic) int serverLogging;
@property (@dynamic, nonatomic) BOOL hasDeadline;
@property (@dynamic, nonatomic) double deadline;
@property (@dynamic, nonatomic) BOOL hasFailFast;
@property (@dynamic, nonatomic) BOOL failFast;
@property (@dynamic, nonatomic) BOOL hasEndUserCredsRequested;
@property (@dynamic, nonatomic) BOOL endUserCredsRequested;
@property (@dynamic, nonatomic) BOOL hasLogLevel;
@property (@dynamic, nonatomic) long long logLevel;
@property (@dynamic, nonatomic) BOOL hasDeprecated;
@property (@dynamic, nonatomic) BOOL deprecated;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *uninterpretedOptionArray;
+ (id)descriptor;                                                                          // IMP 0x10012cf60
@end

@interface TAGPBStreamOptions_TokenUnitEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100425a90
+ (id)enumDescriptor;                                                                      // IMP 0x10012d030
@end

@interface TAGPBString : NSString   // instance size 37, class @0x100425dd8
{
    __CFString *string_;                     // +0x8 (8 bytes)  ^{__CFString=}
    char *utf8_;                             // +0x10 (8 bytes)  *
    unsigned long long utf8Len_;             // +0x18 (8 bytes)  Q
    int lock_;                               // +0x20 (4 bytes)  i
    BOOL hasBOM_;                            // +0x24 (1 bytes)  B
    unsigned char[0] internalBuffer_;        // +0x25 (0 bytes)  [0C]
}
- (void)dealloc;                                                                           // IMP 0x100132a0c
- (unsigned long long)length;                                                              // IMP 0x100132a90
- (unsigned short)characterAtIndex:(unsigned long long)arg1;                               // IMP 0x100132bd0
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x100132c34
- (id)mutableCopyWithZone:(_NSZone *)arg1;                                                 // IMP 0x100132cb4
- (unsigned long long)hash;                                                                // IMP 0x100132cf4
- (BOOL)isEqual:(id)arg1;                                                                  // IMP 0x100132d20
- (void)getCharacters:(unsigned short *)arg1 range:(_NSRange)arg2;                         // IMP 0x100132db8
- (unsigned long long)lengthOfBytesUsingEncoding:(unsigned long long)arg1;                 // IMP 0x100132e50
- (BOOL)getBytes:(void *)arg1 maxLength:(unsigned long long)arg2 usedLength:(unsigned long long *)arg3 encoding:(unsigned long long)arg4 options:(unsigned long long)arg5 range:(_NSRange)arg6 remainingRange:(_NSRange *)arg7; // IMP 0x100132efc
@end

@interface TAGPBUninterpretedOption : TAGPBGeneratedMessage   // instance size 8, class @0x100425ab8
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *nameArray;
@property (@dynamic, nonatomic) BOOL hasIdentifierValue;
@property (retain, @dynamic, nonatomic) NSString *identifierValue;
@property (@dynamic, nonatomic) BOOL hasPositiveIntValue;
@property (@dynamic, nonatomic) unsigned long long positiveIntValue;
@property (@dynamic, nonatomic) BOOL hasNegativeIntValue;
@property (@dynamic, nonatomic) long long negativeIntValue;
@property (@dynamic, nonatomic) BOOL hasDoubleValue;
@property (@dynamic, nonatomic) double doubleValue;
@property (@dynamic, nonatomic) BOOL hasStringValue;
@property (retain, @dynamic, nonatomic) NSData *stringValue;
@property (@dynamic, nonatomic) BOOL hasAggregateValue;
@property (retain, @dynamic, nonatomic) NSString *aggregateValue;
+ (id)descriptor;                                                                          // IMP 0x10012d090
@end

@interface TAGPBUninterpretedOption_NamePart : TAGPBGeneratedMessage   // instance size 8, class @0x100425b08
@property (@dynamic, nonatomic) BOOL hasNamePart;
@property (retain, @dynamic, nonatomic) NSString *namePart;
@property (@dynamic, nonatomic) BOOL hasIsExtension;
@property (@dynamic, nonatomic) BOOL isExtension;
+ (id)descriptor;                                                                          // IMP 0x10012d144
@end

@interface TAGPBUnknownFieldSet : NSObject <NSCopying, NSMutableCopying>   // instance size 16, class @0x1004260f8
{
    __CFDictionary *fields_;                 // +0x8 (8 bytes)  ^{__CFDictionary=}
}
+ (BOOL)isFieldTag:(int)arg1;                                                              // IMP 0x100147c48
- (id)initWithFields:(__CFDictionary *)arg1;                                               // IMP 0x1001470c8
- (id)copyWithZone:(_NSZone *)arg1;                                                        // IMP 0x100147140
- (id)mutableCopyWithZone:(_NSZone *)arg1;                                                 // IMP 0x100147150
- (void)dealloc;                                                                           // IMP 0x1001471ac
- (BOOL)isEqual:(id)arg1;                                                                  // IMP 0x100147208
- (BOOL)hasField:(int)arg1;                                                                // IMP 0x10014729c
- (id)getField:(int)arg1;                                                                  // IMP 0x1001472d8
- (unsigned long long)countOfFields;                                                       // IMP 0x100147308
- (void)writeToCodedOutputStream:(id)arg1;                                                 // IMP 0x100147324
- (id)description;                                                                         // IMP 0x100147494
- (unsigned long long)serializedSize;                                                      // IMP 0x100147a40
- (void)writeAsMessageSetTo:(id)arg1;                                                      // IMP 0x100147acc
- (unsigned long long)serializedSizeAsMessageSet;                                          // IMP 0x100147b04
- (id)data;                                                                                // IMP 0x100147b90
- (void)addField:(id)arg1;                                                                 // IMP 0x100147c58
- (id)getFieldBuilder:(int)arg1 create:(BOOL)arg2;                                         // IMP 0x100147d88
- (void)mergeField:(id)arg1;                                                               // IMP 0x100147e44
- (void)mergeUnknownFields:(id)arg1;                                                       // IMP 0x100147ef8
- (void)mergeFromData:(id)arg1;                                                            // IMP 0x100147f40
- (void)mergeVarintField:(int)arg1 value:(int)arg2;                                        // IMP 0x100147fd0
- (BOOL)mergeFieldFrom:(int)arg1 input:(id)arg2;                                           // IMP 0x100148058
- (void)mergeMessageSetMessage:(int)arg1 data:(id)arg2;                                    // IMP 0x100148294
- (void)mergeFromCodedInputStream:(id)arg1;                                                // IMP 0x1001482d4
- (id)sortedFields;                                                                        // IMP 0x100148330
- (void)getTags:(int *)arg1;                                                               // IMP 0x1001484a8
@end

@interface TAGPCacheOption : TAGPBGeneratedMessage   // instance size 8, class @0x100426558
@property (@dynamic, nonatomic) BOOL hasLevel;
@property (@dynamic, nonatomic) long long level;
@property (@dynamic, nonatomic) BOOL hasExpirationSeconds;
@property (@dynamic, nonatomic) int expirationSeconds;
@property (@dynamic, nonatomic) BOOL hasGcacheExpirationSeconds;
@property (@dynamic, nonatomic) int gcacheExpirationSeconds;
+ (id)descriptor;                                                                          // IMP 0x10014c2c0
@end

@interface TAGPCacheOption_CacheLevelEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x1004265d0
+ (id)enumDescriptor;                                                                      // IMP 0x10014c38c
@end

@interface TAGPContainer : TAGPBGeneratedMessage   // instance size 8, class @0x1004263c8
@property (@dynamic, nonatomic) BOOL hasJsResource;
@property (retain, @dynamic, nonatomic) TAGPResource *jsResource;
@property (@dynamic, nonatomic) BOOL hasContainerId;
@property (retain, @dynamic, nonatomic) NSString *containerId;
@property (@dynamic, nonatomic) BOOL hasState;
@property (@dynamic, nonatomic) long long state;
@property (@dynamic, nonatomic) BOOL hasVersion;
@property (retain, @dynamic, nonatomic) NSString *version;
+ (id)descriptor;                                                                          // IMP 0x10014bf3c
@end

@interface TAGPFunctionCall : TAGPBGeneratedMessage   // instance size 8, class @0x1004264b8
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *propertyArray;
@property (@dynamic, nonatomic) BOOL hasFunction;
@property (@dynamic, nonatomic) int function;
@property (@dynamic, nonatomic) BOOL hasName;
@property (@dynamic, nonatomic) int name;
@property (@dynamic, nonatomic) BOOL hasLiveOnly;
@property (@dynamic, nonatomic) BOOL liveOnly;
@property (@dynamic, nonatomic) BOOL hasServerSide;
@property (@dynamic, nonatomic) BOOL serverSide;
+ (id)descriptor;                                                                          // IMP 0x10014c158
@end

@interface TAGPGaExperimentRandom : TAGPBGeneratedMessage   // instance size 8, class @0x100426648
@property (@dynamic, nonatomic) BOOL hasKey;
@property (retain, @dynamic, nonatomic) NSString *key;
@property (@dynamic, nonatomic) BOOL hasMinRandom;
@property (@dynamic, nonatomic) long long minRandom;
@property (@dynamic, nonatomic) BOOL hasMaxRandom;
@property (@dynamic, nonatomic) long long maxRandom;
@property (@dynamic, nonatomic) BOOL hasRetainOriginalValue;
@property (@dynamic, nonatomic) BOOL retainOriginalValue;
@property (@dynamic, nonatomic) BOOL hasLifetimeInMilliseconds;
@property (@dynamic, nonatomic) long long lifetimeInMilliseconds;
+ (id)descriptor;                                                                          // IMP 0x10014c4ac
@end

@interface TAGPGaExperimentSupplemental : TAGPBGeneratedMessage   // instance size 8, class @0x100426698
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *valueToPushArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *valueToClearArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *experimentRandomArray;
+ (id)descriptor;                                                                          // IMP 0x10014c560
@end

@interface TAGPGaServerSideExperimentCombination : TAGPBGeneratedMessage   // instance size 8, class @0x1004266e8
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *variationIndexArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *weightsVectorArray;
+ (id)descriptor;                                                                          // IMP 0x10014c614
@end

@interface TAGPGaServerSideExperimentSupplemental : TAGPBGeneratedMessage   // instance size 8, class @0x100426738
@property (@dynamic, nonatomic) BOOL hasExperimentKey;
@property (retain, @dynamic, nonatomic) NSString *experimentKey;
@property (@dynamic, nonatomic) BOOL hasEnabled;
@property (@dynamic, nonatomic) BOOL enabled;
@property (@dynamic, nonatomic) BOOL hasInclusionProbability;
@property (@dynamic, nonatomic) double inclusionProbability;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *combinationArray;
+ (id)descriptor;                                                                          // IMP 0x10014c6c8
@end

@interface TAGPProperty : TAGPBGeneratedMessage   // instance size 8, class @0x100426468
@property (@dynamic, nonatomic) BOOL hasKey;
@property (@dynamic, nonatomic) int key;
@property (@dynamic, nonatomic) BOOL hasValue;
@property (@dynamic, nonatomic) int value;
+ (id)descriptor;                                                                          // IMP 0x10014c0a4
@end

@interface TAGPResource : TAGPBGeneratedMessage   // instance size 8, class @0x1004265f8
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *supplementalArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *keyArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *valueArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *propertyArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *macroArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *tagArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *predicateArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *ruleArray;
@property (@dynamic, nonatomic) BOOL hasPreviewAuthCode;
@property (retain, @dynamic, nonatomic) NSString *previewAuthCode;
@property (@dynamic, nonatomic) BOOL hasMalwareScanAuthCode;
@property (retain, @dynamic, nonatomic) NSString *malwareScanAuthCode;
@property (@dynamic, nonatomic) BOOL hasTemplateVersionSet;
@property (retain, @dynamic, nonatomic) NSString *templateVersionSet;
@property (@dynamic, nonatomic) BOOL hasVersion;
@property (retain, @dynamic, nonatomic) NSString *version;
@property (@dynamic, nonatomic) BOOL hasLiveJsCacheOption;
@property (retain, @dynamic, nonatomic) TAGPCacheOption *liveJsCacheOption;
@property (@dynamic, nonatomic) BOOL hasReportingSampleRate;
@property (@dynamic, nonatomic) float reportingSampleRate;
@property (@dynamic, nonatomic) BOOL hasObsoleteEnableAutoEventTracking;
@property (@dynamic, nonatomic) BOOL obsoleteEnableAutoEventTracking;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *usageContextArray;
@property (@dynamic, nonatomic) BOOL hasResourceFormatVersion;
@property (@dynamic, nonatomic) int resourceFormatVersion;
+ (id)descriptor;                                                                          // IMP 0x10014c3ec
@end

@interface TAGPResourceStateEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x1004263a0
+ (id)enumDescriptor;                                                                      // IMP 0x10014bedc
@end

@interface TAGPResourceTypeEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100426350
+ (id)enumDescriptor;                                                                      // IMP 0x10014be6c
@end

@interface TAGPResourceWithMetadata : TAGPBGeneratedMessage   // instance size 8, class @0x100426878
@property (@dynamic, nonatomic) BOOL hasTimeStamp;
@property (@dynamic, nonatomic) long long timeStamp;
@property (@dynamic, nonatomic) BOOL hasResource;
@property (retain, @dynamic, nonatomic) TAGPResource *resource;
@property (@dynamic, nonatomic) BOOL hasSupplementedResource;
@property (retain, @dynamic, nonatomic) TAGPSupplementedResource *supplementedResource;
+ (id)descriptor;                                                                          // IMP 0x10014ca10
@end

@interface TAGPResourcewithmetadataRoot : TAGPBRootObject   // instance size 8, class @0x100426850
+ (id)extensionRegistry;                                                                   // IMP 0x10014c8e4
+ (void)load;                                                                              // IMP 0x10014c9a4
@end

@interface TAGPRule : TAGPBGeneratedMessage   // instance size 8, class @0x100426508
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *positivePredicateArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *negativePredicateArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *addTagArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *removeTagArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *addTagRuleNameArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *removeTagRuleNameArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *addMacroArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *removeMacroArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *addMacroRuleNameArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *removeMacroRuleNameArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *addTagRuleTriggerIdArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *removeTagRuleTriggerIdArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *addMacroRuleTriggerIdArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *removeMacroRuleTriggerIdArray;
+ (id)descriptor;                                                                          // IMP 0x10014c20c
@end

@interface TAGPServingRoot : TAGPBRootObject   // instance size 8, class @0x100426300
+ (id)extensionRegistry;                                                                   // IMP 0x10014bc98
+ (void)load;                                                                              // IMP 0x10014bdf0
@end

@interface TAGPServingValue : TAGPBGeneratedMessage   // instance size 8, class @0x100426418
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *listItemArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *mapKeyArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *mapValueArray;
@property (@dynamic, nonatomic) BOOL hasMacroReference;
@property (@dynamic, nonatomic) int macroReference;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *templateTokenArray;
@property (@dynamic, nonatomic) BOOL hasMacroNameReference;
@property (@dynamic, nonatomic) int macroNameReference;
@property (@dynamic, nonatomic) BOOL hasTagReference;
@property (@dynamic, nonatomic) int tagReference;
+ (id)descriptor;                                                                          // IMP 0x10014bff0
@end

@interface TAGPSupplemental : TAGPBGeneratedMessage   // instance size 8, class @0x100426788
@property (@dynamic, nonatomic) BOOL hasName;
@property (retain, @dynamic, nonatomic) NSString *name;
@property (@dynamic, nonatomic) BOOL hasValue;
@property (retain, @dynamic, nonatomic) TAGPValue *value;
@property (@dynamic, nonatomic) BOOL hasExperimentSupplemental;
@property (retain, @dynamic, nonatomic) TAGPGaExperimentSupplemental *experimentSupplemental;
@property (@dynamic, nonatomic) BOOL hasServerSideExperimentSupplemental;
@property (retain, @dynamic, nonatomic) TAGPGaServerSideExperimentSupplemental *serverSideExperimentSupplemental;
+ (id)descriptor;                                                                          // IMP 0x10014c77c
@end

@interface TAGPSupplementedResource : TAGPBGeneratedMessage   // instance size 8, class @0x1004267d8
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *supplementalArray;
@property (@dynamic, nonatomic) BOOL hasResource;
@property (retain, @dynamic, nonatomic) TAGPResource *resource;
@property (@dynamic, nonatomic) BOOL hasFingerprint;
@property (retain, @dynamic, nonatomic) NSString *fingerprint;
+ (id)descriptor;                                                                          // IMP 0x10014c830
@end

@interface TAGPTypeSystemRoot : TAGPBRootObject   // instance size 8, class @0x1004261c0
+ (id)extensionRegistry;                                                                   // IMP 0x10014b9fc
+ (void)load;                                                                              // IMP 0x10014ba88
@end

@interface TAGPValue : TAGPBGeneratedMessage   // instance size 8, class @0x1004261e8
@property (@dynamic, nonatomic) BOOL hasType;
@property (@dynamic, nonatomic) long long type;
@property (@dynamic, nonatomic) BOOL hasString;
@property (retain, @dynamic, nonatomic) NSString *string;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *listItemArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *mapKeyArray;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *mapValueArray;
@property (@dynamic, nonatomic) BOOL hasMacroReference;
@property (retain, @dynamic, nonatomic) NSString *macroReference;
@property (@dynamic, nonatomic) BOOL hasFunctionId;
@property (retain, @dynamic, nonatomic) NSString *functionId;
@property (@dynamic, nonatomic) BOOL hasInteger;
@property (@dynamic, nonatomic) long long integer;
@property (@dynamic, nonatomic) BOOL hasBoolean;
@property (@dynamic, nonatomic) BOOL boolean;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *templateTokenArray;
@property (@dynamic, nonatomic) BOOL hasTagReference;
@property (retain, @dynamic, nonatomic) NSString *tagReference;
@property (retain, @dynamic, nonatomic) TAGPBMutableArray *escapingArray;
@property (@dynamic, nonatomic) BOOL hasContainsReferences;
@property (@dynamic, nonatomic) BOOL containsReferences;
+ (id)descriptor;                                                                          // IMP 0x10014baf4
@end

@interface TAGPValueAndStatic : TAGObjectAndStatic   // instance size 24, class @0x100427408
@property (readonly, retain, nonatomic) TAGPValue *value;
+ (id)valueWithValue:(id)arg1 isStatic:(BOOL)arg2;                                         // IMP 0x1001629ac
- (id)initWithValue:(id)arg1 isStatic:(BOOL)arg2;                                          // IMP 0x100162960
- (id)value;                                                                               // IMP 0x10016299c
@end

@interface TAGPValue_EscapingEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x1004262b0
+ (id)enumDescriptor;                                                                      // IMP 0x10014bc38
@end

@interface TAGPValue_TypeEnumDescriptor : TAGPBGeneratedEnumDescriptor   // instance size 8, class @0x100426260
+ (id)enumDescriptor;                                                                      // IMP 0x10014bbc8
@end

@interface TAGPlatform : TAGFunctionCallImplementation   // instance size 8, class @0x1004281c8
+ (id)functionId;                                                                          // IMP 0x100177078
- (id)init;                                                                                // IMP 0x1001770a4
- (BOOL)isCacheable;                                                                       // IMP 0x100177154
- (id)evaluate:(id)arg1;                                                                   // IMP 0x10017715c
@end

@interface TAGPredicate : TAGFunctionCallImplementation   // instance size 8, class @0x100428678
+ (id)arg0Key;                                                                             // IMP 0x100179310
+ (id)arg1Key;                                                                             // IMP 0x10017933c
- (id)initWithFunctionId:(id)arg1;                                                         // IMP 0x100178ee8
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100178fc4
- (BOOL)isCacheable;                                                                       // IMP 0x1001792dc
- (BOOL)evaluateNoDefaultValues:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                // IMP 0x1001792e4
@end

@interface TAGPreviewManager : NSObject   // instance size 32, class @0x100426c88
{
    long long _previewMode;                  // +0x8 (8 bytes)  q
    NSString *_ctfeUrlPath;                  // +0x10 (8 bytes)  @"NSString"
    NSString *_containerId;                  // +0x18 (8 bytes)  @"NSString"
}
@property () long long previewMode;  // ivar: _previewMode
@property (retain) NSString *ctfeUrlPath;  // ivar: _ctfeUrlPath
@property (retain) NSString *containerId;  // ivar: _containerId
+ (id)instance;                                                                            // IMP 0x100154fc4
- (id)init;                                                                                // IMP 0x10015481c
- (BOOL)generatePreviewDataForUrl:(id)arg1;                                                // IMP 0x10015490c
- (BOOL)isPreviewingContainer:(id)arg1;                                                    // IMP 0x100154da4
- (void)clear;                                                                             // IMP 0x100154e68
- (id)containerIdForQuery:(id)arg1;                                                        // IMP 0x100154ec4
- (void).cxx_destruct;                                                                     // IMP 0x10015504c
- (long long)previewMode;                                                                  // IMP 0x100154ff4
- (void)setPreviewMode:(long long)arg1;                                                    // IMP 0x100155004
- (id)ctfeUrlPath;                                                                         // IMP 0x100155014
- (void)setCtfeUrlPath:(id)arg1;                                                           // IMP 0x100155024
- (id)containerId;                                                                         // IMP 0x100155030
- (void)setContainerId:(id)arg1;                                                           // IMP 0x100155040
@end

@interface TAGPropertyListUtil : NSObject   // instance size 8, class @0x1004274a8
+ (id)readPropertyList:(id)arg1;                                                           // IMP 0x100162af0
+ (BOOL)removePropertyList:(id)arg1;                                                       // IMP 0x100162d14
+ (void)writePropertyListAsync:(id)arg1 withData:(id)arg2;                                 // IMP 0x100162e90
+ (BOOL)writePropertyList:(id)arg1 withData:(id)arg2;                                      // IMP 0x100163044
+ (id)plistFilePath:(id)arg1;                                                              // IMP 0x1001631f8
@end

@interface TAGRandom : TAGFunctionCallImplementation   // instance size 8, class @0x100428218
+ (id)functionId;                                                                          // IMP 0x100177194
- (id)init;                                                                                // IMP 0x1001771c0
- (BOOL)isCacheable;                                                                       // IMP 0x100177270
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100177278
@end

@interface TAGRateLimiter : NSObject   // instance size 40, class @0x100424690
{
    double _secondsPerToken;                 // +0x8 (8 bytes)  d
    double _maxTokens;                       // +0x10 (8 bytes)  d
    double _tokens;                          // +0x18 (8 bytes)  d
    double _lastTrackTime;                   // +0x20 (8 bytes)  d
}
@property (nonatomic) double secondsPerToken;  // ivar: _secondsPerToken
@property (nonatomic) double maxTokens;  // ivar: _maxTokens
@property (nonatomic) double tokens;  // ivar: _tokens
@property (nonatomic) double lastTrackTime;  // ivar: _lastTrackTime
+ (id)rateLimiterWithMaxTokens:(double)arg1 secondsPerToken:(double)arg2;                  // IMP 0x100114874
- (BOOL)tokenAvailable;                                                                    // IMP 0x100114904
- (double)secondsPerToken;                                                                 // IMP 0x100114b50
- (void)setSecondsPerToken:(double)arg1;                                                   // IMP 0x100114b60
- (double)maxTokens;                                                                       // IMP 0x100114b70
- (void)setMaxTokens:(double)arg1;                                                         // IMP 0x100114b80
- (double)tokens;                                                                          // IMP 0x100114b90
- (void)setTokens:(double)arg1;                                                            // IMP 0x100114ba0
- (double)lastTrackTime;                                                                   // IMP 0x100114bb0
- (void)setLastTrackTime:(double)arg1;                                                     // IMP 0x100114bc0
@end

@interface TAGRegex : TAGStringPredicate   // instance size 8, class @0x1004286c8
+ (id)functionId;                                                                          // IMP 0x100179368
+ (id)ignoreCaseKey;                                                                       // IMP 0x100179394
- (id)init;                                                                                // IMP 0x1001793c0
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x100179404
@end

@interface TAGRegexGroup : TAGFunctionCallImplementation   // instance size 8, class @0x100428268
+ (id)functionId;                                                                          // IMP 0x100177630
+ (id)toMatchKey;                                                                          // IMP 0x10017765c
+ (id)regexKey;                                                                            // IMP 0x100177688
+ (id)ignoreCaseKey;                                                                       // IMP 0x1001776b4
+ (id)groupKey;                                                                            // IMP 0x1001776e0
- (id)init;                                                                                // IMP 0x10017770c
- (BOOL)isCacheable;                                                                       // IMP 0x1001777d0
- (id)evaluate:(id)arg1;                                                                   // IMP 0x1001777d8
@end

@interface TAGResolution : TAGFunctionCallImplementation   // instance size 8, class @0x1004282b8
+ (id)functionId;                                                                          // IMP 0x100177e20
- (id)init;                                                                                // IMP 0x100177e4c
- (BOOL)isCacheable;                                                                       // IMP 0x100177efc
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100177f04
@end

@interface TAGResourceLoader : NSObject <NSURLConnectionDataDelegate>   // instance size 80, class @0x100426cd8
{
    id<TAGLoadCallback> _callback;           // +0x8 (8 bytes)  @"<TAGLoadCallback>"
    NSString *_ctfeServerAddress;            // +0x10 (8 bytes)  @"NSString"
    NSString *_ctfeUrlPathAndQuery;          // +0x18 (8 bytes)  @"NSString"
    NSString *_previousVersion;              // +0x20 (8 bytes)  @"NSString"
    NSURLConnection *_connection;            // +0x28 (8 bytes)  @"NSURLConnection"
    NSMutableData *_responseData;            // +0x30 (8 bytes)  @"NSMutableData"
    long long _statusCode;                   // +0x38 (8 bytes)  q
    NSString *_containerId;                  // +0x40 (8 bytes)  @"NSString"
    NSString *_defaultCtfeUrlPathAndQuery;   // +0x48 (8 bytes)  @"NSString"
}
@property (readonly, copy, nonatomic) NSString *ctfeUrl;
@property (retain, nonatomic) id<TAGLoadCallback> callback;  // ivar: _callback
@property (copy) NSString *ctfeServerAddress;  // ivar: _ctfeServerAddress
@property (copy, nonatomic) NSString *ctfeUrlPathAndQuery;  // ivar: _ctfeUrlPathAndQuery
@property (copy) NSString *previousVersion;  // ivar: _previousVersion
@property (retain, nonatomic) NSURLConnection *connection;  // ivar: _connection
@property (retain, nonatomic) NSMutableData *responseData;  // ivar: _responseData
@property (nonatomic) long long statusCode;  // ivar: _statusCode
@property (copy, nonatomic) NSString *containerId;  // ivar: _containerId
@property (copy, nonatomic) NSString *defaultCtfeUrlPathAndQuery;  // ivar: _defaultCtfeUrlPathAndQuery
+ (id)sdkVersion;                                                                          // IMP 0x10015508c
- (id)initWithContainerId:(id)arg1;                                                        // IMP 0x1001550ec
- (void)connection:(id)arg1 didReceiveResponse:(id)arg2;                                   // IMP 0x100155230
- (void)connection:(id)arg1 didReceiveData:(id)arg2;                                       // IMP 0x1001552f8
- (void)connection:(id)arg1 didFailWithError:(id)arg2;                                     // IMP 0x10015538c
- (void)connectionDidFinishLoading:(id)arg1;                                               // IMP 0x100155534
- (void)loadResourceAsync;                                                                 // IMP 0x100155c3c
- (id)ctfeUrl;                                                                             // IMP 0x100155e24
- (void)setCtfeUrlPathAndQuery:(id)arg1;                                                   // IMP 0x1001560f4
- (void).cxx_destruct;                                                                     // IMP 0x1001562e4
- (id)callback;                                                                            // IMP 0x100156190
- (void)setCallback:(id)arg1;                                                              // IMP 0x1001561a0
- (id)ctfeServerAddress;                                                                   // IMP 0x1001561b4
- (void)setCtfeServerAddress:(id)arg1;                                                     // IMP 0x1001561c4
- (id)ctfeUrlPathAndQuery;                                                                 // IMP 0x1001561d0
- (id)previousVersion;                                                                     // IMP 0x1001561e0
- (void)setPreviousVersion:(id)arg1;                                                       // IMP 0x1001561f0
- (id)connection;                                                                          // IMP 0x1001561fc
- (void)setConnection:(id)arg1;                                                            // IMP 0x10015620c
- (id)responseData;                                                                        // IMP 0x100156244
- (void)setResponseData:(id)arg1;                                                          // IMP 0x100156254
- (long long)statusCode;                                                                   // IMP 0x10015628c
- (void)setStatusCode:(long long)arg1;                                                     // IMP 0x10015629c
- (id)containerId;                                                                         // IMP 0x1001562ac
- (void)setContainerId:(id)arg1;                                                           // IMP 0x1001562bc
- (id)defaultCtfeUrlPathAndQuery;                                                          // IMP 0x1001562c8
- (void)setDefaultCtfeUrlPathAndQuery:(id)arg1;                                            // IMP 0x1001562d8
@end

@interface TAGResourceLoaderScheduler : NSObject   // instance size 56, class @0x100426d28
{
    NSString *_containerId;                  // +0x8 (8 bytes)  @"NSString"
    id<TAGLoadCallback> _loadCallback;       // +0x10 (8 bytes)  @"<TAGLoadCallback>"
    NSString *_ctfeServerAddress;            // +0x18 (8 bytes)  @"NSString"
    NSString *_ctfeUrlPathAndQuery;          // +0x20 (8 bytes)  @"NSString"
    NSString *_previousVersion;              // +0x28 (8 bytes)  @"NSString"
    NSTimer *_timer;                         // +0x30 (8 bytes)  @"NSTimer"
}
@property (readonly, copy) NSString *containerId;  // ivar: _containerId
@property (retain) id<TAGLoadCallback> loadCallback;  // ivar: _loadCallback
@property (copy) NSString *ctfeServerAddress;  // ivar: _ctfeServerAddress
@property (copy) NSString *ctfeUrlPathAndQuery;  // ivar: _ctfeUrlPathAndQuery
@property (copy) NSString *previousVersion;  // ivar: _previousVersion
@property (retain) NSTimer *timer;  // ivar: _timer
- (id)initWithContainerId:(id)arg1;                                                        // IMP 0x10015639c
- (void)close;                                                                             // IMP 0x100156440
- (void)loadAfterDelay:(double)arg1 withPreviousVersion:(id)arg2;                          // IMP 0x1001564b4
- (void)requestResource:(id)arg1;                                                          // IMP 0x10015662c
- (void)scheduleTimerWithDelay:(double)arg1;                                               // IMP 0x100156a00
- (void)cancelTimer;                                                                       // IMP 0x100156a94
- (void).cxx_destruct;                                                                     // IMP 0x100156b8c
- (id)containerId;                                                                         // IMP 0x100156af0
- (id)loadCallback;                                                                        // IMP 0x100156b00
- (void)setLoadCallback:(id)arg1;                                                          // IMP 0x100156b10
- (id)ctfeServerAddress;                                                                   // IMP 0x100156b1c
- (void)setCtfeServerAddress:(id)arg1;                                                     // IMP 0x100156b2c
- (id)ctfeUrlPathAndQuery;                                                                 // IMP 0x100156b38
- (void)setCtfeUrlPathAndQuery:(id)arg1;                                                   // IMP 0x100156b48
- (id)previousVersion;                                                                     // IMP 0x100156b54
- (void)setPreviousVersion:(id)arg1;                                                       // IMP 0x100156b64
- (id)timer;                                                                               // IMP 0x100156b70
- (void)setTimer:(id)arg1;                                                                 // IMP 0x100156b80
@end

@interface TAGResourceStorageImpl : NSObject <TAGResourceStorage>   // instance size 24, class @0x100426d78
{
    id<TAGLoadCallback> _loadCallback;       // +0x8 (8 bytes)  @"<TAGLoadCallback>"
    NSString *_containerId;                  // +0x10 (8 bytes)  @"NSString"
}
@property (retain, nonatomic) id<TAGLoadCallback> loadCallback;  // ivar: _loadCallback
@property (retain, nonatomic) NSString *containerId;  // ivar: _containerId
- (id)initWithContainerId:(id)arg1;                                                        // IMP 0x100156c1c
- (void)loadResourceFromDiskInBackground;                                                  // IMP 0x100156cc0
- (id)loadResourceFromDisk;                                                                // IMP 0x100156f08
- (void)saveResourceToDiskInBackground:(id)arg1;                                           // IMP 0x100157354
- (void)saveResourceToDiskInBackground:(id)arg1 resultBlock:(id /*block*/)arg2;            // IMP 0x100157378
- (id)loadResourceFromContainerFile:(id)arg1;                                              // IMP 0x100157518
- (id)loadExpandedResourceFromJsonFile:(id)arg1;                                           // IMP 0x1001578ec
- (id)loadExpandedResourceFromPlistFile:(id)arg1;                                          // IMP 0x100157c58
- (BOOL)saveResourceToDisk:(id)arg1;                                                       // IMP 0x100157f2c
- (id)resourceFilename;                                                                    // IMP 0x10015813c
- (id)dataPath;                                                                            // IMP 0x100158238
- (id)mainBundle;                                                                          // IMP 0x100158534
- (void).cxx_destruct;                                                                     // IMP 0x1001585b8
- (id)loadCallback;                                                                        // IMP 0x10015854c
- (void)setLoadCallback:(id)arg1;                                                          // IMP 0x10015855c
- (id)containerId;                                                                         // IMP 0x100158570
- (void)setContainerId:(id)arg1;                                                           // IMP 0x100158580
@end

@interface TAGResourceUtil : NSObject   // instance size 8, class @0x1004276d8
+ (id)expandResource:(id)arg1;                                                             // IMP 0x100165610
+ (id)valueBuilderBasedOnValue:(id)arg1;                                                   // IMP 0x100165fdc
+ (id)expandIthValue:(unsigned long long)arg1 resource:(id)arg2 expandedValues:(id)arg3 pendingExpansions:(id)arg4; // IMP 0x100166110
+ (id)servingValue:(id)arg1;                                                               // IMP 0x1001670b4
+ (void)logAndThrow:(id)arg1;                                                              // IMP 0x1001671d8
+ (id)objectWithTAGPBArrayBoundsCheck:(id)arg1 index:(unsigned long long)arg2 listName:(id)arg3; // IMP 0x10016725c
+ (id)objectWithNSArrayBoundsCheck:(id)arg1 index:(unsigned long long)arg2 listName:(id)arg3; // IMP 0x100167380
+ (id)expandFunctionCall:(id)arg1 resource:(id)arg2 expandedValues:(id)arg3 index:(unsigned long long)arg4; // IMP 0x1001674a4
+ (id)expandRule:(id)arg1 tags:(id)arg2 macros:(id)arg3 predicates:(id)arg4;               // IMP 0x100167858
@end

@interface TAGRuntime : NSObject   // instance size 88, class @0x100427868
{
    TAGExpandedResource *_resource;          // +0x8 (8 bytes)  @"TAGExpandedResource"
    NSString *_currentEventName;             // +0x10 (8 bytes)  @"NSString"
    NSMutableDictionary *_trackingTagMap;    // +0x18 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_predicateMap;      // +0x20 (8 bytes)  @"NSMutableDictionary"
    NSMutableDictionary *_macroMap;          // +0x28 (8 bytes)  @"NSMutableDictionary"
    NSCache *_functionCallCache;             // +0x30 (8 bytes)  @"NSCache"
    NSCache *_macroEvaluationCache;          // +0x38 (8 bytes)  @"NSCache"
    NSSet *_rules;                           // +0x40 (8 bytes)  @"NSSet"
    NSMutableDictionary *_macroLookup;       // +0x48 (8 bytes)  @"NSMutableDictionary"
    TAGDataLayer *_dataLayer;                // +0x50 (8 bytes)  @"TAGDataLayer"
}
@property (readonly, nonatomic) TAGExpandedResource *resource;  // ivar: _resource
@property (copy) NSString *currentEventName;  // ivar: _currentEventName
@property (readonly, retain, nonatomic) NSMutableDictionary *trackingTagMap;  // ivar: _trackingTagMap
@property (readonly, retain, nonatomic) NSMutableDictionary *predicateMap;  // ivar: _predicateMap
@property (readonly, retain, nonatomic) NSMutableDictionary *macroMap;  // ivar: _macroMap
@property (readonly, retain, nonatomic) NSCache *functionCallCache;  // ivar: _functionCallCache
@property (readonly, retain, nonatomic) NSCache *macroEvaluationCache;  // ivar: _macroEvaluationCache
@property (readonly, retain, nonatomic) NSSet *rules;  // ivar: _rules
@property (readonly, retain, nonatomic) NSMutableDictionary *macroLookup;  // ivar: _macroLookup
@property (readonly, retain, nonatomic) TAGDataLayer *dataLayer;  // ivar: _dataLayer
+ (void)initialize;                                                                        // IMP 0x100168a4c
+ (id)runtimeWithResource:(id)arg1 dataLayer:(id)arg2 functionCallMacroEvaluator:(id)arg3 functionCallTagEvaluator:(id)arg4; // IMP 0x100168ae0
+ (id)addOrGetMacroInfoForKey:(id)arg1 macroLookup:(id)arg2;                               // IMP 0x10016ae68
+ (id)functionNameFromFunctionCall:(id)arg1;                                               // IMP 0x10016af50
+ (void)addFunctionImplToDict:(id)arg1 functionCallImpl:(id)arg2;                          // IMP 0x10016b054
- (id)initWithResource:(id)arg1 dataLayer:(id)arg2 functionCallMacroEvaluator:(id)arg3 functionCallTagEvaluator:(id)arg4; // IMP 0x100168bd0
- (void)setSupplementals:(id)arg1;                                                         // IMP 0x10016a3e0
- (void)evaluateTags:(id)arg1;                                                             // IMP 0x10016a5fc
- (id)calculateMacrosToRunForRules:(id)arg1 macroName:(id)arg2 addMacros:(id)arg3 removeMacros:(id)arg4 pendingMacroExpansions:(id)arg5; // IMP 0x10016a8f0
- (id)calculateTagsToRunForRules:(id)arg1;                                                 // IMP 0x10016aa20
- (id)calculateGenericToRunForRules:(id)arg1 pendingMacroExpansions:(id)arg2 populator:(id)arg3; // IMP 0x10016ab1c
- (void)addMacro:(id)arg1;                                                                 // IMP 0x10016b274
- (void)addTrackingTag:(id)arg1;                                                           // IMP 0x10016b318
- (void)addPredicate:(id)arg1;                                                             // IMP 0x10016b3bc
- (id)evaluatePredicate:(id)arg1 pendingMacroExpansions:(id)arg2;                          // IMP 0x10016b460
- (id)evaluatePredicatesInRule:(id)arg1 pendingMacroExpansions:(id)arg2;                   // IMP 0x10016b610
- (id)evaluateMacroReference:(id)arg1;                                                     // IMP 0x10016bae0
- (id)evaluateMacroReferenceWithCycleDetection:(id)arg1 pendingMacroExpansions:(id)arg2;   // IMP 0x10016bb94
- (void)pushUnevaluatedValueToDataLayer:(id)arg1 pendingMacroExpansions:(id)arg2;          // IMP 0x10016c414
- (id)expandListValue:(id)arg1 pendingMacroExpansions:(id)arg2;                            // IMP 0x10016c804
- (id)expandMapValue:(id)arg1 pendingMacroExpansions:(id)arg2;                             // IMP 0x10016cb88
- (id)expandMacroReferenceValue:(id)arg1 pendingMacroExpansions:(id)arg2;                  // IMP 0x10016d150
- (id)expandTemplateValue:(id)arg1 pendingMacroExpansions:(id)arg2;                        // IMP 0x10016d464
- (id)expandMacrosForValue:(id)arg1 pendingMacroExpansions:(id)arg2;                       // IMP 0x10016d7e8
- (id)executeFunction:(id)arg1 implementationMap:(id)arg2 pendingMacroExpansions:(id)arg3; // IMP 0x10016da14
- (void).cxx_destruct;                                                                     // IMP 0x10016e560
- (id)resource;                                                                            // IMP 0x10016e4b4
- (id)currentEventName;                                                                    // IMP 0x10016e4c4
- (void)setCurrentEventName:(id)arg1;                                                      // IMP 0x10016e4d4
- (id)trackingTagMap;                                                                      // IMP 0x10016e4e0
- (id)predicateMap;                                                                        // IMP 0x10016e4f0
- (id)macroMap;                                                                            // IMP 0x10016e500
- (id)functionCallCache;                                                                   // IMP 0x10016e510
- (id)macroEvaluationCache;                                                                // IMP 0x10016e520
- (id)rules;                                                                               // IMP 0x10016e530
- (id)macroLookup;                                                                         // IMP 0x10016e540
- (id)dataLayer;                                                                           // IMP 0x10016e550
@end

@interface TAGRuntimeVersion : TAGFunctionCallImplementation   // instance size 8, class @0x100428308
+ (id)functionId;                                                                          // IMP 0x100178074
+ (long long)versionNumber;                                                                // IMP 0x1001780a0
- (id)init;                                                                                // IMP 0x1001780ac
- (BOOL)isCacheable;                                                                       // IMP 0x10017815c
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100178164
@end

@interface TAGSdkVersion : TAGFunctionCallImplementation   // instance size 8, class @0x100428358
+ (id)functionId;                                                                          // IMP 0x1001781fc
- (id)init;                                                                                // IMP 0x100178228
- (BOOL)isCacheable;                                                                       // IMP 0x1001782d8
- (id)evaluate:(id)arg1;                                                                   // IMP 0x1001782e0
@end

@interface TAGSerialization : NSObject   // instance size 8, class @0x1004278b8
+ (void)initialize;                                                                        // IMP 0x10016e640
+ (id)expandResourceFromData:(id)arg1;                                                     // IMP 0x10016e6b0
+ (id)deserializedObjectToValue:(id)arg1;                                                  // IMP 0x10016e750
+ (id)expandedResourceFromDeserializedObject:(id)arg1;                                     // IMP 0x10016e7e0
+ (id)deserializedObjectToNSObject:(id)arg1;                                               // IMP 0x10016ec38
@end

@interface TAGSetAndStatic : TAGObjectAndStatic   // instance size 24, class @0x100427458
+ (id)setWithSet:(id)arg1 isStatic:(BOOL)arg2;                                             // IMP 0x100162a74
- (id)initWithSet:(id)arg1 isStatic:(BOOL)arg2;                                            // IMP 0x100162a28
- (id)set;                                                                                 // IMP 0x100162a64
@end

@interface TAGSha1HashAlgorithm : NSObject <TAGHashAlgorithm>   // instance size 8, class @0x100427f20
- (id)hashData:(id)arg1;                                                                   // IMP 0x100174dfc
@end

@interface TAGSha256HashAlgorithm : NSObject <TAGHashAlgorithm>   // instance size 8, class @0x100427f70
- (id)hashData:(id)arg1;                                                                   // IMP 0x100174ec0
@end

@interface TAGSha384HashAlgorithm : NSObject <TAGHashAlgorithm>   // instance size 8, class @0x100427fc0
- (id)hashData:(id)arg1;                                                                   // IMP 0x100174f84
@end

@interface TAGSha512HashAlgorithm : NSObject <TAGHashAlgorithm>   // instance size 8, class @0x100428010
- (id)hashData:(id)arg1;                                                                   // IMP 0x100175048
@end

@interface TAGStartsWith : TAGStringPredicate   // instance size 8, class @0x100428718
+ (id)functionId;                                                                          // IMP 0x1001795e0
- (id)init;                                                                                // IMP 0x10017960c
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x100179650
@end

@interface TAGStringPredicate : TAGPredicate   // instance size 8, class @0x100428768
- (id)initWithFunctionId:(id)arg1;                                                         // IMP 0x1001796f4
- (BOOL)evaluateNoDefaultValues:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                // IMP 0x100179730
- (BOOL)evaluateWithArg0:(id)arg1 arg1:(id)arg2 parameters:(id)arg3;                       // IMP 0x1001798f4
@end

@interface TAGTime : TAGFunctionCallImplementation   // instance size 8, class @0x1004283a8
+ (id)functionId;                                                                          // IMP 0x1001783ac
- (id)init;                                                                                // IMP 0x1001783d8
- (BOOL)isCacheable;                                                                       // IMP 0x100178488
- (id)evaluate:(id)arg1;                                                                   // IMP 0x100178490
@end

@interface TAGTrackingTag : TAGFunctionCallImplementation   // instance size 8, class @0x100428880
- (BOOL)isCacheable;                                                                       // IMP 0x10017ae5c
- (id)evaluate:(id)arg1;                                                                   // IMP 0x10017ae64
- (void)evaluateTrackingTag:(id)arg1;                                                      // IMP 0x10017aee8
@end

@interface TAGTypeOrFailure : NSObject   // instance size 24, class @0x100426dc8
{
    id _type;                                // +0x8 (8 bytes)  @
    long long _failure;                      // +0x10 (8 bytes)  q
}
@property (readonly, nonatomic) id type;  // ivar: _type
@property (readonly, nonatomic) long long failure;  // ivar: _failure
- (id)initWithType:(id)arg1;                                                               // IMP 0x1001585f8
- (id)initWithFailure:(long long)arg1;                                                     // IMP 0x100158694
- (void).cxx_destruct;                                                                     // IMP 0x10015870c
- (id)type;                                                                                // IMP 0x1001586ec
- (long long)failure;                                                                      // IMP 0x1001586fc
@end

@interface TAGTypes : NSObject   // instance size 8, class @0x100427958
+ (void)initialize;                                                                        // IMP 0x10016f37c
+ (id)defaultObject;                                                                       // IMP 0x10016f514
+ (id)defaultInt64;                                                                        // IMP 0x10016f51c
+ (id)defaultDouble;                                                                       // IMP 0x10016f52c
+ (id)defaultNumber;                                                                       // IMP 0x10016f53c
+ (id)defaultString;                                                                       // IMP 0x10016f54c
+ (id)defaultBoolean;                                                                      // IMP 0x10016f55c
+ (id)defaultList;                                                                         // IMP 0x10016f56c
+ (id)defaultMap;                                                                          // IMP 0x10016f57c
+ (id)defaultValue;                                                                        // IMP 0x10016f58c
+ (id)objectToString:(id)arg1;                                                             // IMP 0x10016f59c
+ (id)objectToNumber:(id)arg1;                                                             // IMP 0x10016fc40
+ (id)objectToInt64:(id)arg1;                                                              // IMP 0x10016fdec
+ (id)objectToDouble:(id)arg1;                                                             // IMP 0x10016ff14
+ (id)objectToBoolean:(id)arg1;                                                            // IMP 0x100170038
+ (id)valueToString:(id)arg1;                                                              // IMP 0x100170140
+ (id)valueToNumber:(id)arg1;                                                              // IMP 0x1001701c4
+ (id)valueToInt64:(id)arg1;                                                               // IMP 0x100170248
+ (id)valueToDouble:(id)arg1;                                                              // IMP 0x1001702cc
+ (id)valueToBoolean:(id)arg1;                                                             // IMP 0x100170350
+ (id)objectToValue:(id)arg1;                                                              // IMP 0x1001703d4
+ (id)functionIdToValue:(id)arg1;                                                          // IMP 0x100170dfc
+ (id)macroReferenceToValue:(id)arg1;                                                      // IMP 0x100170eb4
+ (id)macroReferenceToValue:(id)arg1 escapings:(id)arg2;                                   // IMP 0x100170ee8
+ (id)templateToValue:(id)arg1;                                                            // IMP 0x10017108c
+ (BOOL)isDoubleableNumber:(id)arg1;                                                       // IMP 0x100171258
+ (double)getDouble:(id)arg1;                                                              // IMP 0x1001712fc
+ (BOOL)isInt64ableNumber:(id)arg1;                                                        // IMP 0x1001713bc
+ (long long)getInt64:(id)arg1;                                                            // IMP 0x100171460
+ (id)parseNumber:(id)arg1;                                                                // IMP 0x100171518
+ (id)parseInt64:(id)arg1;                                                                 // IMP 0x100171634
+ (id)parseDouble:(id)arg1;                                                                // IMP 0x1001716f8
+ (id)parseBoolean:(id)arg1;                                                               // IMP 0x1001717b8
+ (id)numberWithString:(id)arg1;                                                           // IMP 0x1001718d4
+ (id)valueToObject:(id)arg1;                                                              // IMP 0x100171a80
@end

@interface TAGUniversalAnalytics : TAGTrackingTag   // instance size 56, class @0x1004288f8
{
    GAILoggerImpl *_logger;                  // +0x8 (8 bytes)  @"GAILoggerImpl"
    TAGDataLayer *_dataLayer;                // +0x10 (8 bytes)  @"TAGDataLayer"
    NSSet *_turnOffAnonymizeIpValues;        // +0x18 (8 bytes)  @"NSSet"
    NSNumberFormatter *_numberFormatter;     // +0x20 (8 bytes)  @"NSNumberFormatter"
    NSDictionary *_defaultTransactionMap;    // +0x28 (8 bytes)  @"NSDictionary"
    NSDictionary *_defaultItemMap;           // +0x30 (8 bytes)  @"NSDictionary"
}
@property (retain, nonatomic) GAILoggerImpl *logger;  // ivar: _logger
@property (retain, nonatomic) TAGDataLayer *dataLayer;  // ivar: _dataLayer
@property (retain, nonatomic) NSSet *turnOffAnonymizeIpValues;  // ivar: _turnOffAnonymizeIpValues
@property (retain, nonatomic) NSNumberFormatter *numberFormatter;  // ivar: _numberFormatter
@property (retain, nonatomic) NSDictionary *defaultTransactionMap;  // ivar: _defaultTransactionMap
@property (retain, nonatomic) NSDictionary *defaultItemMap;  // ivar: _defaultItemMap
+ (id)functionId;                                                                          // IMP 0x10017b038
- (id)initWithDataLayer:(id)arg1;                                                          // IMP 0x10017b064
- (BOOL)checkBooleanPropertyForTag:(id)arg1 key:(id)arg2;                                  // IMP 0x10017b1e8
- (void)evaluateTrackingTag:(id)arg1;                                                      // IMP 0x10017b2f8
- (id)dataLayerString:(id)arg1;                                                            // IMP 0x10017b504
- (id)valueToStringMap:(id)arg1;                                                           // IMP 0x10017b5ec
- (id)gaFieldsWithAnalyticsFields:(id)arg1;                                                // IMP 0x10017b8dc
- (id)openTracker;                                                                         // IMP 0x10017baa8
- (void)closeTracker:(id)arg1;                                                             // IMP 0x10017bb28
- (void)setLoggerIfNecessary;                                                              // IMP 0x10017bbf8
- (id)getArrayOfDictionariesFromObject:(id)arg1;                                           // IMP 0x10017bd64
- (void)addParam:(id)arg1 value:(id)arg2 toParams:(id)arg3;                                // IMP 0x10017bfcc
- (void)sendTransaction:(id)arg1 withTracker:(id)arg2;                                     // IMP 0x10017c070
- (id)transactionFieldsForTag:(id)arg1;                                                    // IMP 0x10017cc74
- (id)transactionItemFieldsForTag:(id)arg1;                                                // IMP 0x10017ce58
- (id)promotionFromDataLayerDictionary:(id)arg1;                                           // IMP 0x10017d03c
- (id)productFromDataLayerDictionary:(id)arg1;                                             // IMP 0x10017d2ec
- (id)actionDataFromDataLayerDictionary:(id)arg1;                                          // IMP 0x10017d880
- (id)NSNumberFromObject:(id)arg1;                                                         // IMP 0x10017ddf4
- (void)sendEnhancedEcommerce:(id)arg1 withTracker:(id)arg2;                               // IMP 0x10017df18
- (void).cxx_destruct;                                                                     // IMP 0x10017ef88
- (id)logger;                                                                              // IMP 0x10017edd8
- (void)setLogger:(id)arg1;                                                                // IMP 0x10017ede8
- (id)dataLayer;                                                                           // IMP 0x10017ee20
- (void)setDataLayer:(id)arg1;                                                             // IMP 0x10017ee30
- (id)turnOffAnonymizeIpValues;                                                            // IMP 0x10017ee68
- (void)setTurnOffAnonymizeIpValues:(id)arg1;                                              // IMP 0x10017ee78
- (id)numberFormatter;                                                                     // IMP 0x10017eeb0
- (void)setNumberFormatter:(id)arg1;                                                       // IMP 0x10017eec0
- (id)defaultTransactionMap;                                                               // IMP 0x10017eef8
- (void)setDefaultTransactionMap:(id)arg1;                                                 // IMP 0x10017ef08
- (id)defaultItemMap;                                                                      // IMP 0x10017ef40
- (void)setDefaultItemMap:(id)arg1;                                                        // IMP 0x10017ef50
@end

@interface TAGValueEscapeUtil : NSObject   // instance size 8, class @0x1004279d0
+ (id)applyEscapings:(id)arg1 toValue:(id)arg2;                                            // IMP 0x10017241c
+ (id)applyEscaping:(long long)arg1 toValue:(id)arg2;                                      // IMP 0x100172538
+ (id)urlEncode:(id)arg1;                                                                  // IMP 0x1001726b4
+ (id)urlDecode:(id)arg1;                                                                  // IMP 0x1001726e4
+ (id)escapeUri:(id)arg1;                                                                  // IMP 0x100172714
+ (BOOL)isValidStringType:(id)arg1;                                                        // IMP 0x100172890
@end

@interface TAGWaitForFresh : NSObject <TAGContainerCallback>   // instance size 24, class @0x100426aa8
{
    double _oldestTimeToBeFresh;             // +0x8 (8 bytes)  d
    TAGContainerOpener *_containerOpener;    // +0x10 (8 bytes)  @"TAGContainerOpener"
}
@property () double oldestTimeToBeFresh;  // ivar: _oldestTimeToBeFresh
@property (retain) TAGContainerOpener *containerOpener;  // ivar: _containerOpener
- (id)initWithContainerOpener:(id)arg1 oldestTimeToBeFresh:(double)arg2;                   // IMP 0x100151bf0
- (void)containerRefreshBegin:(id)arg1 refreshType:(int)arg2;                              // IMP 0x100151cac
- (void)containerRefreshSuccess:(id)arg1 refreshType:(int)arg2;                            // IMP 0x100151cb0
- (void)containerRefreshFailure:(id)arg1 failure:(int)arg2 refreshType:(int)arg3;          // IMP 0x100151d68
- (BOOL)isFresh;                                                                           // IMP 0x100151e08
- (void).cxx_destruct;                                                                     // IMP 0x100151f18
- (double)oldestTimeToBeFresh;                                                             // IMP 0x100151ed4
- (void)setOldestTimeToBeFresh:(double)arg1;                                               // IMP 0x100151ee8
- (id)containerOpener;                                                                     // IMP 0x100151efc
- (void)setContainerOpener:(id)arg1;                                                       // IMP 0x100151f0c
@end

@interface TAGWaitForNonDefaultRefresh : NSObject <TAGContainerCallback>   // instance size 16, class @0x100426a58
{
    TAGContainerOpener *_containerOpener;    // +0x8 (8 bytes)  @"TAGContainerOpener"
}
@property (retain) TAGContainerOpener *containerOpener;  // ivar: _containerOpener
- (id)initWithContainerOpener:(id)arg1;                                                    // IMP 0x1001519e4
- (void)containerRefreshBegin:(id)arg1 refreshType:(int)arg2;                              // IMP 0x100151a88
- (void)containerRefreshSuccess:(id)arg1 refreshType:(int)arg2;                            // IMP 0x100151a8c
- (void)containerRefreshFailure:(id)arg1 failure:(int)arg2 refreshType:(int)arg3;          // IMP 0x100151b20
- (void).cxx_destruct;                                                                     // IMP 0x100151bdc
- (id)containerOpener;                                                                     // IMP 0x100151bc0
- (void)setContainerOpener:(id)arg1;                                                       // IMP 0x100151bd0
@end

@interface UICountingLabel : UILabel   // instance size 176, class @0x100422840
{
    int _method;                             // +0x68 (4 bytes)  i
    float _startingValue;                    // +0x6c (4 bytes)  f
    float _destinationValue;                 // +0x70 (4 bytes)  f
    float _easingRate;                       // +0x74 (4 bytes)  f
    NSString *_format;                       // +0x78 (8 bytes)  @"NSString"
    id /*block*/ _formatBlock;               // +0x80 (8 bytes)  @?
    id /*block*/ _completionBlock;           // +0x88 (8 bytes)  @?
    double _progress;                        // +0x90 (8 bytes)  d
    double _lastUpdate;                      // +0x98 (8 bytes)  d
    double _totalTime;                       // +0xa0 (8 bytes)  d
    UILabelCounter *_counter;                // +0xa8 (8 bytes)  @"UILabelCounter"
}
@property (retain, nonatomic) NSString *format;  // ivar: _format
@property (nonatomic) int method;  // ivar: _method
@property (copy, nonatomic) id /*block*/ formatBlock;  // ivar: _formatBlock
@property (copy, nonatomic) id /*block*/ completionBlock;  // ivar: _completionBlock
@property () float startingValue;  // ivar: _startingValue
@property () float destinationValue;  // ivar: _destinationValue
@property () double progress;  // ivar: _progress
@property () double lastUpdate;  // ivar: _lastUpdate
@property () double totalTime;  // ivar: _totalTime
@property () float easingRate;  // ivar: _easingRate
@property (retain, nonatomic) UILabelCounter *counter;  // ivar: _counter
- (void)countFrom:(float)arg1 to:(float)arg2;                                              // IMP 0x10007cc90
- (void)countFrom:(float)arg1 to:(float)arg2 withDuration:(double)arg3;                    // IMP 0x10007cca4
- (void)updateValue:(id)arg1;                                                              // IMP 0x10007d040
- (void).cxx_destruct;                                                                     // IMP 0x10007d6fc
- (id)format;                                                                              // IMP 0x10007d524
- (void)setFormat:(id)arg1;                                                                // IMP 0x10007d534
- (int)method;                                                                             // IMP 0x10007d56c
- (void)setMethod:(int)arg1;                                                               // IMP 0x10007d57c
- (id /*block*/)formatBlock;                                                               // IMP 0x10007d58c
- (void)setFormatBlock:(id /*block*/)arg1;                                                 // IMP 0x10007d59c
- (id /*block*/)completionBlock;                                                           // IMP 0x10007d5a8
- (void)setCompletionBlock:(id /*block*/)arg1;                                             // IMP 0x10007d5b8
- (float)startingValue;                                                                    // IMP 0x10007d5c4
- (void)setStartingValue:(float)arg1;                                                      // IMP 0x10007d5d8
- (float)destinationValue;                                                                 // IMP 0x10007d5ec
- (void)setDestinationValue:(float)arg1;                                                   // IMP 0x10007d600
- (double)progress;                                                                        // IMP 0x10007d614
- (void)setProgress:(double)arg1;                                                          // IMP 0x10007d628
- (double)lastUpdate;                                                                      // IMP 0x10007d63c
- (void)setLastUpdate:(double)arg1;                                                        // IMP 0x10007d650
- (double)totalTime;                                                                       // IMP 0x10007d664
- (void)setTotalTime:(double)arg1;                                                         // IMP 0x10007d678
- (float)easingRate;                                                                       // IMP 0x10007d68c
- (void)setEasingRate:(float)arg1;                                                         // IMP 0x10007d6a0
- (id)counter;                                                                             // IMP 0x10007d6b4
- (void)setCounter:(id)arg1;                                                               // IMP 0x10007d6c4
@end

@interface UILabelCounter : NSObject   // instance size 12, class @0x1004226b0
{
    float _rate;                             // +0x8 (4 bytes)  f
}
@property () float rate;  // ivar: _rate
- (float)update:(float)arg1;                                                               // IMP 0x10007cb24
- (float)rate;                                                                             // IMP 0x10007cb2c
- (void)setRate:(float)arg1;                                                               // IMP 0x10007cb40
@end

@interface UILabelCounterEaseIn : UILabelCounter   // instance size 12, class @0x100422750
- (float)update:(float)arg1;                                                               // IMP 0x10007cb58
@end

@interface UILabelCounterEaseInOut : UILabelCounter   // instance size 12, class @0x1004227f0
- (float)update:(float)arg1;                                                               // IMP 0x10007cbcc
@end

@interface UILabelCounterEaseOut : UILabelCounter   // instance size 12, class @0x1004227a0
- (float)update:(float)arg1;                                                               // IMP 0x10007cb8c
@end

@interface UILabelCounterLinear : UILabelCounter   // instance size 12, class @0x100422700
- (float)update:(float)arg1;                                                               // IMP 0x10007cb54
@end

@interface ViewWithParalax : UIView   // instance size 104, class @0x100421f58
- (id)initWithFrame:(CGRect)arg1;                                                          // IMP 0x100055d84
- (void)awakeFromNib;                                                                      // IMP 0x100055dc0
- (void)addCustomMotionEffect;                                                             // IMP 0x100055e1c
@end

@interface UIGestureRecognizer (OBDragDrop) <OBDragDropGestureRecognizer>
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) OBOvum *ovum;
@property (nonatomic) id<OBOvumSource> ovumSource;
- (id)ovum;                                                                                // IMP 0x100006ee4
- (void)setOvum:(id)arg1;                                                                  // IMP 0x100006ef0
- (id)ovumSource;                                                                          // IMP 0x100006f10
- (void)setOvumSource:(id)arg1;                                                            // IMP 0x100006f1c
@end

@interface ADButtonWithFont (ImageWithTitle)
+ (id)sharedDiamondImage;                                                                  // IMP 0x100007d48
+ (id)cropDiamondsImage:(id)arg1;                                                          // IMP 0x100007e24
+ (id)sharedCoinsImage;                                                                    // IMP 0x100007ecc
- (void)centerButtonTextWithCoinsImage;                                                    // IMP 0x1000076e8
- (void)centerButtonTextWithDiamondsImage;                                                 // IMP 0x100007914
- (void)centerButtonWithoutImage;                                                          // IMP 0x100007b40
- (void)setFontByDeviceType;                                                               // IMP 0x100007b8c
- (void)setEdgeInsetsWithSpacingTextSpacing:(double)arg1 WithImageSpacing:(double)arg2;    // IMP 0x100007ce0
@end

@interface ADTracker (ADGamePlayTracker)
+ (void)initGamePlayTracker;                                                               // IMP 0x1000260f0
- (void)setBrickCounter:(long long)arg1;                                                   // IMP 0x1000260d0
- (long long)getBrickCounter;                                                              // IMP 0x1000260e0
- (void)fireOffEventsWithCategory:(id)arg1 Action:(id)arg2 WithLabelsAndValues:(id)arg3;   // IMP 0x100026a60
- (void)killEnemy:(id)arg1 DisplayName:(id)arg2 Weapon:(id)arg3;                           // IMP 0x100026a64
- (void)reloadWeaponWithRemainingBullets:(unsigned long long)arg1 InWeapon:(id)arg2;       // IMP 0x100026cfc
- (void)setButtonMode:(id)arg1;                                                            // IMP 0x100026eb0
- (void)setControlMode:(id)arg1;                                                           // IMP 0x100026f54
- (void)switchFromWeapon:(id)arg1 ToNewWeapon:(id)arg2 WithBulletsRemaining:(unsigned long long)arg3; // IMP 0x100026ff8
- (void)shootWeaponWithName:(id)arg1 didHit:(BOOL)arg2;                                    // IMP 0x10002721c
- (void)setModifierDimensions:(id)arg1;                                                    // IMP 0x1000273d0
- (void)sendLoadOutEventWithWeapon1:(id)arg1 Weapon2:(id)arg2 Melee:(id)arg3;              // IMP 0x1000277c8
- (void)diamondAcquired;                                                                   // IMP 0x100027d44
- (void)diamondAppeared;                                                                   // IMP 0x100027e74
- (void)diamondDisappered;                                                                 // IMP 0x100027fa4
- (void)loadBrick:(id)arg1 WithBrickNumber:(long long)arg2;                                // IMP 0x1000280d4
- (void)defeatBrick:(id)arg1 InTime:(double)arg2;                                          // IMP 0x1000282d8
- (void)timeOfDeathInBrick:(double)arg1 BrickName:(id)arg2;                                // IMP 0x1000284f8
- (void)powerUpAppeared:(id)arg1;                                                          // IMP 0x100028718
- (void)powerUpUsed;                                                                       // IMP 0x10002886c
- (void)powerUpMissed;                                                                     // IMP 0x10002899c
- (void)numberOfEnemyKills:(unsigned long long)arg1 ByPowerUp:(id)arg2;                    // IMP 0x100028acc
- (void)reviveUsedWithCost:(unsigned long long)arg1;                                       // IMP 0x100028c80
- (void)gameOverButtonPressed;                                                             // IMP 0x100028dfc
- (void)recordEndOfGameData;                                                               // IMP 0x100028f30
- (void)challengeStarted;                                                                  // IMP 0x100029640
- (void)challengeCompleted:(BOOL)arg1;                                                     // IMP 0x100029770
- (void)accuracyObjectiveReached:(BOOL)arg1;                                               // IMP 0x100029ac4
- (void)timeObjectiveReached:(BOOL)arg1;                                                   // IMP 0x100029c3c
- (void)turnOffAllDimensions;                                                              // IMP 0x100029db4
@end

@interface ADTracker (ADArmoryTracker)
+ (void)initArmoryTracker;                                                                 // IMP 0x10002dce0
+ (void)addWeapon:(id)arg1 InSlot:(id)arg2;                                                // IMP 0x10002ddb8
+ (id)getWeaponInSlot:(id)arg1;                                                            // IMP 0x10002dea8
- (void)recordPurchaseForItemOrWeapon:(id)arg1 Price:(double)arg2;                         // IMP 0x10002df88
- (void)recordTabChangeEventWithTabName:(id)arg1 TimeSpentInTab:(double)arg2;              // IMP 0x10002e160
- (void)recordPowerUpUpgrade:(id)arg1 Level:(long long)arg2;                               // IMP 0x10002e330
- (void)recordSocialNetworkTagEvent:(id)arg1;                                              // IMP 0x10002e4e4
- (void)recordWeaponEquipWithName:(id)arg1 WeaponSlot:(long long)arg2;                     // IMP 0x10002e638
- (void)recordWeaponBrowse:(id)arg1 BrowseForm:(id)arg2;                                   // IMP 0x10002e7f0
- (void)recordWeaponUpgrade:(id)arg1 Price:(double)arg2;                                   // IMP 0x10002e968
- (void)recordWeaponUpgradePreview:(id)arg1 LevelPreviewed:(long long)arg2;                // IMP 0x10002eb40
@end

@interface ADInGameStats (NotificationDispatcher)
- (void)actUponNotification:(id)arg1;                                                      // IMP 0x10005614c
- (void)handleUpdateTimePassed:(id)arg1;                                                   // IMP 0x1000564fc
- (void)handleBrickTimePassed:(id)arg1;                                                    // IMP 0x1000565c4
- (void)handleChallengeTimePassed:(id)arg1;                                                // IMP 0x10005668c
- (void)handleMeleeWeapon:(id)arg1;                                                        // IMP 0x100056754
- (void)handleWeapon:(id)arg1;                                                             // IMP 0x100056844
- (void)handleEnemyKilled:(id)arg1;                                                        // IMP 0x100056a94
- (void)handleEnemyPowerUpKilled:(id)arg1;                                                 // IMP 0x100056be4
- (void)handleUpdateDiamonds:(id)arg1;                                                     // IMP 0x100056cd0
@end

@interface UIViewController (ADIPhoneLoader)
- (void)loADViewBasedOnDeviceWithNibName:(id)arg1 WithTagDictionary:(id)arg2;              // IMP 0x10005d22c
- (void)setUpOutletsFromTags:(id)arg1;                                                     // IMP 0x10005d944
- (void)loADIPadNib:(id)arg1;                                                              // IMP 0x10005db90
@end

@interface ADViewController (HandleAppNotification)
- (void)registerForAppNotifications;                                                       // IMP 0x10006cedc
- (void)deRegisterForAppNotifications;                                                     // IMP 0x10006cfac
- (void)handleAppEnteringBackground:(id)arg1;                                              // IMP 0x10006d018
- (void)handleAppEnteringForeground:(id)arg1;                                              // IMP 0x10006d01c
@end

@interface UILabel (ADTitleLabel)
- (void)setupAsTitle;                                                                      // IMP 0x10008aec0
- (void)setupAsMain;                                                                       // IMP 0x10008b004
- (void)setupAsInfo;                                                                       // IMP 0x10008b128
- (void)playButtonSound;                                                                   // IMP 0x10008b24c
@end

@interface UIView (OBDragDropManager)
- (id)dropZoneHandler;                                                                     // IMP 0x10009e3e4
- (void)setDropZoneHandler:(id)arg1;                                                       // IMP 0x10009e3f0
- (BOOL)hasParentView:(id)arg1;                                                            // IMP 0x10009e410
@end

@interface UIScrollView (DAAutoScroll)
@property (nonatomic) double scrollPointsPerSecond;
@property (nonatomic, getter=isScrolling) BOOL scrolling;
- (void)startScrolling;                                                                    // IMP 0x1000bd38c
- (void)stopScrolling;                                                                     // IMP 0x1000bd548
- (void)scrollTick;                                                                        // IMP 0x1000bd5c0
- (void)setScrolling:(BOOL)arg1;                                                           // IMP 0x1000bd7cc
- (BOOL)isScrolling;                                                                       // IMP 0x1000bd7f0
- (double)scrollPointsPerSecond;                                                           // IMP 0x1000bd830
- (void)setScrollPointsPerSecond:(double)arg1;                                             // IMP 0x1000bd8ac
- (id)autoScrollTimer;                                                                     // IMP 0x1000bd960
- (void)setAutoScrollTimer:(id)arg1;                                                       // IMP 0x1000bd970
@end

@interface NSObject (StatsNotifier)
- (void)notifyStatsSystemWithNotificationWithName:(id)arg1 AndData:(id)arg2;               // IMP 0x1000bda04
@end

@interface UIButton (ADMainButton)
- (void)setupAsMain;                                                                       // IMP 0x1000cbe80
- (void)setupAsBlocked;                                                                    // IMP 0x1000cc164
- (void)setupAsTarotCardInfo;                                                              // IMP 0x1000cc2d8
- (void)setupAsAccessibleTarotCardInfo;                                                    // IMP 0x1000cc48c
@end

@interface UITextView (ADTextView)
- (void)setupAsInfo;                                                                       // IMP 0x1000d5388
- (void)setupAsParagraph;                                                                  // IMP 0x1000d54b4
- (void)setupAsMain;                                                                       // IMP 0x1000d55e0
@end

@interface GAIFields (ADDimensionsWrapper)
+ (id)customDimensionForName:(id)arg1;                                                     // IMP 0x1000dd6b4
+ (id)customMetricForName:(id)arg1;                                                        // IMP 0x1000dd740
@end

@interface NSMutableArray (Stack)
+ (id)stack;                                                                               // IMP 0x1000dfb38
- (void)push:(id)arg1;                                                                     // IMP 0x1000dfb54
- (id)pop;                                                                                 // IMP 0x1000dfb74
- (id)peek;                                                                                // IMP 0x1000dfbd8
- (BOOL)empty;                                                                             // IMP 0x1000dfbe8
@end

@interface NSString (SplitAdditions)
- (long long)anchorValue;                                                                  // IMP 0x1000e3310
- (id)anchorKey;                                                                           // IMP 0x1000e33ec
@end

@interface TAGPBArray (ExtensionField)
- (union {…})valueAtIndex:(unsigned long long)arg1;                                        // IMP 0x100138620
@end

@interface TAGPValue (Hash)
- (unsigned long long)hash;                                                                // IMP 0x10017f018
@end
