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
<form action="index.html" method="post" class="definewidth m20" >
<input type="hidden" name="id" value="{$role.id}" />
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">选择用户</td>
        <td><input type="text" name="title" value=""/></td>
    </tr>
    <tr>
        <td class="tableleft">权限控制</td>
        <td>
            <input type="radio" name="status" value="1" checked /> 启用
           <input type="radio" name="status" value="0"  /> 禁用
        </td>
    </tr>
    <tr>
        <td class="tableleft">权限</td>
        <td>
        	<ul>
        		<li>
        		<label class='checkbox inline'><input type='checkbox' name='group[]' value='' />一级权限</label>
        			<ul>
        				<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='21' checked/>二级权限</label>
        				<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='22' checked/>二级权限</label>
        			</ul>
        		</li>
        		<li>
        		<label class='checkbox inline'><input type='checkbox' name='group[]' value='' />一级权限</label>
        			<ul>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='25' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='26' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='27' checked/>二级权限</label>
        			</ul>
        		</li>
        		<li>
        		<label class='checkbox inline'><input type='checkbox' name='group[]' value='' />一级权限</label>
        			<ul>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='17' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='18' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='19' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='20' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='23' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='24' checked/>二级权限</label>
        			</ul>
        		</li>
        		<li>
        		<label class='checkbox inline'><input type='checkbox' name='group[]' value='' />一级权限</label>
        			<ul>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='1' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='2' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='3' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='4' checked/>二级权限</label>
        			</ul></li>
        			<li>
        			<label class='checkbox inline'><input type='checkbox' name='group[]' value='' />一级权限</label>
        			<ul>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='9' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='10' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='11' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='12' checked/>二级权限</label>
        			</ul>
        			</li>
        			<li>
        			<label class='checkbox inline'><input type='checkbox' name='group[]' value='' />一级权限</label>
        			<ul>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='13' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='14' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='15' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='16' checked/>二级权限</label>
        			</ul>
        			</li>
        			<li>
        			<label class='checkbox inline'><input type='checkbox' name='group[]' value='' />一级权限</label>
        			<ul>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='5' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='6' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='7' checked/>二级权限</label>
        			<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='8' checked/>二级权限</label>
        			</ul>
        			</li>
        		</ul>
        	</td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {
        $(':checkbox[name="group[]"]').click(function () {
            $(':checkbox', $(this).closest('li')).prop('checked', this.checked);
        });

		$('#backid').click(function(){
				window.location.href="index.jsp";
		 });
    });
</script>