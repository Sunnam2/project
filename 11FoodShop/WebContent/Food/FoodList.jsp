<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<table width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table align="center" width="710" cellspacing="0" cellpadding="0"
				border="0">
				
				<tr>
					<td height="5"></td>
				</tr>
				<tr>
					<td height="1" colspan="8" bgcolor="CECECE"></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>

				<tr>
				
<!-- 반복시작 -->
<c:forEach var="dto" items="${FoodList}" varStatus="status">
						<td>
							<table style='padding:15px'>
								<tr>
									<td>
										<a href="FoodRetrieveServlet?FCode=${dto.FCode}"> 
											<img src="image/items/${dto.FImage}.jpg" border="0" align="center" width="200" height="200">
										</a>
									</td>
								</tr>
								<tr>
								
									<td height="10">
								</tr>
								<tr>
									<td class= "td_default" align ="center">
										<a class= "a_black" href="FoodRetrieveServlet?FCode=${dto.FCode}"> 
										${dto.FName}<br>
										</a>
										<font color="gray">
										 ----------------
										</font>
									</td>
									
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_red" align ="center"><font color="red"><strong>
									${dto.FPrice}	</strong></font></td>
								</tr>
							</table>
						</td>
						<c:if test="${status.count %5 ==0}">
							<tr>
								<td height="10">
							</tr>
						</c:if>
<!-- 반복끝-->
</c:forEach>				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="10">
	</tr>
</table>