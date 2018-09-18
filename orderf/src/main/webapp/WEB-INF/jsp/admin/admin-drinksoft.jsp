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


<<<<<<< HEAD
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
=======
						 <a type="button" onclick="batchDeletes()" class="am-btn am-btn-default">
								 <span class="am-icon-trash-o"></span> 删除</a>
						</div>
						
							<script type="text/javascript">
						function batchDeletes(){ 
							//判断至少写了一项 
							var checkedNum = $("input[name='subcheck']:checked").length; 
							if(checkedNum==0){ 
								alert("请至少选择一项!");
							return false; } 
							if(confirm("确定删除所选项目?"))
							{ var checkedList = new Array();
							$("input[name='subcheck']:checked").each(function(){ 
								checkedList.push($(this).val()); }); 
							$.ajax({ 
								type:"POST", 
								
								url: '${pageContext.request.contextPath }/drinkSoft/deleteByPrimaryKey.action', 
								data:{"delitems":checkedList.toString()}, 
								datatype:"html", success:function(data){
									$("[name='subcheck']:checkbox").attr("checked",false); 
									location.reload();//页面刷新 
									},
									error:function(data){ art.dialog.tips('删除失败!'); } }); } }
						</script> 
						


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
								<th class="table-check"></th>
								
								<th class="table-title">酒水类别</th>
								<th class="table-set">操作</th>
                               <td><input type="hidden" id="drink_soft_id"></td>
							</tr>
						</thead>
						<tbody>
							<tr>

							</tr>
							<c:forEach items="${pageInfo.list}" var="type" varStatus="status">

								<tr>
									
									<td><input id="subcheck" name="subcheck"  type="checkbox"
										value="${type.drink_soft_id}" /></td>

									

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
													if(confirm("确定删除?")){
												    $.ajax({
												        url : '${pageContext.request.contextPath }/drinkSoft/deleteone.action?drink_soft_id='+drink_soft_id, 
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
																	error : function(
																			XMLHttpRequest,
																			textStatus,
																			errorThrown) {
																		alert(XMLHttpRequest.status);
																		alert(XMLHttpRequest.readyState);
																		//    alert(textStatus);        

																	},

																});
													}else{
														window.event.returnValue = false; 
													}
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
						共 ${pageInfo.total} + ${pageInfo.pages} 条记录
						<div class="am-fr">
							<ul class="am-pagination">
								<li><a
									href="${pageContext.request.contextPath}/drinkSoft/selectAll.action?pn=1">首页</a></li>
								<c:if test="${pageInfo.hasPreviousPage}">
									<li><a
										href="${pageContext.request.contextPath}/drinkSoft/selectAll.action?pn=${pageInfo.pageNum-1}">«</a></li>
								</c:if>
								<!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
								<c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
									<c:if test="${page_num == pageInfo.pageNum}">
										<li class="am-active"><a href="#">${page_num}</a></li>
									</c:if>
									<c:if test="${page_num != pageInfo.pageNum}">
										<li><a
											href="${pageContext.request.contextPath}/drinkSoft/selectAll.action?pn=${page_num}">${page_num}</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${pageInfo.hasNextPage}">
									<li><a
										href="${pageContext.request.contextPath}/drinkSoft/selectAll.action?pn=${pageInfo.pageNum+1}">»</a></li>
								</c:if>
								<li><a
									href="${pageContext.request.contextPath}/drinkSoft/selectAll.action?pn=${pageInfo.pages}">尾页</a></li>
>>>>>>> branch 'master' of https://github.com/weizhengh/orders.git
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

