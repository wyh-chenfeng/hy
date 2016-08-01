(function($) {

	var constant = {
		CAROUSEL: "#myCarousel",
	};

	var bindEvent = {
		initCarousel : function() {
			$(constant.CAROUSEL).carousel({
			  interval: 2000
			});
		},
		
	};

	var create = {
		init : function() {
			bindEvent.initCarousel();
		}
	};

	$(function() {
		create.init();
	});
})(jQuery);