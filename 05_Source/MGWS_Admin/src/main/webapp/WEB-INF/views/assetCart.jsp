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
						style="background: #fff;width: 200px;" placeholder="资产名称" id="assetCartName">
						<span class="input-group-btn">
							<button type="button" name="search" id="search-btn"
								style="background: #fff; margin-left: -40px;margin-top:3px;"
								class="btn btn-flat"
								onclick="searchTable();">
								<i class="fa fa-search"></i>
							</button>
					</span></td>
					<td style="width: 100px"><select name="releaseFlg"
						class="form-control"
						style="background: #fff;width: 100px;" placeholder="开放标识" id="releaseFlg">
							<option value="">全部</option>
							<option value="0">暂存</option>
							<option value="1">发布</option>
							<option value="2">关闭</option>
					</select></td>
					<td align="right">
					<a href="${basePath}/assetCartAddInit" class="btn btn-info" title="课程信息-新增">新增</a>
					</td>
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
				url : '${basePath}/assetCart',
				method : "GET",
				datatype : "json",
				colNames : [ '', '资产编号', '发布时间', '开放标识code', '开放标识', '资产名称', '资产详情','','' ],
				colModel : [ {
					name : 'no',
					index : 'no',
					hidden : true,
					sortable : true
				}, {
					name : 'partnerno',
					index : 'partnerno',
					width : 100,
					editable : true,
					editoptions : {readonly : true,size : 10},
					sortable : true
				}, {
					name : 'releasedate_v',
					index : 'releasedate_v',
					width : 50,
					editable : true,
					editoptions : {readonly : true,size : 10},
					sortable : true
				}, {
					name : 'releaseflg',
					index : 'releaseflg',
					width : 50,
					edittype : "select",
					editoptions : {value : "0:暂存;1:发布;2:关闭"},
					align : "left",
					editable : true,
					hidden : true,
					sortable : true
				}, {
					name : 'releaseflg_v',
					index : 'releaseflg_v',
					width : 50,
					align : "left",
					edittype : "select",
					editoptions : {value : "0:暂存;1:发布;2:关闭"},
					editable : true,
					sortable : true
				}, {
					name : 'assetname',
					index : 'assetname',
					width : 80,
					align : "left",
					editable : true,
					sortable : true
				}, {
					name : 'assetdetails',
					index : 'assetdetails',
					width : 180,
					align : "left",
					edittype : "textarea",
					editoptions : {rows : "5",cols : "50"},
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
				gridComplete:function(){
					var ids = jQuery("#table").jqGrid("getDataIDs");
					for (var i=0;i<ids.length;i++){
						var id=ids[i];
						var model = jQuery("#table").jqGrid("getRowData",id);
						modify = "<a href='${basePath}/assetCart/"+model.no+"' style='color:#f60'>修改</a>";
						del = "<a href='javascript:void(0)' style='color:#f60' onclick='Delete("+model.no+")'>删除</a>";
						jQuery("#table").jqGrid("setRowData",ids[i],{Modify:modify,Delete:del});
					}
				},
				editurl : "${basePath}/assetCartEdit",
				caption : "",
				loadComplete : function() {
					var objWindow = $(window);
					var brsWindow = objWindow.width();
					var brsHindow = objWindow.height();
					$("#table").jqGrid('setGridHeight', brsHindow - 150);
					
				}
			});
			jQuery("#table").jqGrid('navGrid', "#pager", {
				edit : false,
				add : false,
				del : false
			});
		}
		function Delete(no){
			if(confirm("确定删除吗？")){
				jQuery.ajax({
					type : 'POST',
					contentType : 'application/json',
					url : '${pageContext.request.contextPath}/assetCartDelete?no='+no,
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
			var assetName = $("#assetcartname").val();
			var releaseFlg = $("#releaseflg").val();

			$("#table").jqGrid('setGridParam', {
				url : "${basePath}/assetCart",
				method : 'GET',
				postData : {
					//条件
					'assetName' : assetName,
					'releaseFlg' : releaseFlg
				//,'releaseDateF' : releaseDateF
				//,'releaseDateT' : releaseDateT
				}
			}).trigger("reloadGrid"); //重新载入   
		}
	</script>
</body>
</html>