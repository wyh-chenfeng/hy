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
				<a class="navbar-brand"> 动态 </a>
			</div>
			<div class="collapse navbar-collapse" id="subnavbar">
				<ul class="nav navbar-nav">
					<li id="company" class="active">
						<a href="javaScript:void(0);">公司动态</a>
					</li>
					<li id="industry" >
						<a href="javaScript:void(0);">行业动态</a>
					</li>
				</ul>
			</div>
		</div>

		<!-- ko foreach: { data: news, as: 'n' } -->
			<div class="media">
			
				<div class="media-body">
		         <img class="media-object" data-bind="attr: {src:$.HY.imageUrl + n.image()}" src="./images/solution1.png">
			     <h4 class="media-heading" data-bind="text: n.title"></h4>
			     <p>
			     	<p data-bind="html: n.content"></p>
			     </p>
			   </div>
			</div>
        <!-- /ko -->
		<div class="ac_pagination">
			<ul id="paginator"></ul>
		</div>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/news/index.js"></script>