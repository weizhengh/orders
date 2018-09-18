<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8"><link rel="icon" href="https://static.jianshukeji.com/highcharts/images/favicon.ico">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>菜品信息</title>
  <meta name="description" content="这是一个 table 页面">
  <meta name="keywords" content="table">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="<%=basePath%>img/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="<%=basePath%>img/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="<%=basePath%>css/amazeui.min.css"/>
  <link rel="stylesheet" href="<%=basePath%>css/admin.css">
</head>




<body >

       
  
<form action="${pageContext.request.contextPath}/export.action" >  

       <button type="submit">导出报表</button>
       </form> 

<div id="container"  style="height:300px; height:500px;">
    	  </div>
       <script type="text/javascript" src="<%=basePath%>js/echarts.min.js"></script>
              <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/amazeui.min.js"></script>
<script src="<%=basePath%>js/app.js"></script>
<script type="text/javascript">
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;
app.title = '多 X 轴示例';



$.ajax({
    method:'post',
    url:'${pageContext.request.contextPath}/year.action',
    success:function(datas){
    var data = datas.split("|")[0];
    var data2 = datas.split("|")[1];
var colors = ['#5793f3', '#d14a61', '#675bba'];


option = {
    color: colors,

    tooltip: {
        trigger: 'none',
        axisPointer: {
            type: 'cross'
        }
    },
    legend: {
        data:['收入', '支出']
    },
    grid: {
        top: 70,
        bottom: 50
    },
    xAxis: [
        {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            axisLine: {
                onZero: false,
                lineStyle: {
                    color: colors[1]
                }
            },
            axisPointer: {
                label: {
                    formatter: function (params) {
                        return '支出 ' + params.value
                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                    }
                }
            },
            data: ["2018-1", "2018-2", "2018-3", "2018-4", "2018-5", "2018-6", "2018-7", "2018-8", "2018-9", "2018-10", "2018-11", "2018-12"]
        },
        {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            axisLine: {
                onZero: false,
                lineStyle: {
                    color: colors[0]
                }
            },
            axisPointer: {
                label: {
                    formatter: function (params) {
                        return '收入  ' + params.value
                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                    }
                }
            },
            data: ["2018-1", "2018-2", "2018-3", "2018-4", "2018-5", "2018-6", "2018-7", "2018-8", "2018-9", "2018-10", "2018-11", "2018-12"]
        }
    ],
    yAxis: [
        {
            type: 'value'
        }
    ],
    series: [
        {
            name:'收入',
            type:'line',
            xAxisIndex: 1,
            smooth: true,
            data: [parseFloat(data.split(",")[0]),
                   parseFloat(data.split(",")[1]),
                   parseFloat(data.split(",")[2]),
                   parseFloat(data.split(",")[3]),
                   parseFloat(data.split(",")[4]),
                   parseFloat(data.split(",")[5]),
                   parseFloat(data.split(",")[6]),
                   parseFloat(data.split(",")[7]),
                   parseFloat(data.split(",")[8]),
                   parseFloat(data.split(",")[9]),
                   parseFloat(data.split(",")[10]),
                   parseFloat(data.split(",")[11])]
        },
        {
            name:'支出',
            type:'line',
            smooth: true,
            data: [parseFloat(data2.split(",")[0]),
                   parseFloat(data2.split(",")[1]),
                   parseFloat(data2.split(",")[2]),
                   parseFloat(data2.split(",")[3]),
                   parseFloat(data2.split(",")[4]),
                   parseFloat(data2.split(",")[5]),
                   parseFloat(data2.split(",")[6]),
                   parseFloat(data2.split(",")[7]),
                   parseFloat(data2.split(",")[8]),
                   parseFloat(data2.split(",")[9]),
                   parseFloat(data2.split(",")[10]),
                   parseFloat(data2.split(",")[11])]
        }
        
    ]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
    }
});
       </script>

</body>
</html>