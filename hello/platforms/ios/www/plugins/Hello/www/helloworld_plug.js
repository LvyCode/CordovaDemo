cordova.define("Hello.helloworld_plug", function(require, exports, module) {
var exec = require('cordova/exec');

exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'helloworld_plug', 'coolMethod', [arg0]);
};

});
