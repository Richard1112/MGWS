<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户信息</title>
<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/css/rewriteboots.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
<link href="${ctx }/css/user-common.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function saveValue(param) {
		var targetform = document.forms[0];
		targetform.action = "${pageContext.request.contextPath}/basic/update";
		targetform.submit();
	}
	function back(){
		window.location="${pageContext.request.contextPath}/products/init";
	}
</script>
</head>
<body>
	<div class="content-wrapper page-container" style="min-height: 600px;">
		<div class="page-content-wrapper">
			<div class="page-content">
				
				<div class="form-body">
					
					<div class="form-group textleft" style="margin-bottom:0;">
						<div style="width: 15%; float: right; text-align: right">
							<button type="button" class="btn green mybtn"
								onclick="back()">
								<i class="fa fa-cancle"></i> Back
							</button>
							<button type="button" class="btn green mybtn"
								onclick="saveValue()">
								<i class="fa fa-save"></i> Save
							</button>
						</div>
					</div>
					</br>
					<h4 class="form-section"></h4>
					<div class="table-scrollable" style="border:none;">
						<form:form action="" method="post" id="userForm"
							modelAttribute="userBasicInfo" class="demoform">
							<c:if test='${division=="0" }'>
								<table id="individual" class="table table-striped table-bordered table-hover">
									<tbody>
										<tr>
											<td>编号：</td>
											<td><form:input class="text userName_input" path="customerNo" readonly="true" /></td>
										</tr>
										<tr>
											<td>手机号：</td>
											<td><form:input class="text userName_input" path="loginId" readonly="true" /></td>
										</tr>
										<tr>
											<td>姓：</td>
											<td><form:input class="text userName_input" path="cnSurName" /></td>
										</tr>
										<tr>
											<td>名：</td>
											<td><form:input class="text userName_input" path="cnGivenName" /></td>
										</tr>
										<tr>
											<td>性别：</td>
											<td>
											<label class="radio-inline">
											<form:radiobutton path="sex" id="sex0" value="0"></form:radiobutton>
											男
											</label>
											<label class="radio-inline">
											<form:radiobutton path="sex" id="sex1" value="1"></form:radiobutton>
											女
											</label>
											</td>
										</tr>
									</tbody>
								</table>
							</c:if>
							<c:if test='${division=="1" }'>
								<table id="enterprise" class="table table-striped table-bordered table-hover">
									<tbody>
										<tr>
											<td>编号：</td>
											<td><form:input class="text userName_input" path="customerNo" readonly="true" /></td>
										</tr>
										<tr>
											<td>企业邮箱：</td>
											<td><form:input class="text userName_input" path="loginId" readonly="true" /></td>
										</tr>
										<tr>
											<td>企业名称：</td>
											<td><form:input class="text userName_input" path="cnName" /></td>
										</tr>
									</tbody>
								</table>
							</c:if>
							<form:hidden path="division" />
							<form:hidden path="id" />
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>