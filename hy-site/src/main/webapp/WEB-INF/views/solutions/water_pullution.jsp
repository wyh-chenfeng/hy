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
				<a class="navbar-brand"> 解决方案 </a>
			</div>
			<div class="collapse navbar-collapse navbar-right" id="subnavbar">
				<ul class="nav navbar-nav">
					<li><a href="${HY_CONTEXT}/solutions/forIndex">黑臭水治理</a></li>
					<li><a href="${HY_CONTEXT}/solutions/forSpongeCity">海绵城市</a></li>
					<li class="active"><a href="${HY_CONTEXT}/solutions/forWaterPullution">农村污水治理</a></li>
					<li><a href="${HY_CONTEXT}/solutions/forConstructedWetland">人工湿地</a></li>
				</ul>
			</div>
		</div>
		<p class="main_content_desc">
			北京环域生态环保技术有限公司（以下简称公司或环域生态）作为中国环境科学研究院水环境科学家研发技术的转化平台，从成立伊始到不断发展过程中，得到中国环保部相关司局、中国环境科学研究院、中国水利水电科学研究院、北极光创投基金等国家部门及社会机构的大力支持。<br />
			公司是中国最具实力的水环境技术集成与系统解决方案提供商。团队核心成员拥有数十项水治理专利，并在国家水环保政策和标准制订、重大环保工程验收及水污染重大专项整装研发课题中发挥出重要作用。
		</p>
	</div>
	<div class="well well-sm">
		<div class="media">
			<a class="media-img pull-left"> <img class="media-object"
				src="${HY_CONTEXT}/resources/images/water_pullution.jpg" alt="媒体对象">
			</a>
			<div class="media-body">
				<p>
					针对单户型污水水量小，瞬时水力负荷及污染负荷大特点<br /> 采用具有良好水力传导性能、高微生物附着性能的新型复合多介质材料<br />
					显著提高了湿地耐冲击负荷能力及脱氮除磷能力<br /> 占地面积较传统面积缩小50%，服务人口1~10人
				</p>
			</div>
		</div>
		<div class="media">
			<a class="media-img pull-right"> <img class="media-object"
				src="${HY_CONTEXT}/resources/images/water_pullution2.jpg" alt="媒体对象">
			</a>
			<div class="media-body">
				<p>
					针对传统人工湿地氮磷同时脱除导致湿地后段磷源严重不足，反硝化的微生物群落较低，微生物的反硝化能力显著减弱的问题，通过各区段不同填料的有效组合，实现人工湿地分区脱氮除磷，保证湿地的后段磷源的充足，显著提高了人工湿地的脱氮效率。TN去除率高达80%，TP去除率达95%，服务人口10-2000人
				</p>
			</div>
		</div>
		<div class="media">
			<a class="media-img pull-left"> <img class="media-object"
				src="${HY_CONTEXT}/resources/images/water_pullution3.jpg" alt="媒体对象">
			</a>
			<div class="media-body">
				<p>
					针对人工湿地溶解氧浓度低，湿地硝化能力弱脱氮效率低、易堵塞的问题，基于短程硝化原理，采取微量曝气技术，内嵌高氨氮吸附性能分子筛及高性能防堵塞技术，最终显著提高了人工湿地的脱氮系统脱氮效率，缓解了无机颗粒物堵塞问题。COD、TN去除率为94.4%
					，86.0%，服务人口2000-30000人</p>
			</div>
		</div>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/solutions/index.js"></script>

