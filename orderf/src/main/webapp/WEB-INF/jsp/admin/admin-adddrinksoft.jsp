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
				<strong class="am-text-primary am-text-lg">酒水类型</strong> / <small>form</small>
			</div>
		</div>

		<div class="am-tabs am-margin" data-am-tabs>
			<ul class="am-tabs-nav am-nav am-nav-tabs">
				<li><a href="#tab3">酒水类型信息</a></li>
			</ul>

			<div class="am-tabs-bd">
				<div class="am-tab-panel am-fade" id="tab3">



					<c:if test="${status=='update' }">
						<form class="am-form" action="updateSelective.action"
							method="post">
							<div class="am-g am-margin-top-sm">

								<div class="am-u-sm-2 am-text-right">酒水类型名称</div>
								<input type="hidden" value="${drinkSoft.drink_soft_id }"
									name="drink_soft_id">
								<div class="am-u-sm-4 am-u-end">
									<input type="text" id="name" class="am-input-sm" onblur="update()"
										value="${drinkSoft.drink_soft_name }" onkeyup="this.value=this.value.replace(/\s+/g,'')" required="required" name="drink_soft_name">
								</div>
							</div>
								<script type="text/javascript">
				function update(){
					var name=document.getElementById("name").value;
					
					if(name==null||name==' '){
						alert("不能为空");
						
					}else{
				    $.ajax({
				    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
				    	scriptCharset: 'utf-8',
				        url : '${pageContext.request.contextPath }/drinkSoft/selectByName.action', 
				        type : "POST",
				        data:{"drink_soft_name":name},
				        
				        success:function(jsonStr){
				        	
				        	
				        	if(jsonStr.message=="有"){
				        		alert("已经存在，不能修改");
				        		
				        	
				        		 window.location.href="<%=basePath%>drinkSoft/selectAll.action";
														
													} else {
														
														$("#but").attr("disabled", false);
													}
												},
												error : function(
														XMLHttpRequest,
														textStatus, errorThrown) {
													alert(XMLHttpRequest.status);
													//alert(XMLHttpRequest.readyState);
													//    alert(textStatus);        

												},

											});
					}
								}
							</script>
							 
							
						
							<div class="am-margin">
								<input type="submit" id="but" disabled="disabled" class="am-btn am-btn-primary am-btn-xs"
									value="提交保存">
							<a href="<%=basePath%>drinkSoft/selectByPrimaryKey.action?drink_soft_id=${drinkSoft.drink_soft_id}"><button type="button"  class="am-btn am-btn-primary am-btn-xs">放弃保存</button></a>
							</div>
						</form>

					</c:if>



					<c:if test="${status=='insert' }">
						<form class="am-form" action="insertSelective.action"
							method="post">
							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">酒水类型名称</div>

								<div class="am-u-sm-4 am-u-end">
									<input type="text" class="am-input-sm" id="name"
										onblur="save()" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')" name="drink_soft_name">
								</div>
							</div>
							<script type="text/javascript">
				function save(){
					var name=document.getElementById("name").value;
					
					if(name==null||name==' '){
						alert("不能为空");
						
					}else{
				    $.ajax({
				    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
				    	scriptCharset: 'utf-8',
				        url : '${pageContext.request.contextPath }/drinkSoft/selectByName.action', 
				        type : "POST",
				        data:{"drink_soft_name":name},
				        
				        success:function(jsonStr){
				        	
				        	
				        	if(jsonStr.message=="有"){
				        		alert("已经存在，不能添加");
				        		
				        	
				        		 window.location.href="<%=basePath%>drinkSoft/toInsert.action";
														
													} else {
														
														$("#but").attr("disabled", false);
													}
												},
												error : function(
														XMLHttpRequest,
														textStatus, errorThrown) {
													alert(XMLHttpRequest.status);
													//alert(XMLHttpRequest.readyState);
													//    alert(textStatus);        

												},

											});
					}
								}
				
							</script>



							<div class="am-margin">
								<input type="submit" disabled="disabled"  id="but"  class="am-btn am-btn-primary am-btn-xs" value="提交保存">
								<a href="<%=basePath%>drinkSoft/toInsert.action"><button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button></a>
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
