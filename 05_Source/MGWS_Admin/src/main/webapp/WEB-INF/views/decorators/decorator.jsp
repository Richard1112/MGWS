<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="ms" uri="http://www.springframework.org/tags" %>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><sitemesh:write property='title' /></title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Theme style -->
<link rel="stylesheet" href="${basePath}/static/dist/css/AdminLTE.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
		 folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${basePath}/static/dist/css/skins/_all-skins.css">
<link rel="stylesheet"
	href="${basePath}/static/font/css/font-awesome.css">
<link rel="stylesheet"
	href="${basePath}/static/bootstrap/css/bootstrap-addtabs.css">
<link rel="stylesheet"
	href="${basePath}/static/bootstrap/css/bootstrap.css">
<script
	src="${basePath}/static/js/jquery-1.11.0.min.js"
	type="text/javascript"></script>
<script
	src="${basePath}/static/bootstrap/js/bootstrap.js"
	type="text/javascript"></script>
<script
	src="${basePath}/static/dist/js/app.js"
	type="text/javascript"></script>
<script
	src="${basePath}/static/dist/js/demo.js"
	type="text/javascript"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<script
	src="${basePath}/static/bootstrap/js/bootstrap-addtabs.js"
	type="text/javascript"></script>
<style type="text/css">
.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
	-webkit-border-radius: 0 6px 6px 6px;
	-moz-border-radius: 0 6px 6px;
	border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
	display: block;
}
.dropdown-menu > li > a {
	color:#fff;
}
.dropdown-submenu > li > a {
	color:#fff;
}
.dropdown-submenu>a:after {
	display: block;
	content: " ";
	float: right;
	width: 0;
	height: 0;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 0 5px 5px;
	border-left-color: #ccc;
	margin-top: 5px;
	margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
	border-left-color: #fff;
}

.dropdown-submenu.pull-left {
	float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
	left: -100%;
	margin-left: 10px;
	-webkit-border-radius: 6px 0 6px 6px;
	-moz-border-radius: 6px 0 6px 6px;
	border-radius: 6px 0 6px 6px;
}
.content-wrapper, .right-side, .main-footer{
	/* margin-left: 0px!important; */
}
</style>
<sitemesh:write property='head' />

</head>
<body class="hold-transition skin-green sidebar-mini">
	<div class="wrapper">
		<%@ include file="header.jsp"%>
		<%@ include file="aside.jsp"%>
		<div class="content-wrapper">
		<div class="col-md-12">
		<div id="tabs">
		<sitemesh:write property='body' />
		</div>
		</div>
		</div>
	</div>
</body>
</html>