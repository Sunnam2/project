
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
  function reqCheck(action, myForm){
	  if(action == 'cart'){
		  myForm.action="CartAddServlet";
	  }else{
		  myForm.action="OrderAddServlet";
	  }
  }
</script>
<FORM name="FoodRetrieveForm" method="GET" action="#">
	    <input type="hidden" name="FImage" value="${FoodRetrieve.FImage }"> <input
		type="hidden" name="FCode" value="${FoodRetrieve.FCode }"> <input
		type="hidden" name="FName" value="${FoodRetrieve.FName }"> <input
		type="hidden" name="FPrice" value="${FoodRetrieve.FPrice }">

	<table width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td height="30">
		</tr>
		<tr>
			<td>
				<table ali
n="center" width="710" cellspacing="0" cellpadding="0"
					border="0" style='margin-left: 30px'>
					<tr>
						<td class="td_default"><font size="5"><b>- 상품 정보 -</b></font>
							&nbsp;</td>
					</tr>
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
						<td rowspan="7"><img src="image/items/${FoodRetrieve.FImage }.jpg"
							border="0" align="center" width="300" /></td>
						<td class="td_title">제품코드</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>
						${FoodRetrieve.FCode }
						</td>
					</tr>
					<tr>
						<td class="td_title">상품명</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>

${FoodRetrieve.FName}</td>
					</tr>
					<tr>
						<td class="td_title">가격</td>

						<td class="td_red" colspan="2" style='padding-left: 30px'>
						${FoodRetrieve.FPrice }
						</td>
					</tr>
					<tr>
						<td class="td_title">배송비</td>
						<td colspan="2"><font color="#2e56a9" size="2"
							style='padding-left: 30px'><b> 무료배송</b> </font> <font size="2">(도서
								산간지역 별도 배송비 추가)</font></td>
					</tr>

					<tr>
						<td class="td_title">주문수량</td>
						<td style="padding-left: 30px"><input type="text"
							name="FAmount" value="1" id="Fmount"
							style="text-align: right; height: 18px"> <img
							src="image/up.png" id="up"> <img src="image/down.png"
							id="down"></td>
					</tr>
				</table>

			</td>
		</tr>
	</table>

	<br> <button onclick="reqCheck('order',FoodRetrieveForm)">구매</button>
	&nbsp;&nbsp;
	<button onclick="reqCheck('cart',FoodRetrieveForm)">장바구니</button>
</FORM>
