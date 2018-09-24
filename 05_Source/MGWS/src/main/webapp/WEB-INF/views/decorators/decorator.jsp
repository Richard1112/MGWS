<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="shortcut icon" href="${ctx}/favicon.ico"  type="image/x-icon" />
  <title><sitemesh:write property='title' /></title>
  <sitemesh:write property='head' />
</head>

<!-- Body BEGIN -->
<body id="container">
	<div class="notMainhead">
			<div class="notMainLogo">
				<img src="${ctx}/images/logo.png">
			</div>
			<div class="notMainTitle tabbable">
				<div class="navbar-header">
					<nav class="navbar navbar-default" role="navigation">
						<button type="button" class="navbar-toggle" data-toggle="collapse" 
					         data-target="#ziwu-navbar-collapse">
					         <span class="icon-bar"></span>
					         <span class="icon-bar"></span>
					         <span class="icon-bar"></span>
					    </button>
					</nav>
				</div>
				<div class="collapse navbar-collapse" id="ziwu-navbar-collapse">
					<ul class="nav navbar-nav">
				        <li id="main_li">
				        	<a href="${ctx}/main/init">
								<span class="fontshow font_ml">首页</span>
								<span class="fontinfo font_ml">Home</span>
							</a>
				        </li>
				        <li id="financelab_li">
				        	<a href="${ctx}/financelab/init">
								<span class="fontshow font_ml">金融实验室</span>
								<span class="fontinfo font_ml">Financial Laboratory</span>
							</a>
				        </li>
				        <li id="assetInfo_li">
				        	<a href="${ctx}/assetInfo/init">
								<span class="fontshow font_ml">资产管理</span>
								<span class="fontinfo font_ml">Asset managerment</span>
							</a>
				        </li>
				        <li id="science_li">
				        	<a href="${ctx}/science/init">
								<span class="fontshow font_ml">子午科技</span>
								<span class="fontinfo font_ml">Meridian Science</span>
							</a>
				        </li>
				        <li id="products_li">
				        	<a href="${ctx}/products/init">
								<span class="fontshow font_ml">产品查询</span>
								<span class="fontinfo font_ml">Products Search</span>
							</a>
				        </li>
				        <li id="openInfo_li">
				        	<a href="${ctx}/openInfo/init">
								<span class="fontshow font_ml">信息公示</span>
								<span class="fontinfo font_ml">Open Info</span>
							</a>
				        </li>
				        <li id="investorEdu_li">
				        	<a href="${ctx}/investorEdu/init">
								<span class="fontshow font_ml">投资者教育</span>
								<span class="fontinfo font_ml">Investor Education</span>
							</a>
				        </li>
				        <li id="contactus_li">
				        	<a href="${ctx}/contactus/init">
								<span class="fontshow font_ml">联系我们</span>
								<span class="fontinfo font_ml">Contact Us</span>
							</a>
				        </li>
				    </ul>
				</div>
			</div>
		</div>
	<sitemesh:write property='body' />
</body>
<!-- END BODY -->
<script type="text/javascript">
	var currentPath = window.location.pathname;
	if (currentPath.indexOf("main") > 0) {
		$("#main_li").addClass("active");
	}
	if (currentPath.indexOf("financelab") > 0) {
		$("#financelab_li").addClass("active");
	}
	if (currentPath.indexOf("contactus") > 0) {
		$("#contactus_li").addClass("active");
	}
	if (currentPath.indexOf("assetInfo") > 0) {
		$("#assetInfo_li").addClass("active");
	}
	if (currentPath.indexOf("science") > 0) {
		$("#science_li").addClass("active");
	}
	if (currentPath.indexOf("products") > 0) {
		$("#products_li").addClass("active");
	}
	if (currentPath.indexOf("openInfo") > 0) {
		$("#openInfo_li").addClass("active");
	}
	if (currentPath.indexOf("investorEdu") > 0) {
		$("#investorEdu_li").addClass("active");
	}
	

</script>
</html>