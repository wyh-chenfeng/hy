(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-news',
		PAGINATOR : '#paginator',
		COMPANY : '#company',
		INDUSTRY : '#industry',
	};

	var viewModel = {
		news: ko.observableArray([]),
		type: ko.observable(1),
	};
	
	var bindEvent = {
		bindMenuCss : function() {
			$("#menu .active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		},
		initNewsClick : function() {
			$(constant.COMPANY).on('click', function() {
				$(constant.INDUSTRY).removeClass("active");
				$(constant.COMPANY).addClass("active");
				viewModel.type(1);
				bindEvent.getData(1);
			});
			$(constant.INDUSTRY).on('click', function() {
				$(constant.COMPANY).removeClass("active");
				$(constant.INDUSTRY).addClass("active");
				viewModel.type(2);
				bindEvent.getData(1);
			});
		},
		bindPaginator : function(curPage, totalPages) {
			var options = {
				size:'normal',
				currentPage: curPage,
				totalPages: totalPages,
				numberOfPages: 10,
				bootstrapMajorVersion:3,
				alignment:'center',
				tooltipTitles: function (type, page, current) {
	                switch (type) {
	                case "first":
	                    return "首页";
	                case "prev":
	                    return "上一页";
	                case "next":
	                    return "下一页";
	                case "last":
	                    return "尾页";
	                case "page":
	                    return "第" + page + "页";
	                }
	            },
	            onPageClicked: function(e,originalEvent,type,page){
	            	bindEvent.getData(page);
	            }
			}
			
			$(constant.PAGINATOR).bootstrapPaginator(options);
		},
		getData : function(curPage) {
			$.ajax({
				type : 'POST',
				url : $.HY.context + '/news/query',
				dataType : 'JSON',
				data : {"curPage": curPage, "type": viewModel.type()},
				success : function(data) {
					var temp = ko.mapping.fromJS(data.data); 
					if(data.totalPages > 0) {
						bindEvent.bindPaginator(data.curPage, data.totalPages);
					} else {
						$(constant.PAGINATOR).empty();
					}
					viewModel.news(temp());
				}
			});
		}
	};

	var create = {
		init : function() {
			ko.applyBindings(viewModel);
			bindEvent.initNewsClick();
			bindEvent.bindMenuCss();
			bindEvent.getData(1);
		}
	};

	$(function() {
		create.init();
	});
})(jQuery);