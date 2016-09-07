<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal bind-create-from" role="form">
	<div class="form-group">
		<label for="imageFile" class="col-sm-2 control-label">
			图片
		</label>
		<div class="col-sm-6">
			<input type="file" class="file file-loading bind-file-up-loading" multiple name="imageFile" id="imageFile" />
		</div>
	</div>
	<div class="form-group">
		<label for="title" class="col-sm-2 control-label">
			标题
		</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="title" id="title" />
		</div>
	</div>
		<div class="form-group">
		<label for="content" class="col-sm-2 control-label">
			摘要
		</label>
		<div class="col-sm-6">
			<textarea rows="8" name="summary" id="summary" class="form-control"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="content" class="col-sm-2 control-label">
			内容
		</label>
		<div class="col-sm-6">
			<!-- 加载编辑器的容器 -->
			<div id="container" name="container"></div>
		</div>
	</div>
	<div class="form-group">
		<label for="type" class="col-sm-2 control-label">
			类型
		</label>
		<div class="col-sm-6">
			<select name="type" id="type" class="form-control">
				<option value="1">公司新闻</option>
				<option value="2">行业新闻</option>
			</select>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button class="btn btn-sm btn-primary bind-create-submit-button" type="button">保存</button>
			<button class="btn btn-sm btn-default" type="reset">重置</button>
		</div>
	</div>
</form>

<script src="${HY_CONTEXT}/resources/js/views/news/add.js"></script>
