<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户添加</title>
</head>
<body>
<sf:form method="post"  enctype="multipart/form-data" accept-charset="UTF-8">
<table width="700" align="center" border="1">
	<tr>
	<td>选择文件类型索引:</td><td><input type="text"    name = "type1"/></td>
	<td>上传分类:</td><td><input type="text"    name = "type2"/></td>
	<td>上传格式:</td><td><input type="text"    name = "type3"/></td>
	</tr>
	<tr>
	 <td>图片:</td><td><input type="file" name="files"/></td>
	</tr>
	<tr>
	
	<td colspan="2">
		<input type="submit" value="用户添加"/>
	</td>
	</tr>
</table>
</sf:form>
</body>
</html>