<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="keywords" content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">

  <title>AdminX</title>

  <!--icheck-->
  <link href="${pageContext.request.contextPath}/js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/js/iCheck/skins/square/square.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/js/iCheck/skins/square/red.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/js/iCheck/skins/square/blue.css" rel="stylesheet">

  <!--dashboard calendar-->
  <link href="${pageContext.request.contextPath}/css/clndr.css" rel="stylesheet">

  <!--Morris Chart CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/js/morris-chart/morris.css">

  <!--common-->
  <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">

</head>

<body class="sticky-header">

<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--左上角网站logo start-->
        <div class="logo">
            <a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo_icon.png" alt=""></a>
        </div>
        <!--左上角网站logo end-->

        <div class="left-side-inner">
            <!--左侧导航栏 start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="active"><a href="index.jsp"><i class="fa fa-home"></i> <span>首页</span></a></li>
                <li><a href="findUserInfo"  target="iframe0"><i class="fa fa-laptop"></i> <span>个人信息</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>我的文件</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="File/upload" target="iframe0" > 文件上传</a></li>
                        <li><a href="uploadrecode"   target="iframe0"> 上传记录</a></li>
                    </ul>
                </li>
                <li><a href="Down/download" target="iframe0"><i class="fa fa-cogs"></i> <span>下载专区</span></a>              	 
                </li>

                <li class="menu-list"><a href=""><i class="fa fa-bullhorn"></i> <span>管理员专区</span></a>
					<ul class="sub-menu-list">
                        <li><a href="Down/download"  target="iframe0"> 用户管理</a></li>
                        <li><a href="Down/shenhe"  target="iframe0"> 文件审核</a></li>
                    </ul>
                </li>
                <li><a href="loginout"><i class="fa fa-sign-in"></i> <span>登出</span></a></li>

            </ul>
            <!--左侧导航栏 end-->

        </div>
    </div>
    <!-- 左侧区域 end-->
    <!-- 主页面内容 start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->

            <!--search start-->
            <form class="searchform" action="index.html" method="post">
                <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
            </form>
            <!--search end-->

            <!--notification menu start -->
            <div class="menu-right">
            	<!-- 右上角通知区域 start -->
                <ul class="notification-menu">
                    
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge">20</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">You have 21 Mails </h5>
                            <ul class="dropdown-list normal-list">
                                <li class="new">
                                    <a href="">
                                        <span class="thumb"><img src="images/photos/user1.png" alt="123" /></span>
                                        <span class="desc">
                                          <span class="name">John Doe <span class="badge badge-success">new</span></span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="thumb"><img src="images/photos/user2.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Jonathan Smith</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="new"><a href="">Read All Mails</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="badge">2</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">Notifications</h5>
                            <ul class="dropdown-list normal-list">
                                <li class="new">
                                    <a href="">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        <span class="name">Server #1 overloaded.  </span>
                                        <em class="small">34 mins</em>
                                    </a>
                                </li>
                                <li class="new">
                                    <a href="">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        <span class="name">Server #3 overloaded.  </span>
                                        <em class="small">1 hrs</em>
                                    </a>
                                </li>
                                <li class="new"><a href="">See All Notifications</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="${pageContext.request.contextPath}/images/photos/user-avatar.png" alt="" />
                            ${name.user_name }
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="findUserInfo"  target="iframe0"><i class="fa fa-user"></i>  个人信息</a></li>
                            <li><a href="changepassword"  target="iframe0"><i class="fa fa-cog"></i>  用户设置</a></li>
                            <li><a href="loginout"><i class="fa fa-sign-out"></i> 登出</a></li>
                        </ul>
                    </li>

                </ul>
                <!-- 右上角通知区域 end -->
            </div>
            <!--notification menu end -->
            <div class="ad-main-comment J_mainContent" id="ad-iframe">
                    <iframe class="J_iframe" id="theFrame" name="iframe0" width="100%"  src="fi" frameborder="0"></iframe> 
                </div>
      			
</section>
	

<!-- Placed js at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/modernizr.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js"></script>

<!--easy pie chart-->
<script src="${pageContext.request.contextPath}/js/easypiechart/jquery.easypiechart.js"></script>
<script src="${pageContext.request.contextPath}/js/easypiechart/easypiechart-init.js"></script>

<!--Sparkline Chart-->
<script src="${pageContext.request.contextPath}/js/sparkline/jquery.sparkline.js"></script>
<script src="${pageContext.request.contextPath}/js/sparkline/sparkline-init.js"></script>

<!--icheck -->
<script src="${pageContext.request.contextPath}/js/iCheck/jquery.icheck.js"></script>
<script src="${pageContext.request.contextPath}/js/icheck-init.js"></script>

<!-- jQuery Flot Chart-->
<script src="${pageContext.request.contextPath}/js/flot-chart/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath}/js/flot-chart/jquery.flot.tooltip.js"></script>
<script src="${pageContext.request.contextPath}/js/flot-chart/jquery.flot.resize.js"></script>


<!--Morris Chart-->
<script src="${pageContext.request.contextPath}/js/morris-chart/morris.js"></script>
<script src="${pageContext.request.contextPath}/js/morris-chart/raphael-min.js"></script>

<!--Calendar-->
<script src="${pageContext.request.contextPath}/js/calendar/clndr.js"></script>
<script src="${pageContext.request.contextPath}/js/calendar/evnt.calendar.init.js"></script>
<script src="${pageContext.request.contextPath}/js/calendar/moment-2.2.1.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>

<!--common scripts for all pages-->
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>

<!--Dashboard Charts-->
<script src="${pageContext.request.contextPath}/js/dashboard-chart-init.js"></script>

<script>

    //google map
    function setSize(){
		$('#theFrame').css("height",$(window).height());
	}

	//页面加载时设框架款宽度
	$(document).ready(function (){
	setSize();
	}); 
  
	//人工拖扯窗口大小时，重设框架款宽度
	$(window).resize(function () { 
	setSize();
	});
</script>

</body>
</html>
