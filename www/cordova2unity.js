/*global cordova, module*/

module.exports = {
    launch: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "cordova2unity", "launch");
    }
};
