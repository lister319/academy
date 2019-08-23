<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jspf" %>
<%@ page import="config.Constants" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  background: <%=bodyback_c %>;
}
</style>
</head>
<body>
<jsp:include page="test2.jsp"></jsp:include>
<%-- <%=str %> --%>
<!-- jsp액션태그는 java변수를 공유할 수 없음 -->

<%@ include file="test2.jsp" %>
<%="이름 : "+str %><br>
<%="나이 : "+str1 %><br>
<%="이메일 : "+str2 %><br>
<%="hp : "+str3 %><br>
<!-- page 모듈화를 위해 파일을 include하는 방법이 2가지가 있는데,
 jsp액션태그방식과, include file 지시어 방법 중 파일공유가 가능한
 것은 include file 지시어 방법이다.-->

</body>
</html>