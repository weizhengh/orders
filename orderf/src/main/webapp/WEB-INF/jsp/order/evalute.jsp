<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>评价</title>
<link rel="stylesheet" href="<%=basePath%>css/new_file.css"
	type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.2.min.js"></script>
    <script>
      //图片上传预览    IE是用了滤镜。
        function previewImage(file)
        {
          var MAXWIDTH  = 120; 
          var MAXHEIGHT = 120;
          var div = document.getElementById('preview');
          if (file.files && file.files[0])
          {
              div.innerHTML ='<img id=imghead onclick=$("#previewImg").click()>';
              var img = document.getElementById('imghead');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else //兼容IE
          {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
          }
        }
        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight ){
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;
                
                if( rateWidth > rateHeight ){
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else{
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
    </script>
    <link rel="stylesheet" href="<%=basePath%>css/news.css" />
    <style type="text/css">
			*{
				margin: 0;
				padding: 0;
			}
			#upBox{
				text-align: center;
				width:500px;
				padding: 20px;
				border: 1px solid #666;
				margin: auto;
				margin-top: 150px;
				margin-bottom: 200px;
				position: relative;
				border-radius: 10px;
			}
			#inputBox{
				width: 100%;
				height: 40px;
				border: 1px solid cornflowerblue;
				color: cornflowerblue;
				border-radius: 20px;
				position: relative;
				text-align: center;
				line-height: 40px;
				overflow: hidden;
				font-size: 16px;
			}
			#inputBox input{
				width: 114%;
				height: 40px;
				opacity: 0;
				cursor: pointer;
				position: absolute;
				top: 0;
				left: -14%;
				
			}
			#imgBox{
				text-align: left;
			}
			.imgContainer{
				display: inline-block;
				width: 32%;
				height: 150px;
				margin-left: 1%;
				border: 1px solid #666666;
				position: relative;
				margin-top: 30px;
				box-sizing: border-box;
			}
			.imgContainer img{
				width: 100%;
				height: 150px;
				cursor: pointer;
			}
			.imgContainer p{
				position: absolute;
				bottom: -1px;
				left: 0;
				width: 100%;
				height: 30px;
				background: black;
				text-align: center;
				line-height: 30px;
				color: white;
				font-size: 16px;
				font-weight: bold;
				cursor: pointer;
				display: none;
			}
			.imgContainer:hover p{
				display: block;
			}
			#btn{
				outline: none;
				width: 100px;
				height: 30px;
				background: cornflowerblue;
				border: 1px solid cornflowerblue;
				color: white;
				cursor: pointer;
				margin-top: 30px;
				border-radius: 5px;
			}
		</style>
</head>
<%-- <form action="<%=basePath%>evalute/insert.action" method="post"> --%>
<body>
	<!--头部  star-->
	<header>
		<a href="javascript:history.go(-1);">
			<div class="_left">
				<img src="<%=basePath%>img/left.png">
			</div> 评价
		</a>
	</header>
	<!--头部 end-->
	<!--内容 star-->
	<div class="contaniner fixed-cont">
		<section class="assess">
			<p rows="7">
				<!-- <div >
					展示订单信息
				</div> -->
			</p>
		</section>
		<!--1-->
		<section class="assess">
			<div class="content" contenteditable="true"
				style="border: 1px solid #ccc; min-height: 100px; overflow: hidden; font-family: 'Microsoft YaHei'; font-size: 0.9em; height: 200px; width: 78%; padding: 5%; margin: 5%;"
				id="eva_content" onblur="maxcode();" onKeyup="maxcode();"></div>
			<c:forEach items="${order.order_items }" var="item">
				<label class="am-btn am-btn-primary"> <input type="button"
					onclick="addfood(this,'${item.food.food_name}','${item.food.food_id}')"
					style="background: none; border: none; color: blue;" name="item_id"
					value="#${item.food.food_name}#" />&nbsp;&nbsp;
				</label>
			</c:forEach>
			<ul>
				<li>评价</li>
				<li class="assess-right">
					<div>
						<input type="radio" name="radio" value="1" />很好
					</div>
					<div>
						<input type="radio" name="radio" value="2" />一般
					</div>
					<div>
						<input type="radio" name="radio" value="3" />差评
					</div>
				</li>
			</ul>
		</section>
		<!--2-->
		<section class="main">
			<div class="main-wrap">
				<span class="revtit">综合评分:</span>
				<div id="mydiv1" currentIndex="0" class="mydiv">
					<ul class="star_ul">
						<li num="1"><img src="<%=basePath%>img/star_empty.png"
							class="xing_hui" /></li>
						<li num="2"><img src="<%=basePath%>img/star_empty.png"
							class="xing_hui" /></li>
						<li num="3"><img src="<%=basePath%>img/star_empty.png"
							class="xing_hui" /></li>
						<li num="4"><img src="<%=basePath%>img/star_empty.png"
							class="xing_hui" /></li>
						<li num="5"><img src="<%=basePath%>img/star_empty.png"
							class="xing_hui" /></li>
					</ul>
				</div>
			</div>
				<span id="imgBox">
	    	     </span>
			<div class="release_up_pic">		
				<div class="up_pic">
					<span id="chose_pic_btn" style="">
						<input type="file" onclick="checkcount()" title="请选择图片" id="file" multiple accept="image/png,image/jpg,image/gif,image/JPEG"/>
					</span>	
				</div>
			</div>
			<!-- <div class="main-wrap">
				<span class="revtit">基本素质:</span>
				<div id="mydiv2" currentIndex="0" class="mydiv">
	    			<ul class="star_ul">
				        <li num="1"><img src="img/star_empty.png" class="xing_hui"/></li>
				        <li num="2"><img src="img/star_empty.png"  class="xing_hui"/></li>
				        <li num="3"><img src="img/star_empty.png"  class="xing_hui"/></li>
				        <li num="4"><img src="img/star_empty.png"  class="xing_hui"/></li>
				        <li num="5"><img src="img/star_empty.png"  class="xing_hui"/></li>
			   		</ul>
				</div>
			</div>
		
			<div class="main-wrap">
				<span class="revtit">仪容着装:</span>
				<div id="mydiv3" currentIndex="0" class="mydiv">
	    			<ul class="star_ul">
				        <li num="1"><img src="img/star_empty.png" class="xing_hui"/></li>
				        <li num="2"><img src="img/star_empty.png"  class="xing_hui"/></li>
				        <li num="3"><img src="img/star_empty.png"  class="xing_hui"/></li>
				        <li num="4"><img src="img/star_empty.png"  class="xing_hui"/></li>
				        <li num="5"><img src="img/star_empty.png"  class="xing_hui"/></li>
			   		</ul>
				</div>
			</div> -->
		</section>
	</div>
	<!--内容 end-->

	<!--底部 star-->
	<footer class="assess-footer fixed-footer ">
		<ul>
			<li><input type="checkbox" id="ass" value="" /> <label
				for="ass" onselectstart="return false">匿名评价</label></li>
			<input type="button" onclick="subeva()" style="background-color: maroon !important;" value="发表评论" />
		</ul>
	</footer>
	<!--底部  end-->
	<script type="text/javascript">
	var data = new Object;
	var imgSrc = []; //图片路径
	var imgFile = []; //文件流
	var imgName = []; //图片名字
		$(".assess-footer ul li label").on('touchstart',function(){
			if($(this).hasClass('assd')){
				$(".assess-footer ul li label").removeClass("assd")
			}else{
				$(".assess-footer ul li label").addClass("assd")
			};
		});
		
			
//匿名评价
        var isclick = false;
        function change(mydivid,num) {
            if (!isclick) {
                var tds = $("#"+mydivid+" ul li");
                for (var i = 0; i < num; i++) {
                    var td = tds[i];
                    $(td).find("img").attr("src","<%=basePath%>img\/star_full.png");
                }
                var tindex = $("#"+mydivid).attr("currentIndex");
                tindex = tindex==0?0:tindex+1;
                for (var j = num; j < tindex; j++) {
                    var td = tds[j];
                    $(td).find("img").attr("src","<%=basePath%>img\/star_empty.png");
                }
                $("#"+mydivid).attr("currentIndex",num);
            }
        }
        function repeal(mydivid,num) {
            if (!isclick) {
                var tds = $("#"+mydivid+" ul li");
                var tindex = $("#"+mydivid).attr("currentIndex");
                tindex = tindex==0?0:tindex+1;
                for (var i = tindex; i < num; i++) {
                    var td = tds[i];
                    $(td).find("img").attr("src","<%=basePath%>img\/star_empty.png");
                }
                $("#"+mydivid).attr("currentIndex",num);
            }
        }
        function change1(mydivid,num) {
            if (!isclick) {
                change(mydivid,num);

            }
            else {
                alert("Sorry,You had clicked me!");
            }
        }
        $(function(){
            initEvent('mydiv1');
            initEvent('mydiv2');
            initEvent('mydiv3');
        });
        function initEvent(mydivid) {
            var tds = $("#"+mydivid+" ul li");
            for (var i = 0; i < tds.length; i++) {
                var td = tds[i];
                $(td).live('mouseover',function(){var num = $(this).attr("num");change(mydivid,num);});
                $(td).live('click',function(){var num = $(this).attr("num");change1(mydivid,num);});
            }
        }
        function subeva(){
        	var ass = ($("#ass").attr("checked")=='checked'?1:0);
        	var radio = $("input[name='radio']:checked").val();
        	var text = $("#eva_content").text();
        	if(text=null||text==""){
        		alert("请填写评价内容");
        		radio.foucs();
        	}else if(radio==null){
        		alert("请勾选评价类型");
        		radio.foucs();
        	}else{
	        	var eva_content=$("#eva_content").html();
	        	var tindex = $("#mydiv1").attr('currentIndex');
	        	var formData = new FormData(); 
	        	formData.append('multipartFile',imgFile[0]);  //添加图片信息的参数
	        	formData.append('eva_content',eva_content);  //添加其他参数
	        	formData.append('eva_level',tindex);  //添加其他参数
	        	formData.append('level_type',radio);  //添加其他参数
	        	formData.append('order.order_id','3');  //添加其他参数
	        	formData.append('cust.cust_id',2);  //添加其他参数
	        	formData.append('ass',ass);  //添加其他参数
	        	//formData.append('cust.cust_id',2);  //添加其他参数
	            $.ajax({
	                type:"POST",
	                url: "<%=basePath%>evalute/inserteva.action",
	                cache: false, //上传文件不需要缓存
	                processData: false, // 告诉jQuery不要去处理发送的数据
	                contentType: false, // 告诉jQuery不要去设置Content-Type请求头
	                //contentType: "application/json", //如果提交的是json数据类型，则必须有此参数,表示提交的数据类型 
	                dataType: "json", //表示返回值类型，不必须           
	                data: formData,  
		                success: function (jsonResult) {                  
		                    //在原来的页面跳转到下载word模板的页面
		                    if(jsonResult.state=="OK"){
			                    alert("评论成功！");
			                    window.location.href = "<%=basePath%>url.action?url=order/evalute";
								} else {
									alert("该订单已经评论过啦！");
								}
							},
							error : function(data) {
								alert("评论失败！");
							}
						});
			}
		}
		function maxcode() {
			var text = $("#eva_content").text();
			if (text.length > 125) {
				text = text.substr(0, 125);
				$("#eva_content").text(text);
				alert('最大字符数为125');
			}
		}
		function addfood(obj, s) {
			obj.value = "";
			$("#eva_content").append(
					'<a name="lianjie" href="" >  #' + s + '#  </div>');
			var divObj = document.createElement("div");
			var fontObj = document.createElement("font");
			fontObj.color = "blue";
			var textObj = document.createTextNode("eee");
			fontObj.appendChild(textObj);
			divObj.appendChild(fontObj);
			$("#eva_content").appendChild(divObj);
		}
		imgUpload({
		    inputId:'file', //input框id
		    imgBox:'imgBox', //图片容器id
		    buttonId:'btn', //提交按钮id
		    upUrl:'',  //提交地址
		    data:'data' //参数名
		})
		//选择图片
		function imgUpload(obj) {
				var oInput = '#' + obj.inputId;
				var imgBox = '#' + obj.imgBox;
				var btn = '#' + obj.buttonId;
				$(oInput).on("change", function() {
					var fileImg = $(oInput)[0];
					var fileList = fileImg.files;
				var count = $("#imgBox img").length;
				if(count>=1){
					alert("最多上传1张图片");
				}else{
					for(var i = 0; i < fileList.length; i++) {
						var imgSrcI = getObjectURL(fileList[i]);
						imgName.push(fileList[i].name);
						imgSrc.push(imgSrcI);
						imgFile.push(fileList[i]);
					}
					addNewContent(imgBox);
			}
				})
				$(btn).on('click', function() {
			 
					data[obj.data] = imgFile;
					submitPicture(obj.upUrl, data);
				})
		}
		//图片展示
		function addNewContent(obj) {
			
			$(imgBox).html("");
			for(var a = 0; a < imgSrc.length; a++) {
					var oldBox = $(obj).html();
					$(obj).html(oldBox + '<div class="imgContainer"><img title=' + imgName[a] + ' alt=' + imgName[a] + ' src=' + imgSrc[a] + ' onclick="imgDisplay(this)"><p onclick="removeImg(this,' + a + ')" class="imgDelete">删除</p></div>');
			}
		}
		//删除
		function removeImg(obj, index) {
			imgSrc.splice(index, 1);
			imgFile.splice(index, 1);
			imgName.splice(index, 1);
			var boxId = "#" + $(obj).parent('.imgContainer').parent().attr("id");
			addNewContent(boxId);
		}
		//上传(将文件流数组传到后台)
		function submitPicture(url,data) {
		 
			alert('请打开控制台查看传递参数！');
			if(url&&data){
				$.ajax({
					type: "post",
					url: url,
					async: true,
					data: data,
					traditional: true,
					success: function(dat) {
						console.log(dat);
					}
				});
			}
		}
		//图片灯箱
		function imgDisplay(obj) {
			var src = $(obj).attr("src");
			var imgHtml = '<div style="width: 100%;height: 100vh;overflow: auto;background: rgba(0,0,0,0.5);text-align: center;position: fixed;top: 0;left: 0;z-index: 1000;"><img src=' + src + ' style="margin-top: 100px;width: 70%;margin-bottom: 100px;"/><p style="font-size: 50px;position: fixed;top: 30px;right: 30px;color: white;cursor: pointer;" onclick="closePicture(this)">×</p></div>'
			$('body').append(imgHtml);
			
		}
		//关闭
		function closePicture(obj) {
			$(obj).parent("div").remove();
		}
		//图片预览路径
		function getObjectURL(file) {
			var url = null;
			if(window.createObjectURL != undefined) { // basic
				url = window.createObjectURL(file);
			} else if(window.URL != undefined) { // mozilla(firefox)
				url = window.URL.createObjectURL(file);
			} else if(window.webkitURL != undefined) { // webkit or chrome
				url = window.webkitURL.createObjectURL(file);
			}
			return url;
		}
	</script>
</body>

</html>