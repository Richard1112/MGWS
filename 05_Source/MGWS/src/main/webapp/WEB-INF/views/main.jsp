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
	<title>子午投资 Meridian Global Inc.</title>
	<link href="${ctx}/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/css/rewriteboots.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/css/flexslider2.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/css/page.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/css/lobibox.css" rel="stylesheet" type="text/css">
	<script src="${ctx}/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${ctx}/js/jquery.flexslider-min2.js" type="text/javascript"></script>
</head>
<body>
	<div class="my_container">
		<div class="flexslider" id="slider_main_banner">
	  		<ul class="slides">
	  			<li><img src="${ctx}/images/main/main_banner_1.jpg"></li>
	  			<li><img src="${ctx}/images/main/main_banner_2.jpg"></li>
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
									<span class="main_invite_left_span1">${inviteItem.recruitjobtitle }</span>
									<span>招聘人数：${inviteItem.recruitnumber }人</span>
									<span>招聘对象：${inviteItem.recruitobject }</span>
									<span class="main_recruitdetails">${inviteItem.recruitdetails }</span>
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
		 		
		<div class="main_jys_sel clearfix">
			<a href="${ctx }/stockexchange/init?tab=1" class="clearfix">
				<i class="main_po_all"></i>
				<span class="fontshow">纽约泛欧交易所</span>
				<span class="fontinfo">NYSE Euronext</span>
			</a>
			<a href="${ctx }/stockexchange/init?tab=2" class="clearfix">
				<i class="main_po_all"></i>
				<span class="fontshow">欧洲期货交易所</span>
				<span class="fontinfo">EXREX Exchange</span>
			</a>
			<a href="${ctx }/stockexchange/init?tab=3" class="clearfix">
				<i class="main_po_all"></i>
				<span class="fontshow">芝加哥商业交易所</span>
				<span class="fontinfo">CME Group</span>
			</a>
			<a href="${ctx }/stockexchange/init?tab=4" class="clearfix">
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

					<div class="main_jy_icon magin-top-20px clearfix">
						<a class="clearfix">
							<img src="${ctx}/images/main/about_us_icon_1.png">
							<span class="">证劵</span>
						</a>
						<a class="clearfix">
							<img src="${ctx}/images/main/about_us_icon_2.png">
							<span class="">期货</span>
						</a>
						<a class="clearfix">
							<img src="${ctx}/images/main/about_us_icon_3.png">
							<span class="">期权</span>
						</a>
						<a class="clearfix">
							<img src="${ctx}/images/main/about_us_icon_4.png">
							<span class="">其他OTC金融产品的交易</span>
						</a>
					</div>
					<div class="main_jy_content magin-top-20px">
						公司成立以来，采用国际领先的交易方法，通过杠杆化，严格的风险控制以及程序化交易等工具的支持，辅以持续不断的IT投入，开发新的交易策略，使公司一直保持卓越的竞争力，并积累了大量宝贵的经验。目前公司在国内市场的日交易量超过1.2亿元人名币，约占中国A股融券市场日交易量的2%。在境外国库券期货价差合约市场以及跨市场套利也保持着业内领先的活跃交易量和稳定客观的收益
					</div>

					<div class="main_aoubt_us_more magin-top-20px">
						
					</div>

					<div class="footer_img magin-top-10px">
						<img src="${ctx}/images/main/main_bottom_1.png">
						<img src="${ctx}/images/main/main_bottom_2.png">
					</div>
				</div>
				
			</div>
		</div>
		<div class="footer magin-top-250px">
			<div class="fontshow">Copyright 2016 Meridian Global Inc.</div>
			<div class="footer-split"></div>
		</div>
		
		<div id="main_qrcode" class="modal fade" role="dialog" aria-hidden="true" >
	    	<div class="modal-dialog main_info_dialog">
		      <div class="modal-content">
		         	在继续浏览本公司网站前，请您仔细阅读本重要提示，并将页面滚动至本页结尾“接受”或“放弃”键，根据您的具体情况选择继续浏览还是放弃。点击“接受”键，视为您已经阅读并愿意遵守本提示内容。
				<br/>
				证券投资具有一定风险，根据《中华人民共和国证券投资基金法》、《中华人民共和国信托法》、《私募投资基金监督管理暂行办法》、《信托公司集合资金信托计划管理办法》等相关法律法规的有关规定，投资者应为风险识别、评估、承受能力较强的合格投资者。浏览本公司网站的人士可能来自更广阔的区域，但登入本网页的人士均出于主动，因而有责任遵守适用于当地的法规。登入网站内页即表示登入者同意其已阅览本网页的所有部分，包括任何法规或法规注释。
				<br/>
				如果确认您或您所代表的机构是一名“合格投资者”，并将遵守适用的有关法规请点击“接受”键以继续浏览本公司网站。如您不同意任何有关条款，请按“放弃”键。
				<br/>
				根据我国《私募投资基金监督管理暂行办法》的规定，私募基金合格投资者的标准如下：
				<br/>
				<br/>
				一、具备相应风险识别能力和风险承担能力，投资于单只私募基金的金额不低于100万元且符合下列相关标准的单位和个人： 
				<br/>
				1、净资产不低于1000万元的单位；
				<br/>
				2、个人金融资产不低于300万元或者最近三年个人年均收入不低于50万元。(前款所称金融资产包括银行存款、股票、债券、基金份额、资产管理计划、银行理财产品、信托计划、保险产品、期货权益等。)
				<br/>
				<br/>
				二、下列投资者视为合格投资者：
				<br/> 
				1、社会保障基金、企业年金、慈善基金；
				<br/>
				2、依法设立并受国务院金融监督管理机构监管的投资计划；
				<br/>
				3、投资于所管理私募基金的私募基金管理人及其从业人员；
				<br/>
				4、中国证监会规定的其他投资者。
				<br/>
				<br/>
				本网站所载的各种信息和数据等仅供参考，并不构成广告或销售要约，或买入任何证券、基金或其它投资工具的建议。投资者应仔细审阅相关金融产品的合同文件等以了解其风险因素，或寻求专业的投资顾问的建议。
				<br/>
				信托产品净值可能会有较大的波动，并可能在短时间內大幅下跌，并造成投资者损失部分或全部投资金额。您应确保有关投资產品适合您的需要。如有怀疑，请咨询按中国内地法规注册的专业分析师的意见，並要求其确认有关投资产品适合並符合您的投资目标。
				<br/>
				投资产品的价格及其收益存在涨跌变动，而过往的产品业绩数据并不预示其未来的表现，投资者不应依赖本网站所提供的数据做出投资决策，否则由投资者自行承担所有风险。
				<br/>
				本网站所载的资料于刊载日期属恰当充分，您在阅读时资料的准确性或完整性已发生变化。本网站刊登的所有资料可予以更改或修订而毋须事前通知，尽管子午投资并不承诺定期更新本网站内容。公司并不对第三者所提供之有关资料的准确性、充足性或完整性作出任何保证，公司或其股东及雇员概不对于本网站内第三者所提供之资料的任何错误或遗漏负任何法律责任。
				<br/>
				<br/>
				<br/>
				<span style="display: block;width: 100%;text-align: right">上海子午投资管理有限公司</span>
				

		        <span class="main_dialog_btn">
		        	<a onclick="recipt()">接受</a>
		        	<a onclick="giveup()">放弃</a>
		        </span>
		      </div>
	    	</div>
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
			if ('${isFirst}' == '0') {
				$('#main_qrcode').modal('show');
			}
			
		});
		
		function toInviteDetail(){
			location.href = "${ctx}/joinus/init"
		}
		
		function giveup(){
			closeWindows();
		}
		
		function recipt(){
			$('#main_qrcode').modal('hide');
		}
		
		function closeWindows() {
			var userAgent = navigator.userAgent;
			if (userAgent.indexOf("Firefox") != -1 || userAgent.indexOf("Chrome") != -1) {
				window.location.href = "about:blank";
			} else {
				window.opener = null;
				window.open("", "_self");
				window.close();
			}
		};


	</script>
</body>
</html>