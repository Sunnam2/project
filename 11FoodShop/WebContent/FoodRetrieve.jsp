<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
<c:if test="${empty login}">
<jsp:include page="MainBoard/login.jsp" flush="true" /><br>
<hr>
<jsp:include page="MainBoard/FoodKindpage.jsp" flush="true" />
<jsp:include page="Food/FoodList.jsp" flush="true" />
</c:if>    
<c:if test="${! empty login}">
안녕하세요${login.username}님!<br>
<jsp:include page="MainBoard/login.jsp" flush="true" /><br>
<hr>
<jsp:include page="MainBoard/FoodKindpage.jsp" flush="true" />
<jsp:include page="Food/FoodRetrieve.jsp" flush="true" />
</c:if>

</body>
</html>