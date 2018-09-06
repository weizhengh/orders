<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze后台管理系统模板HTML首页 - cssmoban</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="<%=basePath%>img/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="<%=basePath%>img/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="<%=basePath%>css/amazeui.min.css"/>
  <link rel="stylesheet" href="<%=basePath%>css/admin.css">
  <style>
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;
    }
    .header p {
      font-size: 14px;
    }
  </style>
</head>
<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Amaze</strong> <small>后台管理模板HTML</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>
<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="<%=basePath%>url.action?url=admin-index"><span class="am-icon-home"></span> 首页</a></li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 页面模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
          <li><a href="<%=basePath%>url.action?url=admin/admin-user" class="am-cf"><span class="am-icon-check"></span> 个人资料<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
          <li><a href="<%=basePath%>url.action?url=admin/admin-help"><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
          <li><a href="<%=basePath%>url.action?url=admin/admin-gallery"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
          <li><a href="<%=basePath%>url.action?url=admin/admin-log"><span class="am-icon-calendar"></span> 系统日志</a></li>
          <li><a href="<%=basePath%>url.action?url=admin/admin-404"><span class="am-icon-bug"></span> 404</a></li>
        </ul>
      </li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="am-icon-file"></span> 订单管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
          <li><a href="<%=basePath%>url.action?url=admin/admin-table"><span class="am-icon-table"></span> 订单管理</a></li>
        </ul>
      </li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-navuser'}"><span class="am-icon-file"></span> 用户管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-navuser">
          <li><a href="<%=basePath%>url.action?url=admin/admin-table"><span class="am-icon-table"></span> 员工信息</a></li>
          <li><a href="<%=basePath%>url.action?url=admin/admin-table"><span class="am-icon-table"></span> 用户信息</a></li>
        </ul>
      </li>
       <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-navrole'}"><span class="am-icon-file"></span> 权限管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-navrole">
          <li><a href="<%=basePath%>url.action?url=admin/admin-table"><span class="am-icon-table"></span> 权限分类</a></li>
          <li><a href="<%=basePath%>url.action?url=admin/admin-table"><span class="am-icon-table"></span> 菜单分类</a></li>
        </ul>
      </li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav3'}"><span class="am-icon-file"></span> 菜品管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav3">
          <li><a href="<%=basePath%>url.action?url=admin/admin-table"><span class="am-icon-table"></span> 菜品信息</a></li>
          <li><a href="<%=basePath%>url.action?url=admin/admin-table"><span class="am-icon-table"></span> 菜品分类</a></li>
        </ul>
      </li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav4'}"><span class="am-icon-file"></span> 酒水管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav4">
          <li><a href="<%=basePath%>drink/selectAll.action"><span class="am-icon-table"></span> 酒水信息</a></li>
          <li><a href="<%=basePath%>drinkSoft/selectAll.action"><span class="am-icon-table"></span> 酒水分类</a></li>
        </ul>
      </li>
      <li><a href="admin-form.jsp"><span class="am-icon-pencil-square-o"></span> 表单</a></li>
      <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>时光静好，与君语；细水流年，与君同。—— Amaze</p>
      </div>
    </div>
  </div>
  <!-- sidebar end -->
</body>
</html>