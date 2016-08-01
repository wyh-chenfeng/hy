<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="description" content="EcoHuanyu">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
	<meta name="HandheldFriendly" content="true" /> 
	<meta name="apple-touch-fullscreen" content="yes" />
	<title>EcoHuanyu</title>
	<%@include file="./layout/resource.jsp"%>
</head>
<body>
	<!-- header start -->
	<div class="navbar navbar-inverse navbar-fixed-top header">
		<div class="container">
			<div class="welcome">
				<a>欢迎来到环域</a>
			</div>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> EcoHuanyu </a>
			</div>
			<div class="collapse navbar-collapse" id="navbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html">首页</a></li>
					<li><a href="solutions.html">解决方案</a></li>
					<li><a href="cases.html">经典案例</a></li>
					<li><a href="activities.html">动态</a></li>
					<li><a href="aboutus.html">关于我们</a></li>
				</ul>
			</div>
			<div class="navbar-right-icon">
				<p class="navbar-text">
					<a href="#" class="navbar-link">水环境治理服务提供商</a> <img
						src="${HY_CONTEXT}/resources/images/icon.png">
				</p>
			</div>
		</div>
	</div>
	<!-- header end -->
	<!-- 轮播 -->
	<div id="myCarousel" class="carousel slide">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<c:forEach items="${banners }" var="banner" varStatus="status">
				<li data-target="#myCarousel" data-slide-to="${status.index}" class="<c:if test='${status.first}'>active</c:if>"></li>
			</c:forEach>
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<c:forEach items="${banners }" var="banner" varStatus="status">
				<div class="item <c:if test='${status.first}'>active</c:if>">
					<div class="item-desc">
						<h3 class="item-title">${banner.title }</h3>
						<p class="item-content">
							${banner.content }
						</p>
						<a class="item-kown-more" href="">了解更多 &rsaquo;</a>
					</div>
					<img src="${IMAGE_URL}${banner.image}" alt="${status.index} slide">
				</div>
			</c:forEach>
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="carousel-nav-control left" href="#myCarousel"
			data-slide="prev">&lsaquo;</a> <a class="carousel-nav-control right"
			href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
	
	
	<div class="jumbotron">
		<div class="container">
			<div class="banners row">
				<div class="col-md-4">
					<img src="${HY_CONTEXT}/resources/images/banner1.png">
					<h2 class="title">公司动态</h2>
					<p class="desc">${news.content }</p>
				</div>
				<div class="col-md-4">
					<img src="${HY_CONTEXT}/resources/images/banner2.png">
					<h2 class="title">解决方案</h2>
					<p class="desc">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Aenean euismod bibendum laoreet Proin gravida
						dolor sit amet lacus accumsan et viverra justo commodo. Proin
						sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis
						parturient montes, nascetur ridiculus mus. Nam fermentum,
						nullaluctus pharetra vulputate, felis tellus mollis orci, sed
						rhoncus sapien nunc eget odio.</p>
				</div>
				<div class="col-md-4">
					<img src="${HY_CONTEXT}/resources/images/banner3.png">
					<h2 class="title">联系我们</h2>
					<p class="desc">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Aenean euismod bibendum laoreet Proin gravida
						dolor sit amet lacus accumsan et viverra justo commodo. Proin
						sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis
						parturient montes, nascetur ridiculus mus. Nam fermentum,
						nullaluctus pharetra vulputate, felis tellus mollis orci, sed
						rhoncus sapien nunc eget odio.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<p>语言版本 : 中国</p>
					<p>关于我们</p>
					<p>反馈建议：xxx@sina.com.cn</p>
				</div>
				<div class="col-md-4">
					<p>合作伙伴</p>
					<p><img src="${HY_CONTEXT}/resources/images/coparations.png"/></p>
				</div>
				<div class="col-md-4 qrcode">
					<div class="weibocode">
						<img src="${HY_CONTEXT}/resources/images/wbcode.jpg"/>
						<p>官方微博</p>
					</div>
					<div class="weixincode">
						<img src="${HY_CONTEXT}/resources/images/wecode.jpg"/>
						<p>官方微信</p>
					</div>
				</div>
			</div>
			<div class="copyright">京ICP备1234567号 ｜ 京ICP号1234567号</div>
		</div>
	</div>
</body>
</html>
<script src="${HY_CONTEXT}/resources/js/views/index/index.js"></script>
