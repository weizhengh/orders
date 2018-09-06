<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
>>>>>>> origin/liulllxw
<%@ include file="header.jsp"%>
<!doctype html>
<html class="no-js">
<head>
<<<<<<< HEAD
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze后台管理系统模板HTML 表格页面 - cssmoban</title>
<meta name="description" content="这是一个 table 页面">
<meta name="keywords" content="table">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<%=basePath%>img/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=basePath%>img/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<%=basePath%>css/amazeui.min.css" />
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
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">酒水类别</strong> / <small>Table</small>
			</div>
		</div>

		<div class="am-g">
			<div class="am-u-md-6 am-cf">
				<div class="am-fl am-cf">
					<div class="am-btn-toolbar am-fl">
						<div class="am-btn-group am-btn-group-xs">
							<a href="<%=basePath%>drinkSoft/toInsert.action" type="button"
								class="am-btn am-btn-default"><span class="am-icon-plus"></span>
								新增</a>


							<button type="button" class="am-btn am-btn-default">
								<span class="am-icon-trash-o"></span> 删除
							</button>
						</div>

						<div class="am-form-group am-margin-left am-fl">
							<select>
								<option value="option1">编号</option>
								<option value="option2">酒水分类</option>
								<option value="option3">数码产品</option>
								<option value="option3">笔记本电脑</option>
								<option value="option3">平板电脑</option>
								<option value="option3">只能手机</option>
								<option value="option3">超极本</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="am-u-md-3 am-cf">
				<div class="am-fr">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field"> <span
							class="am-input-group-btn">
							<button class="am-btn am-btn-default" type="button">搜索</button>
						</span>
					</div>
				</div>
			</div>
		</div>

		<div class="am-g">
			<div class="am-u-sm-12">
				<form class="am-form">
				
					<table class="am-table am-table-striped am-table-hover table-main">
						<thead>
							<tr>
								<th class="table-check"><input type="checkbox" /></th>
								<th class="table-id">编号</th>
								<th class="table-title">酒水类别</th>
								<th class="table-set">操作</th>
								
							</tr>
						</thead>
						<tbody>
						<tr>
						<td>${str}</td>
						</tr>
							<c:forEach items="${list}" var="type" varStatus="status">
								<tr>
									<td><input type="checkbox" /></td>
									<td>${status.count}</td>

									<td>${type.drink_soft_name }</td>

									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">

												<a
													href="<%=basePath%>drinkSoft/selectByPrimaryKey.action?drink_soft_id=${type.drink_soft_id}">

													<span class="am-icon-pencil-square-o"></span> 编辑

												</a> <a
													href="<%=basePath%>drinkSoft/deleteByPrimaryKey.action?drink_soft_id=${type.drink_soft_id}">

													<span class="am-icon-pencil-square-o"></span> 删除

												</a>
											</div>
										</div>
									</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<div class="am-cf">
						共 15 条记录
						<div class="am-fr">
							<ul class="am-pagination">
								<li class="am-disabled"><a href="#">«</a></li>
								<li class="am-active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">»</a></li>
							</ul>
						</div>
					</div>
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
=======
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze后台管理系统模板HTML 表格页面 - cssmoban</title>
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表格</strong> / <small>Table</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
            </div>

            <div class="am-form-group am-margin-left am-fl">
              <select>
                <option value="option1">所有类别</option>
                <option value="option2">IT业界</option>
                <option value="option3">数码产品</option>
                <option value="option3">笔记本电脑</option>
                <option value="option3">平板电脑</option>
                <option value="option3">只能手机</option>
                <option value="option3">超极本</option>
              </select>
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
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th><th class="table-id">ID</th><th class="table-title">标题</th><th class="table-type">类别</th><th class="table-author">作者</th><th class="table-date">修改日期</th><th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="checkbox" /></td>
              <td>1</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>2</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>3</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>4</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>5</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>6</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>7</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>8</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>9</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>10</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>11</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>12</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>13</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>14</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试14号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>15</td>
              <td><a href="#">Business management</a></td>
              <td>default</td>
              <td>测试1号</td>
              <td>2014年9月4日 7:28:47</td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
          <div class="am-cf">
  共 15 条记录
  <div class="am-fr">
    <ul class="am-pagination">
      <li class="am-disabled"><a href="#">«</a></li>
      <li class="am-active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li><a href="#">»</a></li>
    </ul>
  </div>
</div>
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

