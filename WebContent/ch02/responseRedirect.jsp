<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setAttribute("name", "김철수");
String name=URLEncoder.encode("김철수", "utf-8");

//response 응답객체
//forward방식과 달리 주소도 변경, 간단한 파라미터 스트링값만 전달가능
response.sendRedirect("responseRedirected.jsp?name="+name+"&age=20");
%>


</body>
</html>