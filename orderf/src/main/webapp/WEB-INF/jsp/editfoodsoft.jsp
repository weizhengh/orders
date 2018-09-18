<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改菜品种类</title>
</head>
<body>

   <form action="updatefoodsoft.action" method="post">
   <input type="hidden" name="food_soft_id" value="${softfood.food_soft_id }"/>
   菜品种类名称：<input type="text" name="food_soft_name" value="${softfood.food_soft_name }"/><br><br>
   
   <button type="submit">修改</button>
   
   </form>

</body>
</html>