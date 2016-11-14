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
	<title>资产管理</title>
	<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/user-common.css" rel="stylesheet" type="text/css">
	<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${ctx }/js/user-common.js" type="text/javascript"></script>
	<script type="text/javascript">
		function userLogin(param) {
			var targetform = document.forms[0];
			clear();
			if (param == "login") {
				if (validate()) {
					targetform.action = "${pageContext.request.contextPath}/Login/UserLogin";
					targetform.submit();
				}
			}
		}

		function validate() {
			var userid = '请输入用户名！';
			var password = '请输入密码！';
			var code = '请输入验证码！';

			var flg = true;
			if ($("#userId").val() == "") {
				$("#userIdCheckSpan").append(userid);
				flg = false;
			}
			if ($("#userPassword").val() == "") {
				$("#passwordCheckSpan").append(password);
				flg = false;
			}
			//if ($("#partaCode").val() == "") {
			//	$("#codeCheckSpan").append(code);
			//	flg = false;
			//}
			return flg;
		}
		function clear() {
			var errorImg = '<img src="${pageContext.request.contextPath}/images/error/error.png"/>';
			$("#userIdCheckSpan").html(errorImg);
			$("#passwordCheckSpan").html(errorImg);
			$("#codeCheckSpan").html(errorImg);
		}
	</script>
</head>
<body>
<div class="warp1">
	<table cellpadding="0" cellspacing="0" border="0" class="login_outter_table">
		<tr>
			<td class="login_outter_ico_td" align="right">
				<img src="<c:url value='/images/login/login_left_ico.png'/>" />
			</td>
			<td>
				<div class="login_div common_shadow" style="margin: 0 auto;">
					<table class="login_header_t" style="">
						<tr>
								<td align="left">
									用户登录
								</td>
								<td style="">
									<div class="lg_regist">
										没有账号？<a
											href="${pageContext.request.contextPath}/Login/registInit" style="color:#fff;">立即注册</a>
									</div>
								</td>
							</tr>
					</table>
					<br/>
					<form:form action="" method="post" id="userForm"
						modelAttribute="loginInfoDto" class="demoform">
						<table cellpadding="0" cellspacing="0" border="0"
							class="login_table">
							
							<tr>
								<td colspan="2">
									<form:input class="text userName_input" path="userId"
										placeholder='请输入个人用户名或企业邮箱' /><span
									id="userIdCheckSpan" class="error" onmouseover="makeMesDiv(this)" onmouseout="removeMesDiv()">
									<form:errors
											path="userId" /><img src="<c:url value='/images/error/error.png'/>"/></span>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<form:password class="text userName_input" path="userPassword"
										placeholder='请输入密码' value="123456" /><span
									id="passwordCheckSpan" class="error" onmouseover="makeMesDiv(this)" onmouseout="removeMesDiv()"><form:errors
											path="userPassword" /><img src="<c:url value='/images/error/error.png'/>"/></span>
								</td>
							</tr>
							
							<tr>
								<td colspan="2" style="text-align:center;"><input type="button" 
									class="login_btn" onclick="userLogin('login')" /></td>
							</tr>
						</table>
						
					</form:form>
				</div>
			</td>
		</tr>
	</table>
</div>
</body>
</html>