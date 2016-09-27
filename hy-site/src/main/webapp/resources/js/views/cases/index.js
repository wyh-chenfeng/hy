(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-cases',
		PAGINATOR : '#paginator',
	};

	var viewModel = {
		cases: ko.observableArray([]),
		type: ko.observable(1),
	};
	
	var bindEvent = {
		bindMenuCss : function() {
			$(".active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		},
		bindPaginator : function(curPage, totalPages) {
			var options = {
				size:'normal',
				currentPage: curPage,
				totalPages: totalPages,
				numberOfPages: 10,
				bootstrapMajorVersion:3,
				alignment:'right',
	            onPageClicked: function(e,originalEvent,type,page){
	            	bindEvent.getData(page);
	            }
			}
			
			$(constant.PAGINATOR).bootstrapPaginator(options);
		},
		getData : function(curPage) {
			$.ajax({
				type : 'POST',
				url : $.HY.context + '/cases/query',
				dataType : 'JSON',
				data : {"curPage": curPage, "pageSize": 9},
				success : function(data) {
					if(data.totalPages > 0) {
						bindEvent.bindPaginator(data.curPage, data.totalPages);
					} else {
						$(constant.PAGINATOR).empty();
					}
					var casesArray = [];
					var array = [];
					$.each(data.data, function(i, cases) {
						array.push(cases);
						if(array.length == 3) {
							casesArray.push(array);
							array = [];
						}
					});
					casesArray.push(array);
					
					var temp = ko.mapping.fromJS(casesArray); 
					console.debug(temp());
					viewModel.cases(temp());
				}
			});
		}
	};

	var create = {
		init : function() {
			ko.applyBindings(viewModel);
			bindEvent.bindMenuCss();
			bindEvent.bindPaginator();
			bindEvent.getData(1);
		}
	};

	$(function() {
		create.init();
	});
})(jQuery);