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
<title>用户注册</title>
<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/css/rewriteboots.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
<link href="${ctx }/css/user-common.css" rel="stylesheet"
	type="text/css">
<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${ctx }/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="${ctx }/js/user-common.js"
	type="text/javascript"></script>
<script type="text/javascript">
function submitForm() {
	cleanMsg();
	if (validate()) {
		var targetform = document.forms[0];
		targetform.action = "${pageContext.request.contextPath}/Login/regist";
		targetform.submit();
	}

}
function validate() {

	var flg = true;

	if ($("#division").val() == '0') {
		if ($("#userId").val() == "") {
			var errorMes = "请输入用户名！";
			$("#useIdCheckSpan").append(errorMes);
			flg = false;
		}
	} else {
		if ($("#userIdForCo").val() == "") {
			var errorMes = "请输入用户名！";
			$("#userIdForCoCheckSpan").append(errorMes);
			flg = false;
		}
	}
	if ($("#userPassword").val() == "") {
		var errorMes = "请输入密码！";
		$("#passwordCheckSpan").append(errorMes);
		flg = false;
	}
	if ($("#confirmPassword").val() == "") {
		var errorMes = "请输入确认密码！";
		$("#cPasswordCheckSpan").append(errorMes);
		flg = false;
	}

	if ($("#userPassword").val() != "" && $("#confirmPassword").val() != "") {
		if ($("#confirmPassword").val() != $("#userPassword").val()) {
			var errorMes = "两次输入密码不一致！";
			$("#cPasswordCheckSpan").append(errorMes);
			flg = false;
		}
	}

	if (document.getElementsByName("wrong").length > 0) {
		flg = false;
	}

	return flg;
}
function cleanMsg() {
	$("span[class='error']").each(function() {
		$(this).html('<img src="${pageContext.request.contextPath}/images/error/error.png"/>');
	});
}
function valueCheck(divi, obj) {
	if (obj.value == "") {

		return;
	}
	jQuery.ajax({
		type : 'GET',
		contentType : 'application/json',
		url : '${pageContext.request.contextPath}/Login/valueCheck?value='
				+ obj.value + '&division=' + divi,
		cache : false,
		dataType : 'json',
		success : function(data) {
			if (!data.isException) {
				var html = "";
				if (!data.flg) {
				} else {
					html += data.mes;
				}
				if (divi == 0) {
					$("#useIdCheckSpan").html(html);
				} else if (divi == 1) {
					$("#companyNameCheckSpan").html(html);
				}
			}
		},
		error : function(data) {
		}
	});
}
function registAction(id) {
	if (id == 0) {
		cleanMsg();
		$("#division").val(0);
		$("#userId_co_tr").css({display:"none"});
		$("#userId_tr").removeAttr("style");
	
		$("#persion_td").addClass("top_title_selected");
		$("#company_td").removeClass("top_title_selected");
		$("#persion_td").css({borderBottom:"0px"});
		$("#company_td").css({borderBottom:"1px solid #c6c6c6"});
		$("#persion_div").css({display:""});
		$("#company_div").css({display:"none"});
	} else {
		cleanMsg();
		$("#division").val(1);
		$("#userId_tr").css({display:"none"});
		$("#userId_co_tr").removeAttr("style");
		
		$("#persion_td").addClass("top_title_unselected");
		$("#persion_td").removeClass("top_title_selected");
		$("#company_td").addClass("top_title_selected");
		$("#company_td").css({borderBottom:"0px"});
		$("#persion_td").css({borderBottom:"1px solid #c6c6c6"});
		$("#persion_div").css({display:"none"});
		$("#company_div").css({display:""});
	}
}
$(document).ready(function() {
	registAction(0);
});
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
		<form:form action="" method="post" id="userForm"
			modelAttribute="loginInfoDto" class="demoform">
			<form:hidden path="division" />
			<div class="registDiv">
				<table style="margin: 0 auto;">
					<tr>
						<td style="vertical-align: top">
							<div class="regist common_shadow">
								<table class="regist_top_table">
									<tr>
										<td class="top_title top_title_selected" id="persion_td"
											onclick="registAction(0)">个人用户</td>
										<td class="top_title top_title_unselected" id="company_td"
											onclick="registAction(1)">企业用户</td>
									</tr>
									<tr>
										<td align="center">
											<div class="arrowm" id="persion_div"></div>
										</td>
										<td align="center">
											<div class="arrowm" id="company_div" style="display: none"></div>
										</td>
									</tr>
								</table>
								<br />
								<table class="regist_edit_table">
									<tr id="userId_tr">
										<td class="i_td_Content" colspan="2"><form:input
												path="userId" class="text regist_input"
												placeholder='请输入用户名（手机号码）' onblur="valueCheck(0,this)" /> <span
											id="useIdCheckSpan" class="error"
											onmouseover="makeMesDiv(this)" onmouseout="removeMesDiv()"><form:errors
													path="userId" /><img
												src="<c:url value='/images/error/error.png'/>" /></span></td>
									</tr>
									<tr id="userId_co_tr">
										<td class="i_td_Content" colspan="2"><form:input
												path="userIdForCo" class="text regist_input"
												id="userIdForCo" placeholder='请输入用户名（邮箱）'
												onblur="valueCheck(0,this)" /> <span
											id="userIdForCoCheckSpan" class="error"
											onmouseover="makeMesDiv(this)" onmouseout="removeMesDiv()"><form:errors
													path="userIdForCo" /><img
												src="<c:url value='/images/error/error.png'/>" /></span></td>
									</tr>
									<tr>
										<td class="i_td_Content" colspan="2"><form:password
												path="userPassword" class="text regist_input"
												placeholder='请输入密码' /><span id="passwordCheckSpan"
											class="error" onmouseover="makeMesDiv(this)"
											onmouseout="removeMesDiv()"><form:errors
													path="userPassword" /><img
												src="<c:url value='/images/error/error.png'/>" /></span> <br /> <span style="width:100%;text-align:left;">6-8位任意字符</span></td>
									</tr>
									<tr>
										<td class="i_td_Content" colspan="2"><form:password
												path="confirmPassword" class="text regist_input"
												placeholder='请输入确认密码' /> <span id="cPasswordCheckSpan"
											class="error" onmouseover="makeMesDiv(this)"
											onmouseout="removeMesDiv()"><form:errors
													path="confirmPassword" /><img
												src="<c:url value='/images/error/error.png'/>" /></span></td>
									</tr>
									<tr>
										<td colspan="2" style="text-align: center;"><br /> <input type="button"
											id="next_step" class="regist_nextstep_btn"
											onclick="submitForm();"></input></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</form:form>
		</td>
		</tr>
		</table>
	</div>
</body>
</html>