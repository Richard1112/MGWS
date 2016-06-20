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
	<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
	<script type="text/javascript">
	
	</script>
</head>
<body>
	<div class="my_container">
		<div class="notMainBanner">
			<img src="${ctx }/images/assetinfo/assetinfo_banner.png">
		</div>
		
		<div class="assetinfo_section">
			<div class="asset_title magin-top-30px">
				<span class="fontshow">资产管理</span>
				<span class="fontinfo">Asset managerment</span>
			</div>
			<c:forEach var="assetItem" items="${ assetCartList }" varStatus="step">
			<div class="assetinfo_each_div">
					<div class="assetinfo_left">
						<div class="border_left"></div>
					</div>
					<div class="assetinfo_title">${assetItem.assetname }</div>
	
					<div class="assetinfo_content">${assetItem.assetdetails }</div>
			</div>
			</c:forEach>
		</div>


		<div class="footer">
			<div class="fontshow">Copyright 2013 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>
	
</body>
</html>