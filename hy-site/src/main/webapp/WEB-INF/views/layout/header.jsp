<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!-- header start -->
<div class="navbar navbar-inverse navbar-fixed-top header">
	<div class="container" id="menu">
		<div class="welcome">
			<a>欢迎来到环域</a>
		</div>
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
					<span class="sr-only"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand active bind-menu-index" href="${HY_CONTEXT }/forIndex"> EcoHuanyu </a>
		</div>
		<div class="collapse navbar-collapse" id="navbar">
			<ul class="nav navbar-nav">
				<li class="bind-menu-aboutus"><a href="${HY_CONTEXT }/aboutus/forSummary">关于环域</a></li>
				<li class="bind-menu-solutions"><a href="${HY_CONTEXT }/solutions/forIndex">业务领域</a></li>
				<li class="bind-menu-cases"><a href="${HY_CONTEXT }/cases/forIndex">经典案例</a></li>
				<li class="bind-menu-news"><a href="${HY_CONTEXT }/news/forIndex">新闻中心</a></li>
				<li class="bind-menu-position"><a href="${HY_CONTEXT }/join/forPosition">加入我们</a></li>
			</ul>
		</div>
		<div class="navbar-right-icon">
			<p class="navbar-text">
				<a class="navbar-link">水环境治理服务提供商</a> <img
					src="${HY_CONTEXT}/resources/images/icon.png">
			</p>
		</div>
	</div>
</div>
<!-- header end -->