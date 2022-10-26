<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登陆</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="${ctx}/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: url(images/beijing.jpg)  no-repeat center 0px;
            background-size: cover;

            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            -webkit-background-size: cover;
            -o-background-size: cover;
            -moz-background-size: cover;
            -ms-background-size: cover;

        }
        .login-box{
            position: absolute;
            top: 50%;
            left: 80%;
            transform: translate(-50%,-50%);
            width: 360px;
            height: 500px;
            padding:40px;

            background: white;
            box-sizing: border-box;

        }
        .login-box h1{
            font-size: 26px;
            text-align: left;
            color: #1890ff;
            margin-bottom: 40px;
            margin-top: 35px;
        }
        .login-box .login-field{
            position: relative;
        }
        .login-box .login-field  input{
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            margin-bottom: 30px;
            border: none;
            border-bottom: 1px solid #fff;
            outline: none;
            background: transparent;
        }
        .login-box .login-field  label{
            position: absolute;
            top: 0;
            left: 0;
            letter-spacing: 1px;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            pointer-events: none;
            transition: .5s;
        }
        .login-box .login-field input:focus ~ label,
        .login-box .login-field input:valid ~ label{
            top: -23px;
            left: 0;
            color: aqua;
            font-size: 12px;
        }
        .login-box .logbtn{
            width: 100%;
            background: transparent;
            border: none;
            outline: none;
            color: #fff;
            background: #1890ff;
            padding: 10px 20px;
            cursor: pointer;

        }
        .txtb{
            border-bottom: 2px solid #e5e5e5;
            position: relative;
            margin:30px 0;
        }
        .txtb input{
            font-size: 15px;
            color: #333;
            border: none;
            width: 100%;
            outline: none;
            background: none;
            padding: 0 5px;
            height: 48px;
        }
        input{
            position: relative;
            top: 15px;
        }
        .txtb span::before{
            content: attr(data-placeholder);
            position: absolute;
            top: 50%;
            left:5px;
            font-size: 12px;
            color: #adadad;
            transform: translateY(-50%);
            z-index: -1;
            transition: .5s;
        }
        .txtb span::after{
            content: '';
            position: absolute;
            width: 0%;
            height: 2px;
            transform: .5s;
        }
        .focus + span::before{
            top:-5px;
        }
        .focus + span::after{
            width:100%;
        }
        .blk{
            height: 3px;
            width: 360px;
            background-color: #1890ff;
            position: relative;
            top: -187px;
            left: -40px;
        }

    </style>
</head>
<body>
<%--    <img src="../images/beijing.jpg" >--%>
<%--    <form method="post" action="${ctx}/login" class="login-form">--%>
<%--        <div class="blk"></div>--%>
<%--        <h1>欢迎登录<br>企业ERP管理系统</h1>--%>
<%--        <div class="txtb">--%>
<%--            <input type="text" name="loginname" value="${loginname}">--%>
<%--            <span data-placeholder="用户名" ></span>--%>
<%--        </div>--%>
<%--        <div class="txtb">--%>
<%--            <input type="password" name="password">--%>
<%--            <span data-placeholder="密码"></span>--%>
<%--        </div>--%>

<%--        <input type="submit" class="logbtn" value="登 录">--%>
<%--        ${requestScope.message}--%>
<%--    </form>--%>
    <div class="login-box">
        <h1>欢迎登录<br>企业ERP管理系统</h1>
        <form method="post" action="${ctx}/login">
            <div class="blk"></div>
            <div class="txtb">
                <input type="text" name="loginname" value="${loginname}">
                <span data-placeholder="用户名"></span>
            </div>
            <div class="txtb">
                <input type="password" name="password">
                <span data-placeholder="密码"></span>
            </div>
            <input type="submit" class="logbtn" value="登 录" style="font-family: Microsoft YaHei;font-size: 18px;">
<%--            ${requestScope.message}--%>
        </form>
    </div>
    <script type="text/javascript">
        $(".txtb input").on("focus",function(){
            $(this).addClass("focus");
        });

        $(".txtb input").on("blur",function(){
            if($(this).val() == "")
                $(this).removeClass("focus");
        });
    </script>
</body>
</html>