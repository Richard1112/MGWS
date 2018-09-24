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
	<title>投资者教育</title>
	<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
	<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
</head>
<body>
	<div class="my_container">
		

		<div class="join_us_section">
			<div class="openInfo_content">
				<c:forEach var="investorEdu" items="${ investorEduList }" varStatus="step">
						<div class="openInfoList_div">
							<a href="${saveInvestorEduPDFUrl}${investorEdu.fileName}" target="_blank">
								<div class="openInfoItem clearfix">
									<span class="openInfoTitle">No.${step.index + 1}&nbsp;&nbsp;&nbsp;${investorEdu.title }</span>
									<span class="openInfoDate">${investorEdu.releaseDate }</span>
								</div>
							
							</a>
						</div>
				</c:forEach>
			</div>
			<div class="circle_size_m position_l100_t5"></div>
		</div>


		<div class="footer magin-top-30px">
			<div class="fontshow">Copyright 2016 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>
</body>
</html>