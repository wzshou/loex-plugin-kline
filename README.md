# ocLoexKLinePlugi,使用示例
<html>
    <head>
        <title>testPlugin</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
            <script type="text/javascript" charset="utf-8" src="cordova.js"></script>
            <script type="text/javascript" charset="utf-8">
                
                function testPlugin() {
                    cordova.exec(testSuccess,testFailed,"ocLoexKLinePlugin","showKLine",[{"key" : ["value1","value2","value3"]}]);
                }
            function testSuccess(msg) {
                alert(msg);
            }
            function testFailed(msg) {
                alert('failed: ' + msg);
            }
            </script>
            </head>
    
    <body style="padding-top:100px">
        <button style="font-size:17px;" onclick="testPlugin();">测试iOS插件</button>
        <br>
    </body>
</html>
