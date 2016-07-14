(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-position',
		UPDATE_FROM : '.bind-update-from',
		UPDATE_SUBMIT_BUTTON : '.bind-update-submit-button',
		NAME : '职位名称',
		ADDRESS : '工作地点',
		DUTY : '岗位职责',
		RECRUITMENT : '招聘条件'
	};

	var bindEvent = {
		validateFrom : function() {
			$(constant.UPDATE_FROM).validate({
				errorElement : 'span',
				errorClass : 'help-block',
				focusInvalid : false,
				rules : {
					name : {
						required : [ constant.NAME, true ],
						maxlength : 100
					},
					address : {
						required : [ constant.ADDRESS, true ],
						maxlength : 100
					},
					duty : {
						required : [ constant.DUTY, true ],
						maxlength : 5000
					},
					recruitment : {
						required : [ constant.RECRUITMENT, true ],
						maxlength : 5000
					}
				},
				highlight : function(element) {
					$(element).closest('div').addClass('has-error');
				},
				success : function(label) {
					label.closest('div').removeClass('has-error');
					label.remove();
				},
				errorPlacement : function(error, element) {
					element.parent('div').append(error);
				},
				submitHandler : function(form) {
					form.submit();
				}
			});
		},
		doValidate : function() {
			$(constant.UPDATE_SUBMIT_BUTTON).on('click', function() {
				if ($(constant.UPDATE_FROM).validate().form()) {
					$(constant.UPDATE_SUBMIT_BUTTON).attr('disabled', 'disabled');
					$.ajax({
						type : 'POST',
						url : $.HY.context + '/position/update',
						data: $(constant.UPDATE_FROM).serialize(),
						success : function() {
							window.location.href = $.HY.context + '/position/forIndex';
						}
					});
				}
			});
			
		},
		bindMenuCss : function() {
			$(".list-group-item-success")
					.removeClass("list-group-item-success");
			$(constant.MENU_CSS).addClass("list-group-item-success");
		}
	};

	var update = {
		init : function() {
			bindEvent.validateFrom();
			bindEvent.doValidate();
//			bindEvent.bindMenuCss();
		}
	};

	$(function() {
		update.init();
	});                                                                                                                                               
})(jQuery);