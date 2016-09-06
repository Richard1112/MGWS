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
	<title>加入我们</title>
	<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
	<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
</head>
<body>
	<div class="my_container">
		<div class="notMainBanner">
			<img src="${ctx }/images/joinus/joinus_banner.png">
		</div>

		<div class="join_us_section">
			<div class="join_title magin-top-30px">
				<span class="fontshow">招聘信息</span>
				<span class="fontinfo">Career information</span>
			</div>
			<c:forEach var="inviteItem" items="${ inviteInfo }">
				<div class="join_content">
					<div class="join_info_left">
						<div class="border_left"></div>
					</div>
					<div class="join_info_right">
						<div class="border_right"></div>
					</div>
					<div class="join_info_left">
						<div class="invite_time font_xl magin-top-30px">${inviteItem.releasedate }</div>
						<div class="invite_job font_xxl magin-top-30px">${inviteItem.recruitjobtitle }</div>
						<div class="invite_obj magin-top-50px">
							<div class="invite_obj_info">
								<a class="point_m float_left invite_point_left"></a>
								<span class="float_left invite_percount_title">招聘人数:</span>
								<span class="float_left invite_percount_content">${inviteItem.recruitnumber }人</span>
							</div>
							<div class="invite_obj_info">
								<a class="point_m float_left invite_point_left"></a>
								<span class="float_left invite_obj_title">招聘对象:</span>
								<span class="float_left invite_obj_content">${inviteItem.recruitobject }</span>
							</div>
						</div>
					</div>
					<div class="join_info_right">
						<div class="invite_require magin-top-30px">
							<span class="invite_require_title">招聘详情:</span>
							<span class="invite_require_content">${inviteItem.recruitdetails }</span>
						</div>
						
					</div>
				</div>
			</c:forEach>

			<div class="circle_size_m position_l100_t5"></div>
		</div>


		<div class="footer magin-top-30px">
			<div class="fontshow">Copyright 2016 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>
</body>
</html>