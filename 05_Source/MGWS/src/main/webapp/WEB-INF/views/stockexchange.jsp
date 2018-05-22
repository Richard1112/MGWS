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
	<title>交易所</title>
	<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
	<script src="${ctx }/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
	<div class="my_container">
		<div class="notMainBanner">
			<c:if test="${tab == '1'}">
				<img src="${ctx }/images/jys/nyfojys.png">
			</c:if>
			<c:if test="${tab == '2'}">
				<img src="${ctx }/images/jys/ouzhou.png">
			</c:if>
			<c:if test="${tab == '3'}">
				<img src="${ctx }/images/jys/zhijiage.png">
			</c:if>
			<c:if test="${tab == '4'}">
				<img src="${ctx }/images/jys/shanghai.png">
			</c:if>
			
		</div>
		<c:if test="${tab == '1'}">
			<div class="jys_detail_section">
				<div class="detail_title fontshow magin-top-50px">
					纽约泛欧交易所
				</div>
				<div class="detail_content fontinfo magin-top-30px">
					NYSE Euronext 是全球规模最大、最具流动性的政权交易集团，为全球投资者及上市公司提供最多样化的金融产品和服务。纽约泛欧交易所集团旗下的伦敦国际金融期货交易所(NYSE LIFFE)，是欧洲领先、全球第二位的衍生品交易市场。
				</div>
	
				<div class="circle_size_l position_r50_b300"></div>
				<div class="circle_size_m position_l100_b50"></div>
			</div>
		</c:if>
		<c:if test="${tab == '2'}">
			<div class="jys_detail_section">
				<div class="detail_title fontshow magin-top-50px">
					欧洲期货交易所
				</div>
				<div class="detail_content fontinfo magin-top-30px">
					NYSE Euronext 是全球规模最大、最具流动性的政权交易集团，为全球投资者及上市公司提供最多样化的金融产品和服务。纽约泛欧交易所集团旗下的伦敦国际金融期货交易所(NYSE LIFFE)，是欧洲领先、全球第二位的衍生品交易市场。
				</div>
	
				<div class="circle_size_l position_r50_b300"></div>
				<div class="circle_size_m position_l100_b50"></div>
			</div>
		</c:if>
		<c:if test="${tab == '3'}">
			<div class="jys_detail_section">
				<div class="detail_title fontshow magin-top-50px">
					芝加哥商业交易所
				</div>
				<div class="detail_content fontinfo magin-top-30px">
					NYSE Euronext 是全球规模最大、最具流动性的政权交易集团，为全球投资者及上市公司提供最多样化的金融产品和服务。纽约泛欧交易所集团旗下的伦敦国际金融期货交易所(NYSE LIFFE)，是欧洲领先、全球第二位的衍生品交易市场。
				</div>
	
				<div class="circle_size_l position_r50_b300"></div>
				<div class="circle_size_m position_l100_b50"></div>
			</div>
		</c:if>
		<c:if test="${tab == '4'}">
			<div class="jys_detail_section">
				<div class="detail_title fontshow magin-top-50px">
					中国沪深证券交易所
				</div>
				<div class="detail_content fontinfo magin-top-30px">
					NYSE Euronext 是全球规模最大、最具流动性的政权交易集团，为全球投资者及上市公司提供最多样化的金融产品和服务。纽约泛欧交易所集团旗下的伦敦国际金融期货交易所(NYSE LIFFE)，是欧洲领先、全球第二位的衍生品交易市场。
				</div>
	
				<div class="circle_size_l position_r50_b300"></div>
				<div class="circle_size_m position_l100_b50"></div>
			</div>
		</c:if>
		


		<div class="footer">
			<div class="fontshow">Copyright 2016 Meridian Global Inc. 备案号：沪ICP备16031356号-2</div>
			<div class="footer-split"></div>
		</div>
	</div>
</body>
</html>