(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-banner',
		CREATE_FROM : '.bind-create-from',
		CREATE_SUBMIT_BUTTON : '.bind-create-submit-button',
		FILE_UP_LOAD : '.bind-file-up-loading',
		INIT_IMAGE_FILE : '#init_image_file',
		TITLE : '标题',
		CONTENT : '内容',
		URL : '链接地址',
	};

	var bindEvent = {
		validateFrom : function() {
			$(constant.CREATE_FROM).validate({
				errorElement : 'span',
				errorClass : 'help-block',
				focusInvalid : false,
				rules : {
					title : {
						required : [ constant.TITLE, true ],
						maxlength : 100
					},
					url : {
						required : [ constant.URL, true ],
						maxlength : 100
					},
					content : {
						required : [ constant.CONTENT, true ],
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
			$(constant.CREATE_SUBMIT_BUTTON).on('click', function() {
				if ($(constant.CREATE_FROM).validate().form()) {
					$(constant.CREATE_SUBMIT_BUTTON).attr('disabled', 'disabled');
					$.ajaxFileUpload({
						url : $.HY.context + '/banner/update',
						secureuri : false, //是否启用安全提交,默认为false                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
						fileElementId : 'imageFile', //文件选择框的id属性                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
						dataType : 'json', //服务器返回的格式,可以是json或xml等   
						data: $(constant.CREATE_FROM).serializeJson(),
						success : function(data, status) { //服务器响应成功时的处理函数                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
							window.location.href = $.HY.context + '/banner/forIndex';
						},
						error : function(data, status, e) { //服务器响应失败时的处理函数                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
						
						}
					});
				}
			});
		},
		bindMenuCss : function() {
			$(".active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		},
		initFileInput: function() {
			$(constant.FILE_UP_LOAD).fileinput({
                language: 'zh', //设置语言
                allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀,
                enctype: 'multipart/form-data',
                showUpload: false, //是否显示上传按钮
                showCaption: true,//是否显示标题
                browseClass: "btn btn-primary", //按钮样式 
                initialPreview: [
                    $.HY.imageUrl + $(constant.INIT_IMAGE_FILE).val()
 				],
 				initialPreviewAsData: true,
 				/*initialPreviewConfig: [
				    {caption: "Moon.jpg", size: 930321, width: "120px", key: 1, showDelete: false}
            	],*/
 				initialPreviewConfig: [
	                {caption: $(constant.INIT_IMAGE_FILE).val(),showDelete: false}
	            ],
 				overwriteInitial: true,
 				initialCaption: $(constant.INIT_IMAGE_FILE).val()
            });
		}
	};

	var create = {
		init : function() {
			bindEvent.validateFrom();
			bindEvent.doValidate();
			bindEvent.bindMenuCss();
		}
	};

	bindEvent.initFileInput();
	$(function() {
		create.init();
	});                                                                                                                                               
})(jQuery);