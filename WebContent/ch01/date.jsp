<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Date nowDate = new Date(); //날짜 객체
out.println(nowDate+"<br>");//웹브라우저 화면에 출력
System.out.println(nowDate);//톰캣의 Console창에 출력

SimpleDateFormat dateFormat=
new SimpleDateFormat("yyyy년 MM월 dd일 a HH:mm:ss");

String formatDate = dateFormat.format(nowDate);
%>
<!-- 표현식(expression) -->
현재 날짜는 <%=formatDate %>입니다.<br>

<!-- 정식출력문이지만 표현식으로 처리하면 편리함. -->
현재 날짜는 <% out.println(formatDate); %>입니다.



</body>
</html>