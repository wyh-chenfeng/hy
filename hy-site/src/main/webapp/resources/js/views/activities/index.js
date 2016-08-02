(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-activities',
	};

	var bindEvent = {
		bindMenuCss : function() {
<<<<<<< HEAD
			$(".active").removeClass("active");
=======
			$(".active")
					.removeClass("active");
>>>>>>> 3d9e49f0b59a8aedf9e50b93e7131e73b921e874
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