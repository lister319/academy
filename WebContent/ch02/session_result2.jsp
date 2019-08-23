<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
[session으로 넘어온 값]<br>
이름 : <%=session.getAttribute("name") %>,
나이 : <%=session.getAttribute("age") %><br>
<hr>
[request로 넘어온 값]<br>
이름 : <%=request.getAttribute("name") %>,
나이 : <%=request.getAttribute("age") %><br>

<!-- session객체를 쓰면 데이터가 전달되며, 서버가 session아이디를
참조를 해서 데이터를 유지시켜주며, request객체는 요청+응답, 단2페이지만
데이터를 유지시켜주는 특징이 있음. request객체는 forward()를 써야
데이터가 전달이 가능하다. -->

</body>
</html>