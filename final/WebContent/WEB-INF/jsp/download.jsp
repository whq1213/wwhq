<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>   
    <title>学生请销假及地理位置查询系统</title>  
</head>

<body>
       <!-- 遍历Map集合 -->
     <c:forEach var="me" items="${fileNameMap}">
         <c:url value="/Down/downloadfiles" var="downurl">
         
             <c:param name="filename" value="${me.key}">
             </c:param>
         </c:url>
         
         ${me.value}<a href="${downurl}">下载</a>
         <br/>
    </c:forEach>
  
</body> 
</html>
