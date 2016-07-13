(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-position',
		POSITION_TABLE : 'positionTable'
	};

	var positionTable;
	
	var bindEvent = {
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
		
//		function operate(record, rowIndex, colIndex, options) {
//            return '<a href="#" onclick="alert(\'ID=' + gridObj.getRecordIndexValue(record, 'ID') + '\');">Operate</a>';
//        }
		bindMenuCss : function() {
			$(".list-group-item-success")
					.removeClass("list-group-item-success");
			$(constant.MENU_CSS).addClass("list-group-item-success");
		}
	};

	var create = {
		init : function() {
			bindEvent.initTable();
//			bindEvent.bindMenuCss();
		}
	};

	$(function() {
		create.init();
	});                                                                                                                                               
})(jQuery);