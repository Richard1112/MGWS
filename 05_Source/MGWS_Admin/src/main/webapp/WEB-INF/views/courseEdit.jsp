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
.editTable{
	width: 100%;
}
.editTable ._label{
	width: 100px;
	text-align: right;
	padding: 5px 10px;
}
.editTable ._cont{
	text-align: left;
	padding: 5px 10px;
}
</style>
<script>
	function save(){
		var releaseFlg = $("#releaseFlg").val();
		var recruitjobtitle = $("#recruitjobtitle").val();
		var recruitNumber = $("#recruitNumber").val();
		var recruitLocale = $("#recruitLocale").val();
		var recruitObject = $("#recruitObject").val();
		var recruitDetails = $("#recruitDetails").val();
		if (releaseFlg==""){
			alert("请选择开放标识！");
			return;
		}
		if (recruitjobtitle==""){
			alert("请输入课程名称！");
			return;
		}

		document.mainForm.submit();
	}
</script>
</head>
<body>
	<form action="${basePath}/course" method="post" name="mainForm" class="sidebar-form"
		style="border: none;">
		<div class="input-group" style="margin: 15px 25px; min-width: 240px;">
			<table class="editTable">
				<tr>
					<td class="_label">开放标识</td>
					<td class="_cont"><select name="releaseFlg" class="form-control"
						style="background: #F7F8F9;" placeholder="开放标识" id="releaseFlg">
							<option value=""></option>
							<option value="0">暂存</option>
							<option value="1">发布</option>
							<option value="2">关闭</option>
					</select></td>
				</tr>
				<tr>
					<td class="_label">课程名称</td>
					<td class="_cont"><input type="text" name="recruitJobTitle"
						class="form-control" style="background: #F7F8F9;" maxlength="100"
						placeholder="课程名称" id="recruitJobTitle"></td>
				</tr>
				<tr>
					<td class="_label">课程详情</td>
					<td class="_cont"><textarea name="recruitDetails" class="form-control"
							style="background: #F7F8F9;" rows="5" cols="30"
							id="recruitDetails"></td>
				</tr>
				<tr>
					<td colspan="2"><span class="input-group-btn">
							<button type="button" name="search" id="search-btn"
								style="background: #F7F8F9;" class="btn btn-flat"
								onclick="save();">
								<i class="fa fa-search"></i>
							</button>
					</span></td>
				</tr>
			</table>
		</div>
	</form>

</body>
</html>