<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
<jsp:include page="MainBoard/login.jsp" flush="true" /><br>
<hr>
<jsp:include page="MainBoard/FoodKindpage.jsp" flush="true" />
<jsp:include page="Food/FoodList.jsp" flush="true" />

</body>
</html>