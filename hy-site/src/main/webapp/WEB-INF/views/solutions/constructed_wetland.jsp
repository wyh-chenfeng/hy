<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container main-content">
	<div class="well well-sm">
		<div class="navbar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#subnavbar" aria-expanded="false" aria-controls="navbar">
	            	<i class="iconfont"></i>
	          	</button>
				<a class="navbar-brand"> 解决方案 </a>
			</div>
			<div class="collapse navbar-collapse navbar-right" id="subnavbar">
				<ul class="nav navbar-nav">
					<li><a href="${HY_CONTEXT}/solutions/forIndex">黑臭水治理</a></li>
					<li><a href="${HY_CONTEXT}/solutions/forSpongeCity">海绵城市</a></li>
					<li><a href="${HY_CONTEXT}/solutions/forWaterPullution">农村污水治理</a></li>
					<li class="active"><a href="${HY_CONTEXT}/solutions/forConstructedWetland">人工湿地</a></li>
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
				src="${HY_CONTEXT}/resources/images/wetland.jpg" alt="媒体对象">
			</a>
			<div class="media-body">
				<p>
					人工湿地由以下的结构单元构成：<br /> 底部的防渗层<br /> 由土壤、植物根系及微生物组成的基质层<br />
					湿地植物落叶及微生物尸体等组成的腐质层
				</p>
			</div>
		</div>
		<div class="media">
			<a class="media-img pull-right"> <img class="media-object"
				src="${HY_CONTEXT}/resources/images/wetland2.jpg" alt="媒体对象">
			</a>
			<div class="media-body">
				<p>
					关键问题： <br /> C:N失衡,微生物活性低,TN 去除难度大<br /> 奥运期间-： <br /> 生物处理+超滤膜
					,膜生物反应器MBR MBR+RO
				</p>
			</div>
		</div>
		<div class="media">
			<a class="media-img pull-left"> <img class="media-object"
				src="${HY_CONTEXT}/resources/images/wetland3.jpg" alt="媒体对象">
			</a>
			<div class="media-body">
				<p>
					山西湿地工程项目规模日处理10万立方米，是目前国内最大的人工湿地污水处理项目，<br />
					工程用地中70%为河道滩涂湿地，工程建成后，水质得到明显改善，生态环境得到有效恢复
				</p>
			</div>
		</div>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/solutions/index.js"></script>

