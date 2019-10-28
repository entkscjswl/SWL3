<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사관리시스템</title>
<style>
    body{font-family:'Nanum Gothic';}
    fieldset{width:400px;}
</style>
</head>
<body>
	<h1>인사관리시스템</h1>
	<fieldset>
        <legend>인사관리 메인메뉴</legend>
        <input type="button" value="조회" onclick="location.href='selectForm.jsp'" style="height:65px;width:120px">&nbsp;&nbsp;
        <input type="button" value="사원등록" onclick="location.href='registForm.jsp'" style="height:65px;width:120px">&nbsp;&nbsp;
        <input type="button" value="정보변경" onclick="location.href='changeForm.jsp'" style="height:65px;width:120px">&nbsp;&nbsp;<br>
        <input type="button" value="퇴사처리" onclick="location.href='deleteForm.jsp'" style="height:65px;width:120px">&nbsp;&nbsp;
        <input type="button" value="종료" onclick="self.close();" style="height:65px;width:120px">&nbsp;
	</fieldset>
</body>
</html>