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
<script type="text/javascript" charset="utf-8"
	src="${basePath}/static/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${basePath}/static/ueditor/ueditor.all.js">
</script>
<script type="text/javascript" charset="utf-8"
	src="${basePath}/static/ueditor/lang/zh-cn/zh-cn.js"></script>
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
</style>
<script>
	function save() {
		var releaseFlg = $("#releaseflg").val();
		var recruitjobtitle = $("#recruitjobtitle").val();
		var recruitNumber = $("#recruitnumber").val();
		var recruitLocale = $("#recruitlocale").val();
		var recruitObject = $("#recruitobject").val();
		var recruitDetails = $("#recruitdetails").val();
		if (releaseFlg == "") {
			alert("请选择开放标识！");
			return;
		}
		if (recruitjobtitle == "") {
			alert("请输入招聘职位！");
			return;
		}
		if (recruitNumber == "") {
			alert("请输入招聘人数！");
			return;
		} else {
			var r,re;
	        re = /\d*/i; //\d表示数字,*表示匹配多个数字
	        r = recruitNumber.match(re);
	        
	        if (r!=recruitNumber){
	        	alert("招聘人数必须是数字！");
	        	return;
	        }
		}
		if (recruitObject == "") {
			alert("请输入招聘对象！");
			return;
		}
		var content = UE.getEditor('editor').getContent();
		$("#recruitdetails").val(content);
		document.mainForm.submit();
	}
</script>
</head>
<body>
	<form:form id="mainForm" name="mainForm"
		action="${basePath}/recruitmentEdit" method="post"
		commandName="tRecruitmentInfo" modelAttribute="tRecruitmentInfo">
		<div class="input-group" style="margin: 0px 25px; padding-top:15px; min-width: 600px; width:100%;">
			<table class="editTable">
				<tr>
					<td colspan="2" align="left"><a href="javascript:void(0)"
						onclick="save();" class="btn btn-info">保存</a> &nbsp; <a
						href="${pageContext.request.contextPath}/recruitmentInit"
						class="btn btn-default">取消</a></td>
				</tr>
				<tr>
					<td class="_label">开放标识</td>
					<td class="_cont"><form:select path="releaseflg"
							class="form-control" style="background: #fff;width:100px;"
							placeholder="开放标识" id="releaseFlg">
							<form:option value=""></form:option>
							<form:option value="0">暂存</form:option>
							<form:option value="1">发布</form:option>
							<form:option value="2">关闭</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td class="_label">招聘职位</td>
					<td class="_cont"><form:input path="recruitjobtitle"
							class="form-control" style="background: #fff;width:100px;" /></td>
				</tr>
				<tr>
					<td class="_label">招聘人数</td>
					<td class="_cont"><form:input path="recruitnumber"
							class="form-control" style="background: #fff;width:100px;" /></td>
				</tr>
				<tr>
					<td class="_label">招聘对象</td>
					<td class="_cont"><form:input path="recruitobject"
							class="form-control" style="background: #fff;width:200px;" /></td>
				</tr>
				<tr>
					<td class="_label">招聘地点</td>
					<td class="_cont"><form:input path="recruitlocale"
							class="form-control" style="background: #fff;width:300px;" /></td>
				</tr>
				<tr>
					<td class="_label" valign="top">招聘详情</td>
					<td class="_cont"><script id="editor" type="text/plain"
							style="width: 98%; height: 160px;">
									${tRecruitmentInfo.recruitdetails }
								</script> <form:hidden path="recruitdetails" /></td>
				</tr>
			</table>
			<form:hidden path="no" />
			<form:hidden path="recruitno" />
		</div>
	</form:form>
	<script type="text/javascript">
		var ue = UE.getEditor('editor');
	</script>
</body>
</html>