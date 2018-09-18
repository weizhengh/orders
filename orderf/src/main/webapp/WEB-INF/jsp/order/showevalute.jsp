<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no"> 
    <title>饮食评价</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <!-- <link rel="icon" type="image/png" href="assets/i/favicon.png"> -->

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <!-- <link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png"> -->

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
   <!--  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png"> -->

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <!-- <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png"> -->
    <meta name="msapplication-TileColor" content="#0e90d2">

    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
    <link rel="canonical" href="http://www.example.com/">
    -->

    <style>
        /*comment*/
        /* http://meyerweb.com/eric/tools/css/reset/ 
           v2.0 | 20110126
           License: none (public domain)
        */

        html, body, div, span, applet, object, iframe,
        h1, h2, h3, h4, h5, h6, p, blockquote, pre,
        a, abbr, acronym, address, big, cite, code,
        del, dfn, em, img, ins, kbd, q, s, samp,
        small, strike, strong, sub, sup, tt, var,
        b, u, i, center,
        dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend,
        table, caption, tbody, tfoot, thead, tr, th, td,
        article, aside, canvas, details, embed, 
        figure, figcaption, footer, header, hgroup, 
        menu, nav, output, ruby, section, summary,
        time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
        }
        /* HTML5 display-role reset for older browsers */
        article, aside, details, figcaption, figure, 
        footer, header, hgroup, menu, nav, section {
            display: block;
        }
        body {
            line-height: 1;
        }
        ol, ul {
            list-style: none;
        }
        blockquote, q {
            quotes: none;
        }
        blockquote:before, blockquote:after,
        q:before, q:after {
            content: '';
            content: none;
        }
        table {
            border-collapse: collapse;
            border-spacing: 0;
        }
        *, :after, :before {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        .am-cf:after,.am-cf:before {
            content: " ";
            display: table
        }

        .am-cf:after {
            clear: both
        }
        a { text-decoration:none; }
        a:link,a:visited{
         text-decoration:none;  /*超链接无下划线*/
        }
        
        /*业务代码*/
        html,body { background-color: #fff;}
        .comment { height: 100%; padding: 0 1.06rem 1.04rem 0.2rem; }
        
        .comment .head { padding-bottom: 0.62rem; }
        .comment .head .tit { padding-top: 0.1rem; font-size: 20px;line-height: 25px; }
        .comment .head .info { padding-top: 0.18rem; }
        .comment .head .info .img { float: left;width: 1.4rem;height: 1.4rem;background: url('<%=basePath%>img/canting.jpg') no-repeat center;background-size: contain; }
        .comment .head .info .cont { position: relative; margin-left: 1.55rem; }
        .comment .head .info .cont .title { padding-bottom: 0.1rem; font-size: 16px;font-weight: bold; }
        .comment .head .info .cont .pingfen { height: 0.3rem;  }
        .comment .head .info .cont .pingfen span.xingxing {float: left; display: inline-block;width: 0.2rem;height: 0.2rem;margin-left: 0.05rem;vertical-align: middle;font-size: 0; text-indent: -999em; background: url('<%=basePath%>img/xx.jpg') no-repeat center;background-size: contain;  }
        .comment .head .info .cont .pingfen span.num {float: left;display: inline-block;padding-left: 0.07rem;  font-size: 12px;color: #ff9e20; vertical-align: middle;  }
        .comment .head .info .cont .address { width: 3.8rem;margin-top: 0.04rem; padding-left: 0.28rem; font-size: 12px;color: #3a3a3a;background: url('<%=basePath%>img/address.jpg') no-repeat;background-size: 0.16rem 0.2rem;background-position: 0.04rem 0.02rem;text-overflow:ellipsis;overflow:hidden;white-space:nowrap; }
        .comment .head .info .cont .tip { margin-top: 0.1rem; }
        .comment .head .info .cont .tip span {display: inline-block;float: left; padding: 0 1px;margin-right: 0.07rem; color: #999;font-size: 12px;border-radius: 1px;border: 1px solid #d7d7d7; }
        .comment .head .info .cont .phone { position: absolute;top: 0.51rem;right: 0.52rem; width: 0.29rem;height: 0.36rem;background: url('<%=basePath%>img/phone.jpg') no-repeat center;background-size: contain;  }

        .comment .user-comment .title { margin-bottom: 0.23rem; }
        .comment .user-comment .title h1 { font-size: 20px; color: #000;}
        .comment .user-comment .seemore { float: right;font-size: 14px;line-height: 20px; color: #27b5a5; }
        .comment .user-comment .seemore a { display: block;color: inherit; }
        .comment .user-comment .tips { margin-bottom: 0.34rem; }
        .comment .user-comment .tips .list { float: left; margin-bottom: 0.15rem;margin-right: 0.12rem;padding: 0.12rem 0.15rem; font-size: 14px;color: #6d6d6d;border: 1px solid #d2d2d2;border-radius: 1000px; }
        .comment .user-comment .tips .list .num { display: inline-block;padding-left: 0.08rem; }

        .comment-list {}
        .comment-list .item { position: relative; padding-left: 0.92rem; padding-bottom: 0.16rem; }
        .comment-list .item .user { position: absolute;top: 0;left: 0.04rem; width: 0.78rem;height: 0.78rem;background: url('<%=basePath%>img/user-img.jpg') no-repeat center;background-size: contain; }
        .comment-list .item .conts { padding-bottom: 0.18rem;border-bottom: 1px solid #dbdbdb; }
        .comment-list .item .conts .name {display: block; margin-bottom: 0.1rem; font-size: 13px; line-height: 18px;}
        .comment-list .item .conts .name .date { float: right;font-size: 12px;color: #999999; } 
        .comment-list .item .conts .name .left { float: left; } 
        .comment-list .item .conts .name .vip { display: inline-block;width: 0.16rem;height: 0.16rem;margin-left: 2px; background: url('<%=basePath%>img/vip.jpg') no-repeat center;background-size: contain; }
        .comment-list .item .conts .pingfen {  }
        .comment-list .item .conts .pingfen span {float: left; display: inline-block;width: 0.2rem;height: 0.2rem;margin-left: 0.05rem;vertical-align: middle;font-size: 0; text-indent: -999em; background: url('<%=basePath%>img/xx.jpg') no-repeat center;background-size: contain;  }
        .comment-list .item .conts .comment-text { padding-top: 5px; font-size: 12px;text-align: justify;line-height: 16px; }
        .comment-list .item .conts .comment-img { margin-top: 0.14rem; width: 100%;}
        .comment-list .item .conts .comment-img .img { float: left;width: 25%;padding-right: 0.07rem; }
        .comment-list .item .conts .comment-img .img:nth-child(4n) { position: relative; }
        .comment-list .item .conts .comment-img .img .tip { position: absolute;bottom: 0.06rem;right: 0.1rem; width: 0.48rem;height: 0.3rem;text-align: center;font-size: 6px;color: #fff;
            background-color: rgba(0,0,0,0.6);border-radius: 1000px; }
        .comment-list .item .conts .comment-img .img .tip img { display: inline-block;width: 0.18rem;height: 0.13rem;vertical-align: middle; }
        .comment-list .item .conts .comment-img .img .tip span { display: inline-block;vertical-align: middle; }
        .comment-list .item .conts .comment-img .img img { display: block;width: 100%; }

        @media only screen and (max-width: 374px) and (min-width: 300px) {
            .comment { padding: 0 0.2rem 1.04rem 0.2rem; }
            .comment .head .info .cont .phone {
                top: 0.59rem;
                right: 1.22rem;
            }
        }

        /*底部*/
        #footer { position: fixed;bottom: 0;left: 0;width: 100%;height: 1.04rem;background-color: #fff;border-top: 1px solid #cacaca; }
        #footer-gg { display: flex;display: -webkit-flex; }
        #footer-gg .item { flex: 1;-webkit-flex: 1; color: #9d9d9d;font-size: 12px;}
        #footer-gg .item a { display: block;color: inherit; }
        #footer-gg .item .icon { display: block;width: 0.49rem;height: 0.5rem;margin: 0.07rem auto 0;  }
        #footer-gg .item .icon.g1 { background: url('<%=basePath%>img/home.jpg') no-repeat center top;background-size: 0.49rem 0.5rem; }
        #footer-gg .item .icon.g2 { background: url('<%=basePath%>img/all.jpg') no-repeat center top;background-size: 0.35rem 0.46rem; }
        #footer-gg .item .icon.g3 { background: url('<%=basePath%>img/yuyue.jpg') no-repeat center top;background-size: 0.43rem 0.43rem; }
        #footer-gg .item .icon.g4 { background: url('<%=basePath%>img/user.jpg') no-repeat center top;background-size: 0.34rem 0.41rem; }
        #footer-gg .item p { padding-top: 0.05rem;text-align: center;line-height: 16px; }
    </style>
    <link rel="stylesheet" href="<%=basePath%>css/swiper.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/style1.css">
    <script src="<%=basePath%>js/fontsize.js"></script>
</head>
<body >
    <!--[if lte IE 9]>
    <p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a
      href="http://browsehappy.com/" target="_blank">升级浏览器</a>
      以获得更好的体验！</p>
    <![endif]-->

    <div class="container">
        <div class="comment">
            <div class="head">
                <p class="tit">餐厅介绍</p>
                <div class="info am-cf">
                    <div class="img"></div>
                    <div class="cont">
                        <p class="title">自助餐厅</p>
                        <div class="pingfen am-cf">
                            <span class="xingxing"></span>
                            <span class="xingxing"></span>
                            <span class="xingxing"></span>
                            <span class="xingxing"></span>
                            <span class="xingxing"></span>
                            <span class="num">4.7分</span>
                        </div>
                        <div class="address">537m | 昆山市花桥镇。</div>
                        <div class="tip am-cf">
                            <span>停车</span>
                            <span>WiFi</span>
                        </div>
                        <div class="phone"></div>
                    </div>
                </div>
            </div>

            <div class="user-comment">
                <div class="title am-cf">
                    <h1>用户评论</h1>
                </div>
                <div class="tips">
                    <ul class="am-cf">
                        <li class="list"><span>好评</span><span class="num">1</span></li>
                        <li class="list"><span>中评</span><span class="num">11</span></li>
                        <li class="list"><span>差评</span><span class="num">12</span></li>

                    </ul>
                </div>
                <div class="comment-list">
                    <ul id="ull">
                    	<c:forEach items="${pageInfo.list }" var="evalute">
                        <li class="item">
                            <div class="user"></div>
                            <div class="conts">
                                <div class="name am-cf"><div class="left">
                                <c:if test="${evalute.ass==1}">匿名</c:if>
                                <c:if test="${evalute.ass!=1}">${evalute.cust.cust_name}</c:if>
                                <i class="vip"></i></div><span class="date"><fmt:formatDate value="${evalute.eva_time}" type="both"></fmt:formatDate></span></div>
                                <div class="pingfen am-cf">
                                <c:forEach var="x" begin="1" end="${evalute.eva_level}" step="1">
                                    <span></span>
								</c:forEach>
                                </div>
                                <div class="comment-text">
                                    <p>${evalute.eva_content}</p>
                                </div>
                                <div class="comment-img">
                                    <ul class="am-cf" thumblist="list1">
                                    	<%-- <c:forEach items="${evalute.imgpath}" var="impath">
                                        	<li class="img">${impath}<img src="<%=basePath%>${impath}" alt=""></li>
										</c:forEach> --%>
                                        <li class="img"><img src="<%=basePath%>${evalute.img}" alt=""></li>
                                        <%--<li class="img"><img src="<%=basePath%>${evalute.img}" alt=""></li>
                                        <li class="img">
                                            <img src="<%=basePath%>${evalute.img}" alt="">
                                            <div class="tip">
                                                <img src="<%=basePath%>img/tip-img.jpg" alt="">
                                                <span>9</span>
                                            </div>
                                        </li> --%>
                                    </ul>
                                </div>
                            </div>                        
                        </li>
                        </c:forEach>
                    </ul>
	                <input id ="pn" type="hidden" value="${pageInfo.pageNum+1}"/>
                    <c:if test="${pageInfo.hasNextPage}">
	                    <div class="seemore" id = "seepn">
	                        <a id="moreeva" href="javascript:void(0);" style="background-color: #F0F0F0 !important;" onclick="more();" >查看更多评论(${pageInfo.total}条)</a>
	                    </div>
                    </c:if>
                </div>
            </div>
        </div>

    </div>



    

    <!-- Swiper -->
    <div class="swiper-container swiper-container-virtual swiper-container-horizontal" id="origin-img" style="display: none;">
        <div class="close">X</div>
        <div class="swiper-wrapper" style="transition-duration: 300ms; transform: translate3d(0px, 0px, 0px);"></div>
        <div class="swiper-pagination swiper-pagination-fraction"><span class="swiper-pagination-current">1</span> / <span class="swiper-pagination-total">1</span></div>
        <div class="upload">xxx上传于2018-06-17</div>
    </div>
	
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/swiper.min.js"></script>
    <script type="text/javascript">
        imgsdata={"list1":["caicai.jpg","caicai.jpg","caicai.jpg","caicai.jpg","caicai.jpg","caicai.jpg","caicai.jpg","caicai.jpg","caicai.jpg"],
            "list2":["caicai.jpg","caicai.jpg"],
            "list3":["caicai.jpg"]
        }
      
        var swiper = new Swiper('.swiper-container',{
            zoom:true,
              width: window.innerWidth,
              virtual: true,
                spaceBetween:20,
                pagination: {
                  el: '.swiper-pagination',
                  type: 'fraction',
               },
               on:{
                    click: function(){
                       $('#origin-img').fadeOut('fast');
                       this.virtual.slides.length=0;
                       this.virtual.cache=[]; 
                       swiperStatus=false;
                       
                   },
            },
          
        });
      
          $('.comment-img .img img').click(function(){
              clickIndex=$(this).index();
          
              imglist=$(this).parent().parent().attr('thumblist');
              imgs = imgsdata[imglist];
              for(i=0;i<imgs.length;i++){
                   swiper.virtual.appendSlide('<div class="swiper-zoom-container"><img src="<%=basePath%>img/'+imgs[i]+'" /></div>');
                }
              swiper.slideTo(clickIndex);
              $('#origin-img').fadeIn('fast');
              swiperStatus=true;
              
          })

        //切换图状态禁止页面缩放   
        document.addEventListener('touchstart',function (event) {  
                if(event.touches.length>1 && swiperStatus){  
                    event.preventDefault();  
                }  
            })  
            var lastTouchEnd=0;  
        document.addEventListener('touchend',function (event) {  
                var now=(new Date()).getTime();  
                if(now-lastTouchEnd<=300){  
                    event.preventDefault();  
                }  
                lastTouchEnd=now;  
            },false)

        document.addEventListener('touchmove',function(e){
            if(swiperStatus){
                e.preventDefault();
            }
        })
        $(function(){
        		$("#pn").val(2);
        	}
        );
        function more(){
        	var pn = $("#pn").val();
            $.ajax({
                type:"POST",
                url: "<%=basePath%>evalute/moreevalute.action?pn="+pn,
                //contentType: "application/json", //如果提交的是json数据类型，则必须有此参数,表示提交的数据类型 
                dataType: "json", //表示返回值类型，不必须           
	            success: function (jsonResult) {
	            	var pageInfo = jsonResult.pageInfo;
	            	$("#pn").val((pageInfo.pageNum+1));
	            	if(!pageInfo.hasNextPage){
	            		$("#seepn").empty();
	            	}
	            	$("#moreeva").empty();
	            	$("#moreeva").html("查看更多评论("+(pageInfo.total-((pageInfo.pageNum-1)*pageInfo.pageSize))+"条)");
	            	for(var i = 0;i<pageInfo.list.length;i++){
	            		var xinglevel = "";
	            		for(var j = 0;j<pageInfo.list[i].eva_level;j++){
	            			xinglevel = xinglevel+"<span></span>";
	            		}
	            		var eva_time = "";
	            		var datetime = new Date(pageInfo.list[i].eva_time) ;
	            	    var year = datetime.getFullYear();
	            	    var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;
	            	    var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();
	            	    var hour = datetime.getHours()< 10 ? "0" + datetime.getHours() : datetime.getHours();
	            	    var minute = datetime.getMinutes()< 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();
	            	    var second = datetime.getSeconds()< 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();
	            	    eva_time = year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;
	            	    var cust_name = pageInfo.list[i].cust.cust_name;
	            	    if(pageInfo.list[i].ass=="1"){
	            	    	 cust_name = "匿名";
	            	    }
	                	$('#ull').append(
	                		'<li class="item">'+
                            '<div class="user"></div>'+
                            '<div class="conts">'+
                            '<div class="name am-cf"><div class="left">'+cust_name+'<i class="vip"></i></div><span class="date">'+eva_time+'</span></div>'+
                            '<div class="pingfen am-cf">'+xinglevel+
                            '</div>'+
                            '<div class="comment-text">'+
                            '<p>'+pageInfo.list[i].eva_content+'</p>'+
                            '</div>'+
                            '<div class="comment-img">'+
                            '<ul class="am-cf" thumblist="list1">'+
                            '<li class="img"><img src="<%=basePath%>'+pageInfo.list[i].img+'" alt=""></li>'+
                            '</div>'+
                            '</li>'+
                            '</ul>'+
                            '</div>'+
                            '</div> '+                      
                        	'</li>'
	                		);
	          	 	}
	            },
	            error: function (data){
	                alert("评论失败！");
	            }
            }); 
        }
    </script>
</body>
</html>
