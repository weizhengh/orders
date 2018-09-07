<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
				<strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small>
			</div>
		</div>

		<div class="am-tabs am-margin" data-am-tabs>
			<ul class="am-tabs-nav am-nav am-nav-tabs">
				<li><a href="#tab3">酒水信息添加</a></li>
			</ul>
			<div class="am-tabs-bd">
				<c:if test="${status=='insert'}">
					<form class="am-form" action="insertSelective.action" method="post" enctype="multipart/form-data">

						<div class="am-tab-panel am-fade" id="tab3">


							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">名称</div>
								<div class="am-u-sm-4 am-u-end">
									<input type="text" required="required" maxlength="20"
										class="am-input-sm" name="drink_name">
								</div>
							</div>

							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">价格</div>
								<div class="am-u-sm-4 am-u-end">
									<input type="number" step="0.1" min="0.1" class="am-input-sm"
										name="drink_price">
								</div>
							</div>

							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">图片</div>
								<div class="am-u-sm-4 am-u-end">
									<div
										style="width: 90px; height: 110px; overflow: hidden; display: none"
										id="show">
										<div class="mark"></div>
									</div>
									
									
									<input type="file"
										accept="image/png, image/jpeg, image/gif, image/jpg"
										id="picUpload" value="上传图片"  name="multipartFile"
										onchange="getImgURL(this)" class="am-input-sm" required>
								</div>
							</div>

						</div>

						

						<script type="text/javascript">
							var imgurl = "";

							function getImgURL(node) {
								var imgURL = "";
								try {
									var file = null;
									if (node.files && node.files[0]) {
										file = node.files[0];
									} else if (node.files && node.files.item(0)) {
										file = node.files.item(0);
									}
									//Firefox 因安全性问题已无法直接通过input[file].value 获取完整的文件路径
									try {
										//Firefox7.0 
										imgURL = file.getAsDataURL();
										//alert("//Firefox7.0"+imgRUL);             			
									} catch (e) {
										//Firefox8.0以上                    			
										imgRUL = window.URL
												.createObjectURL(file);
										//alert("//Firefox8.0以上"+imgRUL);
									}
								} catch (e) { //这里不知道怎么处理了，如果是遨游的话会报这个异常           		
									//支持html5的浏览器,比如高版本的firefox、chrome、ie10
									if (node.files && node.files[0]) {
										var reader = new FileReader();
										reader.onload = function(e) {
											imgURL = e.target.result;
										};
										reader.readAsDataURL(node.files[0]);
									}
								}
								//imgurl = imgURL;
								creatImg(imgRUL);
								return imgURL;
							}

							function creatImg(imgRUL) { //根据指定URL创建一个Img对象
								var textHtml = "<img src='"+imgRUL+"'/>";
								$(".mark").after(textHtml);
								document.getElementById("show").style.display = "block";
							}
						</script>

						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">备注</div>
							<div class="am-u-sm-4 am-u-end">

								<textarea maxlength="50" rows="4" class="am-input-sm"
									name="drink_note" required></textarea>

							</div>

						</div>

						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">所属类</div>
							<div class="am-u-sm-4 am-u-end">
								<select name="drink_soft.drink_soft_id">
									<option>请选择</option>
									<c:forEach items="${drinksoft}" var="drinksoft">
										<option value="${ drinksoft.drink_soft_id }">${drinksoft.drink_soft_name }</option>
									</c:forEach>

								</select>
							</div>
						</div>

						<div class="am-margin">
							<input type="submit" value="提交保存"
								class="am-btn am-btn-primary am-btn-xs">
							<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
						</div>
					</form>
				</c:if>

				<c:if test="${status=='update'}">
					<form class="am-form" action="updateSelective.action" method="post" enctype="multipart/form-data">

						<div class="am-tab-panel am-fade" id="tab3">

							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">名称</div>
								<input type="hidden" value="${drink.drink_id}" name="drink_id">
								<div class="am-u-sm-4 am-u-end">
									<input type="text" class="am-input-sm" name="drink_name"
										value="${drink.drink_name}" required="required">
								</div>
							</div>

							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">价格</div>
								<div class="am-u-sm-4 am-u-end">
									<input type="number" step="0.1" min="0.1" class="am-input-sm"
										name="drink_price" value="${drink.drink_price }"
										required="required">
								</div>
							</div>
							
							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">图片</div>
								<div class="am-u-sm-4 am-u-end">
									<div
										style="width: 90px; height: 110px; overflow: hidden;" 
										id="show">
										<div id="oldpic" style="width: 90px;height: 110px;">
										<img  src="<%=basePath%>${drink.drink_picture}" alt="酒水图片" width="50" height="60" />
										</div>
										<div class="mark">	 
										
										</div> 
									</div>
								
									
									<input type="file"
										accept="image/png, image/jpeg, image/gif, image/jpg"
										id="picUpload"  name="multipartFile"
										onchange="getImgURL(this)"  class="am-input-sm" required="required">
								</div>
							</div>

							<script type="text/javascript">
							var imgurl = "";

							function getImgURL(node) {
							
								var imgURL = "";
								try {
									var file = null;
									if (node.files && node.files[0]) {
										file = node.files[0];
									} else if (node.files && node.files.item(0)) {
										file = node.files.item(0);
									}
									//Firefox 因安全性问题已无法直接通过input[file].value 获取完整的文件路径
									try {
										//Firefox7.0 
										imgURL = file.getAsDataURL();
										//alert("//Firefox7.0"+imgRUL);             			
									} catch (e) {
										//Firefox8.0以上                    			
										imgRUL = window.URL
												.createObjectURL(file);
										//alert("//Firefox8.0以上"+imgRUL);
									}
								} catch (e) { //这里不知道怎么处理了，如果是遨游的话会报这个异常           		
									//支持html5的浏览器,比如高版本的firefox、chrome、ie10
									if (node.files && node.files[0]) {
										var reader = new FileReader();
										reader.onload = function(e) {
											imgURL = e.target.result;
										};
										reader.readAsDataURL(node.files[0]);
									}
								}
								//imgurl = imgURL;
								creatImg(imgRUL);
								return imgURL;
							}

							function creatImg(imgRUL) { //根据指定URL创建一个Img对象
								var textHtml = "<img src='"+imgRUL+"'/>";
								var text="<img src=''/>";
								$(".mark").after(textHtml);
								document.getElementById("oldpic").style.display = "none";
							
							
							}
						</script>
							
							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">备注</div>
								<div class="am-u-sm-4 am-u-end">
									<textarea maxlength="50" name="drink_note" rows="4"
										required="required">${drink.drink_note }</textarea>
								</div>
							</div>

							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">所属类</div>
								<div class="am-u-sm-4 am-u-end">
									<select name="drink_soft.drink_soft_id">

										<c:forEach items="${drinksoft}" var="drinksoft">
											<c:if
												test="${drinksoft.drink_soft_id==drink.drink_soft.drink_soft_id}">
												<option value="${drinksoft.drink_soft_id}">${drinksoft.drink_soft_name}</option>
											</c:if>
										</c:forEach>

										<c:forEach items="${drinksoft}" var="drinksoft">
											<c:if
												test="${drinksoft.drink_soft_id!=drink.drink_soft.drink_soft_id}">
												<option value="${drinksoft.drink_soft_id}">${drinksoft.drink_soft_name}</option>
											</c:if>
										</c:forEach>

									</select>
								</div>
							</div>

							<div class="am-margin">
								<input type="submit" value="提交保存"
									class="am-btn am-btn-primary am-btn-xs">
								<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
							</div>
						</div>
					</form>
				</c:if>



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
