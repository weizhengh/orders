<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>客户交易方式</title>
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






<body onload="cutStr(5)">
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">客户交易信息</strong> / <small>Table</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <%-- <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> <a href="<%=basePath%>findAllfsoft.action">新增</a></button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button> --%>
            </div>

            <div class="am-form-group am-margin-left am-fl">

							<%-- <select name="food_soft_id" id="pid" onchange="gradeChange()">

								<option>请选择</option>

								<c:forEach items="${foodsoft}" var="food">
									<option
										value="${food.food_soft_id}">${food.food_soft_name}</option>
								</c:forEach>

							</select> --%>
							
							
							 <select name="order_meth" id="pid" onchange="gradeChange()">
                <option value="option1">请选择</option>
                <option value="1">线上</option>
                <option value="2">线下</option>
                <option value="3">现金</option>
               
              </select>
							
							

						</div>
						
						
						
						<script type="text/JavaScript">
							function gradeChange() {
								alert(11111);
								var soft=$("#pid option:selected").val();
								alert(soft);
								/* url:"<c:url value='/drink/selectBySoftId.action?drink_soft_id=soft'/>" */
										window.location.href="<%=basePath%>findAllexchange.action?order_meth="+soft;
									/* <c:url value='/drink/selectBySoftId.action?drink_soft_id=soft'/> */
							}
						</script>
						
						
						
          </div>
        </div>
      </div>
      
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
         <form action="findAllexchange.action" method="get">
          <div class="am-input-group am-input-group-sm">
          
         
            <input type="text" class="am-form-field" name="customer.cust_name" value="${financ.customer.cust_name}">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="submit">搜索</button>
                </span>
                
          </div>
            </form>
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
                <th class="table-title">订单号</th>
                <th class="table-date">交易时间</th>
                <th class="table-type">交易金额</th>
                <th class="table-author">交易方式</th>
                <th class="table-date">客户账号</th>
                <th class="table-date">客户名称</th>
                
              </tr>
          </thead>
           <c:forEach var="a" items="${pageInfo.list}" varStatus="status">
          <tbody>
            <tr>
              <td><input type="checkbox" /></td>
              <td>${status.index+1 }</td>
              <td>${a.order_id }</td>
              <td><fmt:formatDate value="${a.order_time}" type="both"/> </td>
              <td>${a.order_price}</td>
              <td>
              
              <c:if test="${a.order_meth ==1}">
													线上
												</c:if>
												<c:if test="${a.order_meth ==2}">
												线下
												</c:if>
												<c:if test="${a.order_meth ==3}">
												现金
												</c:if>

              </td>            
              <td>${a.customer.cust_id }</td>
              <td>${a.customer.cust_name}</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                   <%--  <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>   <a href="<%=basePath%>findfoodByid.action?fid=${food.food_id }" style="margin-left: 20px">编辑</a></button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span>  <a href="<%=basePath%>deletefood.action?fid=${food.food_id }" style="margin-left: 20px">删除</a></button> --%>
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
			      <li><a href="${pageContext.request.contextPath}/findAllexchange.action?pn=1">首页</a></li>
			      <c:if test="${pageInfo.hasPreviousPage}">
			      	<li><a href="${pageContext.request.contextPath}/findAllexchange.action?pn=${pageInfo.pageNum-1}">«</a></li>
			      </c:if>
			      <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num == pageInfo.pageNum}">
                            <li class="am-active"><a href="#">${page_num}</a></li>
                        </c:if>
                        <c:if test="${page_num != pageInfo.pageNum}">
                            <li><a href="${pageContext.request.contextPath}/findAllexchange.action?pn=${page_num}">${page_num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage}">
			      		<li><a href="${pageContext.request.contextPath}/findAllexchange.action?pn=${pageInfo.pageNum+1}">»</a></li>
			      	</c:if>
			      	<li><a href="${pageContext.request.contextPath}/findAllexchange.action?pn=${pageInfo.pages}">尾页</a></li>
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
<!--<![endif]-->
<script src="<%=basePath%>js/app.js"></script>
</body>
</html>

