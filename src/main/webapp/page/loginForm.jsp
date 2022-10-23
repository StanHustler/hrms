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
        *{
            margin:0;
            padding:0;
            text-decoration: none;
            font-family: monospace;
            box-sizing: border-box;
        }
        body{
            min-height: 100vh;
            height:100%;
            width:100%;
            overflow: hidden;
        }
        .login-form{
            width: 360px;
            background: white;
            height: 500px;
            padding: 80px 40px;

            position: relative;
            left:80%;
            top: -150%;
            transform: translate(-50%,-150%);
        }
        .login-form h1{
            text-align: left;
            margin-bottom: 60px;
            color: #1890ff;
            font-size: 26px;
            font-family: "Microsoft YaHei";
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
        .logbtn{
            display: block;
            width: 100%;
            height: 55px;
            border: none;
            background-color: #1890ff;
            background-size: 200%;
            color: #fff;
            outline: none;
            cursor: pointer;
            transition: .5s;
            font-weight: bold;
            font-family: Microsoft YaHei;
            font-size: 18px;
        }
        .blk{
            height: 3px;
            width: 360px;
            background-color: #1890ff;
            position: relative;
            top: -80px;
            left: -40px;
        }

    </style>
</head>
<body>
    <img src="../images/beijing.jpg" >
    <form method="post" action="${ctx}/login" class="login-form">
        <div class="blk"></div>
        <h1>欢迎登录<br>企业ERP管理系统</h1>
        <div class="txtb">
            <input type="text" name="loginname" value="${loginname}">
            <span data-placeholder="用户名" ></span>
        </div>
        <div class="txtb">
            <input type="password" name="password">
            <span data-placeholder="密码"></span>
        </div>

        <input type="submit" class="logbtn" value="登 录">
        ${requestScope.message}
    </form>
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