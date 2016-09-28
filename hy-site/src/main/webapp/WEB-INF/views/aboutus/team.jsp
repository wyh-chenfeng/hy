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
				<a class="navbar-brand"> 关于环域 </a>
			</div>
			<div class="collapse navbar-collapse" id="subnavbar">
				<ul class="nav navbar-nav">
					<li><a href="${HY_CONTEXT }/aboutus/forSummary">企业简介</a></li>
					<%-- <li><a href="${HY_CONTEXT }/aboutus/forCore">企业文化</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forMiss">企业使命</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forVision">企业愿景</a></li> --%>
					<li><a href="${HY_CONTEXT }/aboutus/forCto">首席技术官</a></li>
					<li class="active"><a href="${HY_CONTEXT }/aboutus/forTeam">团队风采</a></li>
				</ul>
			</div>
		</div>

		<div class="media">
		 	<div class="row">
		 		<div class="col-sm-6 col-md-4">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/team1.jpg">
			            <h6 class="team_media_desc">公司环境</h6>
			        </div>
			    </div>
			    <div class="col-sm-6 col-md-4">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/team2.jpg">
			            <h6 class="team_media_desc">公司环境</h6>
			        </div>
			    </div>
			    <div class="col-sm-6 col-md-4">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/team3.jpg">
			            <h6 class="team_media_desc">公司环境</h6>
			        </div>
			    </div>
		 	</div>
		 	<div class="row">
		 		<div class="col-sm-6 col-md-4">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/team8.jpg">
			            <h6 class="team_media_desc">公司召开技术研讨专题会议</h6>
			        </div>
			    </div>
			    <div class="col-sm-6 col-md-4">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/team9.jpg">
			            <h6 class="team_media_desc">公司独立董事王浩院士与员工在一起</h6>
			        </div>
			    </div>
				<div class="col-sm-6 col-md-4">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/team7.jpg">
			            <h6 class="team_media_desc">陕西省省长胡和平与公司总裁申彪博士</h6>
			        </div>
			    </div>
		 	</div>
		 </div>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/aboutus/summary.js"></script>