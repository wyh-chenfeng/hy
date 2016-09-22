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
				<a class="navbar-brand">加入我们 </a>
			</div>
			<div class="collapse navbar-collapse" id="subnavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${HY_CONTEXT }/aboutus/forPosition">招纳贤士</a></li>
					<li><a href="${HY_CONTEXT }/aboutus/forAboutus">联系我们</a></li>
				</ul>
			</div>
		</div>

		<div class="row">
			<ul id="tabs" class="nav col-md-2" data-bind="foreach: { data: departments, as: 'department' }">
				<li data-bind="attr:{class: department.bindClass}">
					<a href="#marketDep" data-toggle="tab" data-bind="text: department.departmentName, attr:{href: '#department' + department.departmentId() }">市场部 </a>
				</li>
			</ul>
			<div id="tabContent" class="tab-content col-md-10" data-bind="foreach: { data: departments, as: 'department' }">
				<div class="tab-pane fade in active" id="marketDep" data-bind="attr: {id: 'department' + department.departmentId(), class: department.bindDepartmentClass }">
					<!-- ko foreach: { data: department.positions, as: 'position' } -->
					<div data-toggle="collapse" data-bind="attr: {'data-target': '#position_' + position.id(), class: position.bindNameClass  }">
						<!-- ko text:position.name -->销售经理<!-- /ko --><i class="glyphicon"></i>
					</div>
					<div data-bind="attr: {id: 'position_' + position.id(), class: position.bindPositionClass }">
						<p>工作内容/职位描述：</p>
						<p data-bind="html: position.duty">1.负责电商PC产品线，包括产品需求分析、目标制定、产品规划、项目推进等；
							2.对新事物、新产品怀有激情，具有创新意识，勇于尝试； 3.关注用户需求、用户体验，主导产品需求方向和易用性；
							4.负责跨部门协调和沟通，推动产品的开发进度，把控产品质量</p>
						<p>任职资格：</p>
						<p data-bind="html: position.recruitment">1.大学本科以上学历； 2.2年及以上互联网产品经理经验，具有电商前端产品经验优先； 3.有很强的逻辑分析和总结能力；
							4.对业务需求有较强的协调能力；对用户、业务反馈的问题能够及时处理
							5.有较强的数据分析能力，以及良好的沟通协调能力，突出的团队合作精神；</p>
					</div>
					<!-- /ko -->
				</div>
			</div>
		</div>
	</div>
</div>

<script src="${HY_CONTEXT}/resources/js/views/aboutus/position.js"></script>
