<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js">
<head>
</head>


<script>
		function checkFoodsoftname(){
			
			var name=$("#food_soft_name").val();
			
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/findFoodsoftName.action",
				data:{"food_soft_name":name},
				success:function(data){
					if(data=="OK"){
						$("#button").attr("disabled",false);
						alert("菜品种类可以添加");
					}else{
						$("#button").attr("disabled",true);
						alert("菜品种类已有！！");
					}
				}
			});
		}
		
	</script>


<body>
<%@ include file="header.jsp"%>
<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">添加菜品类型</strong> / <small>form</small></div>
  </div>
  

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li><a href="#tab3">菜品类型信息添加</a></li>
    </ul>

    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade" id="tab3">
        <form class="am-form" action="addfoodsoft.action" method="post">
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              菜品类型名称
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm" name="food_soft_name" id="food_soft_name" onblur="checkFoodsoftname()" >
            </div>
          </div>

          
  <div class="am-margin">
    <button type="submit" id="button" disabled="disabled"  class="am-btn am-btn-primary am-btn-xs">提交保存</button>
    <button type="button" class="am-btn am-btn-primary am-btn-xs"> <a href="javascript:history.back(-1)" style="color: white">放弃保存</a></button>
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
