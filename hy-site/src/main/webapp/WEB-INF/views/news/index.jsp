<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container main-content">
	<div class="well well-sm activities">
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
				<a class="media-img pull-left">
		         	<img class="media-object media_news" data-bind="attr: {src:$.HY.imageUrl + n.image()}" src="./images/solution1.png">
			    </a>
				<div class="media-body">
			     <h6 data-bind="text: n.title">水污染危害健康</h6>
			     <br/>
			     <p class="text-indent" data-bind="html: n.summary"></p>
			     <p class="kownmore">
	                <a data-bind="attr:{href:'${HY_CONTEXT }/news/forDetail/' + n.id()}" href="activitie_detail.html">
	                  	了解详情<i class="glyphicon glyphicon-chevron-right"></i>
	                </a> 
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