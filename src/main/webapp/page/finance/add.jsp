<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${ctx}/public/css/font.css">
    <link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-nav">
    <span class="layui-breadcrumb" style="visibility: visible;">
        <a href="${ctx}/">首页</a><span lay-separator="">/</span>
        <a href="">财务管理</a><span lay-separator="">/</span>
        <a><cite>其他开支</cite></a>
    </span>
</div>
<div class="x-body" style="padding: 50px 0 0 30px">
    <form class="layui-form" method="POST" id="aform"  action="${ctx}/finance/add">
        <div class="layui-form-item" >
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>价格
            </label>
            <div class="layui-input-inline">
                <input type="text" id="count" name="count" required="" lay-verify="required"
                       autocomplete="off" class="layui-input"  style="width: 240%">
            </div>
        </div>
            <div class="layui-form-item" >
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>信息
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="info" name="info" required="" lay-verify="required"
                           autocomplete="off" class="layui-input"  style="width: 240%">
                </div>
            </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <input id="submitButton" type="button" value=" 提交" class="layui-btn" lay-filter="add" lay-submit=""/>

        </div>
    </form>
</div>
<script>
    $('#submitButton').click(()=>{
        layui.layer.alert("增加成功", {icon: 6},()=>{
            document.getElementById('aform').submit();
        })
    })
</script>

</body>
</html>