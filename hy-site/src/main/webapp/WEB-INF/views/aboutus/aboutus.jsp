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
				<a class="navbar-brand"> 关于我们 </a>
			</div>
			<div class="collapse navbar-collapse navbar-right" id="subnavbar">
				<ul class="nav navbar-nav">
					<li><a href="${HY_CONTEXT }/aboutus/forSummary">公司简介</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forCore">核心团队</a></li>
					<li class="active"><a href="${HY_CONTEXT }/aboutus/forAboutus">联系我们</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forPosition">招纳贤士</a></li>
				</ul>
			</div>
		</div>

		<ul class="contact_us">
			<li class="address"><span>地址：</span> <span>北京市朝阳区安外北苑5号院 北苑大酒店908室</span></li>
			<li><span>邮编：</span> <span>102218<span></li>
			<li><span>电话：</span> <span>010-（预计8月12日之前完成报装电话传真）</span></li>
			<li><span>传真：</span> <span>010-</span></li>
			<li class="map"><img src="${HY_CONTEXT}/resources/images/map.png" /></li>
		</ul>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/aboutus/index.js"></script>

