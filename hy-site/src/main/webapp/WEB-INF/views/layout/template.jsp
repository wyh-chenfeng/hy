<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<tiles:insertAttribute name="resource" />
</head>
<body>
    
	<tiles:insertAttribute name="header" />

	<div>
		<tiles:insertAttribute name="menu" />
		<tiles:insertAttribute name="content" />
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>