(function () {

    var getUrlVars = function () {
        // find the querystring parameters
        var vars = {}, hash;
        var hashes = window.location.search.slice(1).split('&');
        for (var i = 0; i < hashes.length; i++) {
            hash = hashes[i].split('=');
            vars[hash[0]] = hash[1];
        };
        return vars;
    };

    var addFormatCSS = function (format, src) {
        var formatID = 'dynformat-' + format;
        if (!document.getElementById(formatID)) { // checks that format not duplicated
            var style = document.head.appendChild( document.createElement('link'));
            style.id = formatID;
            style.href = src;
            style.rel = 'stylesheet'; // kicks off the request
        };
    };

    var params = getUrlVars();

    // Specific styling for device format
    if (typeof params.device === 'string') {
        switch(params.device.toLowerCase()) {
            case "iphone":
                // it's an iphone
                addFormatCSS('iphone', 'css/iphone.css');
                break;
            case "ipad":
                // it's an ipad
                addFormatCSS('ipad', 'css/ipad.css');
                break;
            default:
                // no specific behaviour for default
        };
    };

})();

