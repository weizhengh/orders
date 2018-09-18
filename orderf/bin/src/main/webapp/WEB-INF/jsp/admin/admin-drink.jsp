<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze后台管理系统模板HTML 表格页面 - cssmoban</title>
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
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表格</strong> / <small>Table</small></div>
    </div>
		<div class="am-g">
			<div class="am-u-md-6 am-cf">
				<div class="am-fl am-cf">
					<div class="am-btn-toolbar am-fl">
						<div class="am-btn-group am-btn-group-xs">
							<a href="<%=basePath%>drink/toInsert.action" type="button"
								class="am-btn am-btn-default"><span class="am-icon-plus"></span>
								新增</a> <a type="button" onclick="batchDeletes()" class="am-btn am-btn-default"><span
								class="am-icon-trash-o"></span> 删除</a>
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
								
								url: '${pageContext.request.contextPath }/drink/deleteByPrimaryKey.action', 
								data:{"delitems":checkedList.toString()}, 
								datatype:"html", success:function(data){
									$("[name='subcheck']:checkbox").attr("checked",false); 
									location.reload();//页面刷新 
									},
									error:function(data){ art.dialog.tips('删除失败!'); } }); } }
						</script> 
						
						
						

						<div class="am-form-group am-margin-left am-fl">
							<select id="pid" onchange="gradeChange()">
								<option>请选择</option>


								<c:forEach items="${drinkSoft}" var="drink">
									<option value="${drink.drink_soft_id}">${drink.drink_soft_name}</option>
								</c:forEach>

							</select>
						</div>

						<script type="text/JavaScript">
							function gradeChange() {
								var soft=$("#pid option:selected").val();
								/* url:"<c:url value='/drink/selectBySoftId.action?drink_soft_id=soft'/>" */
										window.location.href="<%=basePath%>drink/selectBySoftId.action?drink_soft_id="+soft;
								/* <c:url value='/drink/selectBySoftId.action?drink_soft_id=soft'/> */
							}
						</script>
					</div>
				</div>
			</div>
			<div class="am-u-md-3 am-cf">
				<form action="selectByLike.action" method="post">
					<div class="am-fr">
						<div class="am-input-group am-input-group-sm">
							<input type="text" class="am-form-field" name="blur"> <span
								class="am-input-group-btn"> <input
								class="am-btn am-btn-default" type="submit">搜索
							</span>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="am-g">
			<div class="am-u-sm-12">
				<form class="am-form">
					<table class="am-table am-table-striped am-table-hover table-main" >
						<thead>
							<tr>
								<th class="table-check"><input type="checkbox" /></th>
								<th class="table-id">编号</th>
								<th class="table-title">名称</th>
								<th class="table-title">价格</th>
								<th class="table-title">备注</th>
								<th class="table-type">类别</th>
								<th class="table-type">图片</th>
								<th class="table-set">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="drink" varStatus="status">
								<tr>
									<td><input id="subcheck" name="subcheck"  type="checkbox"
										value="${drink.drink_id}" /></td>
									<td>${status.count}</td>
									<td>${drink.drink_name }</td>
									<td>${drink.drink_price}</td>
									<td ><div style="width: 100px; word-wrap:break-word;word-break:break-all;">${drink.drink_note}</div></td>
									<td>${drink.drink_soft.drink_soft_name}</td>

									<td><img src="<%=basePath%>${drink.drink_picture}"
										alt="酒水图片" width="50" height="60" /></td>

									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<a
													href="<%=basePath%>drink/selectByPrimaryKey.action?drink_id=${drink.drink_id}">


													<span class="am-icon-pencil-square-o"></span> 编辑

												</a> <a
													href="<%=basePath%>drink/deleteone.action?drink_id=${drink.drink_id}">

													<span class="am-icon-pencil-square-o"></span> 删除

												</a>
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

