<%@ page import="board.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
BoardDataBean article = new BoardDataBean();

article.setId(Integer.parseInt(multi.getParameter("num")));
article.setName(multi.getParameter("writer"));
article.setDept(multi.getParameter("dept"));
