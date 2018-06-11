<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>トップ</title>
    <!-- BootstrapのCSS読み込み -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery読み込み -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- BootstrapのJS読み込み -->
    <script src="js/bootstrap.min.js"></script>
<style type="text/css"><!--
/*ここに調整CSS記述*/
.jumbotron { background:url(ship.jpg) center no-repeat; background-size: cover;}
.jumbotron h1 { color: green;}
.jumbotron h2 { color: blue;}

--></style>

</head>
<body>

<!--　▼ ジャンボトロン　 -->
    <div class="jumbotron">
      <div class="container">
        <h1>ようこそカラオケ部へ</h1>
      </div>
    </div>
<!--　▲ ジャンボトロン　 -->

<p class="text-left"><img src="buchou.jpg" alt="部長">メニュー</p>
<a href="http://localhost:8080/kadai/uta1">SetListへ</a><br>
<a href="http://localhost:8080/kadai/held1">KaisaiRecordへ</a><br>
<a href="http://localhost:8080/kadai/member1">Memberへ</a><br>

</body>
</html>