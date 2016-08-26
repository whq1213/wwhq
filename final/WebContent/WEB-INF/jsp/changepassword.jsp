<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录</title>
</head>
<body>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal" method="post">
				<div class="control-group">
					<label class="control-label" for="inputEmail">原始密码</label>
					<div class="controls">
						<input id="inputPassword" type="password"  name="password" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPassword">新密 码</label>
					<div class="controls">
						<input id="inputPassword" type="password"  name="password1"></input>
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="inputPassword">再次输入新密 码</label>
					<div class="controls">
						<input id="inputPassword" type="password"  name="password2"></input>
					</div>
				</div>
				<div class="control-group">
					
					<div class=change>
					<input type="submit" value="确认修改"></input>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<h1>${exception.message }</h1>

</body>
</html>