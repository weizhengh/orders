<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze后台管理系统模板HTML表单页面 - cssmoban</title>
  <meta name="description" content="这是一个form页面">
  <meta name="keywords" content="form">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="<%=basePath%>img/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="<%=basePath%>img/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="<%=basePath%>css/amazeui.min.css"/>
  <link rel="stylesheet" href="<%=basePath%>css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small></div>
  </div>

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">基本信息</a></li>
      <li><a href="#tab2">详细描述</a></li>
      <li><a href="#tab3">SEO 选项</a></li>
    </ul>

    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
        <div class="am-g am-margin-top">
          <div class="am-u-sm-2 am-text-right">所属类别</div>
          <div class="am-u-sm-10">
            <select>
              <option value="option1">选项一...</option>
              <option value="option2">选项二.....</option>
              <option value="option3">选项三........</option>
            </select>
          </div>
        </div>

        <div class="am-g am-margin-top">
          <div class="am-u-sm-2 am-text-right">显示状态</div>
          <div class="am-u-sm-10">
            <div class="am-btn-group" data-am-button>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="radio" name="options" id="option1"> 正常
              </label>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="radio" name="options" id="option2"> 待审核
              </label>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="radio" name="options" id="option3"> 不显示
              </label>
            </div>
          </div>
        </div>

        <div class="am-g am-margin-top">
          <div class="am-u-sm-2 am-text-right">推荐类型</div>
          <div class="am-u-sm-10">
            <div class="am-btn-group" data-am-button>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="checkbox"> 允许评论
              </label>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="checkbox"> 置顶
              </label>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="checkbox"> 推荐
              </label>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="checkbox"> 热门
              </label>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="checkbox"> 轮播图
              </label>
            </div>
          </div>
        </div>

        <div class="am-g am-margin-top">
          <div class="am-u-sm-2 am-text-right">
            发布时间
          </div>
          <div class="am-u-sm-10">
            <form action="" class="am-form am-form-inline">
              <div class="am-form-group am-form-icon">
                <i class="am-icon-calendar"></i>
                <input type="text" class="am-form-field am-input-sm" placeholder="时间">
              </div>
            </form>
          </div>
        </div>

      </div>

      <div class="am-tab-panel am-fade" id="tab2">
        <form class="am-form">
          <div class="am-g am-margin-top">
            <div class="am-u-sm-2 am-text-right">
              文章标题
            </div>
            <div class="am-u-sm-4">
              <input type="text" class="am-input-sm">
            </div>
            <div class="am-u-sm-6">*必填，不可重复</div>
          </div>

          <div class="am-g am-margin-top">
            <div class="am-u-sm-2 am-text-right">
              文章作者
            </div>
            <div class="am-u-sm-4 col-end">
              <input type="text" class="am-input-sm">
            </div>
          </div>

          <div class="am-g am-margin-top">
            <div class="am-u-sm-2 am-text-right">
              信息来源
            </div>
            <div class="am-u-sm-4">
              <input type="text" class="am-input-sm">
            </div>
            <div class="am-u-sm-6">选填</div>
          </div>

          <div class="am-g am-margin-top">
            <div class="am-u-sm-2 am-text-right">
              内容摘要
            </div>
            <div class="am-u-sm-4">
              <input type="text" class="am-input-sm">
            </div>
            <div class="am-u-sm-6">不填写则自动截取内容前255字符</div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              内容描述
            </div>
            <div class="am-u-sm-10">
              <textarea rows="10" placeholder="请使用富文本编辑插件"></textarea>
            </div>
          </div>

        </form>
      </div>

      <div class="am-tab-panel am-fade" id="tab3">
        <form class="am-form">
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              SEO 标题
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm">
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              SEO 关键字
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm">
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              SEO 描述
            </div>
            <div class="am-u-sm-4 am-u-end">
              <textarea rows="4"></textarea>
            </div>
          </div>
        </form>
      </div>

    </div>
  </div>

  <div class="am-margin">
    <button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
    <button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
  </div>
</div>
<!-- content end -->

</div>
<%@ include file="footer.jsp"%>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="<%=basePath%>js/polyfill/rem.min.js"></script>
<script src="<%=basePath%>js/polyfill/respond.min.js"></script>
<script src="<%=basePath%>js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="<%=basePath%>js/app.js"></script>
</body>
</html>
