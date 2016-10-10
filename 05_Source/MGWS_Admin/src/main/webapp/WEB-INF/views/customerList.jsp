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
						name="assetCartName" class="form-control"
						style="background: #fff;width: 200px;" placeholder="客户名称" id="cumtomerName">
						<span class="input-group-btn">
							<button type="button" name="search" id="search-btn"
								style="background: #fff; margin-left: -40px;margin-top:3px;"
								class="btn btn-flat"
								onclick="searchTable();">
								<i class="fa fa-search"></i>
							</button>
					</span></td>
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
				url : '${basePath}/assetCart',
				method : "GET",
				datatype : "json",
				colNames : [ '', '客户编号', '客户区分',  '客户名称','注册时间'],
				colModel : [ {
					name : 'no',
					index : 'no',
					hidden : true,
					sortable : true
				}, {
					name : 'customerNo',
					index : 'customerNo',
					width : 100,
					editable : true,
					editoptions : {readonly : true,size : 10},
					sortable : true
				}, {
					name : 'division',
					index : 'division',
					width : 50,
					editable : true,
					editoptions : {readonly : true,size : 10},
					sortable : true
				}, {
					name : 'customerName',
					index : 'customerName',
					width : 50,
					align : "left",
					editable : true,
					sortable : true
				}, {
					name : 'registerDate',
					index : 'registerDate',
					width : 80,
					align : "left",
					editable : true,
					sortable : true
				}],
				rowNum : 20,
				autowidth : true,
				rowList : [ 20, 30, 50 ],
				pager : '#pager',
				sortname : 'id',
				viewrecords : true,
				sortorder : "desc",
				//后台返回数据
				jsonReader : { //server返回Json解析设定   
					root : "resultList", //json中数据列表   
					page : "currentPage",//当前页
					total : "totalPage",//总页数
					records : "totalSize",//总条数
					repeatitems : false,
					id : "0"
				},
				editurl : "",
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
				del : false
			});
		}
		
		function searchTable() {
			var cumtomerName = $("#cumtomerName").val();
			var dateFrom = $("#releaseflg").val();
			var dateTo = $("#releaseflg").val();

			$("#table").jqGrid('setGridParam', {
				url : "${basePath}/customer",
				method : 'GET',
				postData : {
					//条件
					'cumtomerName' : cumtomerName,
					'dateFrom' : dateFrom,
					'dateTo' : dateTo
				}
			}).trigger("reloadGrid"); //重新载入   
		}
	</script>
</body>
</html>