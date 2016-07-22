<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<div class="col-md-2">
	<ul class="nav nav-stacked nav-pills bind-menu">
		<li class="active">
			<a href="${HY_CONTEXT}/position/forIndex">职位管理</a>
		</li>
		<li>
			<a href="${HY_CONTEXT}/news/forIndex">新闻管理</a>
		</li>
		<li>
			<a href="${HY_CONTEXT}/banner/forIndex">BANNER管理</a>
		</li>
	</ul>
</div>
<script>
(function($) {

	var constant = {
		MENU_LI : '.bind-menu li'
	};

	var bindEvent = {
		bindMenuCss : function() {
			$(constant.MENU_LI).on("click", function() {
				$(".active")
						.removeClass("active");
				$(this).addClass("active");
			});
		}
	};

	$(function() {
		bindEvent.bindMenuCss();
	});                                                                                                                                               
})(jQuery);

</script>