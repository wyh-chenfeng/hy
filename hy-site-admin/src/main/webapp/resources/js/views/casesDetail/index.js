(function($) {

	var constant = {
		MENU_CSS : '.bind-menu-casesDetail',
		BANNER_TABLE : 'casesDetailTable'
	};

	var casesDetailTable;
	
	$.bindEvent = {
		initTable : function() {
			/* 初始化表格 */
			casesDetailTable = $.fn.bsgrid.init(constant.BANNER_TABLE,{
				url : $.HY.context + '/casesDetail/query',
				stripeRows : true,
				rowHoverColor : true, 
				pageSize : 10,
				//otherParames : $("#search_form").serializeArray(),
				additionalAfterRenderGrid: function(){
					
				} 
			});
		},
		doSearch : function() {
			//casesDetailTable.options.otherParames = $("#search_form").serializeArray();
			casesDetailTable.gotoPage(1);
		},
		forDetail : function(id){
			location.href = $.HY.context + "/casesDetail/forDetail?id=" + id;
		},
		forUpdate : function(id){
			location.href = $.HY.context + "/casesDetail/forUpdate?id=" + id;
		},
		forDelete : function(id){
			$.confirm('您确认要删除该条数据吗？', function () {
				if(id != null && '' != id && id != 'undefined'){
					// ajax提交删除
					$.ajax({
						type : "POST",
						url : $.HY.context + "/casesDetail/delete",
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
        type : function (record, rowIndex, colIndex, options) {
        	if (record.type == 1) {
        		return "公司新闻";
        	} else if(record.type == 2) {
        		return "行业新闻";
        	}
        },
		bindMenuCss : function() {
			$(".active").removeClass("active");
			$(constant.MENU_CSS).addClass("active");
		}
	};

	var create = {
		init : function() {
			$.bindEvent.initTable();
			$.bindEvent.bindMenuCss();
		}
	};

	$(function() {
		create.init();
	});                                                                                                                                               
})(jQuery);
