<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze后台管理系统模板HTML 表格页面 - cssmoban</title>
<meta name="description" content="这是一个 table 页面">
<meta name="keywords" content="table">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<%=basePath%>img/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=basePath%>img/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<%=basePath%>css/amazeui.min.css" />
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
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">酒水类别</strong> / <small>Table</small>
			</div>
		</div>




		<div class="am-g">
			<div class="am-u-md-6 am-cf">
				<div class="am-fl am-cf">
					<div class="am-btn-toolbar am-fl">
						<div class="am-btn-group am-btn-group-xs">
							<a href="<%=basePath%>drinkSoft/toInsert.action" type="button"
								class="am-btn am-btn-default"><span class="am-icon-plus"></span>
								新增</a>


							<button type="button" class="am-btn am-btn-default">
								<span class="am-icon-trash-o"></span> 删除
							</button>
						</div>


					</div>
				</div>
			</div>

		</div>

		<div class="am-g">
			<div class="am-u-sm-12">
				<form class="am-form">

					<table class="am-table am-table-striped am-table-hover table-main">
						<thead>
							<tr>
								<th class="table-check"><input type="checkbox" /></th>
								<th class="table-id">编号</th>
								<th class="table-title">酒水类别</th>
								<th class="table-set">操作</th>

							</tr>
						</thead>
						<tbody>
							<tr>

							</tr>
							<c:forEach items="${list}" var="type" varStatus="status">

								<tr>
									<td><input type="hidden" id="drink_soft_id"></td>
									<td><input type="checkbox" /></td>

									<td>${status.count}</td>

									<td>${type.drink_soft_name }</td>

									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">

												<a
													href="<%=basePath%>drinkSoft/selectByPrimaryKey.action?drink_soft_id=${type.drink_soft_id}">

													<span class="am-icon-pencil-square-o"></span> 编辑

												</a> <a onclick="deletesoft('${type.drink_soft_id}')"> <span
													class="am-icon-pencil-square-o"></span> 删除 <%-- <%=basePath%>drinkSoft/deleteByPrimaryKey.action?drink_soft_id=${type.drink_soft_id} --%>
												</a>
												<script>
												 
												function deletesoft(drink_soft_id){
												
												    $.ajax({
												        url : '${pageContext.request.contextPath }/drinkSoft/deleteByPrimaryKey.action?drink_soft_id='+drink_soft_id, 
												        type : "POST",
												        contentType: "application/json;charset=utf-8",
												       
												        success:function(jsonStr){
												        	
												        	if(jsonStr.message=="成功"){
												        		alert("删除成功");
												        	 window.location.href="<%=basePath%>drinkSoft/selectAll.action";
																		} else {
																			alert("酒水类下有酒水，不能删除");
																		}
																	},
															    	error: function(XMLHttpRequest, textStatus, errorThrown) {
															    	alert(XMLHttpRequest.status); 
															    		alert(XMLHttpRequest.readyState); 
															          //    alert(textStatus);        
															    		
								    	},

																});
													}
												</script>
											</div>
										</div>
									</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<div class="am-cf">
						共 15 条记录
						<div class="am-fr">
							<ul class="am-pagination">
								<li class="am-disabled"><a href="#">«</a></li>
								<li class="am-active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">»</a></li>
							</ul>
						</div>
					</div>
					<hr />
					<p>注：.....</p>
				</form>
			</div>

		</div>
	</div>


	<!-- content end -->
	</div>

	<%@ include file="footer.jsp"%>
	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/amazeui.min.js"></script>
	<script src="<%=basePath%>js/app.js"></script>
</body>
</html>

