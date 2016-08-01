<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<tiles:importAttribute name="title" toName="_title" scope="request" ignore="true" />
	<meta charset="utf-8">
	<meta name="description" content="${_title }">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
	<meta name="HandheldFriendly" content="true" /> 
	<meta name="apple-touch-fullscreen" content="yes" />
	<title>${_title }</title>
	<tiles:insertAttribute name="resource" />
</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="content" />
	<tiles:insertAttribute name="footer" />
</body>
</html>