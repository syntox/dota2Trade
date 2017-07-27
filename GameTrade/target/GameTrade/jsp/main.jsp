<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>

    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/main.css">

</head>
<body>
<%--获取用户名session--%>
<%--<% String username = (String) session.getAttribute("username");%>--%>

<%--网站logo,登陆，注册，上传饰品，充值导航条--%>
<header>
    <%@ include file="header.jsp"%>
</header>
<%--主体部分--%>
<section class="black-bg">
    <section class="main-background container-fluid">
        <section class="container main-contain">
            <section class="main-contain-top">
                <!--轮播图-->
                <div id="carousel-example-generic" class="carousel slide col-md-7 main-focus" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="../img/focus-1.png" alt="...">
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <img src="../img/focus-2.png" alt="...">
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <img src="../img/focus-3.png" alt="...">
                            <div class="carousel-caption"></div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <section class="col-md-3 col-md-offset-2 main-personInformation">
                    <%--未登录--%>
                    <div id="personInformation-waitLoad" class="personInformation-waitLoad">
                        <button class="personInformation-waitLoad-login btn btn-default" id="personInformation-waitLoad-login">登陆</button>
                        <button class="personInformation-waitLoad-register btn btn-default" id="personInformation-waitLoad-register">注册</button>
                    </div>
                    <%--已登陆--%>
                        <div class="headpic">
                            <img src="../img/axe.png" alt="" class="img-circle" id="main-headpic">
                        </div>
                        <p class="headname" id="main-headname">用户名</p>
                        <hr class="head-hr">
                        <p class="head-left-money">余额:￥</p>
                        <p class="main-money" id="main-money"></p>
                </section>
            </section>
            <section class="main-contain-boby">
                <aside class="col-md-4 body-hero-nav">
                    <div class="all-heros" id="all-heros">
                        <div class="hero-flag" id="hero-flag"></div>
                        <%--根据数据库动态生成--%>
                        <!--<div class="single-hero fleft">
                                <div class="single-hero-pic"><img src="" alt=""></div>
                                <div class="single-hero-id"><p></p></div>
                                <div class="single-hero-name"><p></p></div>
                        </div>-->
                    </div>

                </aside>
                <section class="col-md-8 body-ornament-list">
                    <div class="ornament-flag" id="ornament-flag">
                        <%--<div class="single-ornament fleft">
                        <div class="single-ornament-pic"><img src="" alt=""></div>
                        <div class="single-ornament-id"><p></p></div>
                        <div class="single-ornament-userOwner"><p></p></div>
                        <div class="single-ornament-heroOwner"><p></p></div>
                        <div class="single-ornament-selling"><p></p></div>

                        <div class="single-ornament-name"><p></p></div>
                        <div class="single-ornament-price"><p></p></div>
                    </div>--%>
                    </div>
                    <div class="ornament-bottom">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" class="btn btn-default btn-warning disabled" id="totalPages">共页</button>
                            <button type="button" class="btn btn-default btn-warning disabled" id="totalRecords">共件饰品</button>
                            <button type="button" class="btn btn-default btn-warning" id="firstPage">首页</button>
                            <button type="button" class="btn btn-default btn-warning" id="lastPage">上一页</button>
                            <button type="button" class="btn btn-default btn-warning disabled" id="currentPage">当前第页</button>
                            <button type="button" class="btn btn-default btn-warning" id="nextPage">下一页</button>
                            <button type="button" class="btn btn-default btn-warning" id="finalPage">尾页</button>
                        </div>
                    </div>
                </section>
            </section>

        </section>

    </section>
</section>
<%--底部版权，各种信息等--%>
<footer>
    <div class="test"></div>
</footer>

<script src="../js/jquery-3.2.0.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/main.js"></script>
<script src="../js/header.js"></script>
</body>
</html>
