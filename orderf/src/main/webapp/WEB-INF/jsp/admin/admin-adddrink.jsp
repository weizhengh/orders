<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
>>>>>>> origin/liulllxw

<!doctype html>
<html class="no-js">
<head>
</head>
<body>
<<<<<<< HEAD
	<%@ include file="header.jsp"%>
	<!-- content start -->
	<div class="admin-content">

		<div class="am-cf am-padding">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small>
			</div>
		</div>

		<div class="am-tabs am-margin" data-am-tabs>
			<ul class="am-tabs-nav am-nav am-nav-tabs">
				<li><a href="#tab3">酒水信息添加</a></li>
			</ul>

			<div class="am-tabs-bd">
				<div class="am-tab-panel am-fade" id="tab3">
				
				<c:if test="${status=='insert'}">
					<form class="am-form" action="insertSelective.action" method="post">
						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">名称</div>
							<div class="am-u-sm-4 am-u-end">
								<input type="text" class="am-input-sm" name="drink_name">
							</div>
						</div>

						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">价格</div>
							<div class="am-u-sm-4 am-u-end">
								<input type="text" class="am-input-sm" name="drink_price">
							</div>
						</div>

						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">图片</div>
							<div class="am-u-sm-4 am-u-end">
								<textarea rows="4" name="drink_picture"></textarea>
							</div>
						</div>
						
						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">备注</div>
							<div class="am-u-sm-4 am-u-end">
								<textarea rows="4" name="drink_note"></textarea>
							</div>
						</div>
						
						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">所属类</div>
							<div class="am-u-sm-4 am-u-end">
							<select name="drink_soft.drink_soft_id">
							<option>1</option>
							<option>2</option>
							</select>
							</div>
						</div>
						
						<div class="am-margin">
							<input type="submit" value="提交保存" class="am-btn am-btn-primary am-btn-xs">
							<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
						</div>
					</form>
					</c:if>
					
					
				</div>

			</div>
		</div>

	</div>
	<!-- content end -->

	</div>
	<%@ include file="footer.jsp"%>
	<!--[if lt IE 9]>
=======
<%@ include file="header.jsp"%>
<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small></div>
  </div>

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li><a href="#tab3">酒水信息添加</a></li>
    </ul>

    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade" id="tab3">
        <form class="am-form">
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              SEO 标题
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm">
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              SEO 关键字
            </div>
            <div class="am-u-sm-4 am-u-end">
              <input type="text" class="am-input-sm">
            </div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-text-right">
              SEO 描述
            </div>
            <div class="am-u-sm-4 am-u-end">
              <textarea rows="4"></textarea>
            </div>
          </div>
  <div class="am-margin">
    <button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
    <button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
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
>>>>>>> origin/liulllxw
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="<%=basePath%>js/polyfill/rem.min.js"></script>
<script src="<%=basePath%>js/polyfill/respond.min.js"></script>
<script src="<%=basePath%>js/amazeui.legacy.js"></script>
<![endif]-->

<<<<<<< HEAD
	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/amazeui.min.js"></script>
	<!--<![endif]-->
	<script src="<%=basePath%>js/app.js"></script>
=======
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="<%=basePath%>js/app.js"></script>
>>>>>>> origin/liulllxw
</body>
</html>
