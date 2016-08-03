(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-aboutus',
	};
	
	var viewModel = {
		departments: ko.observableArray([]),
		positions: ko.observableArray([]),
	};

	var format = {
		formatInit : function(departmentDtos) {
			$.each(departmentDtos, function(i, n) {
				if (i == 0) {
					n.bindClass = ko.observable('active');
				} else {
					n.bindClass = ko.observable('');
				}
				n.clik = function(n) {
					$.each(departmentDtos, function(j, d) {
						d.bindClass('');
					});
					n.bindClass("active");
					viewModel.positions(n.positions());
				};
			});
		}
	};
	
	var bindEvent = {
		bindMenuCss : function() {
			$("#navbar .active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		},
		initData : function(curPage) {
			$.ajax({
				type : 'POST',
				url : $.HY.context + '/aboutus/position',
				dataType : 'JSON',
				data : {},
				success : function(data) {
					var temp = ko.mapping.fromJS(data); 
					format.formatInit(temp());
					viewModel.departments(temp());
				}
			});
		}
	};

	var create = {
		init : function() {
			ko.applyBindings(viewModel);
			bindEvent.bindMenuCss();
			bindEvent.initData();
		}
	};

	$(function() {
		create.init();
	});
})(jQuery);