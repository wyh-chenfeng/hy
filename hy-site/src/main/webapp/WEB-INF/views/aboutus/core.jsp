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
					<%-- <li class="active"><a href="${HY_CONTEXT }/aboutus/forCore">企业文化</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forMiss">企业使命</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forVision">企业愿景</a></li> --%>
					<li><a href="${HY_CONTEXT }/aboutus/forCto">首席技术官</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forTeam">团队风采</a></li>
				</ul>
			</div>
		</div>

		<p class="summary text-indent">
			我们秉承“以人为本，强企富民”，坚持以机制激励人，以文化塑造人，以情义温暖人，励精图治，赢得春华秋实，团结向上，铸造坚韧品格的经营理念。
		 </p>
		 <p class="summary text-indent">
		  	每个人会热爱自己的母亲河，会记得住乡愁。我们汇聚着中国最优秀的水环境技术与运营人才群体，以造福千秋万代的家国情怀，筚路蓝缕、砥砺前行。我们有理由相信，中国终将遍地青山绿水。更有理由相信，环域生态定会为其做出最大的贡献。
		 </p>
		
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/aboutus/summary.js"></script>