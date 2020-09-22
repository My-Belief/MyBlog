<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/22 0022
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content=""/>
    <script>
        addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <link href="../layui/css/definecss/style.css" rel='stylesheet' type='text/css' media="all">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
</head>
<body>
<div class="mid-class">
    <div class="art-right-w3ls">
        <h2>Sign In and Sign Up</h2>
        <form action="/login" method="post">
            <div class="main">
                <div class="form-left-to-w3l">
                    <input type="text" name="account" placeholder="account" required="">
                </div>
                <div class="form-left-to-w3l ">
                    <input type="password" name="password" placeholder="password" required="">

                </div>
            </div>
            <div class="left-side-forget">
                <input type="checkbox" class="checked">
                <span class="remenber-me">Remember me </span>
            </div>
            <div class="btnn">
                <button type="submit">Sign In</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
