(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-position',
	};
	
	var viewModel = {
		departments: ko.observableArray([]),
	};

	var format = {
		formatInit : function(departmentDtos) {
			$.each(departmentDtos, function(i, d) {
				if (i == 0) {
					d.bindClass = ko.observable('active');
					d.bindDepartmentClass = ko.observable('tab-pane fade in active');
					
				} else {
					d.bindClass = ko.observable('');
					d.bindDepartmentClass = ko.observable('tab-pane fade in');
				}
				$.each(d.positions(), function(j, p) {
					p.bindPositionClass = 'panel-collapse collapse';
					p.bindNameClass = 'collapsed';
				});
			});
		}
	};
	
	var bindEvent = {
		bindMenuCss : function() {
			$("#menu .active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		},
		initData : function(curPage) {
			$.ajax({
				type : 'POST',
				url : $.HY.context + '/join/position',
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