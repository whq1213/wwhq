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

  <title>Editable Table</title>

  <!--data table-->
  <link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

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
        <div class="page-heading">
            <h3>
            	用户管理
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">Dashboard</a>
                </li>
                <li>
                    <a href="#">Data Table</a>
                </li>
                <li class="active"> Editable Table </li>
            </ul>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
             <div class="row">
                <div class="col-sm-12">
                <section class="panel">
                <header class="panel-heading">
                	用户管理
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                        <a href="javascript:;" class="fa fa-times"></a>
                     </span>
                </header>
                <div class="panel-body">
                <div class="adv-table editable-table ">
                <div class="clearfix">
                    <div class="btn-group">
                        <button id="editable-sample_new" class="btn btn-primary">
                        	添加新用户 <i class="fa fa-plus"></i>
                        </button>
                    </div>
                    <div class="btn-group pull-right">
                        <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="#">Print</a></li>
                            <li><a href="#">Save as PDF</a></li>
                            <li><a href="#">Export to Excel</a></li>
                        </ul>
                    </div>
                </div>
                <div class="space15"></div>
                <table class="table table-striped table-hover table-bordered" id="editable-sample">
                <thead>
                <tr>
                    <th>工号</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>状态</th>
                    <th>编辑</th>
                    <th>删除</th>
                </tr>
                </thead>
                <tbody>
                <tr class="">
                    <td>0001</td>
                    <td>Smith</td>
                    <td>3455</td>
                    <td class="center">Lorem ipsume</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Mojela</td>
                    <td>Firebox</td>
                    <td>567</td>
                    <td class="center">new user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Akuman </td>
                    <td> Dareon</td>
                    <td>987</td>
                    <td class="center">ipsume dolor</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Theme</td>
                    <td>Bucket</td>
                    <td>342</td>
                    <td class="center">Good Org</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Jhone</td>
                    <td> Doe</td>
                    <td>345</td>
                    <td class="center">super user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Margarita</td>
                    <td>Diar</td>
                    <td>456</td>
                    <td class="center">goolsd</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Jhon Doe</td>
                    <td>Jhon Doe </td>
                    <td>1234</td>
                    <td class="center"> user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Helena</td>
                    <td>Fox</td>
                    <td>456</td>
                    <td class="center"> Admin</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Aishmen</td>
                    <td> Samuel</td>
                    <td>435</td>
                    <td class="center">super Admin</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>dream</td>
                    <td>Land</td>
                    <td>562</td>
                    <td class="center">normal user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>babson</td>
                    <td> milan</td>
                    <td>567</td>
                    <td class="center">nothing</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Waren</td>
                    <td>gufet</td>
                    <td>622</td>
                    <td class="center">author</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Jhone</td>
                    <td> Doe</td>
                    <td>345</td>
                    <td class="center">super user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Margarita</td>
                    <td>Diar</td>
                    <td>456</td>
                    <td class="center">goolsd</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Jhon Doe</td>
                    <td>Jhon Doe </td>
                    <td>1234</td>
                    <td class="center"> user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Helena</td>
                    <td>Fox</td>
                    <td>456</td>
                    <td class="center"> Admin</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Aishmen</td>
                    <td> Samuel</td>
                    <td>435</td>
                    <td class="center">super Admin</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>dream</td>
                    <td>Land</td>
                    <td>562</td>
                    <td class="center">normal user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>babson</td>
                    <td> milan</td>
                    <td>567</td>
                    <td class="center">nothing</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Waren</td>
                    <td>gufet</td>
                    <td>622</td>
                    <td class="center">author</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Jhone</td>
                    <td> Doe</td>
                    <td>345</td>
                    <td class="center">super user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Margarita</td>
                    <td>Diar</td>
                    <td>456</td>
                    <td class="center">goolsd</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Jhon Doe</td>
                    <td>Jhon Doe </td>
                    <td>1234</td>
                    <td class="center"> user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Helena</td>
                    <td>Fox</td>
                    <td>456</td>
                    <td class="center"> Admin</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Aishmen</td>
                    <td> Samuel</td>
                    <td>435</td>
                    <td class="center">super Admin</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>dream</td>
                    <td>Land</td>
                    <td>562</td>
                    <td class="center">normal user</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>babson</td>
                    <td> milan</td>
                    <td>567</td>
                    <td class="center">nothing</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                <tr class="">
                    <td>Waren</td>
                    <td>gufet</td>
                    <td>622</td>
                    <td class="center">author</td>
                    <td><a class="edit" href="javascript:;">Edit</a></td>
                    <td><a class="delete" href="javascript:;">Delete</a></td>
                </tr>
                </tbody>
                </table>
                </div>
                </div>
                </section>
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

<!--data table-->
<script type="text/javascript" src="js/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

<!--script for editable table-->
<script src="js/editable-table.js"></script>

<!-- END JAVASCRIPTS -->
<script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
</script>

</body>
</html>
