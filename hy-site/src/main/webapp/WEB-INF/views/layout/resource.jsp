<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!-- Resources -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%> 
<%@ page import="com.chenfeng.hy.domain.common.config.SystemConfig"%>
<% 
	ServletContext context = request.getSession().getServletContext();
	ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(context);
	SystemConfig systemConfig =(SystemConfig) ctx.getBean("systemConfig"); 
%>

<c:set var="IMAGE_URL" value="<%=systemConfig.getImageUrl()%>" scope="application" />
<c:set var="HY_CONTEXT" value="${pageContext.request.contextPath}" scope="application" />
<link rel="stylesheet" href="${HY_CONTEXT}/resources/css/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="${HY_CONTEXT}/resources/css/bootstrap/style.css" />

<script src="${HY_CONTEXT}/resources/js/lib/jquery/jquery.min.js"></script>
<script src="${HY_CONTEXT}/resources/js/lib/bootstrap/bootstrap.min.js"></script>
<script src="${HY_CONTEXT}/resources/js/lib/knockout/knockout-3.3.0.js"></script>
<script src="${HY_CONTEXT}/resources/js/lib/knockout/knockout.mapping.js"></script>

<script type="text/javascript">
	window.URL = window.URL || window.webkitURL || window.mozURL || window.msURL;  	

	(function($) {
		$.HY = {};
		$.HY.pages = {};
		$.HY.context = "${HY_CONTEXT}";
		$.HY.imageUrl = "${IMAGE_URL}";
	})(jQuery);
</script>

<!-- /Resources -->