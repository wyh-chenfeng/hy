<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container main-content">
 <div class="well well-sm">
 	<div class="navbar navbar-inverse">
		<div class="navbar-header">
         	  <a class="navbar-brand">
         		经典案例
     		  </a>
        </div>
	</div>
	<p class="main_content_desc text-indent">
	 	针对我国城市河流污染严重且污染类型复杂多样化势态，公司建有国内最完备的水处理技术数据库。由此，无论有机物污染、重金属污染、酸碱污染、病毒细菌污染，还是综合性污染，公司都将通过多种技术集成与整装，达到最佳的治理效果。公司在黑臭水体治理实践中，根据水体边界条件及污染源性质，因地制宜进行精准诊断。通过水文水质特征及水动力模型、治理目标与治理阶段的综合分析，在比选的基础上采用科学适当的集成技术进行“治本”方案，坚决摒弃单一的“治标”技术。
	</p>
 	<h4 class="sub-title">${cases.title }</h4>
 	<div class="media block-indent">
	   <div class="media-body">
	   	${cases.content }
	   </div>
	</div>
	<div class="back_btn clearfix">
		<div class="pull-right">
			<a href="${HY_CONTEXT}/cases/forIndex" class="btn btn-back">返回</a>
		</div>
	</div>
 </div>
</div>	
<script src="${HY_CONTEXT}/resources/js/views/cases/index.js"></script>