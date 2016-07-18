(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-banner',
		BANNER_TABLE : 'bannerTable'
	};

	var bannerTable;
	
	$.bindEvent = {
		initTable : function() {
			/* 初始化表格 */
			bannerTable = $.fn.bsgrid.init(constant.BANNER_TABLE,{
						url : $.HY.context + '/banner/query',
						stripeRows : true,
						pageSize : 10,
						//otherParames : $("#search_form").serializeArray(),
						additionalAfterRenderGrid: function(){
							
						} 
					});
		},
		doSearch : function() {
			//bannerTable.options.otherParames = $("#search_form").serializeArray();
			bannerTable.gotoPage(1);
		},
		forDetail : function(id){
			location.href = $.HY.context + "/banner/forDetail?id=" + id;
		},
		forUpdate : function(id){
			location.href = $.HY.context + "/banner/forUpdate?id=" + id;
		},
		forDelete : function(id){
			$.confirm('您确认要删除该条数据吗？', function () {
				if(id != null && '' != id && id != 'undefined'){
					// ajax提交删除
					$.ajax({
						type : "POST",
						url : $.HY.context + "/banner/delete",
						data : {"id": id},
						dataType : "json",
						success : function(data) {
							$.alert(data.info, function(){
								if (data.status == 1) {
									// 删除成功,返回列表
									$.bindEvent.doSearch();
								}
							}, null, null);
						},
						error : function(data) {
							alert('删除失败！');
						}
					});
				}
			});
		},
		operate : function (record, rowIndex, colIndex, options) {
			var html = "";
			html += "<button type='button' onclick='$.bindEvent.forDetail(" + record.id + ")' class='btn btn-primary btn-xs'>详情</button> ";
			html += "<button type='button' onclick='$.bindEvent.forUpdate(" + record.id + ")' class='btn btn-primary btn-xs'>修改</button> ";
			html += "<button type='button' onclick='$.bindEvent.forDelete(" + record.id + ")'  class='btn btn-danger btn-xs'>删除</button>";
			return html;
        },
        image : function (record, rowIndex, colIndex, options) {
        	return "<img src='"+$.HY.imageUrl + record.image+"' style='width: 100px'/>";
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
