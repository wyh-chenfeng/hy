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
					<li class="active"><a href="${HY_CONTEXT }/aboutus/forCto">首席技术官</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forTeam">团队风采</a></li>
				</ul>
			</div>
		</div>

		<div class="media">
		   <a class="media-img pull-right">
		      <img class="media-object" src="${HY_CONTEXT}/resources/images/cto_zly.jpg">
		   </a>
		   <div class="media-body">
	         <h6>张列宇</h6>
	         <br/>
		     <p class="text-indent">
		      现任中国环境科学研究院研究员，环境保护部青年拔尖人才，北京市科技新星。 2009年中国科学院水生生物研究所博士毕业。主要从事河湖水环境治理与农村分散型污水处理的研究，在相关领域发表文章70余篇，获得国家发明专利40余项，获得环保部“城市河道与湖泊水体污染控制原理与集成技术”省部级奖7项，成功治理了黑臭河道80余条。作为技术骨干2006年编制了上海市黑臭河道治理技术标准与规范，2015年编制了《我国黑臭河道治理技术政策》（征求意见稿）。出版了我国第一本关于黑臭河道的治理技术的书籍《黑臭河道处理技术与案例分析》。
		     </p>
		   </div>
		</div>
		<div class="media honor_list">
			<div class="row">
			   <div class="col-sm-6 col-md-3">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/cto_honor1.jpg">
			            <h6 class="team_media_desc">环境保护科学技术奖</h6>
			        </div>
			    </div>
			    <div class="col-sm-6 col-md-3">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/cto_honor2.jpg">
			            <h6 class="team_media_desc">环境保护科学技术奖</h6>
			        </div>
			    </div>
			    <div class="col-sm-6 col-md-6">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/cto_honor6.jpg">
			            <h6 class="team_media_desc">北京市科学技术奖</h6>
			        </div>
			    </div>
			</div>
			<div class="row">
			   <div class="col-sm-6 col-md-3">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/cto_honor3.jpg">
			            <h6 class="team_media_desc">环境保护科学技术奖</h6>
			        </div>
			    </div>
			    <div class="col-sm-6 col-md-3">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/cto_honor4.jpg">
			            <h6 class="team_media_desc">科学技术奖励证书</h6>
			        </div>
			    </div>
			    
			    <div class="col-sm-6 col-md-6">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/cto_honor7.jpg">
			            <h6 class="team_media_desc">全国优秀工程咨询成果二等奖</h6>
			        </div>
			    </div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-3">
			        <div class="thumbnail">
			            <img src="${HY_CONTEXT}/resources/images/cto_honor5.jpg">
			            <h6 class="team_media_desc">环境保护科学技术奖</h6>
			        </div>
			    </div>
			</div>
		</div>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/aboutus/summary.js"></script>