<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>


<!-- 轮播 -->
<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
			<div class="item-desc">
				<h3 class="item-title">环域-水污染治理先行者</h3>
				<p class="item-content">
					orem ipsum dolor sit amet, consectetur
					adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida
					dolor sit amet lacus accumsan et viverra justo commodo. Proin
					sodales pulvinar tempor
				</p>
				<a class="item-kown-more" href="">了解更多 &rsaquo;</a>
			</div>
			<img src="${HY_CONTEXT}/resources/images/1.png" alt="First slide">
		</div>
		<div class="item">
			<div class="item-desc">
				<h3 class="item-title">环域-水污染治理先行者</h3>
				<p class="item-content">orem ipsum dolor sit amet, consectetur
					adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida
					dolor sit amet lacus accumsan et viverra justo commodo. Proin
					sodales pulvinar tempor</p>
				<a class="item-kown-more" href="">了解更多 &rsaquo;</a>
			</div>
			<img src="${HY_CONTEXT}/resources/images/2.png" alt="Second slide">
		</div>
		<div class="item">
			<div class="item-desc">
				<h3 class="item-title">环域-水污染治理先行者</h3>
				<p class="item-content">orem ipsum dolor sit amet, consectetur
					adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida
					dolor sit amet lacus accumsan et viverra justo commodo. Proin
					sodales pulvinar tempor</p>
				<a class="item-kown-more" href="">了解更多 &rsaquo;</a>
			</div>
			<img src="${HY_CONTEXT}/resources/images/1.png" alt="Third slide">
		</div>
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
				<p class="desc">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit Aenean euismod bibendum laoreet Proin gravida dolor
					sit amet lacus accumsan et viverra justo commodo. Proin sodales
					pulvinar tempor. Cum sociis natoque penatibus et magnis dis
					parturient montes, nascetur ridiculus mus. Nam fermentum,
					nullaluctus pharetra vulputate, felis tellus mollis orci,
					sedrhoncus sapien nunc eget odio.</p>
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

<script src="${HY_CONTEXT}/resources/js/views/index/index.js"></script>
