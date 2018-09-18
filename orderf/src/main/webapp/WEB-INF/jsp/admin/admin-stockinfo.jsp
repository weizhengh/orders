<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js">
<head>
</head>












<body>
<%@ include file="header.jsp"%>
<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">支出查看</strong> / <small>form</small></div>
  </div>

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li><a href="#tab3">支出信息查看</a></li>
    </ul>

    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade" id="tab3">
        <form class="am-form" action="addStock.action" method="post" onsubmit="return checkForm();">
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
            支出金额
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm"  value="${stock.stock_price }" maxlength="10" id="stock_price" readonly="readonly"/> 
            
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
             支出类型
            </div>
            <div class="am-u-sm-4 am-u-end">
              <%-- <input type="text" class="am-input-sm"  value="${stock.stock_type }" maxlength="10" id="stock_type" readonly="readonly"/> --%>
             <c:if test="${stock.stock_type ==1}">
													买菜
												</c:if>
												<c:if test="${stock.stock_type ==2}">
												买酒
												</c:if>
												<c:if test="${stock.stock_type ==3}">
												工资
												</c:if>
												<c:if test="${stock.stock_type ==4}">
												其他
												</c:if>
            
            
            
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
           支出备注
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm"  value="${stock.stock_info }" maxlength="10" id="stock_type" readonly="readonly"/>
            </div>
          </div>
          
          
          
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
           支出时间
            </div>
            <div class="am-u-sm-4 am-u-end">
            <fmt:formatDate value="${stock.stock_time}" type="both"/>
             <%--  <input type="text" class="am-input-sm"  value="${stock.stock_time }" maxlength="10" id="stock_type" readonly="readonly"/> --%>
            </div>
          </div>
          
          
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
           记录人
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm"  value="${stock.emp_id.emp_name }" maxlength="10" id="stock_type" readonly="readonly"/>
            </div>
          </div>
          
          
          
          
          
          
          
  <div class="am-margin">
  <!--   <button type="submit" id="button"  class="am-btn am-btn-primary am-btn-xs">提交保存</button> -->
    <button type="button" class="am-btn am-btn-primary am-btn-xs"><a href="javascript:history.back(-1)" style="color: white">返回</button>
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
