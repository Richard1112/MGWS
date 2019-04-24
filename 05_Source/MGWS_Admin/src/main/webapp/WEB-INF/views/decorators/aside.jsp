<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview active">
              <a href="#">
                <i class="fa fa-table"></i> <span>管理</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/recruitmentInit" data-addtab="recruitment" title="招聘信息"><i class="fa fa-circle-o"></i> 招聘信息</a></li>
                <li><a href="${pageContext.request.contextPath}/courseInit" data-addtab="course" title="课程信息"><i class="fa fa-circle-o"></i> 课程信息</a></li>
                <li><a href="${pageContext.request.contextPath}/assetCartInit" data-addtab="asset" title="资产管理"><i class="fa fa-circle-o"></i> 资产管理</a></li>
                <li><a href="${pageContext.request.contextPath}/customerInit" data-addtab="asset" title="客户管理"><i class="fa fa-circle-o"></i> 客户管理</a></li>
                <li><a href="${pageContext.request.contextPath}/productInit" data-addtab="asset" title="产品管理"><i class="fa fa-circle-o"></i> 产品管理</a></li>
                <li><a href="${pageContext.request.contextPath}/valueInit" data-addtab="asset" title="净值管理"><i class="fa fa-circle-o"></i> 净值管理</a></li>
                <li><a href="${pageContext.request.contextPath}/productTadeInit" data-addtab="asset" title="产品购买"><i class="fa fa-circle-o"></i> 产品购买</a></li>
                <li><a href="${pageContext.request.contextPath}/investorSignInit" data-addtab="asset" title="投资人签署"><i class="fa fa-circle-o"></i> 投资人签署</a></li>
                <li><a href="${pageContext.request.contextPath}/openInfoInit" data-addtab="asset" title="信息公示"><i class="fa fa-circle-o"></i> 信息公示</a></li>
                <li><a href="${pageContext.request.contextPath}/announcementInfoInit" data-addtab="asset" title="公告信息"><i class="fa fa-circle-o"></i> 公告信息</a></li>
                <li><a href="${pageContext.request.contextPath}/investorEduInit" data-addtab="asset" title="投资人教育"><i class="fa fa-circle-o"></i> 投资人教育</a></li>
              </ul>
            </li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>