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
	
	
	
	
	
	</script>











<body>
<%@ include file="header.jsp"%>
<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">支出添加</strong> / <small>form</small></div>
  </div>

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li><a href="#tab3">支出信息添加</a></li>
    </ul>

    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade" id="tab3">
        <form class="am-form" action="addStock.action" method="post" onsubmit="return checkForm();">
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
            支出金额
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm" name="stock_price" value="" maxlength="10" id="stock_price" 
              onkeypress="return event.keyCode>=48&&event.keyCode<=57" ng-pattern="/[^a-zA-Z]/"
             onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/"/>
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
             支出类型
            </div>
            <div class="am-u-sm-4 am-u-end">
             <!--  <input type="text" class="am-input-sm" name="stock_type" value="" maxlength="10" id="stock_type" /> -->
            
            <select name="stock_type" id="pid" onchange="gradeChange()">
                <option value="option1">请选择</option>
                <option value="1">买菜</option>
                <option value="2">买酒</option>
                <option value="3">工资</option>
                <option value="4">其他</option>
               
              </select>
            
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
           支出备注
            </div>
            <div class="am-u-sm-4 am-u-end">
              <textarea rows="4" name="stock_info" maxlength="30" id="stock_info"></textarea>
            </div>
          </div>
          
          
          
          
          
          
          
  <div class="am-margin">
    <button type="submit" id="button"  class="am-btn am-btn-primary am-btn-xs">提交保存</button>
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
