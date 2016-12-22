<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<html>
<head>
<link rel="stylesheet"
	href="${basePath}/static/jqGrid/css/ui.jqgrid.css" />
<link rel="stylesheet"
	href="${basePath}/static/jqGrid/css/jquery-ui-1.10.3.full.min.css" />
<link href="${basePath}/static/upload/uploadify.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src='${basePath}/static/upload/jquery.uploadifive.js'></script>
<script type="text/javascript" charset="utf-8"
	src="${basePath}/static/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${basePath}/static/ueditor/ueditor.all.js"></script>
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
.up_btn{
  -webkit-box-shadow: none;
  box-shadow: none;
  border-radius: 4px;
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
			alert("请输入资产名称！");
			return;
		}
		var content = UE.getEditor('editor').getContent();
		$("#assetdetails").val(content);
		document.mainForm.submit();
	}
</script>
</head>
<body>
	<form:form id="mainForm" name="mainForm"
		action="${basePath}/assetCartEdit" method="post"
		commandName="tAssetCart" modelAttribute="tAssetCart">
		<div class="input-group" style="margin: 15px 25px; min-width: 240px;">
			<table class="editTable" border="0">
				<tr>
					<td colspan="3" align="left"><a href="javascript:void(0)"
						onclick="save();" class="btn btn-info">保存</a> &nbsp; <a
						href="${pageContext.request.contextPath}/assetCartInit"
						class="btn btn-default">取消</a></td>
				</tr>
				<tr>
					<td class="_label">开放标识</td>
					<td class="_cont" colspan="2"><form:select path="releaseflg" class="form-control"
						style="background: #fff;width:100px;">
							<form:option value=""></form:option>
							<form:option value="0">暂存</form:option>
							<form:option value="1">发布</form:option>
							<form:option value="2">关闭</form:option>
					</form:select></td>
				</tr>
				<tr>
					<td class="_label">资产名称</td>
					<td class="_cont" colspan="2"><form:input path="assetname"
						class="form-control" style="background: #fff; width:200px;" maxlength="200"/></td>
				</tr>
				<tr>
					<td class="_label">资产图片</td>
					<td class="_cont" style="width:100px;">
					<input type="file" name="uploadify" id="uploadify"/></td>
					<td><div id="queue"></div>
					<form:hidden path="assetpic"/></td>
				</tr>
				<tr>
					<td class="_label" valign="top">资产详情</td>
					<td class="_cont" colspan="2"><script id="editor" type="text/plain"
							style="width: 98%; height: 200px;">${tAssetCart.assetdetails }</script> <form:hidden path="assetdetails" /></td>
				</tr>
			</table>
			<form:hidden path="no" />
			<form:hidden path="partnerno" />
		</div>
	</form:form>
	<script type="text/javascript">
		var ue = UE.getEditor('editor');
		var folder = '/picUpload/assetCart/';
		$('#uploadify').uploadifive({
			'auto'             : true,
			'queueID'          : 'queue',
			'uploadScript'     : '${pageContext.request.contextPath}/servlet/Upload?folder='+folder,
			'buttonText'       : '上传',
			'buttonClass'      : 'up_btn',
			'multi'            : true,
			'fileSizeLimit'    : '20MB',
			'queueSizeLimit'    : 3,
			'simUploadLimit'   : 2,
			'removeCompleted'  : false,
			'removeTimeout'    : 1,
			'width'            : 90,
			'height'           : 38,
			'onFallback'       : function() {alert("对不起，你的浏览器版本太低，请使用更高版本的浏览器！");},
			'onUploadComplete' : function(file, data) {
				var newName = decodeURI(decodeURI(data, "utf-8"));
				
				var fileNames = $("#assetpic").val();
				if(fileNames!=""){
					fileNames += "," + newName;
				}
				$("#assetpic").val(fileNames);
			}
		});
	</script>
</body>
</html>