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
					<label class="control-label" for="inputEmail">用户名</label>
					<div class="controls">
						<input id="inputEmail" type="text"  name="user_id" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPassword">密 码</label>
					<div class="controls">
						<input id="inputPassword" type="password"  name="password"></input>
					</div>
				</div>
				<div class="control-group">
					<div class="checkbox">
						<label class="checkbox"><input name="isLogin" type="checkbox" value="y" /> Remember me</label> 
					</div>
					<div class="login">
					<input type="submit" value="登录"></input>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<h1>${exception.message }</h1>

</body>
</html>