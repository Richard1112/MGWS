<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<link rel="shortcut icon" href="${ctx}/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/dist/css/AdminLTE.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/dist/css/skins/skin-blue-light.min.css" />
<%@ include file="../commoncssHead.jsp"%>
<title><sitemesh:write property='title' /></title>
<sitemesh:write property='head' />
</head>

<!-- Body BEGIN -->
<body id="container"
	class="hold-transition skin-blue-light sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">

				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">

						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="${ctx }/dist/img/user2-160x160.jpg" class="user-image"
								alt="User Image"> <span class="hidden-xs"> <c:if
										test="${division==0}">
								${nick_name}
							</c:if> <c:if test="${division==1}">
								${company_name}
							</c:if>
							</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="${ctx }/dist/img/user2-160x160.jpg" class="img-circle"
									alt="User Image"></li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="${ctx }/basic/init" class="btn btn-default btn-flat">基本信息</a>
									</div>
									<div class="pull-right">
										<a href="${ctx }/Login/logOut" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<sitemesh:write property='body' />
	</div>
	<%@ include file="../commonjsFooter.jsp"%>
</body>
<!-- END BODY -->
<script type="text/javascript">
	var currentPath = window.location.pathname;
	if (currentPath.indexOf("main") > 0) {
		$("#main_li").addClass("active");
	}
	if (currentPath.indexOf("financelab") > 0) {
		$("#financelab_li").addClass("active");
	}
	if (currentPath.indexOf("contactus") > 0) {
		$("#contactus_li").addClass("active");
	}
	if (currentPath.indexOf("assetInfo") > 0) {
		$("#assetInfo_li").addClass("active");
	}
	if (currentPath.indexOf("science") > 0) {
		$("#science_li").addClass("active");
	}
</script>
</html>