(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-position',
		POSITION_TABLE : 'positionTable'
	};

	var positionTable;
	
	$.bindEvent = {
		initTable : function() {
			/* 初始化表格 */
			positionTable = $.fn.bsgrid.init(constant.POSITION_TABLE,{
						url : $.HY.context + '/position/query',
						stripeRows : true,
						pageSize : 10,
						//otherParames : $("#search_form").serializeArray(),
						additionalAfterRenderGrid: function(){
							
						} 
					});
		},
		operate : function (record, rowIndex, colIndex, options) {
            return '<a href="#">Operate</a>';
        },
		bindMenuCss : function() {
			$(".list-group-item-success")
					.removeClass("list-group-item-success");
			$(constant.MENU_CSS).addClass("list-group-item-success");
		}
	};

	var create = {
		init : function() {
			$.bindEvent.initTable();
//			bindEvent.bindMenuCss();
		}
	};

	$(function() {
		create.init();
	});                                                                                                                                               
})(jQuery);

