(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-news',
		PAGINATOR : '#paginator',
	};

	var viewModel = {
		news: ko.observableArray([]),
	};
	
	var bindEvent = {
		bindMenuCss : function() {
			$("#navbar .active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
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
				data : {"curPage": curPage, "type": 1},
				success : function(data) {
					var temp = ko.mapping.fromJS(data.content); 
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
			bindEvent.bindMenuCss();
			bindEvent.getData(1);
		}
	};

	$(function() {
		create.init();
	});
})(jQuery);