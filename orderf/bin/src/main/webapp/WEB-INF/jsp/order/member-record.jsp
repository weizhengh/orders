<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
<!-- 声明文档使用的字符编码 -->
<meta charset='utf-8'>
<!-- 优先使用 IE 最新版本和 Chrome -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<!-- 页面描述 -->
<meta name="description" content="不超过150个字符"/>
<!-- 页面关键词 -->
<meta name="keywords" content=""/>
<!-- 网页作者 -->
<meta name="author" content="guo,1057540638@qq.com"/>
<!-- 搜索引擎抓取 -->
<meta name="robots" content="index,follow"/>
<!-- 为移动设备添加 viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=3,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, minimal-ui" />
<!-- `width=device-width` 会导致 iPhone 5 添加到主屏后以 WebApp 全屏模式打开页面时出现黑边 http://bigc.at/ios-webapp-viewport-meta.orz -->

<!-- iOS 设备 begin -->
<meta name="apple-mobile-web-app-title" content="标题">
<!-- 添加到主屏后的标题（iOS 6 新增） -->
<meta name="apple-mobile-web-app-capable" content="yes"/>
<!-- 是否启用 WebApp 全屏模式，删除苹果默认的工具栏和菜单栏 -->

<!--meta name="apple-itunes-app" content="app-id=myAppStoreID, affiliate-data=myAffiliateData, app-argument=myURL" -->
<!-- 添加智能 App 广告条 Smart App Banner（iOS 6+ Safari） -->
<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
<!-- 设置苹果工具栏颜色 -->
<meta name="format-detection" content="telphone=no, email=no"/>
<!-- 忽略页面中的数字识别为电话，忽略email识别 -->

<!-- 启用360浏览器的极速模式(webkit) -->
<meta name="renderer" content="webkit">
<!-- 避免IE使用兼容模式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 不让百度转码 -->
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!-- 针对手持设备优化，主要是针对一些老的不识别viewport的浏览器，比如黑莓 -->
<meta name="HandheldFriendly" content="true">
<!-- 微软的老式浏览器 -->
<meta name="MobileOptimized" content="320">
<!-- uc强制竖屏 -->
<meta name="screen-orientation" content="portrait">
<!-- QQ强制竖屏 -->
<meta name="x5-orientation" content="portrait">
<!-- UC强制全屏 -->
<meta name="full-screen" content="yes">
<!-- QQ强制全屏 -->
<meta name="x5-fullscreen" content="true">
<!-- UC应用模式 -->
<meta name="browsermode" content="application">
<!-- QQ应用模式 -->
<meta name="x5-page-mode" content="app">
<!-- windows phone 点击无高光 -->
<meta name="msapplication-tap-highlight" content="no">
<!-- iOS 图标 begin -->
<link rel="apple-touch-icon-precomposed" href="/apple-touch-icon-57x57-precomposed.png"/>
<!-- iPhone 和 iTouch，默认 57x57 像素，必须有 -->
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/apple-touch-icon-114x114-precomposed.png"/>
<!-- Retina iPhone 和 Retina iTouch，114x114 像素，可以没有，但推荐有 -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/apple-touch-icon-144x144-precomposed.png"/>
<!-- Retina iPad，144x144 像素，可以没有，但推荐有 -->
<!-- iOS 图标 end -->

<!-- iOS 启动画面 begin -->
<link rel="apple-touch-startup-image" sizes="768x1004" href="img/App-ios-logo-152x152.png"/>
<!-- iPad 竖屏 768 x 1004（标准分辨率） -->
<link rel="apple-touch-startup-image" sizes="1536x2008" href="img/App-ios-logo-152x152.png"/>
<!-- iPad 竖屏 1536x2008（Retina） -->
<link rel="apple-touch-startup-image" sizes="1024x748" href="img/App-ios-logo-152x152.png"/>
<!-- iPad 横屏 1024x748（标准分辨率） -->
<link rel="apple-touch-startup-image" sizes="2048x1496" href="img/App-ios-logo-152x152.png"/>
<!-- iPad 横屏 2048x1496（Retina） -->

<link rel="apple-touch-startup-image" href="img/App-ios-logo-152x152.png"/>
<!-- iPhone/iPod Touch 竖屏 320x480 (标准分辨率) -->
<link rel="apple-touch-startup-image" sizes="640x960" href="img/App-ios-logo-152x152.png"/>
<!-- iPhone/iPod Touch 竖屏 640x960 (Retina) -->
<link rel="apple-touch-startup-image" sizes="640x1136" href="img/App-ios-logo-152x152.png"/>
<!-- iPhone 5/iPod Touch 5 竖屏 640x1136 (Retina) -->
<!-- iOS 启动画面 end -->

<!-- iOS 设备 end -->
<meta name="msapplication-TileColor" content="#000"/>
<!-- Windows 8 磁贴颜色 -->
<meta name="msapplication-TileImage" content="icon.png"/>
<!-- Windows 8 磁贴图标 -->

<link rel="alternate" type="application/rss+xml" title="RSS" href="/rss.xml"/>
<!-- 添加 RSS 订阅 -->
<link rel="shortcut icon" type="image/ico" href="/favicon.ico"/>
<!-- 添加 favicon icon -->
<!-- sns 社交标签 begin -->
<!-- 参考微博API -->
<meta property="og:type" content="类型" />
<meta property="og:url" content="URL地址" />
<meta property="og:title" content="标题" />
<meta property="og:image" content="图片" />
<meta property="og:description" content="描述" />
<!-- sns 社交标签 end -->
<title>购物记录</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/responsive.css">
</head>

<body ontouchstart="return true;">

	<!--头部-->
	<header>
		<div class="header">
			<h1>购物记录</h1>
			<a href="member.html" class="return"><i></i></a>
		</div>
	</header>
	
	<!--内容区-->
	<article class="main-container">
		
		<!--产品-->
		<div class="list-content cartlist order-Pro">
			
			<div class="order-Pro-Title line">订单编号：201506101045</div>
			<ol>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img01.jpg" alt=""></div></a>
					<div class="pro-con"><h3>家乐都有机里脊肉 500g</h3><b>￥150.00<s>￥180.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img02.jpg" alt=""></div></a>
					<div class="pro-con"><h3>江西赣南脐橙</h3><b>￥49.90<s>￥69.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img04.jpg" alt=""></div></a>
					<div class="pro-con"><h3>花果山 智利蓝莓</h3><b>￥79.00<s>￥90.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
			</ol>
			
			<div class="order-Pro-Title line">订单编号：201506101045</div>
			<ol>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img06.jpg" alt=""></div></a>
					<div class="pro-con"><h3>赣南脐橙 （箱）</h3><b>￥26.00<s>￥36.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img09.jpg" alt=""></div></a>
					<div class="pro-con"><h3>新疆阿克苏冰糖心苹果 6只/盒</h3><b>￥28.80<s>￥35.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img10.jpg" alt=""></div></a>
					<div class="pro-con"><h3>红心猕猴桃</h3><b>￥92.80<s>￥110.00</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img13.jpg" alt=""></div></a>
					<div class="pro-con"><h3>营养健康 散皮蛋（无泥大）</h3><b>￥1.50<s>￥2.50</s></b></div>
					<i class="icon-correct"></i>
				</li>
			</ol>
			
			<div class="order-Pro-Title line">订单编号：201506101045</div>
			<ol>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img01.jpg" alt=""></div></a>
					<div class="pro-con"><h3>家乐都有机里脊肉 500g</h3><b>￥150.00<s>￥180.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img02.jpg" alt=""></div></a>
					<div class="pro-con"><h3>江西赣南脐橙</h3><b>￥49.90<s>￥69.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img04.jpg" alt=""></div></a>
					<div class="pro-con"><h3>花果山 智利蓝莓</h3><b>￥79.00<s>￥90.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
			</ol>
			
			<div class="order-Pro-Title line">订单编号：201506101045</div>
			<ol>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img06.jpg" alt=""></div></a>
					<div class="pro-con"><h3>赣南脐橙 （箱）</h3><b>￥26.00<s>￥36.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img09.jpg" alt=""></div></a>
					<div class="pro-con"><h3>新疆阿克苏冰糖心苹果 6只/盒</h3><b>￥28.80<s>￥35.90</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img10.jpg" alt=""></div></a>
					<div class="pro-con"><h3>红心猕猴桃</h3><b>￥92.80<s>￥110.00</s></b></div>
					<i class="icon-correct"></i>
				</li>
				<li class="line">
					<a href="#"><div class="pro-img"><img src="img/img13.jpg" alt=""></div></a>
					<div class="pro-con"><h3>营养健康 散皮蛋（无泥大）</h3><b>￥1.50<s>￥2.50</s></b></div>
					<i class="icon-correct"></i>
				</li>
			</ol>
			
		</div>
		
	</article>

</body>
</html>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/swipe-min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
