<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>   
    <title>学生请销假及地理位置查询系统</title>  
</head>

<body>
       <!-- 遍历Map集合 -->
     <c:forEach var="me" items="${fileNameMap}">
         <c:url value="/Down/uploadfiles" var="uploadfiles">
             <c:param name="filename" value="${me.key}">
             </c:param>
         </c:url>
         <c:url value="/Down/deletfiles" var="deletfiles">
         <c:param name="filename" value="${me.key}">
             </c:param>
         </c:url>
         ${me.value}<a href="${uploadfiles}">同意通过</a> <a href="${deletfiles}">否决</a>
         
         <br/>
    </c:forEach>
  
</body> 
</html>
