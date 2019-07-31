<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>아이디 찾기</h1>
<form name="FindID" action="FindIDServlet">
<input type="text" name="nickname" placeholder="닉네임"><br>
<input type="text" name="phone1" placeholder="010 or 011"><br>
<input type="text" name="phone2" placeholder="핸드폰번호 뒤 8자리"><br>
<button>아이디 찾기</button>
</form>
<h1>비밀번호 찾기</h1>
<form name="FindPasswd">
<input type="text" name="userid" placeholder="아이디"><br>
<input type="text" name="phone1" placeholder="010 or 011"><br>
<input type="text" name="phone2" placeholder="핸드폰번호 뒤 8자리"><br>
</form>
<button onclick="location='FindIDend.jsp'">비밀번호 재설정 하기</button>
</body>
</html>