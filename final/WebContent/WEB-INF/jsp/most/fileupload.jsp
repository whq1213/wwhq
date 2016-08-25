<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--360浏览器优先以webkit内核解析-->
    <meta name="renderer" content="webkit">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户添加</title>
</head>
<body>
<%  
String user = session.getAttribute("name").toString(); //从session里把a拿出来，并赋值给M  
System.out.println("username:"+user);
%>  
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