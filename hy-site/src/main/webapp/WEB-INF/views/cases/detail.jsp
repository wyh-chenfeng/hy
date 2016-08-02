<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<div class="container main-content">
	<div class="well well-sm">
		<div class="navbar navbar-inverse">
			<div class="navbar-header">
				<a class="navbar-brand"> 经典案例 </a>
			</div>
		</div>
		<p class="main_content_desc">orem ipsum dolor sit amet,
			consectetur adipiscing elit. Aenean euismod bibendu mlaoreet. Proin
			gravida dolor sit amet lacusaccumsan et viverra justo commodo. Proin
			sodales pulvinar tempor</p>
	</div>
	<div class="well well-sm">
		<div class="media">
			<a class="pull-left" href="#"> <img class="media-object"
				src="${HY_CONTEXT}/resources/images/solution1.png" alt="媒体对象">
			</a>
			<div class="media-body">
				<h4 class="media-heading">北京奥运会</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Aenean euismod bibendum laoreet Proin gravida dolor sit amet lacus
					accumsan et viverra justo commodo. Proin sodales pulvinar tempor.
					Cum sociis natoque penatibus et magnis dis parturient montes,
					nascetur ridiculus mus.</p>
			</div>
		</div>
		<div class="media">
			<!-- 轮播 -->
			<div id="caseCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#caseCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#caseCarousel" data-slide-to="1"></li>
					<li data-target="#caseCarousel" data-slide-to="2"></li>
				</ol>
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="${HY_CONTEXT}/resources/images/1.png" alt="First slide">
					</div>
					<div class="item">
						<img src="${HY_CONTEXT}/resources/images/2.png" alt="Second slide">
					</div>
					<div class="item">
						<img src="${HY_CONTEXT}/resources/images/1.png" alt="Third slide">
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="carousel-control left" href="#caseCarousel"
					data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
					href="#caseCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/cases/index.js"></script>