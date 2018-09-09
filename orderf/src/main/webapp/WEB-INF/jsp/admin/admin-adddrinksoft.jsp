<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js">
<head>
</head>
<body>
	<%@ include file="header.jsp"%>
	<!-- content start -->
	<div class="admin-content">

		<div class="am-cf am-padding">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">添加酒水类型</strong> / <small>form</small>
			</div>
		</div>

		<div class="am-tabs am-margin" data-am-tabs>
			<ul class="am-tabs-nav am-nav am-nav-tabs">
				<li><a href="#tab3">酒水类型信息添加</a></li>
			</ul>

			<div class="am-tabs-bd">
				<div class="am-tab-panel am-fade" id="tab3">
				
				
					
					<c:if test="${status=='update' }">
					<form class="am-form" action="updateSelective.action" method="post">
					<div class="am-g am-margin-top-sm">
					
							<div class="am-u-sm-2 am-text-right">酒水类型名称</div>
							<input type="hidden" value="${drinkSoft.drink_soft_id }" name="drink_soft_id" >
							<div class="am-u-sm-4 am-u-end">
								<input type="text" class="am-input-sm" value="${drinkSoft.drink_soft_name }" name="drink_soft_name">
							</div>
						</div>

					

						<div class="am-margin">
							<input type="submit" class="am-btn am-btn-primary am-btn-xs" value="提交保存">
							<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
						</div>
					</form>
					
					</c:if>
					
					
					
					<c:if test="${status=='insert' }">
					<form class="am-form" action="insertSelective.action" method="post">
					<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">酒水类型名称</div>
							
							<div class="am-u-sm-4 am-u-end">
								<input type="text" class="am-input-sm"  name="drink_soft_name">
							</div>
						</div>

					

						<div class="am-margin">
							<input type="submit" class="am-btn am-btn-primary am-btn-xs" value="提交保存">
							<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
						</div>
					</form>
					</c:if>
						
				</div>

			</div>
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
