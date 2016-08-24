<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<p class="text-left">
	<a href="${HY_CONTEXT}/banner/forAdd"><button type="button" class="btn btn-primary">创建</button></a>
</p>

<table id="bannerTable" class="table-condensed table-bordered table-striped table-hover">
    <tr>
        <th w_index="id" width="10%;">ID</th>
        <th w_index="title" width="10%;">标题</th>
        <th w_index="url" width="10%;">链接地址</th>
        <th w_index="content" width="15%;">内容</th>
        <th w_render="$.bindEvent.image" width="20%;">图片</th>
        <th w_render="$.bindEvent.operate" width="20%;">操作</th>
    </tr>
</table>


<script src="${HY_CONTEXT}/resources/js/views/banner/index.js"></script>
