<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사관리 조회화면</title>
</head>
<body>
	<h1>인사관리조회화면</h1>
	<form action="selectView.jsp" method="post">
	<fieldset>
		<legend>인사관리 조회</legend>
		<input type="radio" name="selectForm" value="sid"> 사원번호로 조회 <input type="text" name="id"><br>
		<input type="radio" name="selectForm" value="sdept"> 부서명으로 조회 
		<select name="dept" style="height:25px;">
			<option value="인사부">인사부</option>
			<option>경리부</option>
			<option>기획부</option>
			<option>홍보부</option>
			<option>영업부</option>
		</select><br>
		<input type="submit" value="조회" style="width:70pt;height:20pt;">&nbsp;&nbsp;
		<input type="button" value="취소" onclick="location.href='main.jsp'" style="width:70pt;height:20pt;">
	</fieldset>
	</form>
</body>
</html>