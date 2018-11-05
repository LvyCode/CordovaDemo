cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "Hello.helloworld_plug",
    "file": "plugins/Hello/www/helloworld_plug.js",
    "pluginId": "Hello",
    "clobbers": [
      "cordova.plugins.helloworld_plug"
    ]
  }
];
module.exports.metadata = 
// TOP OF METADATA
{
  "cordova-plugin-whitelist": "1.3.3",
  "Hello": "1.0.0"
};
// BOTTOM OF METADATA
});