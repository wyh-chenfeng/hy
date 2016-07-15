<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal bind-create-from" role="form" action="${HY_CONTEXT}/position/add" method="post">
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">
			职位名称
		</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="name" id="name" />
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">
			所属部门
		</label>
		<div class="col-sm-6">
			<select class="form-control" name="departmentId">
				<c:forEach items="${departments }" var="department">
					<option value="${department.id }">${department.name }</option>
				</c:forEach>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">
			工作地点
		</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="address" id="address" />
		</div>
	</div>
	<div class="form-group">
		<label for="duty" class="col-sm-2 control-label">
			岗位职责
		</label>
		<div class="col-sm-6">
			<textarea rows="8" name="duty" id="duty" class="form-control"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="recruitment" class="col-sm-2 control-label">
			招聘条件
		</label>
		<div class="col-sm-6">
			<textarea rows="8" name="recruitment" id="recruitment" class="form-control"></textarea>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button class="btn btn-sm btn-primary bind-create-submit-button" type="button">保存</button>
			<button class="btn btn-sm btn-default" type="reset">重置</button>
		</div>
	</div>
</form>

<script src="${HY_CONTEXT}/resources/js/views/position/add.js"></script>
