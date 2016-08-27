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
			<img src="${ctx }/images/science/science_banner.jpg">
		</div>
		<div class="science_section">
			<div class="science_head magin-top-30px">
				<span class="fontshow">子午科技</span>
				<span class="fontinfo">Meridian Science</span>
			</div>
			<a href="http://api.meridianglobal.com.cn">
			<div class="science_div">
				<img alt="" src="${ctx }/images/science/science_1.png">
				<div class="science_title">研究成果和方向</div>
				<div class="science_content"></div>
			</div>
			</a>
			<a href="http://api.meridianglobal.com.cn">
			<div class="science_div">
				<img alt="" src="${ctx }/images/science/science_1.png">
				<div class="science_title">加入我们</div>
				<div class="science_content"></div>
			</div>
			</a>
			<a href="http://api.meridianglobal.com.cn">
			<div class="science_div">
				<img alt="" src="${ctx }/images/science/science_1.png">
				<div class="science_title">深度学习</div>
				<div class="science_content"></div>
			</div>
			</a>
			<a href="http://api.meridianglobal.com.cn">
			<div class="science_div">
				<img alt="" src="${ctx }/images/science/science_1.png">
				<div class="science_title">数据接口</div>
				<div class="science_content">将子午的量化团队的多年的量化系统的开发经验开发为一个服务平台，为更多的量化开发者在数据资源、算法资源、交易资源等提供优质的服务。</div>
			</div>
			</a>
			<a href="http://116.228.204.42:8000/tweets/demo/">
			<div class="science_div">
				<img alt="" src="${ctx }/images/science/science_2.png">
				<div class="science_title">新闻数据</div>
				<div class="science_content">提供公告、投资者互动及财经要闻的即时展示，为事件驱动提供信息支持。</div>
			</div>
			</a>
			<%-- <a href="http://116.228.204.43/stock_demo/">
			<div class="science_div">
				<img alt="" src="${ctx }/images/science/science_3.png">
				<div class="science_title">复盘宝</div>
				<div class="science_content">复盘宝是一款集备忘、提醒以及资讯于一体的应用平台，用户可以设置自定义的关注证券，个性化跟踪时间段、关注理由等设置辅助投资者更精确的投资，形成完善的投资体系。在跟踪时间段内，平台会自动显示关于该标的的资讯全景。</div>
			</div>
			</a> --%>
			<div class="circle_size_m position_l100_t0"></div>
		</div>


		<div class="footer">
			<div class="fontshow">Copyright 2016 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>
</body>
</html>