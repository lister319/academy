<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,Object> map=
(Map<String,Object>)request.getAttribute("map");
String name=(String)map.get("name");
String color=(String)map.get("color");
String message=(String)map.get("message");
String[] hobby=(String[])map.get("hobby");
%>
<%=name %>남이 좋아하는 색상은
<span style="color:<%=color%>"><%=color%>이고</span>
<%=message %>
<br>
취미 :
<%
for(String str : hobby) {
	out.println(str+" ");
}
%>
</body>
</html>