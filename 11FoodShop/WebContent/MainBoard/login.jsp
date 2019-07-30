<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="member">
<input type="text" name="userid" placeholder="아이디"><br>
<input type="text" name="passwd" placeholder="비밀번호"><br>
</form>
<button onclick="location='MemberAdd.jsp'">회원가입</button>
<button onclick="location='LoginPage.jsp'">로그인</button>
<button onclick="location='Find.jsp'">아이디/비밀번호 찾기</button>
</body>
</html>