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
//4가지 저장영역
// pageContext(현재페이지)
// request(요청+응답 페이지)
// session(사용자 단위)
// application(서버단위)
String info=application.getServerInfo();
//WAS : Web Apllication Server
application.log("WAS 정보:"+info);//콘솔에 출력(붉은색, 서버로그에서출력)
System.out.println("WAS 정보:"+info);//콘솔에 출력(검은색)
//개발 디렉토리가 아닌 서비스 디렉토리(배포경로)
String path=application.getRealPath("/");
application.log("서비스 경로:"+path);//서버부하가 있음. 로깅툴이 별도 존재
System.out.println("서비스 경로:"+path);

application.setAttribute("message", "hello");//key, value
%>
<a href="application_result.jsp">서버 변수 확인</a>
</body>
</html>