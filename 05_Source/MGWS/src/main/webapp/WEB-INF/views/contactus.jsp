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
	<title>联系我们</title>
	<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
	<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
</head>
<body>
	<div class="my_container">
		<div class="notMainBanner">
			<img src="${ctx }/images/aboutus/about_us_banner.png">
		</div>

		<div class="about_us_section">
			<div class="contact_title magin-top-30px">
				<span class="fontshow">联络</span>
				<span class="fontinfo">Contact</span>
			</div>
			<div class="contact_content magin-top-50px">
				E-Mail: hr@meridianglobal.com.cn
			</div>

			<div class="circle_size_xll position_r100_b100"></div>
			<div class="circle_size_m position_l100_t5"></div>
		</div>


		<div class="footer">
			<div class="fontshow">Copyright 2013 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>
</body>
</html>