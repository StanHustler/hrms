<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/public/css/font.css">
    <link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
    <script type="text/javascript"
            src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .layui-form-checked i, .layui-form-checked:hover i {
            color: #1890ff;
        }
        .layui-form-checked, .layui-form-checked:hover {
            border-color: #1890ff;
        }
        .layui-form-checked span, .layui-form-checked:hover span {
            background-color: #1890ff;
        }
        .layui-form-select dl dd.layui-this{
            background-color: #1890ff;
        }
    </style>
</head>

<body>
<div class="x-nav">
    <span class="layui-breadcrumb" style="visibility: visible;">
        <a href="${ctx}/">首页</a><span lay-separator="">/</span>
        <a href="">用户管理</a><span lay-separator="">/</span>
        <a><cite>添加用户</cite></a>
    </span>
</div>
<div class="x-body" style="padding: 50px 0 0 30px" >
    <form class="layui-form" method="POST" id="deptForm" action="${ctx}/user/add" >
        <input type="hidden" name="id" id="id" value="${job.id }">
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>登录名
            </label>
            <input type="text" id="username" name="loginname"  required=""
                   lay-verify="required" autocomplete="off" placeholder="请输入登录名" class="layui-input"
                   value="${job.loginname }" style="width:40%">
        </div>
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>用户名
            </label>
            <input type="text" name="username" required="" lay-verify="required" placeholder="请输入用户名"
                   autocomplete="off" class="layui-input" value="${job.username }" style="width: 40%">
        </div>
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>密码
            </label>
            <input type="password" id="password" name="password" required="" placeholder="请输入密码"
            lay-verify="required" style="width: 40%"
            autocomplete="off" class="layui-input" value="${job.password }">
        </div>
        <div class="layui-form-item">
            <label for="level" class="layui-form-label">
                <span class="x-red">*</span>用户组
            </label>
            <div class="layui-input-inline">
                <select name="level" lay-verify="required" lay-search="">
                    <option value="">请选择用户组</option>
                    <option value="1">主管</option>
                    <option value="2">人事</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block" style="margin-left:0;">
                <label for="level" class="layui-form-label" style="float:left">
                    仓库权限
                </label>
                <input type="checkbox" name="like[write]" title="ON">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block" style="margin-left:0;">
                <label for="level" class="layui-form-label" style="float:left">
                    财务权限
                </label>
                <input type="checkbox" name="like[write]" title="ON">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block" style="margin-left:0;">
                <label for="level" class="layui-form-label" style="float:left">
                    客户权限
                </label>
                <input type="checkbox" name="like[write]" title="ON">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <input type="submit" value=" 提交" id="btn1" class="layui-btn" lay-filter="add"
                   lay-submit=""/>

        </div>
        <div class="aa">
            <input type="hidden" id="update" value="${update}">
        </div>
    </form>
</div>
<script>
  layui.use(['form', 'layer'], function () {
    $ = layui.jquery;
    var form = layui.form
        , layer = layui.layer;

    //自定义验证规则
    form.verify({
      nikename: function (value) {
        if (value.length < 5) {
          return '昵称至少得5个字符啊';
        }
      }
      , pass: [/(.+){6,12}$/, '密码必须6到12位']
      , repass: function (value) {
        if ($('#L_pass').val() != $('#L_repass').val()) {
          return '两次密码不一致';
        }
      }
    });

    //监听提交
    form.on('submit(add)', function (data) {


      // console.log(document.getElementById("update").innerText);
      //发异步，把数据提交
      // console.log(s);
      var id = document.getElementById("id").value;
      console.log(update);
      if (id === '' || id === null) {
        console.log()
        layer.alert("增加成功", {icon: 6}, function () {
          document.getElementById('deptForm').submit();
          // 获得frame索引
          var index = parent.layer.getFrameIndex(window.name);
          //关闭当前frame
          parent.layer.close(index);

        });
      } else {
        console.log()
        layer.alert("修改成功", {icon: 6}, function () {
          document.getElementById('deptForm').submit();
          // 获得frame索引
          var index = parent.layer.getFrameIndex(window.name);
          //关闭当前frame
          parent.layer.close(index);

        });
      }
      return false;
    });

  });

</script>

<script type="text/javascript">
  $("#username").mouseout(function () {
    $.ajax({
      type: "GET",
      url: "./repeat",
      data: {
        name: document.getElementById("username").value
      },
      success: function (data) {
        if (data == 1) {
          document.getElementById("repeat").innerHTML = "登陆名已经重复,请修改"
          $("#btn1").attr('disabled', true);
        } else {
          document.getElementById("repeat").innerHTML = "✓"
          $("#btn1").attr('disabled', false);
        }
      }
    });
  });
</script>

<script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script>
</body>

</html>