<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh">
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
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=3,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no,target-densityDpi=medium-dpi, minimal-ui" />
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
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no,minimal-ui" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="renderer" content="webkit" />
	<meta name="full-screen" content="yes" />
	<meta name="x5-fullscreen" content="true" />
	<meta name="format-detection" content="telphone=no, email=no" />
	<meta name="apple-mobile-web-app-status-bar-style" content="default" />
	<title>基于jQuery的移动端前端框架AKjs|DEMO_jQuery之家-自由分享jQuery、html5、css3的插件库</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" /><!--公共样式以及布局相关样式-->
  	<link rel="stylesheet" type="text/css" href="css/theme.default.css" /><!--颜色相关样式-->
  	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/font.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/footer.css">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/responsive.css">
</head>
<body>
	<!--头部-->
	<header class="search" id="search">
		<div class="header">
			<h1><img src="img/logo.png"></h1>
			<div class="search-box" id="search-box"><i class="icon-sousuo"></i><input type="search" id="search-input" class="" placeholder="搜索商品" /><button id="search-cancel">取消</button><button id="search-submit">搜索</button></div>
			<div class="head-delivery head-r" id="Delivery"><i class="icon-address"></i><span id="head-delivery">选择配送点</span></div>
		</div>
		<!--通知公告/客服电话-->
	</header>

	<!--搜索内容-->
	<div class="search-content" id="search-content">
		<i class="icon-font"></i>
	</div>
<main>

  <!----------Andrew_Typeahead---------->
  <form action="#" method="get" onsubmit="return false;">
    <div class="module press ovh bg_white bor_bottom bor_gray_ddd">
      <fieldset class="ml_3 mr_3 pl_2em rel h_24em mt_05em mb_05em ovh bor_rad_05em border bor_gray_ddd bg_gray_f9f">
        <i class="abs left_0 ml_03em text_14em c_gray_999 line_h_18em icon-im_sousuo_b"></i>
        <input type="search" class="plug_Typeahead c_gray_777 w_100 h_in" placeholder="请输入搜索关键词（例：北京）" value="" />
      </fieldset>
    </div>
  </form>

  <!----------Andrew_Slider---------->
  <div class="plug_slider w_100 h_12_em ovh rel">
    <ul>
      <li><img src="img/tibet-1.jpg"></li>
      <li><img src="img/tibet-2.jpg"></li>
      <li><img src="img/tibet-3.jpg"></li>
    </ul>
  </div>

  <!----------Andrew_Tabs---------->
  <div class="plug_tabs mt_5">
    <nav class="ovh press bg_white">
      <ul class="ovh list_h_3em nav_line">
        <li class="fl rel pl_1em pr_1em text_al_c bor_bottom2 bor_title c_title pointer touchstart">Tab-1</li> <!--增加id="plug_tab1" 可使用Ajax请求-->
        <li class="fl rel pl_1em pr_1em text_al_c bor_bottom bor_gray_ddd pointer touchstart">Tab-2</li> <!--增加id="plug_tab2" 可使用Ajax请求-->
        <li class="fl rel pl_1em pr_1em text_al_c bor_bottom bor_gray_ddd pointer touchstart">Tab-3</li> <!--增加id="plug_tab3" 可使用Ajax请求-->
        <li class="fl rel pl_1em pr_1em text_al_c bor_bottom bor_gray_ddd pointer touchstart">Tab-4</li> <!--增加id="plug_tab4" 可使用Ajax请求-->
      </ul>
    </nav>
    <article class="rel ovh">
      <div class="rel ovh bg_white">
        <section class="rel ovh">
          <div class="ma_3 c_gray_777 line_h_18em"> <!--增加id="plug_ajax1" 可使用Ajax请求-->
            欢迎使用Andrew移动端jQuery插件。<br>
            请左右滑动该区域切换Tabs的内容。<br>
            当前内容是Tabs的第一个页面1。
          </div>
        </section>
        <section class="rel ovh">
          <div class="ma_3 c_gray_777 line_h_18em"> <!--增加id="plug_ajax2" 可使用Ajax请求-->
            欢迎使用Andrew移动端jQuery插件。<br>
            请左右滑动该区域切换Tabs的内容。<br>
            当前内容是Tabs的第二个页面2。
          </div>
        </section>
        <section class="rel ovh">
          <div class="ma_3 c_gray_777 line_h_18em"> <!--增加id="plug_ajax3" 可使用Ajax请求-->
            欢迎使用Andrew移动端jQuery插件。<br>
            请左右滑动该区域切换Tabs的内容。<br>
            当前内容是Tabs的第三个页面3。
          </div>
        </section>
        <section class="rel ovh">
          <div class="ma_3 c_gray_777 line_h_18em"> <!--增加id="plug_ajax4" 可使用Ajax请求-->
            欢迎使用Andrew移动端jQuery插件。<br>
            请左右滑动该区域切换Tabs的内容。<br>
            当前内容是Tabs的第四个页面4。
          </div>
        </section>
      </div>
    </article>
  </div>

  <!----------Andrew_StepOrder---------->
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">步骤效果</h3>
    <article class="plug_step pa_3 bg_white dis_none">
      <ul class="length4">
        <li>
          <strong class="wh_3em line_h_3em bg_gray_ccc c_white border2 bor_white bor_rad_50">1</strong>
          <h6 class="c_gray_777 line_h_24em">同意条款</h6>
        </li>
        <li>
          <strong class="wh_3em line_h_3em bg_gray_ccc c_white border2 bor_white bor_rad_50">2</strong>
          <h6 class="c_gray_777 line_h_24em">提交信息</h6>
        </li>
        <li>
          <strong class="wh_3em line_h_3em bg_gray_ccc c_white border2 bor_white bor_rad_50">3</strong>
          <h6 class="c_gray_777 line_h_24em">验证信息</h6>
        </li>
        <li>
          <strong class="wh_3em line_h_3em bg_gray_ccc c_white border2 bor_white bor_rad_50">4</strong>
          <h6 class="c_gray_777 line_h_24em">已完成</h6>
        </li>
      </ul>
    </article>
  </div>

  <!----------Andrew_Dialog & Andrew_PopupWin---------->
  <div class="module press bg_white mt_5 pb_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">按钮效果</h3>
    <button type="button" class="mt_5 btn_h_au wm_94 bg_title c_white h_32em" id="plug_popup">Popup Window</button>
    <button type="button" class="mt_5 btn_h_au wm_94 bg_title c_white h_32em" id="plug_webToast">Webtoast</button>
    <button type="button" class="mt_5 btn_h_au wm_94 bg_title c_white h_32em" id="plug_alert">Alert Dialog Box</button>
    <button type="button" class="mt_5 btn_h_au wm_94 bg_title c_white h_32em" id="plug_confirm">Confirm Dialog Box</button>
  </div>
  <div class="module press mt_5">
    <ul class="list_h_36em">
      <li class="rel bg_white touchstart">
        <dl class="rel h_in list_h_36em wm_94">
          <dt class="fl">姓名</dt>
          <dd class="fr rel w_70 mr_7">
            <input class="fr bg_white c_gray_777" id="plug_prompt_input" type="button" value="" readonly />
          </dd>
          <dd class="abs top_0 right_0">
            <i class="fr icon-ln_qianjin_b text_16em c_gray_777"></i>
          </dd>
        </dl>
      </li>
    </ul>
  </div>
  <div id="plug_prompt_textarea_view" class="module list press mt_5">
    <h3 class="wp_94 bg_white line_h_36em text_bold bor_bottom_dashed bor_gray_ddd">提问内容</h3>
    <ul class="wp_94 bg_white list_h_36em">
    </ul>
    <button type="button" class="btn_h_au wm_94 bg_title c_white h_32em mt_5 mb_5" id="plug_prompt_textarea">继续提问</button>
  </div>

  <!----------Andrew_Radio&Andrew_Checkbox&Andrew_Switch---------->
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">复选展示</h3>
    <ul class="list_h_36em">
      <li class="bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="h_in">
          <dt class="fl ml_3 h_in">
            <input type="checkbox" name="checkbox1" class="plug_Checkbox" />
          </dt>
          <dd class="fl h_in ml_05em">选项1</dd>
        </dl>
      </li>
      <li class="bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="h_in">
          <dt class="fl ml_3 h_in">
            <input type="checkbox" name="checkbox2" class="plug_Checkbox" checked />
          </dt>
          <dd class="fl h_in ml_05em">选项2</dd>
        </dl>
      </li>
      <li class="bg_white bor_bottom bor_gray_ddd">
        <dl class="h_in">
          <dt class="fl ml_3 h_in">
            <input type="checkbox" name="checkbox3" class="plug_Checkbox" disabled />
          </dt>
          <dd class="fl h_in ml_05em">选项3</dd>
        </dl>
      </li>
    </ul>
  </div>
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">单选展示</h3>
    <ul class="list_h_36em">
      <li class="bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="h_in">
          <dt class="fl ovh ml_3 h_in">选项1</dt>
          <dd class="fr mr_3 h_in text_14em">
            <input type="radio" name="radio" value="1" class="plug_Radio" checked />
          </dd>
        </dl>
      </li>
      <li class="bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="h_in">
          <dt class="fl ovh ml_3 h_in">选项2</dt>
          <dd class="fr mr_3 h_in text_14em">
            <input type="radio" name="radio" value="2" class="plug_Radio" />
          </dd>
        </dl>
      </li>
    </ul>
  </div>
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">开关按钮</h3>
    <ul class="list_h_36em">
      <li class="bor_bottom bor_gray_ddd bg_white">
        <dl class="h_in">
          <dt class="fl ovh ml_3 h_in">选项1</dt>
          <dd class="fr mr_3 h_in">
            <input type="checkbox" name="switch1" class="plug_Switch" checked />
          </dd>
        </dl>
      </li>
      <li class="bor_bottom bor_gray_ddd bg_white">
        <dl class="h_in">
          <dt class="fl ovh ml_3 h_in">选项2</dt>
          <dd class="fr mr_3 h_in">
            <input type="checkbox" name="switch2" class="plug_Switch" />
          </dd>
        </dl>
      </li>
      <li class="bor_bottom bor_gray_ddd bg_white">
        <dl class="h_in">
          <dt class="fl ovh ml_3 h_in">选项3</dt>
          <dd class="fr mr_3 h_in">
            <input type="checkbox" name="switch3" class="plug_Switch" checked disabled />
          </dd>
        </dl>
      </li>
      <li class="bor_bottom bor_gray_ddd bg_white">
        <dl class="h_in">
          <dt class="fl ovh ml_3 h_in">选项4</dt>
          <dd class="fr mr_3 h_in">
            <input type="checkbox" name="switch4" class="plug_Switch" disabled />
          </dd>
        </dl>
      </li>
    </ul>
  </div>

  <!----------Andrew_ChooseList---------->
  <div class="module press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em">品牌选择</h3>
    <ul class="list_h_36em">
      <li class="bor_top bor_gray_ddd bg_white">
        <dl class="ovh list_h_36em">
          <dt class="fl ovh ml_3 mr_03em">单选：</dt>
          <dd class="fl ovh w_80">
            <ul class="plug_choose mt_05em c_gray_777">
              <li class="fl pl_3 pr_3 mr_05em border bg_white bor_rad_03em bor_gray_ddd line_h_24em pointer" data-checked="true">戴尔</li>
              <li class="fl pl_3 pr_3 mr_05em border bg_white bor_rad_03em bor_gray_ddd line_h_24em pointer">三星</li>
              <li class="fl pl_3 pr_3 mr_05em border bg_white bor_rad_03em bor_gray_ddd line_h_24em pointer">惠普</li>
              <li class="fl pl_3 pr_3 mr_05em border bg_white bor_rad_03em bor_gray_ddd line_h_24em pointer">微软</li>
            </ul>
          </dd>
        </dl>
      </li>
      <li class="bor_top bor_gray_ddd bg_white">
        <dl class="ovh list_h_36em">
          <dt class="fl ovh ml_3 mr_03em">多选：</dt>
          <dd class="fl ovh w_80">
            <ul class="plug_choose mt_05em c_gray_777" data-multiple="multiple">
              <li class="fl pl_3 pr_3 mr_05em border bg_white bor_rad_03em bor_gray_ddd line_h_24em pointer" data-checked="true">东芝</li>
              <li class="fl pl_3 pr_3 mr_05em border bg_white bor_rad_03em bor_gray_ddd line_h_24em pointer" data-checked="true">松下</li>
              <li class="fl pl_3 pr_3 mr_05em border bg_white bor_rad_03em bor_gray_ddd line_h_24em pointer">苹果</li>
              <li class="fl pl_3 pr_3 mr_05em border bg_white bor_rad_03em bor_gray_ddd line_h_24em pointer">联想</li>
            </ul>
          </dd>
        </dl>
      </li>
    </ul>
  </div>

  <!----------Andrew_TouchDelete---------->
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">滑动删除</h3>
    <ul class="plug_touchdel bg_white ovh">
      <li class="h_42em rel ovh bor_bottom bor_gray_ddd bg_white touchstart">
        <article class="ml_3">
          <h3 class="mt_05em c_gray_333">1.这里是文章的标题</h3>
          <p class="line_h_18em c_gray_777">当前显示的是列表展示内容</p>
        </article>
      </li>
      <li class="h_42em rel ovh bor_bottom bor_gray_ddd bg_white touchstart">
        <article class="ml_3">
          <h3 class="mt_05em c_gray_333">2.这里是文章的标题</h3>
          <p class="line_h_18em c_gray_777">当前显示的是列表展示内容</p>
        </article>
      </li>
      <li class="h_42em rel ovh bor_bottom bor_gray_ddd bg_white touchstart">
        <article class="ml_3">
          <h3 class="mt_05em c_gray_333">3.这里是文章的标题</h3>
          <p class="line_h_18em c_gray_777">当前显示的是列表展示内容</p>
        </article>
      </li>
      <li class="h_42em rel ovh bor_bottom bor_gray_ddd bg_white touchstart">
        <article class="ml_3">
          <h3 class="mt_05em c_gray_333">4.这里是文章的标题</h3>
          <p class="line_h_18em c_gray_777">当前显示的是列表展示内容</p>
        </article>
      </li>
    </ul>
  </div>

  <!----------Andrew_ChangeIcon---------->
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">排序和筛选</h3>
    <div class="plug_filter rel ovh bg_white wp_94 h_32em bor_bottom bor_gray_ddd">
      <ul class="length4 list_h_32em h_in">
        <li class="fl text_al_c touchstart plug_sort_btn1">
          <strong class="text_al_t c_gray_777">智能排序</strong>
        </li>
        <li class="fl text_al_c touchstart plug_sort_btn2">
          <strong class="text_al_t c_gray_777">销量</strong>
          <button type="button" class="line_h_in text_al_s text_al_c c_gray_777">
            <i class="abs minus_mt_05em icon-px_zhengxu"></i>
            <i class="icon-px_daoxu"></i>
          </button>
        </li>
        <li class="fl text_al_c touchstart plug_sort_btn3">
          <strong class="text_al_t c_gray_777">价格</strong>
          <button type="button" class="line_h_in text_al_s text_al_c c_gray_777">
            <i class="abs minus_mt_05em icon-px_zhengxu"></i>
            <i class="icon-px_daoxu"></i>
          </button>
        </li>
        <li class="fl text_al_c touchstart plug_sort_btn4">
          <strong class="text_al_t c_gray_777">筛选</strong>
          <button type="button" class="line_h_in text_al_m text_al_c c_gray_777">
            <i class="icon-ln_xiangxia text_12em"></i>
          </button>
        </li>
      </ul>
    </div>
  </div>

  <!----------Andrew_Ratyli---------->
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">星级评分</h3>
    <ul class="list_h_36em">
      <li class="bor_bottom bor_gray_ddd bg_white">
        <dl class="ovh h_in">
          <dt class="fl ovh ml_3 mr_03em">可选评价：</dt>
          <dd class="fl ovh">
            <div class="line_h_in ovh">
              <span id="plug_ratyli1" data-rate="1" data-ratemax="5"></span>
            </div>
          </dd>
        </dl>
      </li>
      <li class="bor_bottom bor_gray_ddd bg_white">
        <dl class="ovh h_in">
          <dt class="fl ovh ml_3 mr_03em">展示评价：</dt>
          <dd class="fl ovh">
            <div class="line_h_in ovh">
              <span id="plug_ratyli2" data-rate="4" data-ratemax="5"></span>
            </div>
          </dd>
        </dl>
      </li>
    </ul>
  </div>

  <!----------Andrew_Progress---------->
  <div class="module press mt_5">
    <ul class="list_h_36em">
      <li class="ovh rel bg_white">
        <dl class="ovh h_in">
          <dt class="fl ovh ml_3 mr_03em">当前进度：</dt>
          <dd class="fl ovh w_70 h_in">
            <div class="plug_progress h_2em bg_gray_ddd"></div>
          </dd>
        </dl>
      </li>
    </ul>
  </div>

  <!----------Andrew_NowTime---------->
  <!----------Andrew_CountTo---------->
  <!----------Andrew_Countdown---------->
  <div class="module list press mt_5">
    <ul class="list_h_36em">
      <li class="bor_bottom bor_gray_ddd bg_white">
        <span class="fl ml_3 mr_03em">当前时间：</span>
        <em class="plug_nowtime c_gray_777"></em>
      </li>
      <li class="bor_bottom bor_gray_ddd bg_white touchstart">
        <span class="fl ml_3 mr_03em">点击开始：</span>
        <em class="plug_count c_title" data-form="0.00" data-to="999.00" data-speed="1500" data-decimals="2"></em>
      </li>
      <li class="bor_bottom bor_gray_ddd bg_white touchstart">
        <span class="fl ml_3 mr_03em">点击倒计时：</span>
        <em class="plug_Countdown c_title">10秒</em>
      </li>
    </ul>
  </div>

  <!----------Andrew_Favorite---------->
  <div class="module bg_white press mt_5">
    <ul class="wm_94 list_h_36em length2">
      <li class="fl">
        <button type="button" class="fl pl_1em pr_1em plug_like c_gray_777 line_h_36em touchstart" data-value="500"></button>
      </li>
      <li class="fr">
        <button type="button" class="fr pl_1em pr_1em plug_collect c_gray_777 line_h_36em touchstart" data-value="0"></button>
      </li>
    </ul>
  </div>

  <!----------Andrew_Substring---------->
  <div class="module press mt_5">
    <ul class="list_h_36em">
      <li class="ovh rel bg_white touchstart">
        <dl class="rel h_in list_h_36em wm_94">
          <dt class="fl">产品价格</dt>
          <dd class="fr rel w_70 mr_7">
            <span class="fr c_gray_777 ml_05em">元</span>
            <input type="number" class="plug_RMBoutput fr bg_white c_gray_777" required value="" pattern="(\d{5}([-]\d{4})?)" />
          </dd>
          <dd class="abs top_0 right_0">
            <i class="fr icon-ln_qianjin_b text_16em c_gray_777"></i>
          </dd>
        </dl>
      </li>
    </ul>
  </div>
  <!----------Andrew_Spinner---------->
  <div class="module press mt_5">
    <ul class="list_h_36em">
      <li class="rel bg_white">
        <dl class="h_in">
          <dt class="fl ml_3">产品数量</dt>
          <dd class="fr w_35 mr_3 h_in">
            <input type="number" class="plug_spinner text_al_c c_gray_777 bor_rad_0" value="1" pattern="[0-9]*" />
          </dd>
        </dl>
      </li>
    </ul>
  </div>

  <!----------Andrew_ChangeInput---------->
  <div class="module press mt_5">
    <ul class="list_h_36em">
      <li class="rel bg_white">
        <dl class="h_in">
          <dt class="fl ml_3">切换城市</dt>
          <dd class="fr w_60 mr_3 h_in">
            <div class="rel mt_06em h_24em border bor_gray_ddd w_100 bg_gray_f9f">
              <input type="text" class="plug_change_text1 fl w_35 h_in text_al_c c_gray_777 bor_rad_0" value="北京市">
              <button type="button" class="plug_change_btn fl w_30 h_in bor_left bor_right bor_gray_ddd bg_white icon-ly_qiehuan"></button>
              <input type="text" class="plug_change_text2 fl w_35 h_in text_al_c c_gray_777 bor_rad_0" value="上海市">
            </div>
          </dd>
        </dl>
      </li>
    </ul>
  </div>

  <!----------Andrew_Form---------->
  <!----------Andrew_Validate---------->
  <!----------Andrew_GetVerifyCode---------->
  <!----------Andrew_intlTelInput---------->
  <!----------Andrew_Codeval---------->
  <form action="demo.html" method="get">
    <div class="module list mt_5 plug_validate">
      <ul class="wp_94 press bg_white list_h_36em">
        <li class="rel bor_bottom bor_gray_ddd">
          <i class="abs left_0 icon-mb_shouji c_title text_16em"></i>
          <label class="plug_mobileNum dis_block rel ovh fl ml_8 mr_05em line_h_in bor_right bor_gray_eee touchstart">
            <input type="button" class="fl c_gray_777" value="+86" />
            <i class="fl icon-ln_qianjin_b text_16em c_gray_777"></i>
          </label>
          <input type="tel" id="plug_phone" class="fl w_70 plug_Delete c_gray_777" required value="" maxlength="11" placeholder="请输入手机号码" pattern="[0-9]*" />
        </li>
        <li class="rel bor_bottom bor_gray_ddd">
          <i class="abs left_0 icon-im_yanzhengma c_title text_16em"></i>
          <input type="text" class="fl ml_8 w_92 c_gray_777" required value="" maxlength="6" placeholder="请输入手机短信验证码" />
          <button type="button" id="plug_getVerifyCode" class="press abs bg_white press top_0 right_0 c_title">获取验证码</button>
        </li>
        <li class="rel bor_bottom bor_gray_ddd">
          <i class="abs left_0 icon-mn_dunpai c_title text_16em"></i>
          <input type="text" id="plug_codeInput" class="fl ml_8 w_92 c_gray_777" required value="" placeholder="请输入右侧验证码" />
          <code id="plug_codeView" class="ovh press abs right_0 bg_white w_20 line_h_2em border bor_gray_ddd touchstart"></code>
        </li>
        <li class="rel bor_bottom bor_gray_ddd">
          <i class="abs left_0 icon-mb_suoding c_title text_16em"></i>
          <input type="password" class="fl ml_8 w_92 c_gray_777 plug_PassCheck plug_Password" required value="" maxlength="16" placeholder="请输入新密码" />
        </li>
        <li class="rel bor_bottom bor_gray_ddd">
          <i class="abs left_0 icon-mb_suoding c_title text_16em"></i>
          <input type="password" class="fl ml_8 w_92 c_gray_777 plug_PassCheck plug_Password" required value="" maxlength="16" placeholder="请输入确认密码" />
        </li>
      </ul>
      <button type="submit" class="btn_h_3em wm_94 bg_title c_white mt_5 h_32em">提交</button>
    </div>
  </form>

  <!----------Andrew_PortraitImage---------->
  <!----------Andrew_Select---------->
  <!----------Andrew_Datetime---------->
  <div class="module list press mt_5">
    <ul class="list_h_36em">
      <li class="rel bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="rel h_in list_h_36em wm_94">
          <dt class="fl">上传头像</dt>
          <dd class="fr rel w_70 mr_7">
            <label class="fr rel plug_PortraitImage pointer">
              <input type="file" />
              <figure class="img_auto ovh wh_24em line_h_24em text_al_c bg_gray_ddd border bor_gray_ddd">
                <i class="icon-mn_wo_fill c_white text_18em text_al_t"></i>
              </figure>
            </label>
          </dd>
          <dd class="abs top_0 right_0">
            <i class="fr icon-ln_qianjin_b text_16em c_gray_777"></i>
          </dd>
        </dl>
      </li>
      <li class="rel bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="rel h_in list_h_36em wm_94">
          <dt class="fl">选择星期</dt>
          <dd class="fr rel w_70 mr_7">
            <input type="button" id="plug_trigger1" class="fr bg_white c_gray_777" name="plug_trigger1" readonly value="星期日" placeholder="请选择星期" />
          </dd>
          <dd class="abs top_0 right_0">
            <i class="fr icon-ln_qianjin_b text_16em c_gray_777"></i>
          </dd>
        </dl>
      </li>
      <li class="rel bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="rel h_in list_h_36em wm_94">
          <dt class="fl">选择地区</dt>
          <dd class="fr rel w_70 mr_7">
            <input type="button" id="plug_trigger2" class="fr bg_white c_gray_777" name="plug_trigger2" readonly value="" placeholder="请选择地区" />
          </dd>
          <dd class="abs top_0 right_0">
            <i class="fr icon-ln_qianjin_b text_16em c_gray_777"></i>
          </dd>
        </dl>
      </li>
      <li class="rel bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="rel h_in list_h_36em wm_94">
          <dt class="fl">选择日期</dt>
          <dd class="fr rel w_70 mr_7">
            <input type="button" id="plug_datetime" class="fr bg_white c_gray_777" readonly value="" placeholder="请选择日期" />
          </dd>
          <dd class="abs top_0 right_0">
            <i class="fr icon-ln_qianjin_b text_16em c_gray_777"></i>
          </dd>
        </dl>
      </li>
      <li class="rel bor_bottom bor_gray_ddd bg_white touchstart">
        <dl class="rel h_in list_h_36em wm_94">
          <dt class="fl">多功能日期</dt>
          <dd class="fr rel w_70 mr_7">
            <input type="button" id="plug_multidate" class="fr bg_white c_gray_777" readonly value="" placeholder="请选择多功能日期" />
          </dd>
          <dd class="abs top_0 right_0">
            <i class="fr icon-ln_qianjin_b text_16em c_gray_777"></i>
          </dd>
        </dl>
      </li>
    </ul>
  </div>

  <!----------Andrew_PreviewImage---------->
  <div class="rel press bg_white mt_5 clear">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">上传凭证</h3>
    <ul class="w_94 center length4 pt_5">
      <li class="rel fl mb_5">
        <label class="plug_previewImage bg_white dis_block text_al_c ovh rel w_80 h_5em line_h_5em border bor_gray_ddd">
          <i class="icon-ln_jia_a text_24em line_h_16em text_bold c_gray_ddd text_al_m"></i>
          <input multiple type="file" />
        </label>
      </li>
      <li class="rel fl mb_5">
        <button type="button" class="plug_DelImage bg_white dis_block text_al_c ovh rel w_80 h_5em line_h_5em border bor_gray_ddd">
          <i class="icon-ln_jian_a text_24em line_h_16em text_bold c_gray_ddd text_al_m"></i>
        </button>
      </li>
    </ul>
  </div>

  <!----------Andrew_SnInput---------->
  <div class="module press mt_5 ovh bg_white">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">支付密码</h3>
    <fieldset class="plug_sn_input pt_5 pb_5 ml_3 ovh">
      <input type="password" multiple class="wh_3em mr_05em bg_gray_f9f bor_gray_ddd c_gray_777 border bor_rad_0" />
      <input type="password" multiple class="wh_3em mr_05em bg_gray_f9f bor_gray_ddd c_gray_777 border bor_rad_0" />
      <input type="password" multiple class="wh_3em mr_05em bg_gray_f9f bor_gray_ddd c_gray_777 border bor_rad_0" />
      <input type="password" multiple class="wh_3em mr_05em bg_gray_f9f bor_gray_ddd c_gray_777 border bor_rad_0" />
      <input type="password" multiple class="wh_3em mr_05em bg_gray_f9f bor_gray_ddd c_gray_777 border bor_rad_0" />
      <input type="password" multiple class="wh_3em mr_05em bg_gray_f9f bor_gray_ddd c_gray_777 border bor_rad_0" />
    </fieldset>
  </div>

  <!----------Andrew_Textarea---------->
  <form action="#" method="get" onsubmit="return false;">
    <div class="module mt_5 plug_validate">
      <dl class="ovh bg_white">
        <dt class="press c_title bg_white pl_3 h_3em line_h_3em">感谢您为我提出宝贵意见</dt>
        <dd class="rel minus_mt_05em">
          <textarea class="plug_textarea ml_3 mr_3 w_94 h_12_em c_gray_777" placeholder="请输入遇到的问题或者意见..." required></textarea>
        </dd>
      </dl>
      <button type="submit" class="btn_h_3em wm_94 bg_title c_white mt_5 h_32em">提交</button>
    </div>
  </form>

  <!----------Andrew_lightSlider---------->
  <div class="module bg_white press mt_5 pb_3">
    <h3 class="bg_white c_title pl_3 mb_1em line_h_36em bor_bottom bor_gray_ddd">图片滑动展示</h3>
    <div class="wm_94 ovh rel">
      <ul id="plug_photo_slider">
        <li class="h_8em">
          <figure class="bg_gray_f5f border bor_gray_ddd h_in img_auto">
            <img src="./img/tibet-1.jpg" />
          </figure>
        </li>
        <li class="h_8em">
          <figure class="bg_gray_f5f border bor_gray_ddd h_in img_auto">
            <img src="./img/tibet-2.jpg" />
          </figure>
        </li>
        <li class="h_8em">
          <figure class="bg_gray_f5f border bor_gray_ddd h_in img_auto">
            <img src="./img/tibet-3.jpg" />
          </figure>
        </li>
        <li class="h_8em">
          <figure class="bg_gray_f5f border bor_gray_ddd h_in img_auto">
            <img src="./img/tibet-4.jpg" />
          </figure>
        </li>
        <li class="h_8em">
          <figure class="bg_gray_f5f border bor_gray_ddd h_in img_auto">
            <img src="./img/tibet-5.jpg" />
          </figure>
        </li>
        <li class="h_8em">
          <figure class="bg_gray_f5f border bor_gray_ddd h_in img_auto">
            <img src="./img/tibet-6.jpg" />
          </figure>
        </li>
      </ul>
    </div>
  </div>

  <!----------Andrew_DropUpDown---------->
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">手风琴效果</h3>
    <ul class="plug_dropbutton">
      <li class="bg_white ovh bor_bottom bor_gray_ddd">
        <dl class="rel pl_3 ovh touchstart list_h_36em">
          <dt class="fl ovh">
            点击展开查看更多的内容1
          </dt>
          <dd class="abs wm_94 left_0 c_gray_999 text_al_r">
            <i class="text_14em icon-ln_jiantouxia"></i>
          </dd>
        </dl>
        <article class="ma_3 c_gray_777 line_h_18em">
          欢迎使用Andrew移动端jQuery插件。<br>
          当前内容是点击查看更多后的详情信息。
        </article>
      </li>
      <li class="bg_white ovh bor_bottom bor_gray_ddd">
        <dl class="rel pl_3 ovh touchstart list_h_36em">
          <dt class="fl ovh">
            点击展开查看更多的内容2
          </dt>
          <dd class="abs wm_94 left_0 c_gray_999 text_al_r">
            <i class="text_14em icon-ln_jiantouxia"></i>
          </dd>
        </dl>
        <article class="ma_3 c_gray_777 line_h_18em">
          欢迎使用Andrew移动端jQuery插件。<br>
          当前内容是点击查看更多后的详情信息。
        </article>
      </li>
      <li class="bg_white ovh bor_bottom bor_gray_ddd">
        <dl class="rel pl_3 ovh touchstart list_h_36em">
          <dt class="fl ovh">
            点击展开查看更多的内容3
          </dt>
          <dd class="abs wm_94 left_0 c_gray_999 text_al_r">
            <i class="text_14em icon-ln_jiantouxia"></i>
          </dd>
        </dl>
        <article class="ma_3 c_gray_777 line_h_18em">
          欢迎使用Andrew移动端jQuery插件。<br>
          当前内容是点击查看更多后的详情信息。
        </article>
      </li>
    </ul>
  </div>

  <!----------Andrew_AllChecked---------->
  <div class="module list press mt_5">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">全选功能</h3>
    <ul class="plug_allchk">
      <li class="bg_white">
        <dl class="rel line_h_36em ovh touchstart bor_bottom_dashed bor_gray_ddd">
          <dt class="fl ml_3 h_in">
            <input type="checkbox" name="checkbox2-2" class="plug_Checkbox" multiple value="0202" />
          </dt>
          <dd class="fl h_in ml_05em">全选/反选</dd>
        </dl>
        <ul class="ml_1em list_h_36em">
          <li class="bg_white ovh touchstart bor_bottom bor_gray_ddd">
            <dl class="rel h_in ovh">
              <dt class="fl ml_3 h_in">
                <input type="checkbox" name="checkbox2-2-1" class="plug_Checkbox" multiple value="020201" />
              </dt>
              <dd class="fl h_in ml_05em c_gray_777">笔记本电脑</dd>
              <dd class="fr mr_3 c_gray_999">￥<span class="c_in">4999.00</span></dd>
            </dl>
          </li>
          <li class="bg_white ovh touchstart bor_bottom bor_gray_ddd">
            <dl class="rel h_in ovh">
              <dt class="fl ml_3 h_in">
                <input type="checkbox" name="checkbox2-2-2" class="plug_Checkbox" multiple value="020202" />
              </dt>
              <dd class="fl h_in ml_05em c_gray_777">台式机电脑</dd>
              <dd class="fr mr_3 c_gray_999">￥<span class="c_in">3999.00</span></dd>
            </dl>
          </li>
          <li class="bg_white ovh touchstart bor_bottom bor_gray_ddd">
            <dl class="rel h_in ovh">
              <dt class="fl ml_3 h_in">
                <input type="checkbox" name="checkbox2-2-2" class="plug_Checkbox" multiple value="020202" />
              </dt>
              <dd class="fl h_in ml_05em c_gray_777">苹果手机</dd>
              <dd class="fr mr_3 c_gray_999">￥<span class="c_in">5999.00</span></dd>
            </dl>
          </li>
        </ul>
      </li>
    </ul>
  </div>

  <!----------Andrew_Viewer---------->
  <!----------Andrew_lazyload---------->
  <div class="module press mt_5 bg_white">
    <h3 class="bg_white c_title pl_3 line_h_36em bor_bottom bor_gray_ddd">图片放大展示</h3>
    <ul class="plug_viewer lazyload ml_3 mt_1em length2">
      <li class="fl ovh h_8em mb_1em">
        <figure class="w_94 border bor_gray_ddd img_auto h_in">
          <img data-original="./img/tibet-1.jpg" src="./img/thumbnails/tibet-1.jpg" alt="图片1" />
        </figure>
      </li>
      <li class="fl ovh h_8em mb_1em">
        <figure class="w_94 border bor_gray_ddd img_auto h_in">
          <img data-original="./img/tibet-2.jpg" src="./img/thumbnails/tibet-2.jpg" alt="图片2" />
        </figure>
      </li>
      <li class="fl ovh h_8em mb_1em">
        <figure class="w_94 border bor_gray_ddd img_auto h_in">
          <img data-original="./img/tibet-3.jpg" src="./img/thumbnails/tibet-3.jpg" alt="图片3" />
        </figure>
      </li>
      <li class="fl ovh h_8em mb_1em">
        <figure class="w_94 border bor_gray_ddd img_auto h_in">
          <img data-original="./img/tibet-4.jpg" src="./img/thumbnails/tibet-4.jpg" alt="图片4" />
        </figure>
      </li>
      <li class="fl ovh h_8em mb_1em">
        <figure class="w_94 border bor_gray_ddd img_auto h_in">
          <img data-original="./img/tibet-5.jpg" src="./img/thumbnails/tibet-5.jpg" alt="图片5" />
        </figure>
      </li>
      <li class="fl ovh h_8em mb_1em">
        <figure class="w_94 border bor_gray_ddd img_auto h_in">
          <img data-original="./img/tibet-6.jpg" src="./img/thumbnails/tibet-6.jpg" alt="图片6" />
        </figure>
      </li>
    </ul>
  </div>

  <!----------Andrew_PopupWin Start---------->
  <div id="plug_MenuWin" class="dis_none bg_white pa_3 w_100 mt_32em"> <!--顶部位置显示的弹窗-->
    <ul class="wp_94 c_gray_777">
      <li class="fl h_3em line_h_3em mr_1em">功能A</li>
      <li class="fl h_3em line_h_3em mr_1em">功能B</li>
      <li class="fl h_3em line_h_3em mr_1em">功能C</li>
      <li class="fl h_3em line_h_3em mr_1em">功能D</li>
      <li class="fl h_3em line_h_3em mr_1em">功能E</li>
      <li class="fl h_3em line_h_3em mr_1em">功能F</li>
      <li class="fl h_3em line_h_3em mr_1em">功能G</li>
      <li class="fl h_3em line_h_3em mr_1em">功能H</li>
    </ul>
  </div>

  <div id="plug_PopupWin" class="dis_none bg_white pa_5 w_85"> <!--中间位置显示的弹窗-->
    <button type="button" class="plug_closeIn dis_block wh_12em mt_01em mr_01em abs bg_white top_0 right_0 c_gray_333 text_18em icon-ln_quxiao"></button>
    <h2 class="text_bold press text_12em">弹窗标题</h2>
    <ul class="bor_top_dashed bor_gray_ddd mt_05em pt_05em c_gray_777">
      <li class="h_3em line_h_3em">弹窗内容显示中1</li>
      <li class="h_3em line_h_3em">弹窗内容显示中2</li>
      <li class="h_3em line_h_3em">弹窗内容显示中3</li>
    </ul>
  </div>

  <div id="plug_filterWin" class="dis_none w_100 ovh"> <!--对应位置显示的弹窗-->
    <ul class="abs ovh wp_94 bg_white bor_top bor_gray_ddd pt_3 pb_3 zindex_2 c_gray_777">
      <li class="fl h_3em line_h_3em mr_1em">筛选A</li>
      <li class="fl h_3em line_h_3em mr_1em">筛选B</li>
      <li class="fl h_3em line_h_3em mr_1em">筛选C</li>
      <li class="fl h_3em line_h_3em mr_1em">筛选D</li>
      <li class="fl h_3em line_h_3em mr_1em">筛选E</li>
      <li class="fl h_3em line_h_3em mr_1em">筛选F</li>
      <li class="fl h_3em line_h_3em mr_1em">筛选G</li>
      <li class="fl h_3em line_h_3em mr_1em">筛选H</li>
    </ul>
  </div>
  <!----------Andrew_PopupWin End---------->

</main>

<footer class="press bg_gray_f9f">
  <menu class="bor_gray_ddd bor_top">
    <button type="button" class="fl">
      <i class="text_18em c_gray_777"></i>
      <em class="text_08em c_gray_777">功能</em>
    </button>
    <button type="button" class="fl">
      <i class="text_18em c_gray_777"></i>
      <em class="text_08em c_gray_777">聊天</em>
    </button>
    <button type="button" class="fl">
      <i class="text_18em c_gray_777"></i>
      <em class="text_08em c_gray_777">时间轴</em>
    </button>
    <button type="button" class="fl">
      <i class="text_18em c_gray_777"></i>
      <em class="text_08em c_gray_777">布局</em>
    </button>
    <button type="button" class="fl">
      <i class="text_18em c_gray_777"></i>
      <em class="text_08em c_gray_777">加载</em>
    </button>
  </menu>
</footer>
	
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-2.1.1.min.js"><\/script>')</script>
	<script type="text/javascript" src="js/data.js"></script><!--Json数据-->
	<script type="text/javascript" src="js/andrew.mobile.plugin.min.js"></script><!--AK插件引入-->
	<script type="text/javascript" src="js/plugin.js"></script><!--功能插件按需引入-->
	<script type="text/javascript">

    $("footer button").click(function(){
        alert("当前访问的界面没开启路由模式，所以要预览页面切换效果，请访问index.html！");
    });
    //引入Andrew插件的区域
    /*-----------------------------------------------Andrew_Config (全局设置）使用方法-------------------------------------------*/
    $(function () {
        Andrew_Config({ //环境配置管理
            MaskStyle: ["style3","opacity07"], //1.所有弹窗背景图案选择（样式style1~6）、2.遮挡层背景的透明度（opacity01~09）
            touchstart: true, //是否开启移动端active效果, 建议开启 （元素的class里加touchstart即可用）(使用 true,不使用 false）
            ButtonLink: true, //通过元素中加data-href属性的方式跳转界面, 建议开启路由功能后使用。(使用button超链接 true,不使用button超链接 false）
            WechatHeader: false, //是否通过微信浏览器访问时自动隐藏应用的头部区域, 可以通用建议开启 (使用隐藏 true, 不使用隐藏 false）
            Topdblclick: true, //是否开启点击应用的头部让页面回头顶部 (开启 true, 停用 false）
            fixedBar: true, //输入信息时应用的头部绝对固定在屏幕最上方，底部有输入框时不被虚拟键盘遮挡 （不通过微信访问才生效，开启WechatHeader的参数时请关闭该参数）
            Orientation: true, //是否开启应用只允许竖屏浏览 (使用 true, 不使用 false）
            Prompt: "为了更好的视觉体验，请在竖屏下进行操作。" //应用横屏是提示文字 (必须开启Orientation的选项才能生效)
        });
    });

    /*-----------------------------------------------Andrew_Menu 使用方法-------------------------------------------*/
    $(function() {
        Andrew_Menu({ //底部菜单的图标以及文字样式变化设置
            active_color: "c_title", //被选中的文字和图标的颜色
            menu_icon: new Array( //每个菜单的默认显示图标设置 （为了正常的显示布局最多设置5个）
                "icon-mn_gongneng", //第1个按钮的图标
                "icon-mn_hudong", //第2个按钮的图标
                "icon-mn_huodong", //第3个按钮的图标
                "icon-mn_kuangjia", //第4个按钮的图标
                "icon-mn_kongjian" //第5个按钮的图标
            ),
            menu_icon_active: new Array( //每个菜单的被选中后的图标设置 （为了正常的显示布局最多设置5个）
                "icon-mn_gongneng_fill", //第1个按钮的图标
                "icon-mn_hudong_fill", //第2个按钮的图标
                "icon-mn_huodong_fill", //第3个按钮的图标
                "icon-mn_kuangjia_fill", //第4个按钮的图标
                "icon-mn_kongjian_fill" //第5个按钮的图标
            )
        });
    });
    /*-----------------------------------------------Andrew_Slider 使用方法-------------------------------------------*/
    $(function() {
        $(".plug_slider").Andrew_Slider({
            start: 1, //默认显示的图片排号
            speed: 500, //图片切换的速度
            interval: 5000, //图片切换间隔毫秒
            autoPlay: true, //幻灯片是否自动播放（true，false）
            dotShow: true, //是否显示幻灯片位置按钮（true，false）
            arrShow: false, //是否显示左右切换按钮（true，false）
            dotClass: "fl wh_08em bg_gray_333 border bor_white mr_05em bor_rad_50 pointer", //底部图片位置的样式设置
            arrClass:"wh_24em c_white bg_black05 bor_rad_50 pointer", //左右切换按钮的样式设置
            ActiveClass: "bg_title", //底部图片位置的当前样式
            afterSlider: function(num) { //回调获取当前的数
                //console.log(num);
            }
        });
    });
    /*-----------------------------------------------Andrew_ScrollFixed 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_tabs nav").Andrew_ScrollFixed({
            ScrollFixed: true, //是否开启指定的元素区域固定在屏幕的上方位置 (开启 true, 关闭 false）
            zPosition: "4", //浮动元素的z-index数值
            animated: "slideInDown ani_05s", //滚动后的显示的动画效果 (css动画库：andrew.animate.css)
            top: 0 //屏幕上方和滑动后的元素固定的上下间距
        });
    });

    /*-----------------------------------------------Andrew_Tabs 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_tabs").Andrew_Tabs({
            curDisplay: 1, //当前显示哪张
            autoPlay: false, //自动播放 (true/false)
            playDelay: 2000, //自动播放延迟时间 （必选 autoPlay: true）
            boxheight: false, //切换内容区域的高度设置px；建议vertical方式时使用 （不使用高度：false）
            navlength: 4, //切换导航的数量设置（文字屏幕对齐）
            fullclass: "bor_bottom2 bor_title c_title minus_mt_1px", //被选中状态的class
            emptyclass: "bor_bottom bor_gray_ddd", //未选中状态的class
            mouse: "click", //鼠标事件 (click/hover)
            touchmode : true, //是否开启触屏滑动切换功能 (true/false)
            changeMethod: "horizontal", //切换方式 (default/vertical/horizontal/opacity)
            callback: function(ele) { //通过回调获取当前显示的元素
                //console.log(ele);
            }
        });
    });

    /*-----------------------------------------------Andrew_Ajax 使用方法-------------------------------------------*/
    $(function () {
        $("#plug_tab1").each(function(){ //默认显示Ajax请求后的页面
            Andrew_Ajax({
                to: "#plug_ajax1", //加载内容的区域(定义ID)，如果只加载数据不加载HTML页面，把这个to参数设为空。
                type: "POST", //GET或POST
                url: "./ajax/tab_test1.html", //需要加载的URL
                data:{}, //传入参数
                async: false, //异步方式：true，同步方式：false
                success:function (flag) { //ajax请求加载成功后的回调 （状态：flag=true）
                    console.log(flag);
                    ak_webToast("请求加载数据成功！","middle",2000);
                },
                error:function (flag) { //ajax请求加载失败后的回调 （状态：flag=false）
                    console.log(flag);
                    ak_webToast("请求加载数据失败！","middle",2000);
                }
            });
        });
    });

    $(function () {
        $("#plug_tab1").click(function(){ //通过点击事件后请求加载Ajax页面
            Andrew_Ajax({
                to: "#plug_ajax1", //加载内容的区域(定义ID)，如果只加载数据不加载HTML页面，把这个to参数设为空。
                type: "POST", //GET或POST
                url: "./ajax/tab_test1.html", //需要加载的URL
                data:{}, //传入参数
                async: false, //异步方式：true，同步方式：false
                success:function (flag) { //ajax请求加载成功后的回调 （状态：flag=true）
                    console.log(flag);
                    ak_webToast("请求加载数据成功！","middle",2000);
                },
                error:function (flag) { //ajax请求加载失败后的回调 （状态：flag=false）
                    console.log(flag);
                    ak_webToast("请求加载数据失败！","middle",2000);
                }
            });
        });
    });

    $(function () {
        $("#plug_tab2").click(function(){ //通过点击事件后请求加载Ajax页面
            Andrew_Ajax({
                to: "#plug_ajax2", //加载内容的区域(定义ID)，如果只加载数据不加载HTML页面，把这个to参数设为空。
                type: "POST", //GET或POST
                url: "./ajax/tab_test2.html", //需要加载的URL
                data:{}, //传入参数
                async: false, //异步方式：true，同步方式：false
                success:function (flag) { //ajax请求加载成功后的回调 （状态：flag=true）
                    console.log(flag);
                    ak_webToast("请求加载数据成功！","middle",2000);
                },
                error:function (flag) { //ajax请求加载失败后的回调 （状态：flag=false）
                    console.log(flag);
                    ak_webToast("请求加载数据失败！","middle",2000);
                }
            });
        });
    });

    $(function () {
        $("#plug_tab3").click(function(){ //通过点击事件后请求加载Ajax页面
            Andrew_Ajax({
                to: "#plug_ajax3", //加载内容的区域(定义ID)，如果只加载数据不加载HTML页面，把这个to参数设为空。
                type: "POST", //GET或POST
                url: "./ajax/tab_test3.html", //需要加载的URL
                data:{}, //传入参数
                async: false, //异步方式：true，同步方式：false
                success:function (flag) { //ajax请求加载成功后的回调 （状态：flag=true）
                    console.log(flag);
                    ak_webToast("请求加载数据成功！","middle",2000);
                },
                error:function (flag) { //ajax请求加载失败后的回调 （状态：flag=false）
                    console.log(flag);
                    ak_webToast("请求加载数据失败！","middle",2000);
                }
            });
        });
    });

    $(function () {
        $("#plug_tab4").click(function(){ //通过点击事件后请求加载Ajax页面
            Andrew_Ajax({
                to: "#plug_ajax4", //加载内容的区域(定义ID)，如果只加载数据不加载HTML页面，把这个to参数设为空。
                type: "POST", //GET或POST
                url: "./ajax/tab_test4.html", //需要加载的URL
                data:{}, //传入参数
                async: false, //异步方式：true，同步方式：false
                success:function (flag) { //ajax请求加载成功后的回调 （状态：flag=true）
                    console.log(flag);
                    ak_webToast("请求加载数据成功！","middle",2000);
                },
                error:function (flag) { //ajax请求加载失败后的回调 （状态：flag=false）
                    console.log(flag);
                    ak_webToast("请求加载数据失败！","middle",2000);
                }
            });
        });
    });

    /*-----------------------------------------------Andrew_Dialog 使用方法-------------------------------------------*/
    $(function(){
        $("#plug_webToast").click(function(){
            ak_webToast("恭喜您，修改成功!","middle","mask",9999); //(提示文字，显示位置 [top ，middle ，bottom ]，遮挡背景[加mask即可用]，耗时)
        });
    });

    $(function(){
        $("#plug_alert").click(function(){
            $ak.alert("请输入密码！", { //(标准的H5使用方法 $ak.alert)
                title: "提示", //弹窗的标题文字
                button_ok: "确定", //弹窗的确定按钮文字
                icon: "warning", //图标类型（warning，error，info，question，success）
                animateIn: "bounceInDown", //弹窗显示动画效果 (css动画库：andrew.animate.css)
                animateOut: "bounceOutUp", //弹窗消失动画效果 (css动画库：andrew.animate.css)
                onSubmit:function(res){ //点击确定按钮后的回调
                    console.log(res);
                }
            });
        });
    });

    $(function(){
        $("#plug_confirm").click(function(){
            $ak.confirm("确认要删除当前的信息吗？", { //(标准的H5使用方法 $ak.confirm)
                title: "确认", //弹窗的标题文字
                button_ok: "确定", //弹窗的确定按钮文字
                button_cancel: "取消", //弹窗的取消按钮文字
                icon: "question", //图标类型（warning，error，info，question，success）
                animateIn : "bounceInDown", //弹窗显示动画效果 (css动画库：andrew.animate.css)
                animateOut: "bounceOutUp", //弹窗消失动画效果 (css动画库：andrew.animate.css)
                onSubmit:function(res){ //点击确定按钮后的回调
                    ak_webToast("成功删除!","bottom",1000); //(提示文字，显示位置 top ，middle ，bottom ，耗时)
                    console.log(res);
                },
                onCancel:function (res) { //点击取消按钮后的回调
                    ak_webToast("取消删除!","bottom",1000); //(提示文字，显示位置 top ，middle ，bottom ，耗时)
                    console.log(res);
                }
            });
        });
    });

    $(function(){
        $("#plug_prompt_input").click(function(){
            var input = $(this); //获取当前的输入框
            if (input.val().length > 0 ) {
                var input_val = input.val();
            }
            $ak.prompt("姓名", input_val, { //(标准的H5使用方法 $ak.prompt)
                title: "输入", //弹窗的标题文字
                button_ok: "确定", //弹窗的确定按钮文字
                button_cancel: "取消", //弹窗的取消按钮文字
                icon: "info", //图标类型（warning，error，info，question，success）
                inputbox: "input", //输入框类型(input,textarea)
                inputType: "text",//输入框类型 (text,password,number,tel,search)
                inputClass: "c_gray_777 border bor_gray_ddd h_3em bor_rad_0", //输入框的Class样式设置 （inputbox的参数有值才生效）
                placeholder:"请输入姓名", //设置输入框的提示文字
                required: true, //弹窗后的输入框设置为是否必填（true，false）
                animateIn : "bounceInDown", //弹窗显示动画效果 (css动画库：andrew.animate.css)
                animateOut: "bounceOutUp", //弹窗消失动画效果 (css动画库：andrew.animate.css)
                onSubmit:function(res){ //点击确定按钮后的回调
                    ak_webToast("成功提交!","bottom",1000); //(提示文字，显示位置 top ，middle ，bottom ，耗时)
                    input.val(res); //插入内容
                    console.log(res);
                },
                onCancel:function (res) { //点击取消按钮后的回调
                    ak_webToast("您已取消!","bottom",1000); //(提示文字，显示位置 top ，middle ，bottom ，耗时)
                    console.log(res);
                }
            });
        });
    });

    $(function(){
        $("#plug_prompt_textarea").click(function(){
            $ak.prompt("内容", "", { //(标准的H5使用方法 $ak.prompt)
                title: "提问", //弹窗的标题文字
                button_ok: "提交", //弹窗的确定按钮文字
                button_cancel: "取消", //弹窗的取消按钮文字
                icon: "info", //图标类型（warning，error，info，question，success）
                inputbox: "textarea", //输入框类型(input,textarea)
                inputClass: "c_gray_777 border bor_gray_ddd h_6em bor_rad_0", //输入框的Class样式设置 （inputbox的参数有值才生效）
                placeholder:"请输入提问内容", //设置输入框的提示文字
                required: true, //弹窗后的输入框设置为是否必填（true，false）
                animateIn : "bounceInDown", //弹窗显示动画效果 (css动画库：andrew.animate.css)
                animateOut: "bounceOutUp", //弹窗消失动画效果 (css动画库：andrew.animate.css)
                onSubmit:function(res){ //点击确定按钮后的回调
                    ak_webToast("成功提交!","bottom",1000); //(提示文字，显示位置，耗时)
                    $("#plug_prompt_textarea_view ul").append("<li  class=\"c_gray_777 bor_bottom bor_gray_ddd\">"+res+"</li>"); //插入内容
                    console.log(res);
                },
                onCancel:function (res) { //点击取消按钮后的回调
                    ak_webToast("您已取消!","bottom",1000); //(提示文字，显示位置 top ，middle ，bottom ，耗时)
                    console.log(res);
                }
            });
        });
    });

    /*-----------------------------------------------Andrew_Popupwin 使用方法-------------------------------------------*/
    $(function(){
        $("#plug_menu").on("click", function (e) {
            Andrew_Popupwin({
                dom: "#plug_MenuWin", //弹窗内容的布局
                position: "top", //位置类型(top，bottom，left，right，middle)
                effectIn: "slideInDown ani_05s", //弹窗显示效果 (css动画库：andrew.animate.css)
                effectOut: "slideOutUp ani_05s", //弹窗消失效果 (css动画库：andrew.animate.css)
                maskPosition:"4", //Mask的z-index数值
                closeBtn: ".plug_closeIn", //关闭弹窗按钮的Class名
                OneButton: e.currentTarget, //点击按钮和关闭按钮通用时需要加该属性
                toggleIcon: "text_14em icon-bt_quxiao_a", //是否点击后替换图标功能，加图标的Class名 （建议启用OneButton的参数后使用）
                callback :function (ele) { //通过回调获取弹窗显示后的以上参数
                    console.log($(ele[0].dom)); //获取当前的弹窗元素
                }
            })
        })
    });

    $(function(){
        $("#plug_popup").click(function(){
            Andrew_Popupwin({
                dom: "#plug_PopupWin", //弹窗内容的布局
                position: "middle", //位置类型(top，bottom，left，right，middle)
                effectIn: "bounceInDown ani_1s", //弹窗显示效果
                effectOut: "bounceOutDown ani_1s", //弹窗消失效果
                maskPosition:"11", //Mask的z-index数值
                closeBtn: ".plug_closeIn", //关闭弹窗按钮的Class名
                callback :function (ele) { //通过回调获取弹窗显示后的以上参数
                    console.log($(ele[0].dom)); //获取当前的弹窗元素
                }
            })
        })
    });
    /*-----------------------------------------------Andrew_ChooseList 使用方法-------------------------------------------*/
    $(function(){
        $(".plug_choose").Andrew_ChooseList({
            active: "bg_title c_white bor_title", //选中后的样式
            multi: false, //单选和多选设置（单选：false，多选：true --- 或者元素里直接加 multiple="multiple" ）
            full: false, //Choose的宽度，默认为null将自动获取Choose的宽度；
            click: function(index, item) { //Choose元素点击时的回调，diabled时不发生。
                console.log("click", index, item.text());
            },
            change: function(index, item) { //choose值改变时的回调；
                console.log("change", index, item.text());
            }
        });
    });

    /*-----------------------------------------------Andrew_ChangeInput 使用方法-------------------------------------------*/
    $(function(){
        $(".plug_change_btn").Andrew_ChangeInput({
            text_input: new Array( //两个左侧和右侧的输入框设置
                ".plug_change_text1", //切换按钮的“左侧”输入框Class
                ".plug_change_text2" //切换按钮的“右侧”输入框Class
            ),
            onChange:function(l_val,r_val){ //回调获取当前实时变化的左右两个值
                console.log("左侧："+l_val);
                console.log("右侧："+r_val);
            }
        });
    });

    /*-----------------------------------------------Andrew_ChangeIcon 使用方法-------------------------------------------*/
    $(function(){
        $(".plug_sort_btn1").Andrew_ChangeIcon({
            multi_icon: false, //是否控制的图标是多个
            text_color: new Array( //文字颜色设置（最多两个）
                "c_gray_777", //默认颜色
                "c_title" //点击后的颜色
            ),
            clickBack:function(state,op){ //回调获取当前的值和option参数
                var text_color1 = $(this)[0].text_color[0]; //默认颜色
                var text_color2 = $(this)[0].text_color[1]; //点击后的颜色
                if (state == true) { //是否被开启
                    $(".plug_sort_btn2").children().removeClass(text_color2).addClass(text_color1); //清理第2个的文字样式
                    $(".plug_sort_btn2").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第2个的图标样式
                    $(".plug_sort_btn3").children().removeClass(text_color2).addClass(text_color1); //清理第3个的文字样式
                    $(".plug_sort_btn3").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第3个的图标样式
                    $(".plug_sort_btn4").children().removeClass(text_color2).addClass(text_color1); //清理第4个的文字样式
                    $(".plug_sort_btn4").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第4个的图标样式
                }
            }
        });
    });
    $(function(){
        $(".plug_sort_btn2").Andrew_ChangeIcon({
            multi_icon: true, //是否控制的图标是多个
            text_color: new Array( //文字颜色设置（最多两个）
                "c_gray_777", //默认颜色
                "c_title" //点击后的颜色
            ),
            clickBack:function(state,op){ //回调获取当前的值和option参数
                var text_color1 = $(this)[0].text_color[0]; //默认颜色
                var text_color2 = $(this)[0].text_color[1]; //点击后的颜色
                if (state) { //是否被开启
                    $(".plug_sort_btn1").children().removeClass(text_color2).addClass(text_color1); //清理第1个的文字样式
                    $(".plug_sort_btn3").children().removeClass(text_color2).addClass(text_color1); //清理第3个的文字样式
                    $(".plug_sort_btn3").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第3个的图标样式
                    $(".plug_sort_btn4").children().removeClass(text_color2).addClass(text_color1); //清理第4个的文字样式
                    $(".plug_sort_btn4").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第4个的图标样式
                }
            }
        });
    });
    $(function(){
        $(".plug_sort_btn3").Andrew_ChangeIcon({
            multi_icon: true, //是否控制的图标是多个
            text_color: new Array( //文字颜色设置（最多两个）
                "c_gray_777", //默认颜色
                "c_title" //点击后的颜色
            ),
            clickBack:function(state,op){ //回调获取当前的值和option参数
                var text_color1 = $(this)[0].text_color[0]; //默认颜色
                var text_color2 = $(this)[0].text_color[1]; //点击后的颜色
                if (state) { //是否被开启
                    $(".plug_sort_btn1").children().removeClass(text_color2).addClass(text_color1); //清理第1个的文字样式
                    $(".plug_sort_btn2").children().removeClass(text_color2).addClass(text_color1); //清理第3个的文字样式
                    $(".plug_sort_btn2").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第3个的图标样式
                    $(".plug_sort_btn4").children().removeClass(text_color2).addClass(text_color1); //清理第4个的文字样式
                    $(".plug_sort_btn4").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第4个的图标样式
                }
            }
        });
    });
    $(function(){
        $(".plug_sort_btn4").Andrew_ChangeIcon({
            multi_icon: false, //是否控制的图标是多个
            text_color: new Array( //文字颜色设置（最多两个）
                "c_gray_777", //默认颜色
                "c_title" //点击后的颜色
            ),
            Change_icon: new Array( //文字颜色设置（最多两个）
                "icon-ln_xiangxia", //默认显示图标
                "icon-ln_xiangshang" //切换后显示的图标
            ),
            clickBack:function(state,op){ //回调获取当前的值和option参数
                console.log(op);
                var text_color1 = $(this)[0].text_color[0]; //默认颜色
                var text_color2 = $(this)[0].text_color[1]; //点击后的颜色
                if (state == true) { //是否被开启
                    $(".plug_sort_btn1").children().removeClass(text_color2).addClass(text_color1); //清理第1个的文字样式
                    $(".plug_sort_btn2").children().removeClass(text_color2).addClass(text_color1); //清理第3个的文字样式
                    $(".plug_sort_btn2").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第3个的图标样式
                    $(".plug_sort_btn3").children().removeClass(text_color2).addClass(text_color1); //清理第3个的文字样式
                    $(".plug_sort_btn3").children().find("i").removeClass(text_color2).addClass(text_color1); //清理第3个的图标样式
                }
                $(".plug_sort_btn4").each(function(){
                    var _this = $(this);
                    Andrew_Popupwin({ //调用弹窗插件
                        dom: "#plug_filterWin", //弹窗内容的布局
                        position: "offset", //位置类型(top，bottom，left，right，middle, default, offset)
                        effectIn: "slideDown ani_1s", //弹窗显示效果，动画秒数 (css动画库：andrew.animate.css)
                        effectOut: "slideUp ani_05s", //弹窗消失效果，动画秒数 (css动画库：andrew.animate.css)
                        maskPosition:"1", //Mask的z-index数值
                        closeBtn: ".plug_closeIn", //关闭弹窗按钮
                        OneButton: _this, //点击按钮和关闭按钮通用时需要加该属性
                        callback :function (ele) { //通过回调获取弹窗显示后的参数
                            var modal =$(ele[0].dom); //获取弹窗元素
                            $(modal).click(function(){ //点击弹窗内容区域后关闭当前被展开的弹窗
                                initialize_btn(); //调用按钮样式初始化功能
                            });
                        },
                        scrollback :function (ele) { //页面滑动时的回调获取参数
                            initialize_btn(); //调用按钮样式初始化功能
                        }
                    });
                    function initialize_btn(){ //按钮的样式初始化
                        var text_color1 = op.text_color[0]; //默认颜色
                        var text_color2 = op.text_color[1]; //点击后的颜色
                        var Change_icon1 = op.Change_icon[0]; //默认图标
                        var Change_icon2 = op.Change_icon[1]; //点击后的图标
                        _this.removeClass("active"); //清空弹窗元素中的Class，让弹窗设置为关闭的状态
                        _this.children().removeClass(text_color2).addClass(text_color1); //把文字颜色切换为默认颜色
                        _this.children().find("i").removeClass(text_color2).addClass(text_color1); //把图标颜色切换为默认颜色
                        _this.children().find("i").removeClass(Change_icon2).addClass(Change_icon1); //把图标切换为默认显示的图标
                    }
                });
            }
        });
    });

    /*-----------------------------------------------Andrew_Radio&Andrew_Checkbox&Andrew_Switch 使用方法-------------------------------------------*/
    $(function(){
        //单选按钮样式
        $(".plug_Radio").Andrew_Radio({
            checkedClass: "icon-ln_zhengque c_title", //选中后的样式
            onChange:function(chk){ //回调获取当前的选中状态
                console.log(chk);
            }
        });
    });

    $(function(){
        //多选按钮样式
        $(".plug_Checkbox").Andrew_Checkbox({
            checkedClass: "icon-ln_zhengque bg_title bor_title c_white", //选中后的样式
            disabledClass: "icon-ln_zhengque bg_gray_ccc bor_gray_ccc c_white", //不能选择的样式
            onChange:function(chk){ //回调获取当前的选中状态
                console.log(chk);
            }
        });
    });

    $(function(){
        //开关按钮样式
        $(".plug_Switch").Andrew_Switch({
            checkedClass: "bg_title", //选中后的样式
            disabledClass: "dis_opa_05", //不能选择的样式
            onChange:function(chk){ //回调获取当前的选中状态
                console.log(chk);
            }
        });
    });

    /*-----------------------------------------------Andrew_GetVerifyCode 使用方法-------------------------------------------*/
    $(function (){
        Andrew_GetVerifyCode.verify("#plug_getVerifyCode", {
            time: 10, //倒计时时间
            event: "click", //事件触发方式
            phone: "#plug_phone", //绑定设置输入手机号的输入框
            ableClass: "c_title", //按钮可以使用时的class
            unableClass: "c_gray_999", //按钮不能使用时的class
            //执行条件，可以是function也可以是Boolean值，如果是函数则需返回true才会执行
            condition: function (phone) {
                /*var phoneReg = /^1[345789]\d{9}$/,*/
                var phoneReg = /^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1})|(19[0-9]{1}))\d{8})$/,
                    flag = phoneReg.test($(phone).val());
                if(!flag){
                    $ak.alert("您输入的手机号码有误！", {
                        icon: "error", //图标类型（warning，error，info，question，success）
                        button_ok: "确定", //弹窗中的确定按钮文字
                        button_cancel: "取消", //弹窗中的取消按钮文字
                        title: "提示" //弹窗中的标题名称文字
                    });
                    return false;
                } else {
                    $ak.alert("验证码发送成功！", {
                        icon: "success", //图标类型（warning，error，info，question，success）
                        button_ok: "确定", //弹窗中的确定按钮文字
                        button_cancel: "取消", //弹窗中的取消按钮文字
                        title: "提示" //弹窗中的标题名称文字
                    });
                    return true;
                }
            },
            progress: function (time,phone) {//计时正在进行中时的回调
                $(this).html(time + "s后重新获取");//这里的this指向验证按钮
                console.log(this.timedown); //这个timedown就是计时器
                //console.log($(phone)); //这里获取输入手机号的输入框
            },
            timeUp: function (time,phone) {//计时结束时执行的回调
                $(this).html("重新获取"); //这里的this指向验证按钮
                console.log("时间到了！");
                //console.log($(phone)); //这里获取输入手机号的输入框
            },
            abort: function (phone) {//中断计时
                $(this).html("重新获取");//这里的this指向验证按钮
                console.log("我被中断了！");
                //$(phone).timedown.abort(); //通过click事件执行中断语句
                //console.log($(phone)); //这里获取输入手机号的输入框
            },
            eventFn: function (phone) {//事件执行后的回调
                console.log("执行了");
                console.log(this);//这里的this指向验证按钮
                console.log($(phone)); //这里获取输入手机号的输入框
                console.log($(phone).prev("label").find("input"))//获取国家区号的输入框
            }
        });
    });

    /*-----------------------------------------------Andrew_Validate 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_validate").Andrew_Validate({ //提交验证设置
            opacity: "0.7", //不能提交时的按钮透明度
            callback: function(flag) { //获取回调表单的所有状态
                console.log(flag);
            }
        });
    });

    /*-----------------------------------------------Andrew_Codeval 使用方法-------------------------------------------*/
    $(function () {
        $("#plug_codeInput").each(function(){ //默认显示Ajax请求后的页面
            $.Andrew_Codeval.ak_setCode({
                inputEle: '#plug_codeInput', //输入验证码的输入框
                codeView: '#plug_codeView', //显示验证码的元素
                codeLength: '5' //显示验证码的字数
            });
        });
        $("#plug_codeView").parents("form").find(":submit").click(function (){ //点击提交按钮获取输入的验证码是否正确
            var flag = $.Andrew_Codeval.ak_validateCode();
            console.log(flag); //flag的值true可以通过，false是输入的验证码有误
        });
    });

    /*-----------------------------------------------Andrew_AllChecked 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_allchk").Andrew_AllChecked({
            toggleClass: 'bg_title bor_title c_white icon-ln_zhengque',//改变的样式名，针对例子中的复选框样式美化
            callback :function(array) { //通过回调函数获取数组状态
                $(array).each(function(){ //对选中的元素可进行控制和获取值
                    console.log($(this).parent("label").parent("dt").parent("dl").children("dd").last().find("span").text()); //获取指定元素的数字
                    console.log($(this)[0].checked);  //获取每个复选框的状态
                    console.log($(this));
                });
            }
        });
    });

    /*-----------------------------------------------Andrew_DropUpDown 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_dropbutton").Andrew_DropUpDown({
            curDisplay: 2, //当前显示哪个(不展开设置为0)
            active_toggle: "bor_bottom_dashed bor_gray_ddd", //展开后的线条切换（实线切换虚线）
            up_ico: "icon-ln_jiantoushang", //展开后的图标（上箭头）
            down_ico: "icon-ln_jiantouxia", //展开前的图标（下箭头）
            callback:function(ele){ //回调获取展开后的元素
                console.log(ele);
            }
        });
    });

    /*-----------------------------------------------Andrew_TouchDelete 使用方法-------------------------------------------*/
    $(function() {
        $(".plug_touchdel").Andrew_TouchDelete({
            UpDownTouch: false, //是否开启上下滑动功能 (开启 true, 关闭 false）
            DelText: "删除", //删除按钮中显示的文字
            DelClass: "abs bg_close c_white w_4em h_in top_0", //删除按钮的Class样式
            ClickDelete: function(btn,ele,index) { //回调获取当点击删除按钮后的删除按钮和当前的区域元素 （btn：删除按钮，ele：当前区域元素，index：当前元素的排号）
                console.log("index: "+index);
                $ak.confirm("确认要删除当前的信息吗？", { //(标准的H5使用方法 $ak.confirm)
                    title: "确认", //弹窗的标题文字
                    button_ok: "确定", //弹窗的确定按钮文字
                    button_cancel: "取消", //弹窗的取消按钮文字
                    icon: "question", //图标类型（warning，error，info，question，success）
                    animateIn : "bounceInDown", //弹窗显示动画效果 (css动画库：andrew.animate.css)
                    animateOut: "bounceOutUp", //弹窗消失动画效果 (css动画库：andrew.animate.css)
                    onSubmit:function(){
                        ak_webToast("成功删除!","bottom",1000); //(提示文字，显示位置 top ，middle ，bottom ，耗时)
                        ele.remove();//删除当前元素
                    }
                });
            },
            UpTouch: function(ele) { //开启UpDownTouch的参数后执行的回调(上滑)
                console.log("我往上滑了！");
                console.log(ele);
                /*ele.append("<li class=\"rel ovh bor_bottom bor_gray_ddd bg_white touchstart\">\n" +
                    "        <article class=\"ml_3 ak_delete_art\">X.当前显示的是列表展示内容</article>\n" +
                    "</li>");*/
            },
            DownTouch: function(ele) { //开启UpDownTouch的参数后执行的回调(下滑)
                console.log("我往下滑了！");
                console.log(ele);
            }
        });
    });

    /*-----------------------------------------------Andrew_intlTelInput 使用方法-------------------------------------------*/
    $(function(){
        $(".plug_mobileNum").Andrew_IntlTelInput({
            Title_Text: "选择国家和地区", //头部的标题文字 （注：微信平台不显示头部所以在微信平台中使用，请把该参数设置为空。）
            Close_btn: "left_0 w_25 pl_3 text_al_l text_12em", //关闭按钮的样式设置
            Close_Text: "关闭", //头部的关闭按钮文字 （注：微信平台不显示头部所以在微信平台中使用，请把该参数设置为空。）
            Close_Icon:"text_14em icon-bt_quxiao_a mr_03em", //头部的关闭按钮图标  （注：微信平台不显示头部所以在微信平台中使用，请把该参数设置为空。）
            list_Class: "bg_white bor_bottom bor_gray_ddd c_gray_777 touchstart", //数据列表的Class样式
            Nav_active: "c_title text_bold", //右侧固定字母菜单的选中样式
            show_color: "c_title text_bold text_4em", //右侧固定字母点击后中间淡入字母效果的样式
            data: json_countryData, //Json获取data数据(data.js)
            showBack:function(ele){ //回调获取被展开后显示的元素
                console.log("选择区域的元素被显示了。您可以对该元素进行操作。");
                console.log(ele);
            },
            clickBack:function(num){ //回调获取当前的值
                console.log($(num)[0].dataset);
            }
        });
    });

    /*-----------------------------------------------Andrew_NowTime 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_nowtime").Andrew_NowTime({
            dateStyle: "yyyy年MM月dd日 hh:mm:ss" //年月日时间分钟秒数格式 （默认方式：yyyy-MM-dd hh:mm:ss）
        });
    });

    /*-----------------------------------------------Andrew_Substring 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_RMBoutput").Andrew_Substring(); //数字RMB格式
    });

    /*-----------------------------------------------Andrew_Spinner 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_spinner").Andrew_Spinner({//数量加减功能
            input_width: "20%", //输入框宽度 （px,%,em）
            btn_wrap: "fr rel ovh border bor_gray_ddd w_100 bg_gray_f9f", //数量加减输入框的外框样式
            btn_left: "abs top_0 left_0 bor_right bor_gray_ddd bg_white wh_24em icon-ln_jian_a", //数量减少按钮Class
            btn_right: "abs top_0 right_0 bor_left bor_gray_ddd bg_white wh_24em icon-ln_jia_a", //数量增加按钮Class
            maxNumber: 5, //设置最大数量限制(不使用限制请设为空值)
            clickBack:function(num){ //回调获取当前的值
                console.log(num);
            }
        });
    });

    /*-----------------------------------------------Andrew_CountTo 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_count").Andrew_CountTo(); //数字加动画变化效果
        $(".plug_count").click(function(){ //点击后数字加动画变化效果
            $(this).Andrew_CountTo({
                onUpdate: function(count){ //回调获取实时变化的数据
                    console.log(count);
                },
                onComplete: function(count){ //回调获取最终的数据
                    console.log(count);
                }
            });
        });
    });

    /*-----------------------------------------------Andrew_CountDown 使用方法-------------------------------------------*/
    $(function(){
        $(".plug_Countdown").click(function () {
            Andrew_CountDown($(this),{
                wait: 10, //默认秒数
                Start_text: "秒", //倒计时开始文字
                End_Text: "时间到！", //倒计时结束后的文字
                callback:function(waits){ //回调
                    console.log("each --- "+waits);
                    console.log("倒计时已结束，请控制下一步");
                }
            });
        });
    });

    /*-----------------------------------------------Andrew_Progress 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_progress").Andrew_Progress({
            goalAmount: 100, //总进度数值
            currentAmount: 60, //当前进度数值
            milestoneNumber: 90, //数字达到当前设置的参数后进度条的颜色变化
            ColorStyle: "bg_title c_white", //进度条样式设置
            textBefore: "当前进度：", //当前进度文字
            textAfter: "%", //当前进度百分比文字
            callback: function() { //通过回调获取元素
                //console.log(this);
            }
        });
    });

    /*-----------------------------------------------Andrew_StepOrder 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_step").Andrew_StepOrder({
            stepNum: 2, //步骤里要选前几个
            stepClass:  new Array( //被选中的样式
                "bg_title c_yellow", //被选中的数字框样式
                "c_title" //被选中的标题文字颜色
            ),
            dashed_line: "bor_gray_ccc bor_bottom_dashed2", //线条的颜色样式
            progress: "bor_title bor_bottom2", //到达的线条颜色样式
            callback: function(ele) { //加载完后的回调
                //console.log(ele);
            }
        });
    });

    /*-----------------------------------------------Andrew_Ratyli 使用方法-------------------------------------------*/
    $(function() {
        $("#plug_ratyli1").Andrew_Ratyli({
            rate:1, //当前被选中的数量
            ratemax:5, //总数量
            disable:false, //是否能点击(不可点击：true，可点击：false)
            full:"<i class='c_title text_18em line_h_2em icon-mn_xingxing_fill mr_05em'></i>", //被选中状态
            empty:"<i class='c_title text_18em line_h_2em icon-mn_xingxing mr_05em'></i>", //未选中状态
            onRated:function(value,init){ //init是默认触发事件
                if(!init) console.log(value); // 获取点击后的值
                if(!init) console.log(this); //这里的this指向对象
            }
        });
    });

    $(function(){
        $("#plug_ratyli2").Andrew_Ratyli({
            rate:4, //当前被选中的数量
            ratemax:5, //总数量
            disable:true, //是否能点击(不可点击：true，可点击：false)
            full:"<i class='c_gray_ccc text_18em line_h_2em icon-mn_xingxing_fill mr_05em'></i>", //被选中状态
            empty:"<i class='c_gray_ccc text_18em line_h_2em icon-mn_xingxing mr_05em'></i>", //未选中状态
            onRated:function(value,init){ //init是默认触发事件
                if(!init) console.log(value); //获取点击后的值
                if(!init) console.log(this); //这里的this指向对象
            }
        });

    });

    /*-----------------------------------------------Andrew_Favorite 使用方法-------------------------------------------*/
    $(function(){
        $(".plug_like").Andrew_Favorite({
            likeMode: true, //是否开启点赞模式 （设置false为收藏模式）
            str: "+1",  //字符串，要显示的内容;也可以传一段html
            icon_defaultClass: "text_al_m text_14em icon-mn_shoucang", //默认图标样式
            icon_changeClass: "text_al_m text_14em icon-mn_shoucang_fill c_title", //点击后的图标样式
            textClass: "c_gray_777 ml_03em text_al_m", //文字样式
            text_default: "点赞", //默认显示的文字
            startSize: "12px",  //动画开始的文字大小
            endSize: "30px",    //动画结束的文字大小
            interval: 600,  //动画时间间隔
            color: "red",    //文字颜色
            callback:function(length,ele){ //通过回调获取数量和元素
                console.log(length);
                console.log(ele);
            }
        });
    });

    $(function(){
        $(".plug_collect").Andrew_Favorite({
            likeMode: false, //是否开启点赞模式 （设置false为收藏模式）
            icon_defaultClass: "text_al_m text_14em icon-mn_xingxing", //默认图标样式
            icon_changeClass: "text_al_m text_14em icon-mn_xingxing_fill c_title", //点击后的图标样式
            textClass: "c_gray_777 ml_03em text_al_m", //文字样式
            text_default: "关注", //默认显示的文字
            text_change: "取消关注", //点击后显示的文字
            callback:function(length,ele){ //通过回调获取数量和元素
                console.log(length);
                console.log(ele);
            }
        });
    });

    /*-----------------------------------------------Andrew_SnInput 使用方法-------------------------------------------*/
    $(function(){
        $(".plug_sn_input").Andrew_SnInput({
            default_active: false, //是否开启默认选择第一个输入框
            input_length: "1", //每个输入框限制的字数
            callback:function(sn){ //回调获取全部输入的值
                console.log(sn);
            }
        })
    });

    /*-----------------------------------------------Andrew_Typeahead 使用方法-------------------------------------------*/
    $(function(){
        $(".plug_Typeahead").Andrew_Typeahead({
            items: 20, //最多显示的数据
            source: json_searchData, //Json获取data数据(data.js)
            showCallBack:function(ele){ //回调获取被展开后显示的元素
                $(".plug_Typeahead").parent().append('<i class="dis_none_im abs left_0 ml_03em text_14em c_gray_999 line_h_18em iconfont icon-sousuo1"></i>');
                if ($(".ak-typeahead").children("ol").length < 1) {
                    $(".ak-typeahead").append(
                        "<ol class=\"scrolling list ovs_y h_100\">\n" +
                        "<li class=\"touchstart\" data-value=\"BJ\">北京</li>\n" +
                        "<li class=\"touchstart\" data-value=\"SH\">上海</li>\n" +
                        "<li class=\"touchstart\" data-value=\"GZ\">广州</li>\n" +
                        "<li class=\"touchstart\" data-value=\"SZ\">深圳</li>\n" +
                        "<li class=\"touchstart\" data-value=\"QD\">青岛</li>\n" +
                        "</ol>"
                    );
                    $(".ak-typeahead").children("ol").find("li").bind("touchstart", function() {
                        console.log($(this).text());
                        $(".plug_Typeahead").val($(this).text());
                        document.activeElement.blur();//隐藏键盘
                    });
                }
                console.log("搜索区域的元素被显示了。您可以对该元素进行操作。");
                console.log(ele);
            },
            itemSelected: function (ele,id,name) { //通过回调获取点击选择后的值（ele：当前元素，id：数据编号，name：选择的值）
                console.log(ele);
                console.log("id: "+id+", name: "+name);
            }
        });
    });

    /*-----------------------------------------------Andrew_lightSlider 使用方法-------------------------------------------*/
    $(function(){
        $("#plug_photo_slider").Andrew_lightSlider({
            item:3, //默认显示几张
            activeClass: '', //图片点击后的class样式(建议在左右能滑动的Tabs功能时使用)
            loop:true, //是否重复联播（true，false）
            autoWidth: false, //是否开启自定义宽度（true：不设置自动宽度可以手动设置宽度，false:自动比率加宽度）
            auto:false, //是否自动播放（true，false）
            slideMargin: 10, //每张图的右侧间距 （输入数字自动识别为px）
            speed:1000, //自动播放速度
            pager: false, //是否显示联播图位置按钮（true，false）
            dotClass: new Array( //底部图片位置的样式设置（开启pager的参数才有效）
                "bg_gray_777 wh_08em bor_rad_50 ml_02em mr_02em", //默认样式
                "bg_title" //点击后的样式
            ),
            onSliderClick: function($el,num) { //通过回调获取点击事件 （$el：当前元素，num：当前点击的序号）
                console.log(num)
            },
            onSliderLoad: function ($el) { //加载后的回调 （$el：当前元素）
                //console.log($el)
            }
        });
    });

    /*-----------------------------------------------Andrew_PreviewImage 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_previewImage").Andrew_PreviewImage({ //删除图片提示设置
            messege: "确认要删除当前的图片吗？", //弹窗中的提示文字
            btn_ok: "确定", //弹窗中的确定按钮文字
            btn_cancel: "取消", //弹窗中的取消按钮文字
            box_title: new Array(//弹窗中的标题名称文字
                "确认", //confirm
                "提示" //alert
            ),
            delbtnClass: ".plug_DelImage", //设置控制显示和隐藏删除按钮的控制按钮
            ak_webToast: "成功删除!", //删除图片后提示的文字
            Class:"bg_white dis_block text_al_c ovh rel w_80 h_5em line_h_5em border bor_gray_ddd", //图片列表边框样式
            Del_icon:"icon-ios-close-empty", //图片删除图标样式
            length:4, //默认允许上传多少照片
            length_title:"最大支持上传图片数量为：", //超出上传限制数量后提示的文字
            errorTip:"图片上传格式不正确！", //图片上传格式有误时提示的文字
            addCallbak: function(imglist) { //上传图片后的回调（获取图片列表元素）
                console.log(imglist)
            },
            delCallbak: function(image) { //点击删除按钮后的回调，获取要删除的图片元素
                console.log(image);
                image.remove();
            }
        });
    });

    /*-----------------------------------------------Andrew_PortraitImage 使用方法-------------------------------------------*/
    $(function () {
        $(".plug_PortraitImage").Andrew_PortraitImage({
            errorTip:"图片上传格式不正确！", //图片上传格式有误时提示的文字
            btn_ok: "确定", //弹窗中的确定按钮文字
            box_title: "提示", //弹窗中的标题名称文字
            addCallbak: function(img) { //上传图片后的回调（获取图片元素）
                console.log(img)
            }
        });
    });

    /*-----------------------------------------------Andrew_Viewer 使用方法-------------------------------------------*/
    $(function() {
        $(".plug_viewer").Andrew_Viewer({
            url: "data-original" //图片放大后高清图片URL设置
        });
    });

    /*-----------------------------------------------Andrew_DateTime 使用方法-------------------------------------------*/
    $(function () {
        $("#plug_datetime").Andrew_DateTime({
            showNowTime:true, //默认当前时间
            Year:true, //是否显示年（true，false）
            Month:true, //是否显示月（true，false）
            Day:true, //是否显示日（true，false）
            Hour:false, //是否显示小时（true，false）
            Minute:false, //是否显示分钟（true，false）
            Seconds:false, //是否显示秒数（true，false）
            startYear:2005, //开始年份
            endYear:2050, //结束年份
            yearText:"年", //顶部时间“年单位” 文字
            monthText:"月", //顶部时间“月单位” 文字
            dayText: "日", //顶部时间“日单位” 文字
            hourText: "时", //顶部时间“时单位” 文字
            minuteText: "分", //顶部时间“分单位” 文字
            secondsText: "秒", //顶部时间“秒单位” 文字
            okText:"确认", //按钮确认键文字
            cancelText:"取消", //按钮取消键文字
            okfun: function(sjObj) { //确认时间时候执行事件
                console.log(sjObj);
            },
            onfun: function(sjObj) { //取消改变时间时候执行事件
                console.log(sjObj);
            }
        })
    });

    /*-----------------------------------------------Andrew_MultiDate 使用方法-------------------------------------------*/
    $(function(){
        $("#plug_multidate").Andrew_MultiDate({
            language:{
                month : ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"],
                weeks : [ "日", "一", "二", "三", "四", "五", "六" ]
            },
            format:"YYYY-MM-DD", //日期格式
            minDate: $.nowDate(0), //0代表今天，-1代表昨天，-2代表前天，以此类推
            okfun: function(obj){//点击确定后的回调,obj包含{ elem当前输入框ID, val当前选择的值, date当前的日期值}
                console.log(obj.elem);     //得到当前输入框的ID
                console.log(obj.val);      //得到日期生成的值，如：2017-06-16

                //得到日期时间对象，range为false
                console.log(obj.date);    //这里是对象
                obj.date = {YYYY: 2017, MM: 08, DD: 18}

                //开启区域选择，range为字符串 时才会返回一个日期时间数组对象。
                console.log(obj.date);    //这里是数组
                obj.date = [
                    {YYYY: 2017, MM: 08, DD: 18},
                    {YYYY: 2019, MM: 11, DD: 25}
                ]
            },
            success:function(elem) {}//层弹出后的成功回调方法, elem当前输入框ID
        });
    });

    /*-----------------------------------------------Andrew_Select 使用方法-------------------------------------------*/
    $(function () {
        new Andrew_Select({
            trigger: "#plug_trigger1", //需要绑定的元素
            title: "选择星期", //弹窗标题文字
            ensure: "确定", //弹窗的确定按钮文字
            cancel: "取消", //弹窗的取消按钮文字
            wheels: [
                {data: json_weekData} //Json获取data数据(data.js)
            ],
            position:[0], //初始化定位，打开时默认选中的哪个。如果不填默认为0
            callback: function (val,length) { //回调获取当前的值（val是值,length是数量以及数组）
                console.log($(val));
                console.log($(length));
            }
        });
    });

    $(function () {
        new Andrew_Select({
            trigger: "#plug_trigger2",  //需要绑定的元素
            title: "选择地区", //弹窗标题文字
            ensure: "确定", //弹窗的确定按钮文字
            cancel: "取消", //弹窗的取消按钮文字
            wheels: [
                {data : json_cityData} //Json获取data数据(data.js)
            ],
            callback: function (val,length) { //回调获取当前的值（val是值,length是数量以及数组）
                console.log($(val));
                console.log($(length));
            }
        });
    });

</script>
</body>
</html>