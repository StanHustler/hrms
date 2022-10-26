<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="${ctx}/public/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/public/css/font.css">
    <link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
    <script src="https://at.alicdn.com/t/c/font_3720029_dp06f8ww7rt.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
        .icon {
            width: 1em;
            height: 1em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
            font-size: 28px;
        }
    </style>
</head>
<body>
<div class="x-body layui-anim layui-anim-up">
    <blockquote class="layui-elem-quote">欢迎管理员：
        <span class="x-red">${user_session.username}</span>！
        <div id="showDate">当前时间:123</div>
    </blockquote>
    <fieldset class="layui-elem-field">
        <legend>数据统计</legend>
        <div class="layui-field-box">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
                             lay-arrow="none" style="width: 100%; height: 90px;">
                            <div carousel-item="">
                                <ul class="layui-row layui-col-space10 layui-this">
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>管理员数</h3>
                                            <p><cite>${headerr.adminNum}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>部门数</h3>
                                            <p><cite>${headerr.deptNum}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>职工数</h3>
                                            <p><cite>${headerr.employeeNum}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>公告数</h3>
                                            <p><cite>${headerr.noticeNum}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>文件数</h3>
                                            <p><cite>${headerr.docNum}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>日志数</h3>
                                            <p><cite>1</cite></p>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </fieldset>

    <fieldset class="layui-elem-field">
        <legend>财物部统计</legend>
        <div class="layui-field-box">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
                             lay-arrow="none" style="width: 100%; height: 90px;">
                            <div carousel-item="">
                                <ul class="layui-row layui-col-space10 layui-this">
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>收入总计</h3>
                                            <p><cite>${input}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>支出总计</h3>
                                            <p><cite>${-output}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>销售成交量</h3>
                                            <p><cite>${getCountSale}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>采购成交量</h3>
                                            <p><cite>${getCountPurchase}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>短缺商品量</h3>
                                            <p><cite>${numShort}</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>商品种类数量</h3>
                                            <p><cite>${getCountInventory}</cite></p>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </fieldset>
    <br/>
    <fieldset class="layui-elem-field" style="display: inline-block;">
        <legend>采购统计</legend>
        <div class="layui-field-box">
            <div id="main" style="height: 400px;width: 650px"></div>
        </div>

    </fieldset>
    <fieldset class="layui-elem-field" style="display: inline-block;">
        <legend>xx统计</legend>
        <div class="layui-field-box" style="float: right;">
            <div id="pie" style="height: 400px;width: 650px"></div>
        </div>
    </fieldset>
</div>
<script type="text/javascript">
    var i = 0;

    function myDate() {
        var now = new Date();
        var year = now.getFullYear();
        var month = now.getMonth() + 1;
        var day = now.getDate();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var seconds = now.getSeconds();

        document.getElementById("showDate").innerHTML = "当前时间:  " + year + "年 " + month + "月 " + day
            + "日 " + hours + ":" + minutes + ":" + seconds;
    }

    setInterval(myDate, 1000);
</script>
</body>
<script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.4.0/echarts.min.js"></script>
<script type="text/javascript">
    $.post("/purchase/api/recent",(data)=>{
        var chartDom = document.getElementById('main');
        var myChart = echarts.init(chartDom);
        const option1 = {
            xAxis: {
                type: 'category',
                data: data.day
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    data: data.count,
                    type: 'bar'
                }
            ]
        };
        myChart.setOption(option1);
    });


</script>
<script type="text/javascript">

    $.post("/inventory/api/ratio", (t1) => {
        var chartDom = document.getElementById('pie');
        var myChart = echarts.init(chartDom);
        const option = {
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: 'bottom',
                left: 'center'
            },
            series: [
                {
                    type: 'pie',
                    radius: ['40%', '70%'],
                    avoidLabelOverlap: false,
                    itemStyle: {
                        borderRadius: 10,
                        borderColor: '#fff',
                        borderWidth: 2
                    },
                    label: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '40',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: t1
                }
            ]
        };
        myChart.setOption(option);
    });

</script>
</html>