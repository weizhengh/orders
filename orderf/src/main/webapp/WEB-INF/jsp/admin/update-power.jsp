<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze UI Admin user Examples</title>
  <meta name="description" content="这是一个 user 页面">
  <meta name="keywords" content="user">
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
<!-- content start -->
  <div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人资料</strong> / <small>Personal information</small></div>
    </div>

    <hr/>

    <div class="am-g">

     

      <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4" style="margin-left: 500px">
        <form id="addemp" class="am-form am-form-horizontal" action="<%=basePath%>power/updatePower.action" method="post">
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">权限名称</label>
            <div class="am-u-sm-9">
            <input type="hidden" name="power_id" value="${power.power_id}" id="user-name" >
              <input type="text" name="power_name" value="${power.power_name}" id="user-name" placeholder="姓名 ">
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-phone" class="am-u-sm-3 am-form-label">权限路径</label>
            <div class="am-u-sm-9">
              <input type="text" name="power_url" value="${power.power_url}" id="user-phone" placeholder="账号 ">
            </div>
          </div>

                 <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3">
              <button id="submit" type="submit" class="am-btn am-btn-primary">修改</button>
            </div>
          </div>
        </form>
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
<script src="<%=basePath%>js/jquery.form.js"></script>
<!--<![endif]-->
<script src="<%=basePath%>js/app.js"></script>
<script type="text/javascript">
<%-- $(document).ready(function(){
	
	var options={
			url:"<%=basePath%>emp/addEmp.action",
			type:"post",
			beforeSubmit:beforeCheck,
			dateType:"json",
			success:successful,
			clearForm:true,
			restForm:true,
			timeout:5000
	};
	
	$('#addemp').submit(function() {   
        $(this).ajaxSubmit(options);   
   
        return false;   
    });   
	function beforeCheck(formData, form, options){
		return true;
	}
	function successful(data, status){
		
		 if(data="ok"){
			 alert("添加成功");
		 }else{
			 alert("添加失败");
		 }
	}

});
 --%>

</script>
</body>
</html>

