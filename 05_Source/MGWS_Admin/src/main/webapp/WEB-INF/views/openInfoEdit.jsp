<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

.editTable {
	width: 100%;
}

.editTable ._label {
	width: 150px;
	text-align: right;
	padding: 5px 10px;
}

.editTable ._cont {
	text-align: left;
	padding: 5px 10px;
}

.file-input .input-group {
	margin-top:80px;
}
</style>
<script>
	function save() {
		var releaseFlg = $("#releaseflg").val();
		var title = $("#title").val();
		if (releaseFlg == "") {
			alert("请选择开放标识！");
			return;
		}
		if (title == "") {
			alert("请输入投资人签署标题！");
			return;
		}
		document.mainForm.submit();
	}
</script>
</head>
<body>
	<form:form id="mainForm" name="mainForm"
		action="${basePath}/openInfoEdit" method="post"
		commandName="tOpenInfo" modelAttribute="tOpenInfo">
		<div class="input-group" style="margin: 0px 25px; padding-top:15px; min-width: 600px; width:100%;">
			<table class="editTable">
				<tr>
					<td colspan="2" align="left"><a href="javascript:void(0)"
						onclick="save();" class="btn btn-info">保存</a> &nbsp; <a
						href="${pageContext.request.contextPath}/openInfoInit"
						class="btn btn-default">取消</a></td>
				</tr>
				<tr>
					<td class="_label">开放标识</td>
					<td class="_cont"><form:select path="releaseFlg"
							class="form-control" style="background: #fff;width:100px;"
							placeholder="开放标识" id="releaseFlg">
							<form:option value=""></form:option>
							<form:option value="0">暂存</form:option>
							<form:option value="1">发布</form:option>
							<form:option value="2">关闭</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td class="_label">信息公式标题</td>
					<td class="_cont"><form:input path="title"
							class="form-control" style="background: #fff;width:800px;" maxlength="100"/></td>
				</tr>
				<tr>
					<td class="_label" style="padding-top: 100">信息公式文件</td>
					<td class="_cont">
					<form:hidden path="fileName"/>
					<input id="fileNameUpdate" type="file" name="file" class="file" data-max-file-count="1"/>
					</td>
				</tr>
			</table>
			<form:hidden path="no" />
		</div>
	</form:form>
	
</body>
<myfooter>
	<script type="text/javascript">
	var previewThumbJson = [];
	var preThumbConfigList = [];
	var saveImgUrl = "${saveOpenInfoPDFUrl}";
	var openInfoNo = $("#no").val();
	if ($("#fileName").val() != null && $("#fileName").val() != "") {
		var tempPdf = '<a target="_blank" href="{0}">{1}</a>'
		previewThumbJson.push(tempPdf.replace('{0}',saveImgUrl + $("#fileName").val()).replace('{1}', $("#title").val()));
		var tjson = {caption: '', // 展示的文件名  
                width: '120px',   
                url: '${basePath}/openInfoDeleteFile', // 删除url  
                key: $("#fileName").val(), // 删除是Ajax向后台传递的参数  
                extra: {fileId: $("#fileName").val(), openInfoNo: openInfoNo} 
            };
		preThumbConfigList.push(tjson);
	}
	$("#fileNameUpdate").fileinput({
        uploadUrl: '${pageContext.request.contextPath}/openInfoUpdateFile?openInfoNo='+openInfoNo,
        allowedFileExtensions : ['pdf'],
        uploadAsync: true,  
		showCaption: true,  
		showUpload: true,//是否显示上传按钮
		showRemove: false,//是否显示删除按钮  
		showCaption: true,//是否显示输入框
		showPreview:true,   
		showCancel:true,  
		dropZoneEnabled: false,
		minFileCount: 1,
		maxFileCount: 1,
		initialPreviewShowDelete:true,  
		initialPreview: previewThumbJson,
        allowedFileTypes: ['pdf'],
        initialPreviewConfig: preThumbConfigList,  
        slugCallback: function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
	}).on("fileuploaded", function(event, outData) {  
        //文件上传成功后返回的数据， 此处我只保存返回文件的id  
        var result = outData.response.fileId;  
        // 对应的input 赋值  
        $("#fileName").val(result);
        
 	});
	</script>


</myfooter>
</html>