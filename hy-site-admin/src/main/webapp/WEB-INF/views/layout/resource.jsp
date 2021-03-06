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

<c:set var="HY_CONTEXT" value="${pageContext.request.contextPath}" scope="application" />
<c:set var="IMAGE_URL" value="<%=systemConfig.getImageUrl()%>" scope="application" />
<link rel="stylesheet" href="${HY_CONTEXT}/resources/css/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="${HY_CONTEXT}/resources/js/lib/bsgrid/builds/merged/bsgrid.all.min.css"/>
<link rel="stylesheet" href="${HY_CONTEXT}/resources/css/bootstrap-fileinput/fileinput.min.css"/>

<script src="${HY_CONTEXT}/resources/js/lib/jquery/jquery.min.js"></script>
<!-- bootstarp 插件 -->
<script src="${HY_CONTEXT}/resources/js/lib/bootstrap/bootstrap.min.js"></script>

<!-- 表单验证插件 -->
<script src="${HY_CONTEXT}/resources/js/lib/jquery-validate/jquery.validate.min.js"></script>
<script src="${HY_CONTEXT}/resources/js/lib/jquery-validate/messages_zh.min.js"></script>
<!-- knockout 数据双向绑定插件 -->
<script src="${HY_CONTEXT}/resources/js/lib/knockout/knockout-3.3.0.js"></script>
<script src="${HY_CONTEXT}/resources/js/lib/knockout/knockout.mapping.js"></script>
<!-- 分页插件 -->
<script src="${HY_CONTEXT}/resources/js/lib/bsgrid/builds/js/lang/grid.zh-CN.min.js"></script>
<script src="${HY_CONTEXT}/resources/js/lib/bsgrid/builds/merged/bsgrid.all.min.js"></script>
<!-- 文件上传插件 -->
<script src="${HY_CONTEXT}/resources/js/lib/bootstrap-fileinput/fileinput.min.js"></script>
<script src="${HY_CONTEXT}/resources/js/lib/bootstrap-fileinput/locales/zh.js"></script>
<script src="${HY_CONTEXT}/resources/js/lib/ajaxFileUpload/ajaxfileupload.js"></script>
<!-- alert -->
<link rel="stylesheet" href="${HY_CONTEXT}/resources/js/lib/artDialog/skins/blue.css"/>
<link rel="stylesheet" href="${HY_CONTEXT}/resources/js/lib/artDialog/override/artDialog.skins.override.css"/>
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/artDialog/jquery.artDialog.min.js"></script>
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/artDialog/artDialog.plugins.min.js"></script>
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/artDialog/override/artDialog.plugin.override.zh-CN.js"></script>
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/artDialog/override/artDialog.plugin.override.js"></script>
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/artDialog/override.pop.js"></script>
<!-- from转json -->
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/utils/from_to_json.js"></script>

<!-- 富文本编辑器 ueditor -->
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" src="${HY_CONTEXT}/resources/js/lib/ueditor/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript">
	window.URL = window.URL || window.webkitURL || window.mozURL || window.msURL;  	

	(function($) {
		$.HY = {};
		$.HY.pages = {};
		$.HY.imageUrl = "${IMAGE_URL}";
		$.HY.context = "${HY_CONTEXT}";
	})(jQuery);
</script>

<!-- /Resources -->