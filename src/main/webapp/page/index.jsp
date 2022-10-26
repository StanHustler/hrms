<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>人事管理系统</title>
    <meta name="theme-color" content="#1890ff">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="shortcut icon" href="${ctx}/public/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/public/css/font.css">
    <link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="${ctx}/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>
    <script src="https://at.alicdn.com/t/c/font_3720029_kifmdhm1s3d.js"></script>
    <style type="text/css">
        .icon {
            width: 1.2em; height: 1.2em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
        }
        .layui-nav-child{
            min-width: 200%;
        }
        #btin{
            width: 38px;
            height: 38px;
            box-sizing: border-box;
            display: block;
            margin: 2px auto 0px;
            background-color:#1890ff;
            border: 2px solid #fff;
        }
        .out{
            width: 42px;
            height: 42px;
            border-radius: 4px;
            display:inline-block;
        }
        #btin button{
            border: none;
        }
    </style>
</head>
<body>
<!-- 顶部开始 -->
<div class="container" id="nav">
    <div class="logo"><a href="./index.html">企业ERP管理系统</a></div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>

    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="layui-icon">&#xe66a;</i>
                主题颜色
            </a>
            <dl class="layui-nav-child" style="min-height: 300%;">
                            <div style="margin-top:10px;text-align: center;">
                                <label style="color: black">Backgroud Color</label><br>
                                <div class="out" id="btout" style="background-color:#1890ff">
                                    <div id="btin" onclick="change()">
                                        <button></button>
                                    </div>
                                </div>
                                <div class="out" id="btout1">
                                    <div id="btin" onclick="change1()" style="background-color:#FFB800">
                                        <button ></button>
                                    </div>
                                </div>
                                <div class="out" id="btout2" >
                                    <div id="btin" onclick="change2()" style="background:#393D49;">
                                        <button></button>
                                    </div>
                                </div>
                                <div class="out" id="btout3">
                                    <div id="btin" onclick="change3()" style="background:#009688;">
                                        <button></button>
                                    </div>
                                </div>
                            </div>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a>
                <i class="layui-icon">&#xe667;</i>
                消息通知
                <span class="layui-badge layui-bg-gray" style="position: relative;top:2px;height:15px;width:4px;"><cite style="position:relative;top:-1px;left:-2.5px;">${getCountNotice}</cite></span>
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">${user_session.username}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="./logout?username=${user_session.username}">个人信息</a></dd>
                <dd><a href="./logout?username=${user_session.username}">修改密码</a></dd>
                <dd><a href="./logout?username=${user_session.username}">退出系统</a></dd>
            </dl>
        </li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <c:if test="${user_session.level=='0'}">
                <li>
                    <a href="javascript:;">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-yonghu"></use>
                        </svg>
                        <cite>用户管理[管理员]</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="${ctx }/user/list?pageNum=1&pageSize=6">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>用户列表</cite>
                            </a>
                        </li>

                        <li>
                            <a _href="${ctx }/user/add">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>添加用户</cite>
                            </a>
                        </li>

                    </ul>
                </li>
            </c:if>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-bumenguanli2"></use>
                    </svg>
                    <cite>部门管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx }/dept/list?pageNum=1&pageSize=6">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>部门列表</cite>
                        </a>
                    </li>
                    <c:if test="${user_session.level=='0'}">
                        <li>
                            <a _href="${ctx }/dept/add">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>添加部门</cite>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-zhiweimoban"></use>
                    </svg>
                    <cite>职位管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx }/job/list?pageNum=1&pageSize=6">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>职位列表</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${ctx }/job/add">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加职位</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-yonghuguanli3"></use>
                    </svg>
                    <cite>员工管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx }/employee/list?pageNum=1&pageSize=6">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>员工列表</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${ctx }/employee/add">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加员工</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-qiyezhaopin"></use>
                    </svg>
                    <cite>招聘管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx }/recruit/list?pageNum=1&pageSize=6">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>招聘列表</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${ctx }/recruit/toadd">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>招聘需求</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-navicon-gggl"></use>
                    </svg>
                    <cite>公告管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx }/notice/list?pageNum=1&pageSize=6">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>公告查询</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${ctx }/notice/add">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加公告</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-caigouguanli-"></use>
                    </svg>
                    <cite>采购管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx}/purchase/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>采购订单</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${ctx}/purchase/add">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>采购入库</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-cangkuguanli1"></use>
                    </svg>
                    <cite>仓库管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx}/inventory/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>仓库清单</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiaoshou-"></use>
                    </svg>
                    <cite>销售管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx}/sale/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>销售列表</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${ctx}/sale/add">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>销售出库</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-caiwuguanli"></use>
                    </svg>
                    <cite>财务管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx}/finance/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>财务清单</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${ctx}/finance/add">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>其他开支</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xitongxinxi"></use>
                    </svg>
                    <cite>系统信息</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${ctx }/sysinfo">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>运行环境</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${ctx }/log">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>日志文件</cite>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>首页</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='${ctx}/welcome' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <!--TODO: sign -->
    <div class="copyright">@xxx - xxx</div>
</div>
<!-- 底部结束 -->

</body>
<script>
    function change(){
        document.getElementById("btout").style.background="#1890ff";
        document.getElementById("btout1").style.background="transparent";
        document.getElementById("btout2").style.background="transparent";
        document.getElementById("btout3").style.background="transparent";
        document.getElementById("nav").style.background="#1890ff";
    }
    function change1(){
        document.getElementById("btout1").style.background="#FFB800";
        document.getElementById("btout2").style.background="transparent";
        document.getElementById("btout3").style.background="transparent";
        document.getElementById("btout").style.background="transparent";
        document.getElementById("nav").style.background="#FFB800";
    }
    function change2(){
        document.getElementById("btout2").style.background="#393D49";
        document.getElementById("btout").style.background="transparent";
        document.getElementById("btout1").style.background="transparent";
        document.getElementById("btout3").style.background="transparent";
        document.getElementById("nav").style.background="#393D49";
    }
    function change3(){
        document.getElementById("btout3").style.background="#009688";
        document.getElementById("btout").style.background="transparent";
        document.getElementById("btout1").style.background="transparent";
        document.getElementById("btout2").style.background="transparent";
        document.getElementById("nav").style.background="#009688";
    }
</script>
</html>