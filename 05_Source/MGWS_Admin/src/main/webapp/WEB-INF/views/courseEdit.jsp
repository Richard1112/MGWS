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
<script src='${basePath}/static/upload/jquery.uploadifive.js'></script>
<script type="text/javascript" charset="utf-8"
	src="${basePath}/static/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${basePath}/static/ueditor/ueditor.all.js"></script>
<style type="text/css">
/* Jqgrid */
.ui-jqgrid-sortable {
	text-align: center;
}

.editTable {
	width: 100%;
}

.editTable ._label {
	width: 100px;
	text-align: right;
	padding: 5px 10px;
}

.editTable ._cont {
	text-align: left;
	padding: 5px 10px;
}
.up_btn{
  -webkit-box-shadow: none;
  box-shadow: none;
  border-radius: 4px;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		var folder = '/picUpload/course/';
		$('#uploadify').uploadifive({
			'auto'             : true,
			'queueID'          : 'queue',
			'uploadScript'     : '${pageContext.request.contextPath}/servlet/Upload?folder='+folder,
			'buttonText'       : '上传',
			'buttonClass'      : 'up_btn',
			'multi'            : true,
			'fileSizeLimit'    : '20MB',
			'queueSizeLimit'    : 3,
			'simUploadLimit'   : 3,
			'removeCompleted'  : false,
			'removeTimeout'    : 1,
			'width'            : 90,
			'height'           : 38,
			'onFallback'       : function() {alert("对不起，你的浏览器版本太低，请使用更高版本的浏览器！");},
			'onUploadComplete' : function(file, data) {
				var newName = decodeURI(decodeURI(data, "utf-8"));
				var fileNames = $("#coursepic").val();
				if(fileNames!=""){
					fileNames += "," + newName;
				} else {
					fileNames = newName;
				}
				$("#coursepic").val(fileNames);
			},
			'onCancel': function(file){
			      /* 注意：取消后应重新设置uploadLimit */
			      $data= $(this).data('uploadifive'),
			      settings = $data.settings;
			      settings.uploadLimit++;
			      alert(file.name + " 已取消上传~!");
			}
		});
	});
	function save() {
		var releaseFlg = $("#releaseflg").val();
		var coursename = $("#coursename").val();
		var recruitDetails = $("#coursedetails").val();
		if (releaseFlg == "") {
			alert("请选择开放标识！");
			return;
		}
		if (coursename == "") {
			alert("请输入课程名称！");
			return;
		}
		var content = UE.getEditor('editor').getContent();
		$("#coursedetails").val(content);
		document.mainForm.submit();
	}
</script>
</head>
<body>
	<form:form id="mainForm" name="mainForm"
		action="${basePath}/courseEdit" method="post"
		commandName="tCourseInfo" modelAttribute="tCourseInfo">
		<div class="input-group" style="margin: 15px 25px; min-width: 240px;">
			<table class="editTable" border="0">
				<tr>
					<td colspan="3" align="left"><a href="javascript:void(0)"
						onclick="save();" class="btn btn-info">保存</a> &nbsp; <a
						href="${pageContext.request.contextPath}/courseInit"
						class="btn btn-default">取消</a></td>
				</tr>
				<tr>
					<td class="_label">开放标识</td>
					<td class="_cont" colspan="2" ><form:select path="releaseflg"
							class="form-control" style="background: #fff;width:100px;">
							<form:option value=""></form:option>
							<form:option value="0">暂存</form:option>
							<form:option value="1">发布</form:option>
							<form:option value="2">关闭</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td class="_label">课程名称</td>
					<td class="_cont" colspan="2"><form:input path="coursename"
							class="form-control" style="background: #fff;width:200px;" maxlength="200" /></td>
				</tr>
				<tr>
					<td class="_label">课程图片</td>
					<td class="_cont" style="width:100px;">
					<input type="file" name="uploadify" id="uploadify"/>
					</td><td><div id="queue"></div>
					<form:hidden path="coursepic"/></td>
				</tr>
				<tr>
					<td class="_label" valign="top">课程详情</td>
					<td class="_cont" colspan="2"><script id="editor" type="text/plain"
							style="width: 98%; height: 200px;">${tCourseInfo.coursedetails }</script> <form:hidden path="coursedetails" /></td>
				</tr>
			</table>
			<form:hidden path="no" />
			<form:hidden path="courseno" />
		</div>
	</form:form>
	<script type="text/javascript">
		var ue = UE.getEditor('editor');
	</script>
</body>
</html>