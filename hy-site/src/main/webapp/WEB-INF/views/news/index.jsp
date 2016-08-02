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
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand"> 动态 </a>
			</div>
			<div class="collapse navbar-collapse navbar-right" id="subnavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">公司动态</a></li>
					<li><a href="#">行业动态</a></li>
				</ul>
			</div>
		</div>

		<div class="media">
			<a class="media-img pull-left" href="#"> <img
				class="media-object" src="${HY_CONTEXT}/resources/images/solution1.png" alt="媒体对象">
			</a>
			<div class="media-body">
				<h4 class="media-heading">News</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Aenean euismod bibendum laoreet Proin gravida dolor sit amet lacus
					accumsan et viverra justo commodo. Proin sodales pulvinar tempor.
					Cum sociis natoque penatibus et magnis dis parturient montes,
					nascetur ridiculus mus.</p>
			</div>
		</div>
		<div class="media">
			<a class="media-img pull-left" href="#"> <img
				class="media-object" src="${HY_CONTEXT}/resources/images/solution1.png" alt="媒体对象">
			</a>
			<div class="media-body">
				<h4 class="media-heading">News</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Aenean euismod bibendum laoreet Proin gravida dolor sit amet lacus
					accumsan et viverra justo commodo. Proin sodales pulvinar tempor.
					Cum sociis natoque penatibus et magnis dis parturient montes,
					nascetur ridiculus mus.</p>
			</div>
		</div>
		
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/news/index.js"></script>