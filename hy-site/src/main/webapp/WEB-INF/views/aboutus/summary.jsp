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
				<a class="navbar-brand">关于环域</a>
			</div>
			<div class="collapse navbar-collapse" id="subnavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${HY_CONTEXT }/aboutus/forSummary">企业简介</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forCore">企业文化</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forMiss">企业使命</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forVision">企业愿景</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forCto">首席技术官</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forTeam">团队风采</a></li>
				</ul>
			</div>
		</div>
		<p class="summary text-indent">
			${home.content }
		</p>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/aboutus/summary.js"></script>