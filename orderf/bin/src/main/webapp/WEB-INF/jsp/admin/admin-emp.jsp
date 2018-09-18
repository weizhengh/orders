<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>员工管理</title>
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">员工管理</strong></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button"  class="am-btn am-btn-default"><a href="<%=basePath%>url.action?url=admin/add-emp" class="am-icon-plus">新增</a></button>
<!--           <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button> -->
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
            </div>

            <div class="am-form-group am-margin-left am-fl">
              <select id="roleId" name="role_id"  onchange="findbyrole()">
                <option value="">--请选择--</option>
              <c:forEach items="${ROLELIST}" var="role">
            	<c:if test="${roleId==role.role_id}">
                <option selected="selected" value="${role.role_id}">${role.role_name}</option>
                </c:if>
                 <option value="${role.role_id}">${role.role_name}</option>
              </c:forEach>
              </select>
            </div>
          </div>
        </div>
      </div>
       <form action="<%=basePath%>emp/findAll.action" method="get">
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
       
          <div class="am-input-group am-input-group-sm">
            <input type="text" name="emp_name" class="am-form-field" value="${emp_name}">
                <span class="am-input-group-btn">
                  <input class="am-btn am-btn-default" type="submit" value="搜索">
                </span>
          </div>
     
        </div>
      </div>
           </form>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id">ID</th>
                <th class="table-title">姓名</th>
                <th class="table-type">登录名</th>
                <th class="table-author">密码</th>
                <th class="table-date">工资</th>
                <th class="table-date">状态</th>
                <th class="table-date">角色</th>
                <th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody>
          <c:forEach items="${empInfo.list}" var="emp">
            <tr>
              <td><input type="checkbox" /></td>
              <td>${emp.emp_id}</td>
              <td>${emp.emp_name}</td>
              <td>${emp.emp_login}</td>
              <td>${emp.emp_password}</td>
              <td>${emp.emp_salary}</td>
              <td>
				<c:if test="${emp.emp_state==1}">
					在职
				</c:if>
				<c:if test="${emp.emp_state==2}">
					离职
				</c:if>
              </td>
              <td>
              <c:forEach items="${emp.middleList}" var="middle">
              		${middle.role.role_name}
              </c:forEach>
			  </td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                   <a class="am-btn am-btn-default am-btn-xs am-text-secondary" href="<%=basePath%>emp/findById.action?empId=${emp.emp_id}" class="am-icon-pencil-square-o">编辑</a>
                    
                    <c:if test="${emp.emp_state==1}">
						<button onclick="updatestate(${emp.emp_id},2)" class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy">辞退</span></button>
					</c:if>
					<c:if test="${emp.emp_state==2}">
						<button onclick="updatestate(${emp.emp_id},1)" class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy">上岗</span></button>
					</c:if>
                    
                    <button onclick="deleteemp(${emp.emp_id},${empInfo.pageNum})" class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
          </c:forEach>
         </tbody>
        </table>
          <div class="am-cf">
  共 ${empInfo.total} 条记录
  <div class="am-fr">
    <ul class="am-pagination">
      <li><a href="<%=basePath%>emp/findAll.action?page=1&role_id=${roleId}&emp_name=${emp_name}">首页</a></li>
      <li><a href="<%=basePath%>emp/findAll.action?page=${empInfo.pageNum-1}&role_id=${roleId}&emp_name=${emp_name}">«</a></li>
        <c:forEach items="${empInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num == empInfo.pageNum}">
                            <li class="am-active"><a href="#">${page_num}</a></li>
                        </c:if>
                        <c:if test="${page_num != empInfo.pageNum}">
                            <li><a href="<%=basePath%>emp/findAll.action?page=${page_num}&role_id=${roleId}&emp_name=${emp_name}">${page_num}</a></li>
                        </c:if>
                    </c:forEach>
      <li><a href="<%=basePath%>emp/findAll.action?page=${empInfo.pageNum+1}&role_id=${roleId}&emp_name=${emp_name}">»</a></li>
      <li><a href="<%=basePath%>emp/findAll.action?page=${empInfo.pages}&role_id=${roleId}&emp_name=${emp_name}">尾页</a></li>
    </ul>
  </div>
</div>
          <hr />
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
<script type="text/javascript">
	function findbyrole(){
		var id=$("#roleId").val();
		window.location.href="<%=basePath%>emp/findAll.action?role_id="+id;
		<%-- alert(id);
		$.ajax({
			type:"post",
			url:"<%=basePath%>emp/findAll.action",
			data:{"role_id":id}
		}); --%>
		
	}
	
</script>
<script type="text/javascript">
function addEmp(){
	window.loaction.href="<%=basePath%>url.action?url=admin/add-emp";
}
function deleteemp(empid,page){
	$.ajax({
		type:"get",
		url:"<%=basePath%>emp/deleteById.action",
		data:{"empId":empid,"page":page},
		success:function(data){
			if(date=="ok"){
				alert("删除成功");
				location.reload(true);
			}else{
				alert("删除失败");
			}
		}
	});
}

function updatestate(empid,state){
	$.ajax({
		type:"get",
		url:"<%=basePath%>emp/updateState.action",
		data:{"emp_id":empid,"emp_state":state},
		success:function(data){
			if(data=="ok"){
				alert("修改成功");
				location.reload(true);
			}else{
				alert("修改失败");
			}
		}
	});
}
</script>
</body>
</html>

