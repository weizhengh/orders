<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>食品测试</title>
</head>
<body>

 
 <!-- 菜品分类管理 -->

 <a href="<%=basePath%>addfsoft.action">添加菜品分类</a>
 
 
 
 
 <table>
    <thead>
    <tr>
        <th>序号</th>
        <th>分类名称</th>
        <th>操作</th>
       
    </tr>
    </thead>
    <c:forEach var="foodsoft" items="${foodsoft}" varStatus="status">
	     <tr>
            <td>${status.index+1 }</td>
            <td>${foodsoft.food_soft_name }</td>
            
            <td>
                 
                  <a href="<%=basePath%>deletefoodsoft.action?fsid=${foodsoft.food_soft_id }" style="margin-left: 20px">删除</a>
                  <a href="<%=basePath%>findfoodsoftByid.action?fsid=${foodsoft.food_soft_id }" style="margin-left: 20px">编辑</a>
                  
                  
            </td>
            
        </tr>
        </c:forEach>
        </table>
        
        
        
        
        
        
        -----------------------------------------------------------------------<br>
 
 
 
 
 
 <!-- 菜品管理 -->
 
 <a href="<%=basePath%>addfood.action">添加菜品</a>
 
 <table>
    <thead>
    <tr>
        <th>序号</th>
        <th>菜品名称</th>
        <th>菜品价格</th>
        <th>菜品分类</th>
        <th>菜品图片</th>
        <th>操作</th>
       
    </tr>
    </thead>
    <c:forEach var="food" items="${food}" varStatus="status">
	     <tr>
            <td>${status.index+1 }</td>
            <td>${food.food_name }</td>
             <td>${food.food_pirce}</td>
            <td>${food.food_soft.food_soft_name }</td>
            <td>${food.food_img }</td>
            
            <td>
                 
                  <a href="<%=basePath%>deletefood.action?fid=${food.food_id }" style="margin-left: 20px">删除</a>
                  <a href="<%=basePath%>findfoodByid.action?fid=${food.food_id }" style="margin-left: 20px">编辑</a>
                 
                  
            </td>
            
        </tr>
        </c:forEach>
        </table>
 
 
 
 
 
 



</body>
</html>