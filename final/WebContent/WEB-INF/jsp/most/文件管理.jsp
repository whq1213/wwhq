<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="/Css/style.css" />
    <script type="text/javascript" src="/Js/jquery.js"></script>
    <script type="text/javascript" src="/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="/Js/bootstrap.js"></script>
    <script type="text/javascript" src="/Js/ckform.js"></script>
    <script type="text/javascript" src="/Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body>
<form class="form-inline definewidth m20" action="index.html" method="get">
    类别名称：
    <input type="text" name="menuname" id="menuname"class="abc input-default" placeholder="" value="">&nbsp;&nbsp; 
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增类别</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>文件名</th>
        <th></th>
        <th>所在类别</th>
        <th></th>
        <th>文件信息</th>
        <th></th>
        <th>控制权限</th>
        <th></th>
        <th>状态</th>
        <th></th>
        <th>管理操作</th>
    </tr>
    </thead>
	     <tr>
            <td colspan="5">文件名1</td>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <td><a href="文件查看.jsp">编辑</a></td>
        </tr>
        <tr>
                <td>文件名1</td>
                <th></th>
                <td>CLASS</td>
                <th></th>
                <td>NORMAL</td>
                <th></th>
                <td>1</td>
                <th></th>
                <td>0</td>
                <th></th>
                <td><a href="文件查看.jsp">编辑</a></td>
            </tr><tr>
                <td>文件名1</td>
                <th></th>
                <td>CLASS</td>
                <th></th>
                <td>NORMAL</td>
                <th></th>
                <td>1</td>
                <th></th>
                <td>0</td>
                <th></th>
                <td><a href="文件查看.jsp">编辑</a></td>
            </tr><tr>
                <td>文件名1</td>
                <th></th>
                <td>CLASS</td>
                <th></th>
                <td>NORMAL</td>
                <th></th>
                <td>1</td>
                <th></th>
                <td>0</td>
                <th></th>
                <td><a href="文件查看.jsp">编辑</a></td>
            </tr></table>

</body>
</html>
<script>
    $(function () {
		$('#addnew').click(function(){
				window.location.href="add.html";
		 });
    });
</script>