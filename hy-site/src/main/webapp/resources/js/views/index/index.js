(function($) {

	var constant = {
		CAROUSEL: "#myCarousel",
		MENU_CSS : '.bind-menu-index',
	};

	var bindEvent = {
		bindMenuCss : function() {
			$("#menu .active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		},
		initCarousel : function() {
			$(constant.CAROUSEL).carousel({
			  interval: 2000
			});
		},
		
	};

	var create = {
		init : function() {
			bindEvent.initCarousel();
			bindEvent.bindMenuCss();
		}
	};

	$(function() {
		create.init();
	});
})(jQuery);