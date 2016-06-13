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
	<title>首页</title>
	<link href="${ctx}/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/css/flexslider2.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/css/page.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/css/lobibox.css" rel="stylesheet" type="text/css">
	<script src="${ctx}/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${ctx}/js/jquery.flexslider-min2.js" type="text/javascript"></script>
	<script src="${ctx}/js/lobibox.min.js"></script>
</head>
<body>
	<div class="my_container">
		<div class="flexslider" id="slider_main_banner">
	  		<ul class="slides">
	  			<li><img src="${ctx}/images/main/main_banner.png"></li>
	  			<li><img src="${ctx}/images/main/main_banner.png"></li>
	  		</ul>
	    </div>
		<div class="main_section">
			<div class="main_invite">
				<div class="main_invite_left">
					<div class="flexslider main_invite_li" id="main_invite_div">
						<ul class="slides">
							<c:forEach var="inviteItem" items="${ inviteInfo }">
							<li>
								<div class="main_invite_li_left">
									<div class="line"></div>
								</div>
								<div class="main_invite_li_right">
									<span class="main_invite_left_span1">${inviteItem.recruitlocale }</span>
									<span>招聘职位：${inviteItem.recruitjobtitle }</span>
									<span>招聘人数：${inviteItem.recruitnumber }人</span>
									<span>招聘对象：${inviteItem.recruitobject }</span>
									<span>为您提供：<br/>${inviteItem.recruitdetails }</span>
									<div class="main_invite_detail" onclick="toInviteDetail()"></div>
								</div> 
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="main_invite_right">
					&nbsp;
				</div>
			</div>
			
			<div class="main_exchange">
				<div class="main_exchange_left">
					&nbsp;
				</div>
				<div class="main_exchange_right">
					<img src="${ctx}/images/main/jiaoyisuo_1.png">
					<span class="main_exchange_span font_xl">
						${curtime}
					</span>
				</div>
			</div>
		</div>
		
		<div class="main_jys_detail">
			<div class="fontshow main_jys_detail_div">欧洲期货交易所</div>
			<div class="fontinfo main_jys_detail_div">EXREX Exchange</div>
			<div class="fontshow main_jys_detail_div magin-top-30px">欧洲期货交易所（EXREX）是一全面电子化交易所，其电子交易平台可以提供广泛的国际基准产品的访问。EXREX标准化、分权式的交易系统，使其市场参与者在全球各地都能下单交易...</div>
			<div class="jsy_showdetail main_jys_detail_div">
				<a href="${ctx }/stockexchange/init?tab=2">查看更多</a>
			</div>
			<div class="circle_size_xl position_r100_t5"></div>
			<div class="circle_size_m position_l100_b5"></div>
		</div>
		 		
		<div class="main_jys_sel">
			<a href="${ctx }/stockexchange/init?tab=1">
				<i class="main_po_all"></i>
				<span class="fontshow">纽约泛欧交易所</span>
				<span class="fontinfo">NYSE Euronext</span>
			</a>
			<a href="${ctx }/stockexchange/init?tab=2">
				<i class="main_po_all"></i>
				<span class="fontshow">欧洲期货交易所</span>
				<span class="fontinfo">EXREX Exchange</span>
			</a>
			<a href="${ctx }/stockexchange/init?tab=3">
				<i class="main_po_all"></i>
				<span class="fontshow">芝加哥商业交易所</span>
				<span class="fontinfo">CME Group</span>
			</a>
			<a href="${ctx }/stockexchange/init?tab=4">
				<i class="main_po_all"></i>
				<span class="fontshow">中国沪深证券交易所</span>
				<span class="fontinfo">Stock Exchange</span>
			</a>
		</div>
 
		<div class="main_about_us">
			<div class="main_about_us_back">
				<img src="${ctx}/images/main/about_us_bg.png">
			</div>

			<div class="main_about_us_info">
				<img src="${ctx}/images/main/about_us_back_head.png">
				<div class="content_info magin-top-5px">
					<div class="font_l">关于我们</div>
					<div class="magin-top-5px">About Us</div>

					<div class="magin-top-10px">Meridian Global Inc.长期致力于环球金融市场交易，包括</div>

					<div class="main_jy_icon magin-top-20px">
						<a>
							<img src="${ctx}/images/main/about_us_icon_1.png">
							<span class="">证劵</span>
						</a>
						<a>
							<img src="${ctx}/images/main/about_us_icon_2.png">
							<span class="">期货</span>
						</a>
						<a>
							<img src="${ctx}/images/main/about_us_icon_3.png">
							<span class="">期权</span>
						</a>
						<a>
							<img src="${ctx}/images/main/about_us_icon_4.png">
							<span class="">其他OTC金融产品的交易</span>
						</a>
					</div>
					<div class="main_jy_content magin-top-20px">
						公司成立以来，采用国际领先的交易方法，通过杠杆化，严格的风险控制以及程序化交易等工具的支持，辅以持续不断的IT投入，开发新的交易策略，是公司一直保持卓越的竞争力，并积累了大量宝贵的经验。目前公司在国内市场的日交易量超过1.2亿元人名币，约占中国A股融券市场日交易量的2%。在境外国库券期货价差合约市场以及夸市场套利也保持着业内领先的活跃交易量和稳定客观的手艺
					</div>

					<div class="main_aoubt_us_more magin-top-10px">
						<a href="${ctx }/contactus/init">查看更多</a>
					</div>

					<div class="footer_img magin-top-10px">
						<img src="${ctx}/images/main/main_bottom_1.png">
						<img src="${ctx}/images/main/main_bottom_2.png">
					</div>
				</div>
				
			</div>
		</div>
		<div class="footer magin-top-250px">
			<div class="fontshow">Copyright 2013 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
	</div>

	<script type="text/javascript">

		$(function() {
		    $("#slider_main_banner").flexslider({
				slideshowSpeed: 4000, //展示时间间隔ms
				animationSpeed: 400, //滚动时间ms
				directionNav:false,
				touch: true //是否支持触屏滑动
			}); 
		    
		    $("#jiaoyisuo_img_div").flexslider({
				animation: "slide",
				slideshow: false,
				controlNav:false,
				after:function(){
				}
			});
			
			$("#main_invite_div").flexslider({
				animation: "slide",
				slideshow: false,
				controlNav:false,
				after:function(){
				}
			});
			

			Lobibox.notify('success', {
				sound:false,
				size: 'mini',
                msg: '${msg_info}'
            });
		});
		
		function toInviteDetail(){
			location.href = "${ctx}/joinus/init"
		}


	</script>
</body>
</html>