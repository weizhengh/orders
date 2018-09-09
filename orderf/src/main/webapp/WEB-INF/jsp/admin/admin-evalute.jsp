 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>用户评论管理</title>
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">评论管理</strong> / <small>用户评论</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <%-- <a href="<%=basePath%>url.action?url=admin/admin-adddrink" type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</a>
              <a type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</a>
              <a type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</a> --%>
              <a  type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</a>
            </div>
          </div>
        </div>
      </div>
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="button">搜索</button>
                </span>
          </div>
        </div>
      </div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        <form class="am-form">
         <!--  <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" name="checkItem" /></th><th class="table-title">用户名</th><th class="table-author">Level</th><th class="table-type">商品</th><th class="table-date">评论信息</th><th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody> -->
          <div class="am-panel am-panel-default">
          <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-3'}">最近留言<span class="am-icon-chevron-down am-fr" ></span></div>
          <div class="am-panel-bd am-collapse am-in am-cf" id="collapse-panel-3">
            <ul class="am-comments-list admin-content-comment">
          <c:forEach items="${pageInfo.list }" var="evalute">
              <li class="am-comment">
                <a href="#"><img src="http://amui.qiniudn.com/bw-2014-06-19.jpg?imageView/1/w/96/h/96" alt="" class="am-comment-avatar" width="48" height="48"></a>
                <div class="am-comment-main">
                  <header class="am-comment-hd">
                    <div class="am-comment-meta"><a href="#" class="am-comment-author">${evalute.cust.cust_name}</a> 评论于 <time>2014-7-12 15:30</time><button style="float: right;" onclick="subdel(this,${evalute.eva_id})" class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button></div>
                  </header>
                  <div class="am-comment-bd"><p>${evalute.eva_content}</p>
                  </div>
                </div>
              </li>
          </c:forEach>
            </ul>
            <div class="am-cf">
			  共 ${pageInfo.total} 条记录
			  <div class="am-fr">
			    <ul class="am-pagination">
			      <li><a href="${pageContext.request.contextPath}/evalute/selectAll.action?pn=1">首页</a></li>
			      <c:if test="${pageInfo.hasPreviousPage}">
			      	<li><a href="${pageContext.request.contextPath}/evalute/selectAll.action?pn=${pageInfo.pageNum-1}">«</a></li>
			      </c:if>
			      <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num == pageInfo.pageNum}">
                            <li class="am-active"><a href="#">${page_num}</a></li>
                        </c:if>
                        <c:if test="${page_num != pageInfo.pageNum}">
                            <li><a href="${pageContext.request.contextPath}/evalute/selectAll.action?pn=${page_num}">${page_num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage}">
			      		<li><a href="${pageContext.request.contextPath}/evalute/selectAll.action?pn=${pageInfo.pageNum+1}">»</a></li>
			      	</c:if>
			      	<li><a href="${pageContext.request.contextPath}/evalute/selectAll.action?pn=${pageInfo.pages}">尾页</a></li>
			    </ul>
			  </div>
			</div>
          </div>
        </div>
          <%-- 
            <tr>
              <td><input type="checkbox" name="checkI" value = " ${evalute.eva_id}" /></td>
              <td>${evalute.cust.cust_name}</td>
              <td>${evalute.eva_level}</td>
              <td><a href="#">Business management</a></td>
              <td>${evalute.eva_content}</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button onclick="edit(${evalute.eva_id})" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button onclick="subdel(this,${evalute.eva_id})" class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            
          </tbody>
        </table> --%>
          <hr />
          <p>注：.....</p>
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
<script type="text/javascript">
	function subdel(obj,eva_id){
		if(confirm('确实要删除该记录吗?')) {
			$.post("<%=basePath%>evalute/delete.action",{"eva_id":eva_id});
		}
	}
	function edit(eva_id){
		$.post("<%=basePath%>evalute/get.action",{"eva_id":eva_id});
	}

</script>
</body>
</html>

