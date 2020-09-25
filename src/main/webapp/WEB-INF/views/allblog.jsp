<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/22 0022
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@page deferredSyntaxAllowedAsLiteral="true" %>
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
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="../editormd/css/editormd.css"/>
    <script src="../editormd/examples/js/jquery.min.js"></script>
    <!-- 引入js -->
    <link rel="stylesheet" href="../editormd/css/editormd.preview.css"/>
    <script src="../editormd/lib/prettify.min.js"></script>
    <script src="../editormd/lib/marked.min.js"></script>
    <script src="../editormd/editormd.min.js"></script>
    <script src="../editormd/lib/raphael.min.js"></script>
    <script src="../editormd/lib/underscore.min.js"></script>
    <script src="../editormd/lib/sequence-diagram.min.js"></script>
    <script src="../editormd/lib/flowchart.min.js"></script>
    <script src="../editormd/lib/jquery.flowchart.min.js"></script>
    <script>
        layui.use('element', function () {
            var element = layui.element;
        });
        var testEditor;
        $(function () {
            testEditor = editormd.markdownToHTML("doc-content", {//注意：这里是上面DIV的id
                htmlDecode: "style,script,iframe",
                emoji: true,
                taskList: true,
                tocm: true,
                tocTitle: "目录",
                tex: true, // 默认不解析
                flowChart: true, // 默认不解析
                sequenceDiagram: true, // 默认不解析
                codeFold: true
            });

            var reg = /<[^<>]+>/g;
            // var zz=new RegExp(reg);
            var str = $("#doc-content").text();
            str = str.replace(reg, '');
            // zz.exec(str);
            $("#doc-content").html('');
            $("#doc-content").text("" + str);
        });
    </script>
</head>
<body style="overflow: auto;min-width:1800px;">
<!-- 头部分 -->
<div style="height: 4.125rem;">
    <ul class="layui-nav" style="height: 66px;font-family: KaiTi;">
        <li class="layui-nav-item" style="width: 50%;">
            <a style="font-family: KaiTi; font-size: 2rem; color: white; padding-left: 100px;" href="blogHome">『Belief's
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

        <li class="layui-nav-item" lay-unselect="">
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
<div style="width: 100%; height: 1330px!important;background-color:  rgb(50,50,50); ">
    <div class="blogBody" style="height: 1330px!important;">
        <%--        左侧部分--%>
        <div style="width: 25%;float: left;height: 100%;margin-left:15%">`

            <div style="padding: 20px; height: 380px!important;" >
                <div class="layui-row layui-col-space15">
                    <div class="layui-col-md12">
                        <div class="layui-card" style="height: 380px!important;width:304px!important;">
                            <%--                            头像--%>
                            <div class="layui-card-header" style="height: 150px!important;">
                                <img src="../layui/images/BlogHead.png"
                                     style="width: 90px;height: 90px;border-radius: 45px;margin-left:100px;margin-top:15px">
                                <span style="font-size: 20px;width: 30px;height: 20px;margin-left:120px;">Belief</span>
                            </div>
                            <%--                            显示--%>
                            <div class="layui-card-body">
                                <span style="margin-left: 95px;height: 25px;font-size:16px">我执着,故我在</span><br>
                                <span style="margin-left: 75px;height: 25px;font-size: 14px;color: #3F3F3F">I persist,therefore I am</span>
                                <div class="layui-row" style="margin-left:60px;margin-top: 15px">
                                    <div class="layui-col-md4">
                                        <div class="grid-demo grid-demo-bg1">
                                            <span>98</span><br/>
                                            <span>博客</span>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="grid-demo">
                                            <span>10</span><br/>
                                            <span>分类</span>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="grid-demo grid-demo-bg1">
                                            <span>443</span><br/>
                                            <span>标签</span>
                                        </div>
                                    </div>
                                </div>
                                <img src="../layui/images/tubiao.png" style="width: 280px;height: 60px;margin-top: 15px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<%--            博客导航--%>
            <div style="padding: 20px ; height: 380px!important;">
                <div class="layui-col-md12">
                    <div class="layui-card"  style="height: 380px!important;width:304px!important">
                        <div class="layui-card-header">博客导航</div>
                        <div class="layui-card-body">
                            <ul class="cbdh" class="layui-nav layui-nav-tree layui-bg-cyan layui-inline" lay-filter="demo">
                                <li class="layui-nav-item"><a href="">首页</a></li>
                                <li class="layui-nav-item"><a href="">CSDN</a></li>
                                <li class="layui-nav-item"><a href="">Github</a></li>
                                <li class="layui-nav-item"><a href="">提交记录</a></li>
                                <li class="layui-nav-item"><a href="">留言板块</a></li>
                                <li class="layui-nav-item"><a href="">留言板块</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
<%--            文章分类--%>
            <div style="padding: 20px ; height: 380px!important;">
                <div class="layui-col-md12">
                    <div class="layui-card"  style="height: 380px!important;width:304px!important">
                        <div class="layui-card-header">博客导航</div>
                        <div class="layui-card-body">
                            <ul class="wzfl" class="layui-nav layui-nav-tree layui-bg-cyan layui-inline" lay-filter="demo">
                                <li class="layui-nav-item"><a href="">考研数据结构</a></li>
                                <li class="layui-nav-item"><a href="">javaEE</a></li>
                                <li class="layui-nav-item"><a href="">SSM</a></li>
                                <li class="layui-nav-item"><a href="">NOSQL</a></li>
                                <li class="layui-nav-item"><a href="">Vue.js</a></li>
                                <li class="layui-nav-item"><a href="">前端基础</a></li>
                                <li class="layui-nav-item"><a href="">算法</a></li>
                                <li class="layui-nav-item"><a href="">SQL数据库</a></li>
                                <li class="layui-nav-item"><a href="">生活小趣事</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <%--        右侧部分--%>
    <div style="padding:20px 0; height: 100%;width: 45%;background-color: #b6a3a3;float: left">
        <div class="layui-row layui-col-space15" style="padding-top: 20px">
            <div class="layui-col-md12">
                <div class="layui-card" style="height:100px !important;padding: 10px 10px!important;">
                    <div class="layui-card-header"
                         style="line-height: 24px!important;height: 24px;">${blog[0].btitle}</div>
                    <div class="layui-card-body" style="padding:5px 10px;">
                        <div id="doc-content" name="doc-content">
                            <!-- 书写与实时显示的textarea -->
                            <textarea style="display:none;"
                                      placeholder="markdown语言">${blog[0].bcontext}</textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                                    <a href="">CSDN</a><br/>
                                    <img src="../layui/images/CSDN.png"/>
                                </div>
                            </div>
                            <div class="layui-col-md4 ass">
                                <div class="grid-demo">
                                    <a href="">QQ</a><br/>
                                    <img src="../layui/images/Email.png"/>
                                </div>
                            </div>
                            <div class="layui-col-md4 ass">
                                <div class="grid-demo grid-demo-bg1">
                                    <a href="">Github</a><br/>
                                    <img src="../layui/images/Github.png"/>
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
                        <a href="">Building:2020年9月21日20:10:33</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>

