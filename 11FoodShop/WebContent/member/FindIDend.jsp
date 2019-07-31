<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>아이디 찾기</h1>
<%
String userid = request.getParameter("userid");
MemberDTO dto = new MemberDTO();
%>
당신의 아이디는 ${userid2} 입니다.
<button onclick="location='Mainservlet'">아이디/비밀번호 찾기</button>
</body>
</html>