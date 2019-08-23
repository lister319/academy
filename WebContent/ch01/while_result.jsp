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

//request.setAttribute("변수명",값) Object 타입으로 처리
//request.getAttribute("변수명")
//따라서 getAttribute로 가져온 값은 해당 데이터타입으로 형변환 해줘야함.

int result=(int)request.getAttribute("result");
out.println("결과:"+result);
%>
</body>
</html>