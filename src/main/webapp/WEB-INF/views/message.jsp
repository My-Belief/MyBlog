<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/22 0022
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Belif's Blog</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../layui/css/definecss/BlogHome.css" media="all">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script>
        layui.use('element', function() {
            var element = layui.element;
        });
        $(function(){

        })
    </script>
</head>
<body style="overflow: auto;min-width:1800px;">
<!-- 头部分 -->
<div style="height: 4.125rem;">
    <ul class="layui-nav" style="height: 66px;font-family: KaiTi;">
        <li class="layui-nav-item" style="width: 50%;">
            <a style="font-family: KaiTi; font-size: 2rem; color: white; padding-left: 100px;" href="/blogHome">『Belief's
                Blog』<span></span></a>
        </li>
        <li class="layui-nav-item ">
            <a href="/home">首页</a>
        </li>
        <li class="layui-nav-item">
            <a href="/allblog">所有博客</a>
        </li>
        <li class="layui-nav-item">
            <a href="/blogroll">友情链接</a>
        </li>
        <li class="layui-nav-item">
            <a href="/comRecord">提交记录</a>
        </li>
        <li class="layui-nav-item">
            <a href="/message">留言板块<span class="layui-badge">9</span></a>
        </li>
        <li class="layui-nav-item">
            <a href="/about">关于本站</a>
        </li>
        <li class="layui-nav-item" lay-unselect="">
            <a href="javascript:;">我的链接<img src="../layui/images/right.png" class="layui-nav-img"></a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">CSDN</a></dd>
                <dd><a href="javascript:;">码云</a></dd>
                <dd><a href="javascript:;">Github</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item" lay-unselect="" >
            <a href="javascript:;"><img src="../layui/images/default.png" class="layui-nav-img">未登录</a>
            <dl class="layui-nav-child">
                <dd><a href="/login">登录</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item" lay-unselect="" style="display: none;">
            <a href="javascript:;"><img src="../layui/images/BlogHead.png" class="layui-nav-img">我</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">修改信息</a></dd>
                <dd><a href="javascript:;">安全管理</a></dd>
                <dd><a href="javascript:;">退了</a></dd>
            </dl>
        </li>
    </ul>
</div>
<!-- 头部分完结 -->
<!-- 主体部分 -->
<div style="width: 100%; height: 100%;background-color:  rgb(50,50,50); ">
    <div class="blogBody">
        <img src="../layui/images/backgroundImg.png" style="width: 100%; height: 100%; opacity: .15 ;" />
    </div>
</div>
<!-- 主体部分完结 -->
<div class="foot">
    <div class="foot-ass">
        <div>
            <div class="layui-row ">
                <!-- 致敬还在写博客的我们! -->
                <div class="layui-col-xs4" style="border-right:  #3F3F3F 1px solid;">
                    <div class="grid-demo grid-demo-bg1 ">
                        <a class="foot-zise1">致敬还在写博客的我们!</a>
                    </div>
                </div>
                <!-- 联系方式 -->
                <div class="layui-col-xs8 ">
                    <div class="grid-demo">
                        <div class="layui-row">
                            <div class="layui-col-md4 ass">
                                <div class="grid-demo grid-demo-bg1">
                                    <a href="">CSDN</a><br />
                                    <img src="../layui/images/CSDN.png" />
                                </div>
                            </div>
                            <div class="layui-col-md4 ass">
                                <div class="grid-demo">
                                    <a href="">QQ</a><br />
                                    <img src="../layui/images/Email.png" />
                                </div>
                            </div>
                            <div class="layui-col-md4 ass">
                                <div class="grid-demo grid-demo-bg1">
                                    <a href="">Github</a><br />
                                    <img src="../layui/images/Github.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="foot-bottom">
        <div>
            <div class="layui-row ">
                <div class="layui-col-md4">
                    <div class="grid-demo grid-demo-bg1">
                        <a>Email:749958162@qq.com</a>
                    </div>
                </div>
                <div class="layui-col-md4">
                    <div class="grid-demo grid-demo-bg1">
                        <a>Power By:Belief</a>
                    </div>
                </div>
                <div class="layui-col-md4">
                    <div class="grid-demo grid-demo-bg1">
                        <a>Building:2020年9月21日20:10:33</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
