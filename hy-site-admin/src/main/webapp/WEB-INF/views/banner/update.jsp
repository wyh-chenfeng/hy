<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal bind-create-from" role="form">
	<div class="form-group">
		<label for="imageFile" class="col-sm-2 control-label">
			图片
			<input type="hidden" id="init_image_file" name="image" value="${banner.image }"/>
			<input type="hidden" name="id" value="${banner.id }"/>
		</label>
		<div class="col-sm-6">
			<input type="file" name="imageFile" id="imageFile"  class="file file-loading bind-file-up-loading" multiple />
		</div>
	</div>
	<div class="form-group">
		<label for="title" class="col-sm-2 control-label">
			标题
		</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="title" value="${banner.title }" id="title" />
		</div>
	</div>
	<div class="form-group">
		<label for="url" class="col-sm-2 control-label">
			链接地址
		</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="url" value="${banner.url }" id="url" />
		</div>
	</div>
	<div class="form-group">
		<label for="content" class="col-sm-2 control-label">
			内容
		</label>
		<div class="col-sm-6">
			<textarea rows="8" name="content" id="content" class="form-control">${banner.content }</textarea>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button class="btn btn-sm btn-primary bind-create-submit-button" type="button">保存</button>
			<button class="btn btn-sm btn-default" type="reset">重置</button>
		</div>
	</div>
</form>

<script src="${HY_CONTEXT}/resources/js/views/banner/update.js"></script>
