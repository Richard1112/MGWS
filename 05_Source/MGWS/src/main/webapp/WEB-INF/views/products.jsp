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
<title>产品查询</title>
<link href="${ctx }/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/css/rewriteboots.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/css/page.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

	function searchValue(){
		var productId = $("#productId").val();
		if(productId=='') {
			alert("请先选择产品！");
		} else{
			getValue(productId,1);
		}
	}
	function getValue(productId, pageNo) {
		$("#listItem").html("");
		if ($("#productId").val()!=productId){
			$("#dateFrom").val("");
			$("#dateTo").val("");
		}
		$("#productId").val(productId);
		$("#productInfo").html($("#product_"+productId).html());
		var dateFrom = $("#dateFrom").val();
		var dateTo = $("#dateTo").val();
		$.ajax({
					type : "GET",
					contentType : 'application/json',
					url : '${pageContext.request.contextPath}/products/getProductValue?productId='
							+ productId+"&pageNo="+pageNo+"&dateFrom="+dateFrom+"&dateTo="+dateTo,
					dataType : "json",
					async : false,
					data : "",
					success : function(data) {
						if (data.isException) {
							var valueList = data.tInvestmentValue;
							var html = "";
							for (var i = 0; i < valueList.length; i++) {
								html += "<tr>";
								html += "<td>" + valueList[i].date + "</td>";
								html += "<td>" + valueList[i].netValue
										+ "</td>";
								html += "</tr>";
							}
							$("#listItem").html(html);
							var pageInfo = data.pageInfo;
							var hpage = "";
							if (pageInfo.totalSize > 0){
								if(pageInfo.firstPage > 0 || pageInfo.prevPage > 0 || pageInfo.nextPage > 0 || pageInfo.lastPage >0){
									if (pageInfo.firstPage > 0){
										hpage += '<li class="prev"><a href="javascript:getValue('+productId+','+pageInfo.firstPage+')" title="第一页"><i class="fa fa-angle-double-left"></i></a></li>';
									} else{
										hpage += '<li class="prev disabled"><a href="javascript:void(0);" title="第一页"><i class="fa fa-angle-double-left"></i></a></li>';
									}
									if (pageInfo.prevPage < pageInfo.currentPage){
										hpage += '<li class="prev"><a href="javascript:getValue('+productId+','+pageInfo.prevPage+')" title="上一页"><i class="fa fa-angle-left"></i></a></li>';
									} else{
										hpage += '<li class="prev disabled"><a href="javascript:void(0);" title="上一页"><i class="fa fa-angle-left"></i></a></li>';
									}
									for (var i = 0; i < data.pageList.length; i++) {
										if (pageInfo.currentPage == data.pageList[i]){
											hpage += '<li><span>'+data.pageList[i]+'</span></li>';
										} else{
											hpage += '<li><a href="javascript:getValue('+productId+','+data.pageList[i]+')">'+data.pageList[i]+'</a></li>';
										}
									}
									if (pageInfo.nextPage > pageInfo.currentPage){
										hpage += '<li class="next"><a href="javascript:getValue('+productId+','+pageInfo.nextPage+')" title="下一页"><i class="fa fa-angle-right"></i></a></li>';
									} else{
										hpage += '<li class="next disabled"><a href="javascript:void(0);" title="下一页"><i class="fa fa-angle-right"></i></a></li>';
									}
									if (pageInfo.lastPage > 0){
										hpage += '<li class="next"><a href="javascript:getValue('+productId+','+pageInfo.lastPage+')" title="最后页"><i class="fa fa-angle-double-right"></i></a></li>';
									} else{
										hpage += '<li class="next disabled"><a href="javascript:void(0);" title="最后页"><i class="fa fa-angle-double-right"></i></a></li>';
									}
								
								}
								$("#pageInfo").html(hpage);
							}
						}
					},
					error : function(data) {

					}
				});
	}
</script>
</head>
<body>
	<c:if test="${basicFlg == false }">
		<div class="content-wrapper page-container" style="min-height: 600px;">
			<div class="page-content-wrapper">
				<div class="page-content">
					<div style="margin:0 auto;text-align:center;font-size:20px;font-weight:bold;color:red;">请您先完善资料，否则您将无法购买本公司的产品！</div>
					<div style="margin:0 auto;text-align:center;">完善资料请点击右上角“基本信息”</div>
				</div>
			</div>
			</div>
	</c:if>
	<c:if test="${basicFlg == true }">
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu" >
				<li class="active treeview" onclick="showProductList()"><a href="#"> <i
						class="fa fa-dashboard"></i> <span>产品一览</span>
				</a>
					<ul class="treeview-menu">
						<c:forEach var="product" items="${ productsList }"
							varStatus="step">
							<li><a href="#" id="product_${product.productId }" onclick="getValue('${product.productId }',1)"><i
									class="fa fa-circle-o"></i> ${product.productName }</a></li>
						</c:forEach>
					</ul></li>
				<li class="active treeview" onclick="investorSignList()">
					<a href="#"> 
						<i class="fa fa-dashboard"></i>
						<span>投资人签署</span>
					</a>
				</li>
			</ul>
		</section>
		<!-- /.sidebar -->
	</aside>
	<div class="content-wrapper page-container" style="min-height: 600px;" id="product_list">
		<div class="page-content-wrapper">
			<div class="page-content">
				<input type="hidden" id="productId" />
				<div class="row">
					<div class="col-md-12">
						<ul class="page-breadcrumb breadcrumb">
							<li><a href="#" id="productInfo">
							</a>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<div class="form-body">
					<div class="form-group" style="margin-bottom:0;">
						<label class="col-md-1 control-label" style="height: 32px;line-height: 32px;text-align: right;">日期</label>
						<div class="col-md-3">
							<div class="input-group input-large date-picker input-daterange"
								data-date="" data-date-format="yyyy/mm/dd">
								<input type="text" class="form-control" id="dateFrom"></input>
								<span class="input-group-addon"> - </span> <input type="text"
									class="form-control" id="dateTo"></input>
							</div>
						</div>
					</div>
					<div class="form-group textright" style="margin-bottom:0;">
						<div style="width: 15%; float: right; text-align: right">
							<button type="button" class="btn green mybtn"
								onclick="searchValue()">
								<i class="fa fa-search"></i> Search
							</button>
						</div>
					</div>
					</br>
					<h4 class="form-section"></h4>
					<div class="table-scrollable">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th scope="col">日期</th>
									<th scope="col">净值</th>

								</tr>
							</thead>
							<tbody id="listItem">
							</tbody>
						</table>
					</div>
						<div class="row" style="margin-right:0px;">
							<div class="col-md-4 col-sm-4 items-info"></div>
							<div class="col-md-8 col-sm-8">
								<ul class="pagination pull-right" id="pageInfo">
								</ul>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
	<div class="content-wrapper page-container" style="min-height: 600px;display:none" id="investorSign">
		<div class="page-content-wrapper">
			<div class="page-content">
				<c:forEach var="investorSign" items="${ investorSignList }" varStatus="step">
						<div class="openInfoList_div">
							<a href="${saveInvestorPDFUrl}${investorSign.fileName}" target="_blank">
								<div class="openInfoItem clearfix">
									<span class="openInfoTitle">No.${step.index + 1}&nbsp;&nbsp;&nbsp;${investorSign.title }</span>
									<span class="openInfoDate">${investorSign.releaseDate }</span>
								</div>
							
							</a>
						</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</c:if>
	
	<script type="text/javascript">
		function showProductList(){
			$("#investorSign").css("display","none");
			$("#product_list").css("display","");
		}
		
		function investorSignList(){
			$("#investorSign").css("display","");
			$("#product_list").css("display","none");
		}
	
	
	</script>
</body>
</html>