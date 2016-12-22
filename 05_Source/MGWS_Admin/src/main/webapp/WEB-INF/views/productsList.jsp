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
	<form action="#" method="get" class="sidebar-form"
		style="border: none;">
		<div class="input-group" style="margin: 15px 25px; width: 95%;">
			<table class="search_table">
				<tr>
					<td style="width: 200px"><input type="text"
						name="productName" class="form-control"
						style="background: #fff;width: 200px;" placeholder="产品名称" id="productName">
						<span class="input-group-btn">
							<button type="button" name="search" id="search-btn"
								style="background: #fff; margin-left: -40px;margin-top:3px;"
								class="btn btn-flat"
								onclick="searchTable();">
								<i class="fa fa-search"></i>
							</button>
					</span></td>
					<td>
					<button type="button" id="btnAdd" class="btn btn-default">Add</button>
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
			jQuery("#table").jqGrid({
				url : '${basePath}/product',
				method : "GET",
				datatype : "json",
				colNames : ['产品ID', '产品名称',''],
				colModel : [{
					name : 'id',
					index : 'id',
					width : 100,
					editable : true,
					editoptions : {readonly : true,size : 10},
					sortable : true
				}, {
					name : 'productName',
					index : 'productName',
					width : 150,
					editable : true,
					editrules: {required:true},
					editoptions : {readonly : false,size : 10},
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
	                    be = "<button type='button' class='btn btn-default' onclick=\"jQuery('#table').jqGrid('editGridRow','"+cl+"',{checkOnSubmit:true,checkOnUpdate:true,closeAfterEdit:true,closeOnEscape:true});\" >Edit</button>"; 
	                    de = "&nbsp;&nbsp;<button type='button' class='btn btn-default' onclick=\"jQuery('#table').jqGrid('delGridRow','"+cl+"',{closeOnEscape:true});\" >Del</button>";
	                    jQuery("#table").jqGrid('setRowData',ids[i],{act:be+de});
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
				editurl : "${basePath}/productEdit",
				caption : "",
				loadComplete : function() {
					var objWindow = $(window);
					var brsWindow = objWindow.width();
					var brsHindow = objWindow.height();
					$("#table").jqGrid('setGridHeight', brsHindow - 250);
				}
			});
			jQuery("#table").jqGrid('navGrid', "#pager", {
				edit : false,
				add : false,
				del : false,
				search:false
			});
			$("#btnAdd").click(function(){
	            jQuery("#table").jqGrid('editGridRow','new',{height:280,reloadAfterSubmit:true,closeOnEscape:true,addedrow:false});
	        });
		}
		
		function searchTable() {
			var productName = $("#productName").val();

			$("#table").jqGrid('setGridParam', {
				url : "${basePath}/product",
				method : 'GET',
				postData : {
					//条件
					'productName' : productName
				}
			}).trigger("reloadGrid"); //重新载入   
		}
	</script>
</body>
</html>