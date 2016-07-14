<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal bind-update-from" role="form" action="${HY_CONTEXT}/position/update" method="post">
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">
			职位名称
		</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" value="${position.name }" name="name" id="name" />
			<input type="hidden" value="${position.id }" name="id" />
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">
			所属部门
		</label>
		<div class="col-sm-4">
			<select class="form-control" name="departmentId">
				<c:forEach items="${departments }" var="department">
					<option <c:if test="${department.id == position.departmentId}">selected="selected"</c:if> value="${department.id }">${department.name }</option>
				</c:forEach>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">
			工作地点
		</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="address" value="${position.address }" id="address" />
		</div>
	</div>
	<div class="form-group">
		<label for="duty" class="col-sm-2 control-label">
			岗位职责
		</label>
		<div class="col-sm-4">
			<textarea rows="5" name="duty" id="duty" class="form-control">
				${position.duty }
			</textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="recruitment" class="col-sm-2 control-label">
			招聘条件
		</label>
		<div class="col-sm-4">
			<textarea rows="5" name="recruitment" id="recruitment" class="form-control">
				${position.recruitment }
			</textarea>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-3 col-sm-9">
			<button class="btn btn-sm btn-primary bind-update-submit-button" type="button">保存</button>
			<button class="btn btn-sm btn-default" type="reset">重置</button>
		</div>
	</div>
</form>

<script src="${HY_CONTEXT}/resources/js/views/manage/position/update.js"></script>
