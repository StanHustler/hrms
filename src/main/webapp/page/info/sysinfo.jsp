<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="${ctx}/public/logo.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${ctx}/public/css/font.css">
    <link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
</head>
<body>
<div class="x-nav">
    <span class="layui-breadcrumb" style="visibility: visible;">
        <a href="${ctx}/">首页</a><span lay-separator="">/</span>
        <a href="">系统信息</a><span lay-separator="">/</span>
        <a><cite>运行环境</cite></a>
    </span>
</div>

<div class="x-body layui-anim layui-anim-up">
    <fieldset class="layui-elem-field">
        <legend>运行环境</legend>
        <div class="layui-field-box">
            <table class="layui-table">
                <tbody>
                <tr>
                    <th>版本</th>
                    <td>1.0</td></tr>
                <tr>
                    <th>服务器地址</th>
                    <td>127.0.0.1</td></tr>
                <tr>
                    <th>操作系统</th>
                    <td>win10</td></tr>
                <tr>
                    <th>运行环境</th>
                    <td>Apache Tomcat 8.0.23</td></tr>
                <tr>
                    <th>MYSQL版本</th>
                    <td>5.6</td></tr>
                <tr>
                    <th>jdk</th>
                    <td>1.8</td></tr>
                <tr>
                    <th>剩余空间</th>
                    <td>2019 Gb</td></tr>
                </tbody>
            </table>
        </div>
    </fieldset>

</div>

</body>
</html>