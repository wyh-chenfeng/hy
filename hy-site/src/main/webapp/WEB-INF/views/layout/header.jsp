<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!-- header start -->
<div class="navbar navbar-inverse header">
	<div class="container">
		<div class="welcome">
			<a>欢迎来到环域</a>
		</div>
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> EcoHuanyu </a>
		</div>
		<div class="collapse navbar-collapse" id="navbar">
			<ul class="nav navbar-nav">
				<li><a href="${HY_CONTEXT }/forIndex">首页</a></li>
				<li class="bind-menu-solutions"><a href="${HY_CONTEXT }/solutions/forIndex">解决方案</a></li>
				<li class="bind-menu-cases"><a href="${HY_CONTEXT }/cases/forIndex">经典案例</a></li>
				<li class="bind-menu-activities"><a href="${HY_CONTEXT }/activities/forIndex">动态</a></li>
				<li class="bind-menu-aboutus"><a href="${HY_CONTEXT }/aboutus/forSummary">关于我们</a></li>
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