(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-aboutus',
	};

	var bindEvent = {
		bindMenuCss : function() {
			$("#menu .active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		}
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