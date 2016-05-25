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
</head>
<body>
	<div class="my_container">
		<div class="notMainBanner">
			<img src="${ctx }/images/jrsys_banner.png">
		</div>
		<div class="financial_sel">
			<a>
				<img src="${ctx }/images/po_not.png">
				<span class="fontshow">实验室简介</span>
				<span class="fontinfo">Laboratory profile</span>
			</a>
			<a>
				<img src="${ctx }/images/po_not.png">
				<span class="fontshow">初级课程培训</span>
				<span class="fontinfo">Junior course training</span>
			</a>
			<a>
				<img src="${ctx }/images/po_yes.png">
				<span class="fontshow">中级课程培训</span>
				<span class="fontinfo">Intermediate course training</span>
			</a>
			<a>
				<img src="${ctx }/images/po_not.png">
				<span class="fontshow">实盘交易</span>
				<span class="fontinfo">Trading firm</span>
			</a>
		</div>

		<div class="financial_section">
			<div class="financial_info">
				<div class="financial_info_img">
					<img src="${ctx }/images/jrsysinfo-1.png">
					<img src="${ctx }/images/funnel.png" class="jrsys_funnel">
				</div>
				<div class="financial_info_title fontshow">实盘交易</div>
				<div class="financial_info_content fontinfo">为期6个月实习期满之后，公司给予成绩优异者，全职工作合同，提供领先于全国金融市场的薪资待遇和奖励机制。同时最优秀的两名员工，NYSE Euronext将提供为期一周的伦敦实习机会，深入了解环球金融市场的最前沿</div>

				<div class="circle_size_xll position_r100_b100"></div>
				<div class="circle_size_m position_r50_b300"></div>
			</div>
		</div>


		<div class="footer">
			<div class="fontshow">Copyright 2013 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>
</body>
</html>