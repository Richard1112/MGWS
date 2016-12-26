<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<html>
<head>
<link rel="stylesheet"
	href="${basePath}/static/jqGrid/css/ui.jqgrid.css" />
<link rel="stylesheet"
	href="${basePath}/static/jqGrid/css/jquery-ui-1.10.3.full.min.css" />
<script src="${basePath}/static/jqGrid/js/jquery-1.7.2.min.js"></script>
<script src="${basePath}/static/jqGrid/js/i18n/grid.locale-cn.js"></script>
<script src="${basePath}/static/jqGrid/js/jquery.jqGrid.src.js"
	type="text/javascript"></script>
<style type="text/css">
/* Jqgrid */
.ui-jqgrid-sortable {
	text-align: center;
}

.search_table {
	width: 100%;
}
.search_table td {
	padding: 5px 10px;
}

#editmodtable {
	min-width: 620px;
}
.ui-th-column{
font-size:12px;
line-height:17px;}
</style>
</head>
<body>
	<form action="#" method="get" id="mainForm" class="sidebar-form"
		style="border: none;margin-top:0px;">
		<div class="input-group" style="margin: 0px 25px;padding-top:15px; width: 95%;">
			<table class="search_table">
				<tr>
					<td style="width: 200px"><input type="text"
						name="customerName" class="form-control"
						style="background: #fff;width: 200px;" placeholder="客户编号" id="customerName">
						<span class="input-group-btn">
							<button type="button" name="search" id="search-btn"
								style="background: #fff; margin-left: -40px;margin-top:3px;"
								class="btn btn-flat"
								onclick="searchTable();">
								<i class="fa fa-search"></i>
							</button>
					</span></td>
					<td>
					<button type="button" id="btnAdd" class="btn btn-default">新增</button>
					</td>
				</tr>
			</table>
		</div>
	</form>

	<table id="table" class="data_table" style="font-size:12px;"></table>
	<div id="pager"></div>

	<script type="text/javascript">
		
		$(function() {
			pageInit();
		});
		function pageInit() {
			var selects1 = getSelectvalue(1);
			var selects2 = getSelectvalue(2);
			jQuery("#table").jqGrid({
				url : '${basePath}/productCt',
				method : "GET",
				datatype : "json",
				colNames : [ '', '客户', '产品名称','起始日','终止日',''],
				colModel : [ {
					name : 'id',
					index : 'id',
					hidden : true,
					sortable : true
				}, {
					name : 'customerNo',
					index : 'customerNo',
					width : 100,
					editable : true,
					edittype:"select",
					editrules: {required:true},
					sortable : true
				}, {
					name : 'productName',
					index : 'productName',
					width : 150,
					editable : true,
					edittype:"select",
					editrules: {required:true},
					sortable : true
				}, {
					name : 'dateFrom',
					index : 'dateFrom',
					width : 150,
					editable : true,
					editrules: {required:true},
					editoptions:{size:12,
						dataInit:function(el){
							$(el).datepicker({todayBtn: "linked",autoclose: true,format:'yyyy/mm/dd'});
							$(this).click(function(e){//选中时间后隐藏
		                        $(e).parent().datepicker('hide');
		                    });
						}
					},
					sortable : true
				}, {
					name : 'dateTo',
					index : 'dateTo',
					width : 150,
					editable : true,
					editrules: {required:true},
					editoptions:{size:12,
						dataInit:function(el){
							$(el).datepicker({todayBtn: "linked",autoclose: true,format:'yyyy/mm/dd'});
							$(this).click(function(e){//选中时间后隐藏
		                        $(e).parent().datepicker('hide');
		                    });
						}
					},
					sortable : true
				},{name:'act',index:'act',width:60,search:false,sortable:false,editable:false}],
				rowNum : 20,
				autowidth : true,
				rowList : [ 20, 30, 50 ],
				pager : '#pager',
				sortname : 'id',
				oper:"oper", // operation参数名称
				editoper:"edit", // 当在edit模式中提交数据时，操作的名称
				addoper:"add", // 当在add模式中提交数据时，操作的名称
				deloper:"del", // 当在delete模式中提交数据时，操作的名称
				viewrecords : true,
				sortorder : "desc",
				gridComplete: function(){
	                var ids = $("#table").getDataIDs();//jqGrid('getDataIDs');
	                for(var i=0;i<ids.length;i++){
	                    var cl = ids[i];
	                    //be = "<button type='button' class='btn btn-default' onclick=\"jQuery('#table').jqGrid('editGridRow','"+cl+"',{checkOnSubmit:true,checkOnUpdate:true,closeAfterEdit:true,closeOnEscape:true});\" >Edit</button>"; 
	                    de = "&nbsp;&nbsp;<button type='button' class='btn btn-default' onclick=\"jQuery('#table').jqGrid('delGridRow','"+cl+"',{closeOnEscape:true});\" >删除</button>";
	                    jQuery("#table").jqGrid('setRowData',ids[i],{act:de});
	                } 
	            },
				//后台返回数据
				jsonReader : { //server返回Json解析设定   
					root : "resultList", //json中数据列表   
					page : "currentPage",//当前页
					total : "totalPage",//总页数
					records : "totalSize",//总条数
					repeatitems : false,
					id : "0"
				},
				editurl : "${basePath}/productCtEdit",
				caption : "",
				loadComplete : function() {
					var objWindow = $(window);
					var brsWindow = objWindow.width();
					var brsHindow = objWindow.height();
					$("#table").jqGrid('setGridHeight', brsHindow - 250);
					$("#table").setColProp('productName',  {editType:"select", editoptions: {size : 1, value: selects1} });
		            $("#table").setColProp('customerNo',  {editType:"select", editoptions: {size : 1, value: selects2} });
				}
			});
			jQuery("#table").jqGrid('navGrid', "#pager", {
				edit : false,
				add : false,
				del : false,
				search:false
			});
			$("#btnAdd").click(function(){
	            jQuery("#table").jqGrid('editGridRow','new',{height:280,reloadAfterSubmit:true,closeAfterSubmit:true,closeOnEscape:true,addedrow:false});
	            
	        });
		}
		function getSelectvalue(division) {
			var selectOption="";
			$.ajax({
				type : "get",
				async: false,
				url : "${basePath}/selectValue?division="+division,
				success : function(json) {
					if(division==1){
						for (var i = 0; i < json.selects.length; i++) {
							if (i < json.selects.length - 1) {
								selectOption = selectOption
										+ json.selects[i].id + ":"
										+ json.selects[i].productName + ";";
							} else {
								selectOption = selectOption
										+ json.selects[i].id + ":"
										+ json.selects[i].productName;
							}
						}
					} else{
						for (var i = 0; i < json.selects.length; i++) {
							if (i < json.selects.length - 1) {
								selectOption = selectOption
										+ json.selects[i].customerNo + ":"
										+ json.selects[i].customerName + ";";
							} else {
								selectOption = selectOption
										+ json.selects[i].customerNo + ":"
										+ json.selects[i].customerName ;
							}
						}
					}
				}
			})
			return selectOption;
		}
		function searchTable() {
			var customerName = $("#customerName").val();

			$("#table").jqGrid('setGridParam', {
				url : "${basePath}/productCt",
				method : 'GET',
				postData : {
					//条件
					'customerName' : customerName
				}
			}).trigger("reloadGrid"); //重新载入   
		}
	</script>
</body>
</html>