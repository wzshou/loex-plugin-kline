cordova.define("loex-plugin-kline", function(require, exports, module) {

	var exec = require('cordova/exec');

	var LoexKLinePlugin = function () {}

	LoexKLinePlugin.prototype.showKLine = function (success,fail,option) {
     exec(success, fail, 'LoexKLinePlugin', 'showKLine', option);

     };
	module.exports = new LoexKLinePlugin();
}

// function TestModel() {};

// TestModel.prototype.showKLine = function (success,fail,option) {
//      exec(success, fail, 'LoexKLinePlugin', 'showKLine', option);
// };

// var testModel = new TestModel();
// module.exports = testModel;