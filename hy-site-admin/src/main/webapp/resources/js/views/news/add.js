(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-news',
		CREATE_FROM : '.bind-create-from',
		CREATE_SUBMIT_BUTTON : '.bind-create-submit-button',
		FILE_UP_LOAD : '.bind-file-up-loading',
		TITLE : '标题',
		SUMMARY : '摘要',
		CONTENT : '内容'
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
				var file = $(constant.FILE_UP_LOAD).val();
				if(!file || file == '') {
					alert("必须上传图片！");
				} else if ($(constant.CREATE_FROM).validate().form()) {
					$(constant.CREATE_SUBMIT_BUTTON).attr('disabled', 'disabled');
					$.ajaxFileUpload({
						url : $.HY.context + '/news/add',
						secureuri : false, //是否启用安全提交,默认为false                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
						fileElementId : 'imageFile', //文件选择框的id属性                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
						dataType : 'json', //服务器返回的格式,可以是json或xml等   
						data: $(constant.CREATE_FROM).serializeJson(),
						success : function(data, status) { //服务器响应成功时的处理函数                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
							window.location.href = $.HY.context + '/news/forIndex';
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
            });
		},
		initEditor: function() {
			var options = {
					serverUrl: 'initUpload',
					toolbars: [[
					            'fullscreen', 'source', '|', 'undo', 'redo', '|',
					            'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', '|',
					            'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
					            'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
					            'directionalityltr', 'directionalityrtl', 'indent', '|',
					            'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|', 'touppercase', 'tolowercase', '|',
					            'link', 'unlink', 'anchor', '|', 'imagenone', 'imageleft', 'imageright', 'imagecenter', '|',
					            'simpleupload', 'background', '|',
					            'horizontal', 'date', 'time', 'spechars', '|',
					            'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows', 'splittocols', 'charts', '|',
					            'preview', 'searchreplace', 'help'
					        ]]
			};
			var ue = UE.getEditor('container', options);
		}
	};

	var create = {
		init : function() {
			bindEvent.validateFrom();
			bindEvent.doValidate();
			bindEvent.bindMenuCss();
			bindEvent.initEditor();
		}
	};

	bindEvent.initFileInput();
	$(function() {
		create.init();
	});                                                                                                                                               
})(jQuery);