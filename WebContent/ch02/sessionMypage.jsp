<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//pageContext(현재페이지) < request(요청+응답) < session(사용자 단위) <
// application(서버단위)
//session 영역에 변수 저장
session.setAttribute("id", "hong");//setAttribute("변수명","값")
session.setAttribute("name", "홍길동");
session.setAttribute("email", "hong@gmail.com");
session.setAttribute("hp", "010-1234-1234");
RequestDispatcher rd=
request.getRequestDispatcher("session_resultMypage.jsp");
rd.forward(request, response);
%>


</body>
</html>