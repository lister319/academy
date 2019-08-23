<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="book.*" %>
 <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
BookDAO dao=new BookDAO();
ArrayList<BookDTO> items=dao.bookList();
%>
<h2>제목</h2>
<ul>
<% for(BookDTO dto : items) { %>
<li><%=dto.getTitle() %></li>
<% } %>
</ul>
<h2>저자</h2>
<ul>
<% for(BookDTO dto : items) { %>
<li><%=dto.getAuthor() %></li>
<% } %>
</ul>
<h2>가격</h2>
<ul>
<% for(BookDTO dto : items) { %>
<li><%=dto.getPrice() %></li>
<% } %>
</ul>
<h2>수량
</h2>
<ul>
<% for(BookDTO dto : items) { %>
<li><%=dto.getQty() %></li>
<% } %>
</ul>
</body>
</html>