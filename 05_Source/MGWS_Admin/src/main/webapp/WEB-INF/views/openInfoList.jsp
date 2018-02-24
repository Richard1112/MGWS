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
	width:100%;
}
.search_table td {
	padding: 5px 10px;
}
#editmodtable{
	min-width:620px;
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
					<td align="right">
					<a href="${basePath}/openInfoAddInit" class="btn btn-info" title="信息公示-新增">新增</a>
					</td>
				</tr>
			</table>
			</span>
		</div>
	</form>

	<table id="table" class="data_table" style="font-size:12px;"></table>
	<div id="pager"></div>

	<script type="text/javascript">
		$(function() {
			pageInit();
		});
		function pageInit() {
			jQuery("#table").jqGrid(
					{
						url : '${basePath}/openInfo',
						method: "GET",
						datatype : "json",
						colNames : ['', '信息公示', '发布时间', '开放标识',"",""],
						colModel : [ {
							name : 'no',
							index : 'no',
							hidden : true,
							sortable : false
						}, {
							name : 'title',
							index : 'title',
							width : 80,
							align : "left",
							editoptions : {
								readonly : true,
								size : 10
							},
							editable : false,
							sortable : false
						}, {
							name : 'releaseDate',
							index : 'releaseDate',
							width : 50,
							align : "center",
							editoptions : {readonly : true,size : 10},
							editable : false,
							sortable : false
						}, {
							name : 'releaseFlg',
							index : 'releaseFlg',
							width : 50,
							formatter:releaseFlgFormatter,
							align : "center",
							editable : true,
							sortable : false
						} , {
							name : 'Modify',
							index : 'no',
							width : 30,
							align : "center",
							sortable : false
						}, {
							name : 'Delete',
							index : 'no',
							width : 30,
							align : "center",
							sortable : false
						}],
						rowNum : 20,
						autowidth : true,
						rowList : [ 20, 30,50 ],
						pager : '#pager',
						sortname : 'no',
						viewrecords : true,
						sortable:true,
						sortorder : "desc",
						editurl : "${basePath}/openInfoEdit",
						//后台返回数据
						jsonReader : { //server返回Json解析设定   
							root : "resultList", //json中数据列表   
							page : "currentPage",//当前页
							total : "totalPage",//总页数
							records : "totalSize",//总条数
							repeatitems : false,
							id : "0"
						},
						gridComplete:function(){
							var ids = jQuery("#table").jqGrid("getDataIDs");
							for (var i=0;i<ids.length;i++){
								var id=ids[i];
								var model = jQuery("#table").jqGrid("getRowData",id);
								modify = "<a href='${basePath}/openInfo/"+model.no+"' style='color:#f60'>修改</a>";
								del = "<a href='javascript:void(0)' style='color:#f60' onclick='Delete("+model.no+")'>删除</a>";
								jQuery("#table").jqGrid("setRowData",ids[i],{Modify:modify,Delete:del});
							}
						},
						caption : "",
						loadComplete : function() {
							var objWindow = $(window);
							var brsWindow = objWindow.width();
							var brsHindow = objWindow.height();
							$("#table").jqGrid('setGridHeight', brsHindow-250);
						}
					});
			jQuery("#table").jqGrid('navGrid', "#pager", {
				edit : false,
				add : false,
				del : false,
				search : false
			});
		}
		
		function releaseFlgFormatter(cellvalue, options, rowObject){
			if (cellvalue == '0') {
				return "暂存";
			} else if (cellvalue == '1') {
				return "发布";
			} else {
				return "关闭";
			}
		}

		function Delete(no){
			if(confirm("确定删除吗？")){
				jQuery.ajax({
					type : 'POST',
					contentType : 'application/json',
					url : '${pageContext.request.contextPath}/openInfoDelete?no='+no,
					cache : false,
					async : false,
					dataType : 'json',
					success : function(data) {
						if(data.isSuccess){
							searchTable();
						} else{
							alert("ERROR");
						}
					},
					error : function(data) {
						
					}
				});	
			}
		}
		function searchTable() {
			var recruitjobtitle = $("#recruitjobtitle").val();
			var releaseFlg = $("#releaseFlg").val();

			$("#table").jqGrid('setGridParam', {
				url : "${basePath}/openInfo",
				method: 'POST',
				postData : {
					//条件
					'recruitjobtitle' : encodeURI(recruitjobtitle)
					,'releaseFlg' : releaseFlg
					//,'releaseDateF' : releaseDateF
					//,'releaseDateT' : releaseDateT
				}
			}).trigger("reloadGrid"); //重新载入   
		}
	</script>
</body>
</html>