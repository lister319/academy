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
//pageName에는 includedTest.jsp가 값으로 들어온다.
String pageName=request.getParameter("pageName");
%>
포함하는 페이지는 <%=pageName %><br>
<%-- jsp 액션태그 : <jsp:....> 변수 공유는 안됨  --%>
<jsp:include page="includedTest.jsp"></jsp:include>
<%-- 메시지 : <%=message %> --%>
 <!--message란 변수는 사용못하고 page내용만 가져옴  -->


<!-- 변수 공유를 하려면 include file 을 사용 -->
<%@ include file="includedTest.jsp" %>
메시지 : <%=message %>
</body>
</html>