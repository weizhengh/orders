<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js">
<head>
</head>


<script>
	function checkForm(){
		
		var food_name = document.getElementById("food_name").value;
		if(food_name == null || food_name == ''){
			alert("菜品名称不能为空!");
			return false;
		}
		
		var food_pirce = document.getElementById("fprice").value;
		if(food_pirce == null || food_pirce == ''){
			alert("菜品价格不能为空!");
			return false;
		}
		
		var food_note = document.getElementById("fnote").value;
		if(food_note == null || food_note == ''){
			alert("菜品备注不能为空!");
			return false;
		}
		
		
	}
	
	
	/* function checkFoodname(){
		
		var name=$("#food_name").val();
		
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/findFoodName.action",
			data:{"food_name":name},
			success:function(data){
				if(data=="OK"){
					$("#button").attr("disabled",false);
					alert("菜品可以添加");
				}else{
					$("#button").attr("disabled",true);
					alert("菜品已有！！");
				}
			} */
		});
	}
	
	</script>



<body>
<%@ include file="header.jsp"%>
<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">菜品修改</strong> / <small>form</small></div>
  </div>

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li><a href="#tab3">菜品信息修改</a></li>
    </ul>

    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade" id="tab3">
        <form class="am-form" action="updateFood.action" method="post" enctype="multipart/form-data" onsubmit="return checkForm();">
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              菜品名称
            </div>
            <div class="am-u-sm-4 am-u-end">
             <input type="hidden" name="food_id" value="${foods.food_id }"/>
              <input type="text" class="am-input-sm" name="food_name" value="${foods.food_name }"
              maxlength="10" id="food_name" onblur="checkFoodname()"/>
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
             菜品价格
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm" name=food_pirce value="${foods.food_pirce }" 
              maxlength="10" id="fprice"
             onkeypress="return event.keyCode>=48&&event.keyCode<=57" ng-pattern="/[^a-zA-Z]/"
             onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/" />
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
            菜品备注
            </div>
            <div class="am-u-sm-4 am-u-end">
              <textarea rows="4" name="food_note" maxlength="30" id="fnote">${foods.food_note }</textarea>
            </div>
          </div>
          
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
            菜品分类
            </div>
            <div class="am-u-sm-4 am-u-end">
             <%-- <select name="food_soft.food_soft_id">
							<c:forEach var="a" items="${foodsoft }">
        	<option value="${a.food_soft_id }">${a.food_soft_name }</option>
							</c:forEach>
						</select> --%>
						
						
						<select name="food_soft.food_soft_id">

										<c:forEach items="${foodsoft}" var="foodsoft">
											<c:if
												test="${foodsoft.food_soft_id==foods.food_soft.food_soft_id}">
												<option value="${foodsoft.food_soft_id}">${foodsoft.food_soft_name}</option>
											</c:if>
										</c:forEach>

										<c:forEach items="${foodsoft}" var="foodsoft">
											<c:if
												test="${foodsoft.food_soft_id!=foods.food_soft.food_soft_id}">
												<option value="${foodsoft.food_soft_id}">${foodsoft.food_soft_name}</option>
											</c:if>
										</c:forEach>

									</select>
            </div>
          </div>
          
         <!--  <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
            菜品图片
            </div>
            <div class="am-u-sm-4 am-u-end">
               <input type="file" class="am-input-sm" name="food_picyure" value="" />
            </div>
          </div> -->
          
          
          <div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">菜品图片</div>
								<div class="am-u-sm-4 am-u-end">
									<div
										style="width: 90px; height: 110px; overflow: hidden; display: none; 
										id="show">
										<div class="mark">	<img src="<%=basePath%>${food.food_picture}" alt="菜品图片" width="50" height="60" /> 
										</div> 
									</div>
								
									
									<input type="file"
										accept="image/png, image/jpeg, image/gif, image/jpg"
										id="picUpload"  value="<%=basePath%>${food.food_picture}"  name="multipartFile"
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
								$(".mark").after(textHtml);
								document.getElementById("show").style.display = "block";
							}
						</script>
          
          
  <div class="am-margin">
    <input type="submit" value="提交保存"  class="am-btn am-btn-primary am-btn-xs">
    <button type="button" class="am-btn am-btn-primary am-btn-xs"><a href="javascript:history.back(-1)" style="color: white">放弃保存</button>
  </div>
        </form>
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
