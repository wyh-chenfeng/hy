<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<p class="text-left">
	<a href="${HY_CONTEXT}/position/forAdd"><button type="button" class="btn btn-primary">创建</button></a>
</p>

<table id="positionTable" class="table-condensed table-bordered table-striped table-hover">
    <tr>
        <th w_index="id" width="10%;">ID</th>
        <th w_index="departmentName" width="15%;">部门</th>
        <th w_index="name" width="15%;">职位名称</th>
        <th w_index="address" width="20%;">工作地点</th>
        <th w_index="createTimeStr" width="20%;">发布时间</th>
        <th w_render="$.bindEvent.operate" width="20%;">操作</th>
    </tr>
</table>

<script src="${HY_CONTEXT}/resources/js/views/position/index.js"></script>
