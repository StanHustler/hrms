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
    <link rel="shortcut icon" href="${ctx}/public/logo.ico" type="image/x-icon" />
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
        <a href="">仓库管理</a><span lay-separator="">/</span>
        <a><cite>仓库清单</cite></a>
    </span>
</div>

<div class="x-body">
    <div class="layui-row" style="" align="center">
        <form class="layui-form layui-col-md12 x-so" method="get" action="${ctx}/dept/list">
            <input class="layui-input" placeholder="开始日" name="start" id="start">
            <input class="layui-input" placeholder="截止日" name="end" id="end">
            <input type="text" name="content" style="width:50%;"  placeholder="请输入查找内容" autocomplete="off" class="layui-input">
            <input type="hidden" name="pageNum" value="1"/>
            <input type="hidden" name="pageSize" value="6"/>
            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>ID</th>
            <th>name</th>
            <th>count</th>
            <th>in</th>
            <th>out</th>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.list}" var="dept" varStatus="stat">
            <tr>
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
                </td>
                <td>${dept.id}</td>
                <td>${dept.name}</td>
                <td>${dept.count}</td>
                <td>${dept.input}</td>
                <td>${dept.output}</td>


                <!--  <td class="td-status">
                   <span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span></td> -->
                <td class="td-manage">
                    <!--  <a onclick="member_stop(this,'10001')" href="javascript:;"  title="启用">
                       <i class="layui-icon">&#xe601;</i>
                     </a> -->
                    <c:if test="${user_session.level=='0'}">
                        <a title="编辑"  onclick="x_admin_show('编辑','${ctx}/dept/add?id=${dept.id }');" href="javascript:;">

                            <i class="layui-icon">&#xe642;</i>
                        </a>

                        <a title="删除" onclick="member_del(this,'${dept.id }')" href="javascript:;">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
                    </c:if>
                </td>
            </tr>

        </c:forEach>




        </tbody>
    </table>
    <div class="page">
        <div>
            <a class="prev" href="">&lt;&lt;</a>
            <c:if test="${pageInfo.pageNum-1 != 0 }">
                <a class="num" href="../dept/list?pageNum=${pageInfo.pageNum-1}&pageSize=6">${pageInfo.pageNum - 1}</a>
            </c:if>
            <span class="current">${pageInfo.pageNum}</span>
            <c:if test="${pageInfo.pageNum + 1  <= pageInfo.pages }">
                <a class="num" href="../dept/list?pageNum=${pageInfo.pageNum+1}&pageSize=6">${pageInfo.pageNum + 1}</a>
            </c:if>
            <!-- <a class="num" href="">489</a> -->
            <a class="next" href="">&gt;&gt;</a>
        </div>
    </div>

</div>

</body>

</html>