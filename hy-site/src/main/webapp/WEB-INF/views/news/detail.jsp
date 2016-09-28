<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container main-content">
	<div class="well well-sm">
		<h4 class="sub-title text-center">${news.title }</h4>
		<div class="media">
		   <div class="media-body">
			  ${news.content }
		   </div>
		</div>
		<div class="back_btn clearfix">
			<div class="pull-right">
				<a href="${HY_CONTEXT}/news/forIndex" class="btn btn-back">返回</a>
			</div>
		</div>
	</div>
</div>	

<script src="${HY_CONTEXT}/resources/js/views/news/detail.js"></script>