<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사관리 사원등록화면</title>
<style>
	fieldset{
	width:400px;
	}
</style>
</head>
<body>
	<h1>인사관리 사원등록화면</h1>
	<hr>
	<fieldset>
		<legend>인사관리 사원등록</legend>
		<table style="padding-bottom:5pt;">
			<tr>
				<td>성 명</td>
				<td>: <input type="text" style="width:120pt;"></td>
			</tr>
			<tr>
				<td>사원번호</td>
				<td>: <input type="text" style="width:120pt;"></td>
			</tr>
			<tr>
				<td>소속부서</td>
				<td>: <select style="width:120pt;height:25px;"><option>gg</option><option>ㅋㅋ</option></select></td>
			</tr>
			<tr>
				<td>직 급</td>
				<td>: <select style="width:120pt;height:25px;"><option>gg</option><option>ㅋㅋ</option></select></td>
			</tr>
			<tr>
				<td>직 책</td>
				<td>: <input type="text" style="width:120pt;"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>: <input type="text" style="width:120pt;"></td>
			</tr>
		</table>
		<input type="submit" value="변경" style="width:70pt;height:20pt">&nbsp;
		<input type="button" value="취소" onclick="location.href='main.jsp'" style="width:70pt;height:20pt;">
	</fieldset>
</body>
</html>