(function($) {
	$.fn.serializeJson = function() {
		var serializeObj = {};
		$(this.serializeArray()).each(function() {
			serializeObj[this.name] = this.value.replaceAll("\"","\'");
		});
		return serializeObj;
	};
})(jQuery);