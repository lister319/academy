<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="member.MemberDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//서블릿에서 넘겨준 list변수 조회
List<MemberDTO> items=(List<MemberDTO>)request.getAttribute("list");
%>
<table border="1">
 <tr>
   <th>ID</th>
   <th>이름</th>
   <th>이메일</th>
   <th>HP</th>
   <th>가입날짜</th>
 </tr>
 <% for(MemberDTO dto : items) { %>
 <tr>
   <td><%=dto.getIdx() %></td>
   <td><%=dto.getName() %></td>
   <td><%=dto.getEmail() %></td>
   <td><%=dto.getHp() %></td>
   <td><%=dto.getIdate() %></td>
 </tr>
 <% } %>
</table>
</body>
</html>