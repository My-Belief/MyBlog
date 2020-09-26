<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/22 0022
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@page deferredSyntaxAllowedAsLiteral="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="../layui/layui.all.js"></script>
    <script src="../layui/layui.js"></script>
    <script>
        layui.use('element', function () {
            var element = layui.element;
        });
        $(function () {
            var div = $("div[name='showblog']")
            for (var i = 1; i < div.length; i++) {
                div[i].style.marginTop = 100 + "px";
            }
        })

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

        <li class="layui-nav-item" lay-unselect="" style="display: none;">
            <a href="javascript:;"><img src="../layui/images/default.png" class="layui-nav-img">未登录</a>
            <dl class="layui-nav-child">
                <dd><a href="/login">登录</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item" lay-unselect="">
            <a href="javascript:;"><img src="../layui/images/BlogHead.png" class="layui-nav-img">我</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">博客管理</a></dd>
                <dd><a href="/markdown">MarkDown编辑器</a></dd>
                <dd><a href="/login">退了</a></dd>
            </dl>
        </li>
    </ul>
</div>
<!-- 头部分完结 -->
<!-- 主体部分 -->
<div style="width: 100%; height: 1330px!important;background-color:  rgb(50,50,50); ">
    <div class="blogBody" style="height: 1330px!important;">
        <%--        左侧部分--%>
        <div style="width: 25%;float: left;height: 1330px;margin-left:15%">`

            <div style="padding: 20px; height: 380px!important;">
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
                                <img src="../layui/images/tubiao.png"
                                     style="width: 280px;height: 60px;margin-top: 15px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--            博客导航--%>
            <div style="padding: 20px ; height: 380px!important;">
                <div class="layui-col-md12">
                    <div class="layui-card" style="height: 380px!important;width:304px!important">
                        <div class="layui-card-header">博客导航</div>
                        <div class="layui-card-body">
                            <ul class="cbdh" class="layui-nav layui-nav-tree layui-bg-cyan layui-inline"
                                lay-filter="demo">
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
                    <div class="layui-card" style="height: 380px!important;width:304px!important">
                        <div class="layui-card-header">博客导航</div>
                        <div class="layui-card-body">
                            <ul class="wzfl" class="layui-nav layui-nav-tree layui-bg-cyan layui-inline"
                                lay-filter="demo">
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
        <div style="padding:20px 0; height: 1290px;width: 45%;float: left">

            <c:forEach items="${blog}" var="blog" varStatus="s">
                <div name="showblog" class="layui-row layui-col-space15" style="padding-top: 20px;">
                    <div class="layui-col-md12">
                        <div class="layui-card" style="height:100px !important;padding: 10px 10px!important;">
                            <div class="layui-card-header" style="line-height: 24px!important;height: 24px;width: 95%">
                                <span class="showone">${blog.btitle}</span>
                                <span class="delete" id="delete"
                                      style="display: inline-block;width: 5%;float: right">删除</span>
                                <form action="/delete" style="display: none" method="post">
                                    <input name="bno" type="text" value="${blog.bno}">
                                </form>
                            </div>
                            <div class="layui-card-body" style="padding:5px 10px;">
                                <div class="doc-content" name="doc-content">
                                        ${blog.digest}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </br>
            </c:forEach>
        </div>
        <div id="demo10" style="margin-top: 50px;position: absolute;margin-left: 53%"></div>
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
<script>
    $(function () {
        const span = $(".delete");
        const showone = $(".showone");

        for (let i = 0; i < span.length; i++) {
            span.eq(i).index(i);
            showone.eq(i).index(i);
            span.eq(i).click(function () {
                console.log($(this).next().children("input").val());
                $(this).next().submit();
            });

            showone.eq(i).click(function () {
                $(this).next().next().attr("action", "/showArticle")
                console.log($(this).next().next().children("input").val());
                $(this).next().next().submit();
            })

        }
    })

    <%--layui.use(['laypage', 'layer'], function () {--%>
    <%--    var laypage = layui.laypage--%>
    <%--        , layer = layui.layer;--%>
    <%--    //完整功能--%>
    <%--    //自定义排版--%>
    <%--    laypage.render({--%>
    <%--        elem: 'demo10',--%>
    <%--        count: ${blog.total},//这个是你的总页面--%>
    <%--        curr: ${blog.pageNum},//这个是你当前的页数，设置好 页面跳转后他会自动选择对应的页码、也就是第几页的背景改变颜色--%>
    <%--        limit: ${blog.size}//这个是每页面显示多少条，页面跳转后他会自动让下拉框里对应的值设为选中状态--%>
    <%--        , layout: ['page', 'count'],--%>
    <%--        jump:function (obj,first) {--%>
    <%--            if(first){ return ; }--%>
    <%--            var url=undefined;--%>
    <%--            url+='?pageNum='+obj.curr;--%>
    <%--            window.location.href="/allblog"+url;--%>
    <%--        }--%>
    <%--    });--%>
    <%--});--%>

</script>
</body>
</html>

