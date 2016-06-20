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
	<title>子午科技</title>
	<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
	<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
	<script type="text/javascript">
		
	
	</script>
</head>
<body>
	<div class="my_container">
		<div class="notMainBanner">
			<img src="${ctx }/images/science/science_banner.png">
		</div>
		<div class="science_section">
			<div class="science_head magin-top-30px">
				<span class="fontshow">子午科技</span>
				<span class="fontinfo">Meridian Science</span>
			</div>
			<a href="http://www.baidu.com">
			<div class="science_div">
				<img alt="" src="${ctx }/images/science/science_1.png">
				<div class="science_title">X Trader</div>
				<div class="science_content">Simultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously trader</div>
			</div>
			</a>
			<a href="http://www.taobao.com">
			<div class="science_div">
				<img alt="" src="${ctx }/images/science/science_2.png">
				<div class="science_title">X Trader</div>
				<div class="science_content">Simultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously traderSimultaneously trader</div>
			</div>
			</a>
		</div>


		<div class="footer">
			<div class="fontshow">Copyright 2013 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>
</body>
</html>