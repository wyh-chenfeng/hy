<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<i class="glyphicon glyphicon-list-alt"></i> 经典案例
<hr>
<!-- <h5>订单基本信息</h5> -->
<table class="table table-hover table-condensed  table-bordered text-left">
  <tbody>
    <tr>                    
      <td class="active text-center" style="width:15%">ID</td>
      <td style="width:85%">${cases.id }</td>
    </tr>
    <tr>
     	<td class="active text-center">标题</td>
      	<td>${cases.title }</td>
    </tr>
    <tr>
    	<td class="active text-center">内容</td>
      	<td>${cases.content }</td>
    </tr>
    <tr>                    
      <td class="active text-center">图片</td>
      <td><img alt="" src="${IMAGE_URL }${cases.image }"></td>
    </tr>
  </tbody>
</table>

<div class="row">
	<div class="col-md-offset-5 col-md-7">
		<button type="submit" onclick="submitClick()"
			class="btn btn-sm btn-danger">返回</button>
	</div>
</div>
</br>
<script type="text/javascript">
function submitClick() {
	window.location.href = "${HY_CONTEXT}/cases/forIndex";
}
(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-cases',
	};

	var bindEvent = {
		bindMenuCss : function() {
			$(".active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		},
	};

	var create = {
		init : function() {
			bindEvent.bindMenuCss();
		}
	};
	$(function() {
		create.init();
	});                                                                                                                                               
})(jQuery);
</script>
