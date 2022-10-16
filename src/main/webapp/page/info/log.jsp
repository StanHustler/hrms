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
        <a><cite>日志文件</cite></a>
    </span>
</div>

<textarea name="desc" class="layui-textarea" style="height: 1000px" contenteditable="false">
Creating a new SqlSession
Registering transaction synchronization for SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@28a3898a]
JDBC Connection [com.mysql.cj.jdbc.ConnectionImpl@11b539ed] will be managed by Spring
==>  Preparing: select * from user where loginname = ? AND password = ?
==> Parameters: admin(String), 202cb962ac59075b964b07152d234b70(String)
<==    Columns: id, loginname, password, level, createdate, username
<==        Row: 8, admin, 202cb962ac59075b964b07152d234b70, 0, null, Admin
<==      Total: 1
Releasing transactional SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@28a3898a]
Transaction synchronization committing SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@28a3898a]
Transaction synchronization deregistering SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@28a3898a]
Transaction synchronization closing SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@28a3898a]
Creating a new SqlSession
SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@b68151c] was not registered for synchronization because synchronization is not active
JDBC Connection [com.mysql.cj.jdbc.ConnectionImpl@11b539ed] will not be managed by Spring
==>  Preparing: select SUM(adminNum) as adminNum , SUM(deptNum) as deptNum, SUM(employeeNum) as employeeNum, SUM(docNum) as docNum, SUM(noticeNum) as noticeNum from ( select count(1) as adminNum,0 as deptNum,0 as employeeNum,0 as docNum,0 as noticeNum from user union select 0,count(1) as deptNum ,0,0,0 from dept union select 0,0,count(1) as employeeNum,0,0 from employee union select 0,0,0,count(1) as docNum, 0 from document union select 0,0,0,0,count(1) as noticeNum from notice ) n
==> Parameters:
<==    Columns: adminNum, deptNum, employeeNum, docNum, noticeNum
<==        Row: 2, 0, 0, 0, 0
<==      Total: 1
Closing non transactional SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@b68151c]
/index
/welcome
/log

</textarea>

</body>
</html>