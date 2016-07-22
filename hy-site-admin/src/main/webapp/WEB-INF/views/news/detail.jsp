<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<i class="glyphicon glyphicon-list-alt"></i> BANNER详情
<hr>
<!-- <h5>订单基本信息</h5> -->
<table class="table table-hover table-condensed  table-bordered text-left">
  <tbody>
    <tr>                    
      <td class="active text-center" style="width:15%">ID</td>
      <td style="width:85%">${news.id }</td>
    </tr>
    <tr>
     	<td class="active text-center">标题</td>
      	<td>${news.title }</td>
    </tr>
    <tr>
    	<td class="active text-center">内容</td>
      	<td>${news.content }</td>
    </tr>
    <tr>
    	<td class="active text-center">类型</td>
      	<td><c:if test="${news.type == 1}">公司新闻</c:if><c:if test="${news.type == 2}">行业新闻</c:if></td>
    </tr>
    <tr>                    
      <td class="active text-center">图片</td>
      <td><img alt="" src="${IMAGE_URL }${news.image }" style="width:100%"></td>
    </tr>
  </tbody>
</table>

<div class="row">
	<div class="col-md-offset-5 col-md-7">
		<button type="submit" onclick="submitClick()"
			class="btn btn-sm btn-danger">返回</button>
	</div>
</div>
<script type="text/javascript">
function submitClick() {
	window.location.href = "${HY_CONTEXT}/news/forIndex";
}
</script>
