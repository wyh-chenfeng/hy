<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container main-content">
	<div class="well well-sm">
		<div class="navbar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#subnavbar"
					aria-expanded="false" aria-controls="navbar">
					<i class="iconfont"></i>
				</button>
				<a class="navbar-brand"> 加入我们 </a>
			</div>
			<div class="collapse navbar-collapse" id="subnavbar">
				<ul class="nav navbar-nav">
					<li><a href="${HY_CONTEXT }/aboutus/forPosition">招纳贤士</a></li>
					<li class="active"><a href="${HY_CONTEXT }/aboutus/forAboutus">联系我们</a></li>
				</ul>
			</div>
		</div>

		<ul class="contact_us">
			<li>
		 		<span>联系电话：</span>
		 		<span>010-84921703</span>
		 	</li>
		 	<li>
		 		<span>传真：</span>
		 		<span>010-84927873<span>
		 	</li>
		 	<li>
		 		<span>邮箱：</span>
		 		<span>business@ecohuanyu.com</span>
		 	</li>
		 	<li class="address">
		 		<span>地址：</span>
		 		<span>北京市朝阳区安外北苑5号院北苑大酒店9层</span>
		 	</li>
			<li class="map"><img src="${HY_CONTEXT}/resources/images/map.png" /></li>
		</ul>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/aboutus/index.js"></script>

