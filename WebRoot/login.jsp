<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="htstyle/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="htstyle/fa/css/all.css">

    <link rel="stylesheet" href="htstyle/css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="htstyle/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="htstyle/css/custom.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page-holder d-flex align-items-center">
    <div class="container">
        <div class="row align-items-center py-5">
            <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                <div class="pr-lg-5"><img src="htstyle/img/illustration.png" alt="" class="img-fluid"></div>
            </div>
            <div class="col-lg-5 px-lg-4">
                <h2 style="color: #0c58ff">去哪了网机票网站</h2>
                <p class="text-muted">欢迎使用去哪了网机票网站后台管理系统</p>
                <form id="loginForm" action="authAdminLogin.do" class="mt-4" method="post">
                    <div class="form-group mb-4">
                        <input type="text" name="username" placeholder="账号"
                               class="form-control border-0 shadow form-control-lg">
                    </div>
                    <div class="form-group mb-4">
                        <input type="password" name="pwd" placeholder="密码"
                               class="form-control border-0 shadow form-control-lg text-violet">
                    </div>
                    <div class="form-group mb-4">
                        <select name="cx" class="form-control border-0 shadow form-control-lg text-violet">
                            <option value="管理员">管理员</option>
                            <option value="用户">用户</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary shadow px-5">登录</button>
                </form>
            </div>
        </div>
        <p class="mt-5 mb-0 text-gray-400 text-center">Copyright &copy; 去哪了网机票网站</p>
    </div>
</div>
<!-- JavaScript files-->
<script src="htstyle/vendor/jquery/jquery.min.js"></script>
<script src="htstyle/vendor/popper.js/umd/popper.min.js"></script>
<script src="htstyle/bootstrap/js/bootstrap.min.js"></script>
<script src="htstyle/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="htstyle/js/js.cookie.min.js"></script>
<script src="htstyle/js/front.js"></script>
</body>
</html>