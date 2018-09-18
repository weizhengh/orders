<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>支出管理</title>
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
<link rel="stylesheet" href="<%=basePath%>css/amazeui.datetimepicker.css"/>
<link href="<%=basePath%>css/bootstrap.min.css"/>
</head>






<body onload="cutStr(5)">
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">支出信息</strong> / <small>Table</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
               <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> <a href="<%=basePath%>sExchange.action">新增</a></button>
              <%--<button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button> --%>
            </div>
            


















            <div class="am-form-group am-margin-left am-fl">

							<%-- <select name="food_soft_id" id="pid" onchange="gradeChange()">

								<option>请选择</option>

								<c:forEach items="${foodsoft}" var="food">
									<option
										value="${food.food_soft_id}">${food.food_soft_name}</option>
								</c:forEach>

							</select> --%>
							
							
							 <select name="stock_type" id="pid" onchange="gradeChange()">
                <option value="option1">请选择</option>
                <option value="1">买菜</option>
                <option value="2">买酒</option>
                <option value="3">工资</option>
                <option value="4">其他</option>
               
              </select>
							
							

						</div>
						
						
						
						<script type="text/JavaScript">
							function gradeChange() {
								alert(11111);
								var soft=$("#pid option:selected").val();
								alert(soft);
								/* url:"<c:url value='/drink/selectBySoftId.action?drink_soft_id=soft'/>" */
										window.location.href="<%=basePath%>findAllexpends.action?stock_type="+soft;
									/* <c:url value='/drink/selectBySoftId.action?drink_soft_id=soft'/> */
							}
						</script>
						
						
						
          </div>
        </div>
      </div>
      
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
         <!-- <form action="" method="get">
          <div class="am-input-group am-input-group-sm">
          
         
            <input type="text" class="am-form-field" name="" value="">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="submit">搜索</button>
                </span>
                
          </div>
            </form> -->
            
            
            <div class="am-input-group am-datepicker-date"  data-am-datepicker="{format: 'dd-mm-yyyy'}">
  <input type="text" class="am-form-field" placeholder="日历组件" readonly>
  <span class="am-input-group-btn am-datepicker-add-on">
    <button class="am-btn am-btn-default" type="button"><span class="am-icon-calendar"></span> </button>
  </span>
</div>
<div class="am-input-group date " id="datetimepicker" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
  <input size="16" type="text" value="2015-02-14 14:45" class="am-form-field" readonly>
  <span class="am-input-group-label add-on"><i class="icon-th am-icon-calendar"></i></span>
</div>
            
            
            
            
        </div>
      </div>
    
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main" id="table">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id">序号</th>
                <th class="table-title">支出金额</th>
                <th class="table-date">支出时间</th>
                <th class="table-type">记录人员</th>
                <th class="table-author">支出类型</th>
                <th class="table-date">支出备注</th>
               
                
              </tr>
          </thead>
           <c:forEach var="a" items="${pageInfo.list}" varStatus="status">
          <tbody>
            <tr>
              <td><input type="checkbox" /></td>
              <td>${status.index+1 }</td>
              <td>${a.stock_price }</td>
              <td><fmt:formatDate value="${a.stock_time}" type="both"/> </td>
              <td>${a.emp_id.emp_name}</td>
              <td>
              
              <c:if test="${a.stock_type ==1}">
													买菜
												</c:if>
												<c:if test="${a.stock_type ==2}">
												买酒
												</c:if>
												<c:if test="${a.stock_type ==3}">
												工资
												</c:if>
												<c:if test="${a.stock_type ==4}">
												其他
												</c:if>

              </td>            
              <td class="stock_info">${a.stock_info }</td>
             
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>   <a href="<%=basePath%>findstockByid.action?sid=${a.stock_id }" style="margin-left: 20px">查看</a></button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span>  <a href="<%=basePath%>deletestock.action?sid=${a.stock_id }" style="margin-left: 20px">删除</a></button>
                  </div>
                </div>
              </td>
            </tr>
           
          </tbody>
          </c:forEach>
        </table>
        
        
        
        
        
        
          <div class="am-cf">
			  共 ${pageInfo.total} 条记录
			  <div class="am-fr">
			    <ul class="am-pagination">
			      <li><a href="${pageContext.request.contextPath}/findAllexpends.action?pn=1">首页</a></li>
			      <c:if test="${pageInfo.hasPreviousPage}">
			      	<li><a href="${pageContext.request.contextPath}/findAllexpends.action?pn=${pageInfo.pageNum-1}">«</a></li>
			      </c:if>
			      <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num == pageInfo.pageNum}">
                            <li class="am-active"><a href="#">${page_num}</a></li>
                        </c:if>
                        <c:if test="${page_num != pageInfo.pageNum}">
                            <li><a href="${pageContext.request.contextPath}/findAllexpends.action?pn=${page_num}">${page_num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage}">
			      		<li><a href="${pageContext.request.contextPath}/findAllexpends.action?pn=${pageInfo.pageNum+1}">»</a></li>
			      	</c:if>
			      	<li><a href="${pageContext.request.contextPath}/findAllexpends.action?pn=${pageInfo.pages}">尾页</a></li>
			    </ul>
			  </div>
			</div>
          <hr />
         
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
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.js"></script>
<script src="<%=basePath%>js/amazeui.datetimepicker.min.js"></script>
<!--<![endif]-->
<script src="<%=basePath%>js/app.js"></script>
</body>
<script type="text/javascript">
$('#datetimepicker').datetimepicker({
	  format: 'yyyy-mm-dd'
	});
</script>



<script>
function cutStr(len){
    var obj=document.getElementsByClassName('stock_info');
    for (i=0;i<obj.length;i++){
        obj[i].innerHTML=obj[i].innerHTML.substring(0,len)+'…';
    }
}
</script>







</html>

