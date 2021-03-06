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
<title>提交订单</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/responsive.css">
<style type="text/css">
  input[type="date"]:after {
    content: attr(placeholder);
    position: absolute;
    left: .15rem;
    color: rgba(0,0,0,.3);
  }
  input[type="time"]:after {
    content: attr(placeholder);
    position: absolute;
    left: .15rem;
    color: rgba(0,0,0,.3);
  }
</style> 
</head>

<body ontouchstart="return true;">

	<!--头部-->
	<header>
		<div class="header">
			<h1>提交订单</h1>
			<a href="index.html" class="return"><i></i></a>
		</div>
	</header>
	
	<!--内容区-->
	<article class="main-container add-product">

		<!--地址-->
		<div class="order-Address line select " id="Edit-Address">
			<dl>
				<dt><i class="icon-head"></i>郭小帅&nbsp;&nbsp;<i class="icon-phone"></i>131****1111</dt>
				<dd>广东省 广州市 越秀区 广州中大道中111号</dd>
			</dl>
			<font class="icon-code"></font>
		</div>
		<!--添加地址-->
		<div class="order-add-address line hide" id="Add-Address">添加地址</div>

		<!--弹出管理地址层-->
		<div class="Edit-Address-Content fadeInBottom100" id="Edit-Address-Content">
			<div class="LayerHeader line">选择收货地址<button class="close pl"><i class="icon-plus rot45"></i></button><button class="head-r">添加</button></div>
			<ul class="line-li">
				<li class="select"><span class="icon-correct"></span>郭小帅，13112224413<p>广东省 广州市 天河区 广州中大道中111号</p><font class="icon-code" id="order-Edit-address"></font></li>
			</ul>
		</div>

		
		<!--弹出添加地址层-->

		<div class="Add-Address-Content fadeInBottom100" id="Add-Address-Content">
			
			<div class="LayerHeader line">添加收货地址<button class="close pl"><i class="icon-plus rot45"></i></button><button class="head-r">保存</button></div>
			
			<div class="list list-title">
				<ul>
					<li><i>收&nbsp;&nbsp;货&nbsp;&nbsp;人：</i><input type="text" id="name" placeholder="名字"></li>
					<li><i>联系电话：</i><input type="tel" id="name" placeholder="手机或固话"></li>
					<li class="list03"><i>所在地区：</i>
						<select name="select" id="select">
							<option value="" selected="selected">选择省份</option>
							<option value="">北京</option>
							<option value="">上海</option>
							<option value="">江西</option>
							<option value="">湖南</option>
							<option value="">湖北</option>
							<option value="">四川</option>
							<option value="">广西</option>
							<option value="">浙江</option>
							<option value="">福建</option>
							<option value="">河南</option>
							<option value="">辽宁</option>
							<option value="">吉林</option>
							<option value="">安徽</option>
							<option value="">重庆</option>
							<option value="">贵州</option>
							<option value="">云南</option>
							<option value="">山西</option>
							<option value="">陕西</option>
							<option value="">宁夏</option>
							<option value="">甘肃</option>
							<option value="">新疆</option>
							<option value="">青海</option>
							<option value="">香港</option>
							<option value="">澳门</option>
							<option value="">台湾</option>
						</select>
						<select name="select" id="select">
							<option value="" selected="selected">选择城市</option>
							<option value="">北京</option>
							<option value="">上海</option>
							<option value="">萍乡</option>
							<option value="">长沙</option>
							<option value="">武汉</option>
							<option value="">成都</option>
							<option value="">桂林</option>
							<option value="">广州</option>
						</select>
						<select name="select" id="select">
							<option value="" selected="selected">选择区县</option>
							<option value="">安源区</option>
							<option value="">湘东区</option>
							<option value="">经济开发区</option>
							<option value="">上栗县</option>
							<option value="">芦溪县</option>
							<option value="">莲花县</option>
						</select>
					</li>
					<li><i>详情地址：</i><input type="text" id="name" placeholder="街道门牌信息"></li>
					<li><i>邮政编码：</i><input type="tel" id="name" placeholder="邮政编码（选填）"></li>
				</ul>
			</div>
			
		</div>

		<!--已购产品-->
		<div class="order-product line" onclick="location.href='order-product.html'">
			<ul>
				<li><img src="img/img02.jpg" alt=""><img src="img/img06.jpg" alt=""><img src="img/img07.jpg" alt=""><img src="img/img08.jpg" alt=""></li>
			</ul>
			<font class="icon-arrowright"></font>
			<font>共9件</font>
		</div>
		
		<!--优惠券-->
		<ul class="order-Coupon line">
			<li class="line" onclick="location.href='member-coupon.html'">优惠券<font>1张可用</font><span>已使用</span><i class="icon-arrowright"></i></li>
			<li class="line hide">易卡(E卡)<font>0张可用</font><span>未使用</span><i class="icon-arrowright"></i></li>
			<li class="line hide">积分 <p>可用<q>1000</q>积分，抵<q>￥10</q>元</p><input type="checkbox" class="fr"></li>
		</ul>
		
		<!--订单备注-->
		<div class="order-Remark line">
			<p>订单备注</p>
			<samp><textarea class="line-ora" placeholder="限50个字以内"></textarea></samp>
		</div>
		
		<!--配送方式-->
		<div class="order-Delivery line" id="orderDelivery">
			<p>配送方式</p>
			<ol class="FilterContentList">
				<li><span class="select icon-correct">快递物流</span></li>
				<li><span>上门自提</span></li>
			</ol>
			<ul class="order-Delivery-Pick" style="display: none;">
				<li class="line">地址1：广东省 广州市 天河区 广州中山大道中111号</li>
				<li class="line">地址2：广东省 广州市 天河区 广州中山大道中112号</li>
			</ul>
			<dl class="order-Delivery-time line">
				<dt>选择商品配送时间</dt>
				<dd><input type="date" placeholder="配送日期" value="配送日期" id="date" class="icon-date"><input type="time" placeholder="配送时间" value="配送时间" id="time" class="icon-date"></dd>
			</dl>
		</div>
		
		<!--支付方式-->
		<div class="order-Delivery line" id="orderPays">
			<p>支付方式</p>
			<ol class="FilterContentList">
				<li><span class="select icon-correct">在线支付</span></li>
				<li><span>货到付款</span></li>
			</ol>
			<div class="list">
				<ul class="line">
					<li class="select"><i class="icon-alipay"></i>支付宝支付<em class="icon-correct"></em></li>
					<li><i class="icon-weixinpay"></i>微信支付<em class="icon-correct"></em></li>
				</ul>
			</div>
		</div>
		
		<!--总金额-->
		<ul class="order-Total-Price line">
			<li><span>¥3578.0</span>商品金额</li>
			<li><span>¥10.0</span>运费</li>
		</ul>
		<br><br>



		<!--订单支付-->
		<div class="orderPay fadeInBottom20 hide" id="orderPay">
			<div class="LayerHeader line">合计：<span class="cr231">¥3588.0</span><button class="close"><i class="icon-plus rot45"></i></button></div>
			<div class="list">
				<ul class="line">
					<li class="select"><i class="icon-alipay"></i>支付宝支付<span class="icon-arrowright"></span></li>
					<li><i class="icon-weixinpay"></i>微信支付<span class="icon-arrowright"></span></li>
					<li><i class="icon-bankpay"></i>银行卡支付<span class="icon-arrowright"></span></li>
				</ul>
			</div>
			<div class="LayerFooter"><p>本次交易属于担保交易，在您确认收货后，商家才能获得支付款，请放心购买。</p></div>
		</div>

	</article>

	<!--底部栏目-->
	<footer>
		<div class="button"><button>提交订单</button></div>
		<h4>实付款：¥9106.5</h4>
	</footer>

</body>
</html>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/swipe-min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//配送方式
		$("#orderDelivery ol li").bind('click',function(){
			
			if($(this).index()==0){
				$("#orderPays").show();
				$("#orderDelivery ol li:nth-child(1) span").addClass("select icon-correct");
				$("#orderDelivery ol li:nth-child(2) span").removeClass();
				$("#orderDelivery .order-Delivery-Pick").hide();
			}else{
				$("#orderPays").hide();
				$("#orderDelivery ol li:nth-child(1) span").removeClass();
				$("#orderDelivery ol li:nth-child(2) span").addClass("select icon-correct");
				$("#orderDelivery .order-Delivery-Pick").show();
			}
			
		})
		//支付方式
		$("#orderPays ol li").bind('click',function(){
			
			if($(this).index()==0){
				$("#orderPays ol li:nth-child(1) span").addClass("select icon-correct");
				$("#orderPays ol li:nth-child(2) span").removeClass();
				$("#orderPays ul").show();
			}else{
				$("#orderPays ol li:nth-child(1) span").removeClass();
				$("#orderPays ol li:nth-child(2) span").addClass("select icon-correct");
				$("#orderPays ul").hide();
			}
			
		})
		
		//支付方式
		$("#orderPays ul li").bind('click',function(){
			
			if($(this).index()==0){
				$("#orderPays ul li:nth-child(1)").addClass("select");
				$("#orderPays ul li:nth-child(2)").removeClass();
			}else{
				$("#orderPays ul li:nth-child(1)").removeClass();
				$("#orderPays ul li:nth-child(2)").addClass("select");
			}
			
		})
		
		var o = document.getElementById('date');
    o.onfocus = function(){
        this.removeAttribute('placeholder');
    };
    o.onblur = function(){
        if(this.value == '') this.setAttribute('placeholder','配送日期');
    };
    var o = document.getElementById('time');
    o.onfocus = function(){
        this.removeAttribute('placeholder');
    };
    o.onblur = function(){
        if(this.value == '') this.setAttribute('placeholder','配送时间');
    };
    
	})
	
</script>
