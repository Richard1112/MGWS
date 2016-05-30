<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>系统登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/login.css">
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.min.js"
	type="text/javascript"></script>
<style>
.error {
	color: red;
}
</style>
</head>
<body>
	<form action="" method="post">
		<div class="login_m">
			<div class="error">${error}</div>
			<div class="login_boder">
				<div class="login_padding" id="login_model">
					<div> <input type="text" id="username" name="username"
						value="<shiro:principal/>" class="txt_input txt_input2"
						placeholder="<ms:message code='username' />"
						>
					</div>
					<div> <input type="password" name="password" id="userpwd"
						class="txt_input"
						placeholder="<ms:message code='password' />" >
					</div>
					<c:if test="${jcaptchaEbabled}">
						<div><input type="text" name="jcaptchaCode" class="txt_input" style="width:100px;"
						placeholder="验证码" > <img
							class="jcaptcha-btn jcaptcha-img" style="margin-top:10px;margin-bottom:-12px;"
							src="${pageContext.request.contextPath}/jcaptcha.jpg"
							title="点击更换验证码"> <a class="jcaptcha-btn"
							href="javascript:;">换一张</a> </div>
					</c:if>

					<div class="rem_sub">
						
						<label> <input type="submit" class="sub_button"
							name="button" id="button" value="SIGN-IN" style="opacity: 0.7;">
						</label>
					</div>
				</div>
			</div>
			
		</div>
	</form>
<script>
    $(function() {
        $(".jcaptcha-btn").click(function() {
            $(".jcaptcha-img").attr("src", '${pageContext.request.contextPath}/jcaptcha.jpg?'+new Date().getTime());
        });
    });
    var dd = $("#tab-content",parent.document);
	if (dd.length>0){
		top.location.href = "${pageContext.request.contextPath}/login";
	}
</script>
</body>
</html>