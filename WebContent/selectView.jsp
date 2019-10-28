<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDBBean" %>
<%@ page import="board.BoardDataBean" %>  
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String selectForm = request.getParameter("selectForm");
	String id = request.getParameter("id");
	String dept = request.getParameter("dept");
	BoardDBBean cst_dao = BoardDBBean.getInstance();
	ArrayList<BoardDataBean> customs = cst_dao.searchResult(selectForm,id,dept);
%>
	<h1>직원 정보 조회 결과</h1>
	<hr>
	<table border="1">
		<tr>
			<td>성명</td>
			<td>사번</td>
			<td>직급</td>
			<td>직책</td>
			<td>연락처</td>
			<td>소속부서</td>
		</tr>
		<%
		for(BoardDataBean cst : customs){
		%>
		<tr>
			<td><%=cst.getName() %></td>
			<td><%=cst.getId() %></td>
			<td><%=cst.getPosition() %></td>
			<td><%=cst.getDuty() %></td>
			<td><%=cst.getPhone() %></td>
			<td><%=cst.getDept() %></td>
		</tr>
		<%
		}
		%>
	</table><br>
	<input type="button" value="확인" onclick="location.href='main.jsp'" style="width:90px;height:30px;font-align:center">
</body>
</html>






















