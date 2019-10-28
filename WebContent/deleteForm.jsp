<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사관리 퇴사처리 화면</title>
<style>
	fieldset{
	width:400px;
	}
</style>
</head>
<body>
	<h1>인사관리 퇴사처리 화면</h1>
	<hr>
	<fieldset>
		<legend>인사관리 사원정보 변경</legend>
		<table>
			<tr>
				<td>성명</td>
				<td>: <input type="text" style="width:120pt;"></td>
			</tr>
			<tr>
				<td>사원번호</td>
				<td>: <input type="text" style="width:120pt;"></td>
			</tr>
		</table>
		<input type="submit" value="등록" style="width:70pt;height:20pt">&nbsp;
		<input type="button" value="취소" onclick="location.href='main.jsp'" style="width:70pt;height:20pt;">	
	</fieldset>
</body>
</html>