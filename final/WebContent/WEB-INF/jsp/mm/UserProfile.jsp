<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">

  <title>Profile</title>

  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="sticky-header">

<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--左上角网站logo start-->
        <div class="logo">
            <a href="index.jsp"><img src="images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.jsp"><img src="images/logo_icon.png" alt=""></a>
        </div>
        <!--左上角网站logo end-->

        <div class="left-side-inner">
            <!--左侧导航栏 start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="active"><a href="index.jsp"><i class="fa fa-home"></i> <span>首页</span></a></li>
                <li><a href="UserProfile.jsp"><i class="fa fa-laptop"></i> <span>个人信息</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>我的文件</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="FileUpload.jsp"> 文件上传</a></li>
                        <li><a href=""> 上传记录</a></li>
                    </ul>
                </li>
                <li><a href=""><i class="fa fa-cogs"></i> <span>下载专区</span></a></li>

                <li class="menu-list"><a href=""><i class="fa fa-bullhorn"></i> <span>管理员专区</span></a>
					<ul class="sub-menu-list">
                        <li><a href="UserManagement.jsp"> 用户管理</a></li>
                        <li><a href="FileCheck.jsp"> 文件审核</a></li>
                    </ul>
                </li>
                <li><a href=""><i class="fa fa-sign-in"></i> <span>登出</span></a></li>

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
                            <i class="fa fa-tasks"></i>
                            <span class="badge">2</span>
                        </a>
                        
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">有8项待完成任务</h5>
                            <ul class="dropdown-list user-list">
                                <li class="new">
                                    <a href="#">
                                        <div class="task-info">
                                            <div>任务1</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-warning">
                                                <span class="">40%</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="new">
                                    <a href="#">
                                        <div class="task-info">
                                            <div>任务2</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div style="width: 90%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="90" role="progressbar" class="progress-bar progress-bar-success">
                                                <span class="">90%</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="new"><a href="">See All Pending Task</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge">2</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">You have 2 Mails </h5>
                            <ul class="dropdown-list normal-list">
                                <li class="new">
                                    <a href="">
                                        <span class="thumb"><img src="images/photos/user1.png" alt="" /></span>
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
                            <img src="images/photos/user-avatar.png" alt="" />
                            	用户名
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="#"><i class="fa fa-user"></i>  个人信息</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i>  用户设置</a></li>
                            <li><a href="#"><i class="fa fa-sign-out"></i> 登出</a></li>
                        </ul>
                    </li>

                </ul>
                <!-- 右上角通知区域 end -->
            </div>
            <!--notification menu end -->
        </div>
        <!-- header section end-->

        <!-- page heading start-->
        <!--<div class="page-heading">-->
            <!--Page Tittle goes here-->
        <!--</div>-->
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">

            <div class="row">
                <div class="col-md-4">
                    <div class="row">
                    <!-- 用户头像 start -->
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="profile-pic text-center">
                                        <img alt="" src="images/photos/user1.png">
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- 用户头像 end -->
                    <!-- 用户信息 start -->
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <ul class="p-info">
                                        <li>
                                            <div class="title">工号</div>
                                            <div class="desk">001</div>
                                        </li>
                                        <li>
                                            <div class="title">职位</div>
                                            <div class="desk">111</div>
                                        </li>
                                        <li>
                                            <div class="title">部门</div>
                                            <div class="desk">111</div>
                                        </li>
                                        <li>
                                            <div class="title">项目组</div>
                                            <div class="desk">1123</div>
                                        </li>
                                        <li>
                                            <div class="title">生日</div>
                                            <div class="desk">1911/11/11</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- 用户信息 end -->
                    </div>
                </div>
                <div class="col-md-8">
                <!-- 用户个人信息 -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="profile-desk">
                                        <h1>张三</h1>
                                        <span class="designation">岗位名称</span>
                                        <p>
                                        	个人简介
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	<!-- 上传记录 -->
                        <div class="col-md-12">
                            <div class="panel">
                                <header class="panel-heading">
                                	上传记录
                                    <span class="tools pull-right">
                                        <a class="fa fa-chevron-down" href="javascript:;"></a>
                                        <a class="fa fa-times" href="javascript:;"></a>
                                     </span>
                                </header>
                                <div class="panel-body">
                                    <ul class="activity-list">
                                        <li>
                                            <div class="activity-desk">
                                                <h5> 2016/8/25 <span>上传文档</span></h5>
                                                <a href="#">File Name 1</a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="activity-desk">
                                                <h5> 2016/8/25 <span>上传文档</span></h5>
                                                <a href="#">File Name 1</a>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="activity-desk">
                                                <h5> 2016/8/25 <span>上传文档</span></h5>
                                                <a href="#">File Name 1</a>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="activity-desk">
                                                <h5> 2016/8/25 <span>上传文档</span></h5>
                                                <a href="#">File Name 1</a>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="activity-desk">
                                                <h5> 2016/8/25 <span>上传文档</span></h5>
                                                <a href="#">File Name 1</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--body wrapper end-->

    </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>

<!--Sparkline Chart-->
<script src="js/sparkline/jquery.sparkline.js"></script>
<script src="js/sparkline/sparkline-init.js"></script>

<!--google map-->
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&AMP;sensor=false"></script>


<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

<script>

    //google map
    function initialize() {
        var myLatlng = new google.maps.LatLng(-37.815207, 144.963937);
        var mapOptions = {
            zoom: 15,
            scrollwheel: false,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: 'Hello World!'
        });
    }
    google.maps.event.addDomListener(window, 'load', initialize);

</script>

</body>
</html>
