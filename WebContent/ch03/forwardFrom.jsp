<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
pageContext.setAttribute() 현재페이지
request.setAttribute() 요청+응답 2페이지
session.setAttribute() 사용자 단위 모든 페이지
application.setAttribute() 서버에 접속한 모든 사람
 -->

<%
request.setAttribute("id", "kim");
request.setAttribute("name", "김철수");
/* RequestDispatcher rd=request.getRequestDispatcher("forwardTo.jsp");
rd.forward(request, response); */
%>
<jsp:forward page="forwardTo.jsp"></jsp:forward>
<!-- forward는 주소 그대로, 화면만 넘어감(데이터 유지) -->
</body>
</html>