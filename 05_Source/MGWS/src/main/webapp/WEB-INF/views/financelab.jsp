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
	<title>金融实验室</title>
	<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
	<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
	<script type="text/javascript">
		function showlesson(itemnum) {
			$(".financial_lab_sel").find("li").removeClass('active');
			$($(".financial_lab_sel").find("li")[itemnum]).addClass('active');
			$(".financial_section").find(".financial_info").css('display',"none");
			$($(".financial_section").find(".financial_info")[itemnum]).css('display',"");
		}
		
		showlesson('0');
	
	</script>
</head>
<body>
	<div class="my_container">
		<div class="notMainBanner">
			<img src="${ctx }/images/jrsys_banner.png">
		</div>
		<div class="financial_content">
			<div class="financial_title magin-top-30px">
				<span class="fontshow">金融实验室</span>
				<span class="fontinfo">Financial Laboratory</span>
			</div>
			<div class="financial_sel">
				<div class="financial_border_left">
					<div></div>
				</div>
				<ul class="financial_lab_sel">
					<c:forEach var="courseItem" items="${ courseList }" varStatus="step">
						<li onclick="showlesson('${step.index}')">
							<i></i>
							<div>
								<span class="fontshow">${courseItem.coursename }</span>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>

			<div class="financial_section">
			<c:forEach var="courseItem" items="${ courseList }" varStatus="step">
				<div class="financial_info" style="display:none">
					<div class="financial_info_img">
						<img src="${ctx }/images/jrsysinfo-1.png">
					</div>
					<div class="financial_info_title fontshow font_xl">${courseItem.coursename }</div>
					<div class="financial_info_content fontinfo">${courseItem.coursedetails }</div>
					<div class="circle_size_xll position_r100_b100"></div>
					<div class="circle_size_m position_r50_b300"></div>
				</div>
			</c:forEach>
			</div>
		</div>


		<div class="footer">
			<div class="fontshow">Copyright 2013 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>
	<script type="text/javascript">
		showlesson('0');
	</script>
</body>
</html>