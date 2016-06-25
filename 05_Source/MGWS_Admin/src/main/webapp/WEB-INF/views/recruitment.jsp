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
		style="border: none;">
		<div class="input-group" style="margin: 15px 25px; width: 95%;">
			<table class="search_table">
				<tr>
					<td style="width:200px"><input type="text" name="recruitjobtitle"
						class="form-control" style="background: #fff;width:200px"
						placeholder="招聘职位" id="recruitjobtitle"><span class="input-group-btn">
						<button type="button" name="search" id="search-btn"
							style="background: #fff;margin-left:-40px;margin-top:3px;"
							class="btn btn-flat" onclick="searchTable();">
							<i class="fa fa-search"></i>
						</button></span></td>
					<td style="width:100px"><select name="releaseFlg" class="form-control"
						style="background: #fff;width:100px"
						placeholder="开放标识" id="releaseFlg">
							<option value="">全部</option>
							<option value="0">暂存</option>
							<option value="1">发布</option>
							<option value="2">关闭</option>
					</select></td>
					<td align="right">
					<a href="${basePath}/recruitmentAddInit" class="btn btn-info" title="招聘信息-新增">新增</a>
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
						url : '${basePath}/recruitment',
						method: "GET",
						datatype : "json",
						colNames : ['', '招聘编号', '发布时间', '开放标识', '招聘职位', '招聘人数', '招聘地点', '招聘对象',"","" ],
						colModel : [ {
							name : 'no',
							index : 'no',
							hidden : true,
							sortable : true
						}, {
							name : 'recruitno',
							index : 'recruitno',
							width : 80,
							align : "left",
							editoptions : {
								readonly : true,
								size : 10
							},
							editable : false,
							sortable : true
						}, {
							name : 'releasedate_v',
							index : 'releasedate_v',
							width : 50,
							align : "center",
							editoptions : {readonly : true,size : 10},
							editable : false,
							sortable : true
						}, {
							name : 'releaseflg_v',
							index : 'releaseflg_v',
							width : 50,
							edittype : "select",
							editoptions : {value : "0:暂存;1:发布;2:关闭"},
							align : "center",
							editable : true,
							sortable : true
						}, {
							name : 'recruitjobtitle',
							index : 'recruitlobtitle',
							width : 50,
							align : "left",
							editoptions : {size : 30},
							editable : true,
							sortable : true
						}, {
							name : 'recruitnumber',
							index : 'recruitnumber',
							width : 50,
							editoptions : {size : 10},
							align : "center",
							editable : true,
							sortable : true
						}, {
							name : 'recruitlocale',
							index : 'recruitlocale',
							width : 80,
							editoptions : {size : 50},
							align : "left",
							editable : true,
							sortable : true
						}, {
							name : 'recruitobject',
							index : 'recruitobject',
							width : 70,
							editoptions : {size : 50},
							align : "left",
							editable : true,
							sortable : true
						}, {
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
						} ],
						rowNum : 20,
						autowidth : true,
						rowList : [ 20, 30,50 ],
						pager : '#pager',
						sortname : 'id',
						viewrecords : true,
						sortorder : "desc",
						editurl : "${basePath}/recruitmentEdit",
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
								modify = "<a href='${basePath}/recruitment/"+model.no+"' style='color:#f60'>修改</a>";
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

		function Delete(no){
			if(confirm("确定删除吗？")){
				jQuery.ajax({
					type : 'POST',
					contentType : 'application/json',
					url : '${pageContext.request.contextPath}/recruitmentDelete?no='+no,
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
				url : "${basePath}/recruitment",
				method: 'GET',
				postData : {
					//条件
					'recruitjobtitle' : recruitjobtitle
					,'releaseFlg' : releaseFlg
					//,'releaseDateF' : releaseDateF
					//,'releaseDateT' : releaseDateT
				}
			}).trigger("reloadGrid"); //重新载入   
		}
	</script>
</body>
</html>