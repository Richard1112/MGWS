<!-- BEGIN FOOTER -->
<!-- <div class="footer">
	<div class="footer-inner">
		 2014 &copy; OZTT
	</div>
	<div class="footer-tools">
		<span class="go-top">
			<i class="fa fa-angle-up"></i>
		</span>
	</div>
</div> -->
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${basePath}/assets/plugins/respond.min.js"></script>
<script src="${basePath}/assets/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="${basePath}/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${basePath}/assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${basePath}/static/jqGrid/js/i18n/grid.locale-cn.js"></script>
<script src="${basePath}/static/jqGrid/js/jquery.jqGrid.src.js"
	type="text/javascript"></script>
<script src="${basePath}/assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${basePath}/assets/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js" type="text/javascript" ></script>
<script src="${basePath}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript" ></script>
<script src="${basePath}/assets/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/gritter/js/jquery.gritter.js" type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
<script src="${basePath}/assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="${basePath}/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript" ></script>
<script src="${basePath}/assets/plugins/plupload/js/plupload.full.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${basePath}/assets/scripts/core/app.js" type="text/javascript"></script>
<script src="${basePath}/assets/scripts/custom/components-editors.js"></script>
<script src="${basePath}/assets/scripts/custom/index.js" type="text/javascript"></script>
<script src="${basePath}/assets/scripts/custom/tasks.js" type="text/javascript"></script>
<script src="${basePath}/assets/scripts/core/datatable.js"></script>
<script src="${basePath}/assets/scripts/custom/ecommerce-products-edit.js"></script>

<script type="text/javascript" src="${basePath}/assets/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="${basePath}/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

<script type="text/javascript" src='${basePath}/js/jquery.uploadify.min.js'></script>
<script type="text/javascript" src='${basePath}/js/fileinput.js'></script>
<script type="text/javascript" src="${basePath}/js/user-common.js"></script>
<script type="text/javascript" src="${basePath}/js/common_validate.js"></script>
<script type="text/javascript" src="${basePath}/js/my-common.js"></script>
<script src="${basePath}/js/bootstrap-multiselect.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {    
   App.init(); // initlayout and core plugins
   EcommerceProductsEdit.init();
});
</script>
<!-- END JAVASCRIPTS -->