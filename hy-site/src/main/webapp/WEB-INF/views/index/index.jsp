<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			<div class="item <c:if test='${status.first}'>active</c:if>" style="background-image:url(${IMAGE_URL}${banner.image})">
				<%-- <div class="item-desc">
					<h3 class="item-title">${banner.title }</h3>
					<p class="item-content">
						${banner.content }
					</p>
					<a class="item-kown-more" href="${HY_CONTEXT}/${banner.url }">了解更多 &rsaquo;</a>
				</div> --%>
				<img src="${IMAGE_URL}${banner.image}" alt="${status.index} slide">
			</div>
		</c:forEach>
	</div>
	<!-- 轮播（Carousel）导航 -->
   	<a class="carousel-nav-control left" href="#myCarousel" 
      	data-slide="prev"><img src="${HY_CONTEXT}/resources/images/carousel_left.png"/></a>
   	<a class="carousel-nav-control right" href="#myCarousel" 
      	data-slide="next"><img src="${HY_CONTEXT}/resources/images/carousel_right.png"/></a>
</div>


<div class="jumbotron">
	<div class="container">
		<div class="banners row">
			<a class="item col-md-4" href="${HY_CONTEXT }/aboutus/forSummary">
				<img src="${HY_CONTEXT}/resources/images/banner1.png">
				<h2 class="title">公司简介</h2>
				<p class="desc text-indent">${home.content }</p>
			</a>
			<a class="item col-md-4" href="${HY_CONTEXT }/solutions/forIndex">
				<img src="${HY_CONTEXT}/resources/images/banner2.png">
				<h2 class="title">业务领域</h2>
				<p class="desc">
					黑臭河道治理<br>
					海绵城市<br>
					农村污水治理<br>
					人工湿地
				</p>
			</a>
			<a class="item col-md-4" href="${HY_CONTEXT }/join/forAboutus">
				<img src="${HY_CONTEXT}/resources/images/banner3.png">
				<h2 class="title">联系我们</h2>
				<p class="desc">
				联系电话：010-84921703<br/>
				传真：010-84927873<br/>
				邮箱：business@ecohuanyu.com<br/>
				地址：北京市朝阳区安外北苑5号院北苑大酒店办公楼9层
				</p>
			</a>
		</div>
	</div>
</div>
	
<script src="${HY_CONTEXT}/resources/js/views/index/index.js"></script>
