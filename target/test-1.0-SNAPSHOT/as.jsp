<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>猜数字小游戏(make by xiaoming)</title>
    <style type="text/css">
        body {
            font-size: 80%;
            font-family: "微软雅黑"courier monospace;
            letter-spacing: 0.2em;
            background-color: #efefef;
        }
        #page {
            max-width: 950px;
            height: 500px;
            margin: 10px auto 10px auto;
            padding: 20px;
            border: 4px double #000000;
            background-color: yellow;
            box-shadow: 10px;
            border-radius: 20px;
        }
        #title {
            width: 250px;
            margin: 5px auto 10px auto;
            font-size: 25px;
            text-align: center;
        }
        #submit {
            text-align: center;
            padding-top: 150px;
        }
        #footer {
            padding-top: 10px;
            text-align: center;
        }
        #random {
            font-size: 20px;
            text-align: center;
            color:red;
        }
        #min {

        }
    </style>
</head>

<body>
<div id="page">
    <div id="title">
        <p>欢迎来到</p>
        <p>猜 数 字 小 游 戏</p>
    </div>

    <div id="random">

        <div id="suu">

        </div>
        <div id="curent">

        </div>
    </div>
    <div id="submit">
        <form action="#" method="get">
            输入你猜的数字：
            <input type="text" id="guessNum" name="guessNum" />
            <input type="button" id="guess" name="guess" onclick="checknum()" value="提交" />
            <input type="button" id="cur" name="cur" onclick="curNum()" value="查看" />
            <input type="button" id="sx" name="sx" onclick="fresh()" value="再来"/>
        </form>
    </div>

    <div id="footer">
        <p>游戏规则：猜数字，数字范围[0,100]</p>
    </div>

</div>

</body>
<script>
    var ran = parseInt(Math.random() * 100 + 1);
    var count = 0;
    var min = 1;
    var max = 100;
    function checknum() {
        var s = parseInt(document.getElementById("guessNum").value);
        if(s > 100||s < 0){
            window.alert("错误提交！");
        }
        else if (s > ran) {
            count++;
            max = s;
            document.getElementById("suu").innerHTML = "大了！在" + min+"-"+max;
        } else if (s < ran) {
            count++;
            min = s;
            document.getElementById("suu").innerHTML = "小了！在" + min+"-"+max+"中选择";

        } else if (s == ran) {
            window.alert("恭喜你猜对了！");

        }else {
            window.alert("错误提交！");
        }
        document.getElementById("curent").innerHTML ="";
    }

    function curNum() {
        document.getElementById("curent").innerHTML = ran;
    }
    function fresh(){
        window.location.reload();
    }
</script>

</html>