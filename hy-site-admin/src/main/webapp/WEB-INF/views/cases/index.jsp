<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<p class="text-left">
	<a href="${HY_CONTEXT}/cases/forAdd"><button type="button" class="btn btn-primary">创建</button></a>
</p>

<table id="casesTable" class="table-condensed table-bordered table-striped table-hover">
    <tr>
        <th w_index="id" width="5%;">ID</th>
        <th w_index="title" width="15%;">标题</th>
        <th w_index="content" width="17%;">内容</th>
        <th w_render="$.bindEvent.image" width="10%;" height="10%">图片</th>
        <th w_render="$.bindEvent.operate" width="15%;">操作</th>
    </tr>
</table>


<script src="${HY_CONTEXT}/resources/js/views/cases/index.js"></script>
