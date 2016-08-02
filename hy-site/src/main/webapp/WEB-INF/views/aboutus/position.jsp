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
				<a class="navbar-brand"> 关于我们 </a>
			</div>
			<div class="collapse navbar-collapse navbar-right" id="subnavbar">
				<ul class="nav navbar-nav">
					<li><a href="${HY_CONTEXT }/aboutus/forSummary">公司简介</a></li>
					<li><a href="#">核心团队</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forAboutus">联系我们</a></li>
					<li class="active"><a href="${HY_CONTEXT }/aboutus/forPosition">招纳贤士</a></li>
				</ul>
			</div>
		</div>

		<ul class="contact_us">
			<li class="address"><span>地址：</span> <span>Lorem ipsum
					dolor sit amet, consectetur adipiscing elit. Aenean euismod
					bibendum laoreet. Proin gravida dolor sit amet lacus</span></li>
			<li><span>邮编：</span> <span>100000<span></li>
			<li><span>邮箱：</span> <span>kf@liangye.com</span></li>
			<li><span>联系电话：</span> <span>400-12345678</span></li>
		</ul>
	</div>
	<div class="well well-sm">
		<div class="navbar navbar-inverse">
			<div class="navbar-header">
				<a class="navbar-brand"> RECRUITMENT </a>
			</div>
		</div>
		<div class="row">
			<ul id="tabs" class="nav col-md-2">
				<li class="active"><a href="#marketDep" data-toggle="tab">
						市场部 </a></li>
				<li><a href="#productDep" data-toggle="tab">产品部</a></li>
				<li><a href="#projectDep" data-toggle="tab">工程部</a></li>
			</ul>
			<div id="tabContent" class="tab-content col-md-10">
				<div class="tab-pane fade in active" id="marketDep">
					<div data-toggle="collapse" data-target="#saleManager">
						销售经理<i class="glyphicon"></i>
					</div>
					<p id="saleManager" class="panel-collapse collapse in">工作内容/职位描述：
						1.负责电商PC产品线，包括产品需求分析、目标制定、产品规划、项目推进等； 2.对新事物、新产品怀有激情，具有创新意识，勇于尝试；
						3.关注用户需求、用户体验，主导产品需求方向和易用性； 4.负责跨部门协调和沟通，推动产品的开发进度，把控产品质量 任职资格：
						1.大学本科以上学历； 2.2年及以上互联网产品经理经验，具有电商前端产品经验优先； 3.有很强的逻辑分析和总结能力；
						4.对业务需求有较强的协调能力；对用户、业务反馈的问题能够及时处理
						5.有较强的数据分析能力，以及良好的沟通协调能力，突出的团队合作精神；</p>
					<div data-toggle="collapse" data-target="#relationManager"
						class="collapsed">
						公关经理<b class="glyphicon"></b>
					</div>
					<p id="relationManager" class="panel-collapse collapse">
						工作内容/职位描述： 1.负责电商PC产品线，包括产品需求分析、目标制定、产品规划、项目推进等；
						2.对新事物、新产品怀有激情，具有创新意识，勇于尝试； 3.关注用户需求、用户体验，主导产品需求方向和易用性；
						4.负责跨部门协调和沟通，推动产品的开发进度，把控产品质量 任职资格： 1.大学本科以上学历；
						2.2年及以上互联网产品经理经验，具有电商前端产品经验优先； 3.有很强的逻辑分析和总结能力；
						4.对业务需求有较强的协调能力；对用户、业务反馈的问题能够及时处理
						5.有较强的数据分析能力，以及良好的沟通协调能力，突出的团队合作精神；</p>
					<div data-toggle="collapse" data-target="#marketManager"
						class="collapsed">
						市场经理<i class="glyphicon"></i>
					</div>
					<p id="marketManager" class="panel-collapse collapse">
						工作内容/职位描述： 1.负责电商PC产品线，包括产品需求分析、目标制定、产品规划、项目推进等；
						2.对新事物、新产品怀有激情，具有创新意识，勇于尝试； 3.关注用户需求、用户体验，主导产品需求方向和易用性；
						4.负责跨部门协调和沟通，推动产品的开发进度，把控产品质量 任职资格： 1.大学本科以上学历；
						2.2年及以上互联网产品经理经验，具有电商前端产品经验优先； 3.有很强的逻辑分析和总结能力；
						4.对业务需求有较强的协调能力；对用户、业务反馈的问题能够及时处理
						5.有较强的数据分析能力，以及良好的沟通协调能力，突出的团队合作精神；</p>
				</div>
				<div class="tab-pane fade in" id="productDep">
					<div data-toggle="collapse" data-target="#product">
						产品经理<i class="glyphicon"></i>
					</div>
					<p id="product" class="panel-collapse collapse in">工作内容/职位描述：
						1.负责电商PC产品线，包括产品需求分析、目标制定、产品规划、项目推进等； 2.对新事物、新产品怀有激情，具有创新意识，勇于尝试；
					</p>
				</div>
				<div class="tab-pane fade in" id="projectDep">
					<div data-toggle="collapse" data-parent="#accordion"
						data-target="#engineer">
						Web攻城狮<b class="glyphicon"></b>
					</div>
					<p id="engineer" class="panel-collapse collapse in">工作内容/职位描述：
						1.负责电商PC产品线，包括产品需求分析、目标制定、产品规划、项目推进等； 2.对新事物、新产品怀有激情，具有创新意识，勇于尝试；
						3.关注用户需求、用户体验，主导产品需求方向和易用性； 4.负责跨部门协调和沟通，推动产品的开发进度，把控产品质量 任职资格：
						1.大学本科以上学历； 2.2年及以上互联网产品经理经验，具有电商前端产品经验优先； 3.有很强的逻辑分析和总结能力；</p>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/aboutus/index.js"></script>
