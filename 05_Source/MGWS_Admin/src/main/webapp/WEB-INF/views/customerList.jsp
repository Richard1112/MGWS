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
		style="border: none;margin-top:0px;">
		<div class="input-group" style="margin: 0px 25px;padding-top:15px; width: 95%;">
			<table class="search_table">
				<tr>
					<td style="width: 200px"><input type="text"
						name="customerName" class="form-control"
						style="background: #fff;width: 200px;" placeholder="客户名称" id="customerName">
						<span class="input-group-btn">
							<button type="button" name="search" id="search-btn"
								style="background: #fff; margin-left: -40px;margin-top:3px;"
								class="btn btn-flat"
								onclick="searchTable();">
								<i class="fa fa-search"></i>
							</button>
					</span></td>
					<td style="width: 100px"><select name="customerType"
						class="form-control"
						style="background: #fff;width: 100px;" placeholder="客户类型" id="customerType">
							<option value="0">全部</option>
							<option value="1">个人</option>
							<option value="2">企业</option>
					</select></td>
					<td align="right">
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
				url : '${basePath}/customer',
				method : "GET",
				datatype : "json",
				colNames : [ '', '客户编号', '客户名称', '客户类型', '注册时间'],
				colModel : [ {
					name : 'no',
					index : 'no',
					hidden : true,
					sortable : false
				}, {
					name : 'customerNo',
					index : 'customerNo',
					width : 100,
					editable : false,
					sortable : false
				}, {
					name : 'customerName',
					index : 'customerName',
					width : 50,
					editable : false,
					sortable : false
				}, {
					name : 'customerType',
					index : 'customerType',
					width : 50,
					editable : false,
					sortable : false
				}, {
					name : 'registDate',
					index : 'registDate',
					width : 50,
					align : "center",
					editable : false,
					sortable : false
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
			var customerName = $("#customerName").val();
			var customerType = $("#customerType").val();

			$("#table").jqGrid('setGridParam', {
				url : "${basePath}/customer",
				method : 'GET',
				postData : {
					//条件
					'customerName' : encodeURI(customerName),
					'customerType' : customerType
				}
			}).trigger("reloadGrid"); //重新载入   
		}
	</script>
</body>
</html>