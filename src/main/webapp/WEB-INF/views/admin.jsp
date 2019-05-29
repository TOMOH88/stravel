<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>관리자 모드</h1>
<div>
<h2>관리자 로그인</h2>

<form action="adminLogin.do" method="post">
아이디 : <input type="text" name="admin_id"/>
비밀번호 : <input type="password" name="admin_password"/>
<input type="submit" value="로그인"/>
</form>
</div>
<hr>
<h2>관리자 가입</h2>
<div>
<form action="admininsert.do" method="post">
<table>
<tr><th>아이디</th><td><input type="text" name="admin_id"></td></tr>
<tr><th>비밀번호</th><td><input type="password" name="admin_password"></td></tr>
<tr><th>이름</th><td><input type="text" name="admin_name"></td></tr>
<tr><th colspan="2"><input type="submit" value="가입하기"></tr>
</table>
</form>
</div>

</body>
</html>