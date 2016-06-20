<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<html>
<head>
<link rel="stylesheet"
	href="${basePath}/static/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${basePath}/static/dist/css/skins/_all-skins.css">
<link rel="stylesheet"
	href="${basePath}/static/font/css/font-awesome.css">
<link rel="stylesheet"
	href="${basePath}/static/bootstrap/css/bootstrap-addtabs.css">
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
</style>
</head>
<body>
	<form action="#" method="get" class="sidebar-form"
		style="border: none;">
		<div class="input-group" style="margin: 15px 25px; width: 95%;">
			<table class="search_table">
				<tr>
					<td style="width: 200px"><input type="text" name="courseName"
						class="form-control" style="background: #fff;width: 200px"
						placeholder="课程名称" id="courseName"> <span
						class="input-group-btn">

							<button type="button" name="search" id="search-btn"
								style="background: #fff; margin-left: -40px;margin-top:3px;"
								class="btn btn-flat"
								onclick="searchTable();">
								<i class="fa fa-search"></i>
							</button>
					</span></td>
					<td style="width: 100px"><select name="releaseFlg"
						class="form-control" style="width: 100px;background: #fff;"
						placeholder="开放标识" id="releaseFlg">
							<option value="">全部</option>
							<option value="0">暂存</option>
							<option value="1">发布</option>
							<option value="2">关闭</option>
					</select></td>
					<td align="right"></td>
				</tr>
			</table>
		</div>
	</form>

	<table id="table"></table>
	<div id="pager"></div>

	<script type="text/javascript">
		$(function() {
			pageInit();
		});
		function pageInit() {
			jQuery("#table").jqGrid({
				url : '${basePath}/course',
				method : "GET",
				datatype : "json",
				colNames : [ '', '课程编号', '发布时间', '开放标识', '课程名称', '课程详情' ],
				colModel : [ {
					name : 'no',
					index : 'no',
					hidden : true,
					sortable : true
				}, {
					name : 'courseno',
					index : 'courseno',
					width : 90,
					align : "left",
					editable : true,
					sortable : true
				}, {
					name : 'releasedate',
					index : 'releasedate',
					width : 80,
					align : "left",
					editable : true,
					sortable : true
				}, {
					name : 'releaseflg',
					index : 'releaseflg',
					width : 80,
					align : "left",
					editable : true,
					sortable : true
				}, {
					name : 'coursename',
					index : 'coursename',
					width : 80,
					align : "left",
					editable : true,
					sortable : true
				}, {
					name : 'coursedetails',
					index : 'coursedetails',
					width : 180,
					align : "left",
					edittype : "textarea",
					editoptions : {rows : "5",cols : "50"},
					editable : true,
					sortable : true
				} ],
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
				editurl : "${basePath}/courseEdit",
				caption : "",
				loadComplete : function() {
					var objWindow = $(window);
					var brsWindow = objWindow.width();
					var brsHindow = objWindow.height();
					$("#table").jqGrid('setGridHeight', brsHindow - 150);
				}
			});
			jQuery("#table").jqGrid('navGrid', "#pager", {
				edit : true,
				add : true,
				del : true
			});
		}
		function searchTable() {
			var courseName = $("#courseName").val();
			var releaseFlg = $("#releaseFlg").val();

			$("#table").jqGrid('setGridParam', {
				url : "${basePath}/course",
				method : 'GET',
				postData : {
					//条件
					'courseName' : courseName,
					'releaseFlg' : releaseFlg
				//,'releaseDateF' : releaseDateF
				//,'releaseDateT' : releaseDateT
				}
			}).trigger("reloadGrid"); //重新载入   
		}
	</script>
</body>
</html>