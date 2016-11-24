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

</head>
<body>
	<form id="mainForm" name="mainForm"
		action="#" method="post">
		<div class="input-group" style="margin: 15px 25px; min-width: 240px;">
			<table class="editTable" border="0" style="width:100%">
				<tr>
					<td colspan="3" align="left"><a
						href="#"
						class="btn btn-default">返回</a></td>
				</tr>
				<tr>
					<td class="_label">产品ID</td>
					<td class="_cont" colspan="2" ><select id="productId"
							class="form-control" style="background: #fff;width:100px;">
							<c:forEach var="product" items="${ pList }"
							varStatus="step">
							<option value="${product.id }">${product.productName }</option>
						</c:forEach>
						</select></td>
				</tr>
				
				<tr>
					<td class="_label"></td>
					<td class="_cont" width="100">
					<input type="file" name="uploadify" id="uploadify"/>
					</td><td><div id="queue"></div>
					</td>
				</tr>
			</table>
		</div>
	</form>
	<script type="text/javascript">
		var productId = $("#productId").val();
		var folder = '/ExUpload/';
		$('#uploadify').uploadifive({
			'auto'             : true,
			'queueID'          : 'queue',
			'uploadScript'     : '${pageContext.request.contextPath}/servlet/ExUpload?folder='+folder+'&productId='+productId,
			'buttonText'       : '上传',
			'buttonClass'      : 'up_btn',
			'multi'            : true,
			'fileType'         :'application/vnd.ms-excel',
			'fileSizeLimit'    : '20MB',
			'queueSizeLimit'   : 1,
			'simUploadLimit'   : 1,
			'removeCompleted'  : true,
			'removeTimeout'    : 1,
			'width'            : 90,
			'height'           : 38,
			'onFallback'       : function() {alert("对不起，你的浏览器版本太低，请使用更高版本的浏览器！");},
			'onUploadComplete' : function(file, data) {
				
			},
			'onCancel': function(file){
			      /* 注意：取消后应重新设置uploadLimit */
			      $data= $(this).data('uploadifive'),
			      settings = $data.settings;
			      settings.uploadLimit++;
			      alert(file.name + " 已取消上传~!");
			}
		});
</script>
</body>
</html>