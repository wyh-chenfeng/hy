<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<i class="glyphicon glyphicon-list-alt"></i> 招聘详情
<hr>
<!-- <h5>订单基本信息</h5> -->
<table class="table table-hover table-condensed  table-bordered text-left">
  <tbody>
    <tr>                    
      <td class="active text-center" style="width:15%">职位名称</td>
      <td>${position.name }</td>
    </tr>
    <tr>
     	<td class="active text-center">所属部门</td>
      	<td>${position.departmentName }</td>
    </tr>
    <tr>
    	<td class="active text-center">工作地点</td>
      	<td>${position.address }</td>
    </tr>
    <tr>                    
      <td class="active text-center">更新时间</td>
      <td>${position.updateTimeStr }</td>
    </tr>
    <tr>                    
      <td class="active text-center">岗位职责</td>
      <td>${position.duty }</td>
    </tr>
    <tr>                    
      <td class="active text-center">招聘条件</td>
      <td>${position.recruitment }</td>
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
	window.location.href = "${HY_CONTEXT}/position/forIndex";
}
(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-position',
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
