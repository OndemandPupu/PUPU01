<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Cart</title>

	<h1>장바구니</h1>
	<table border=1 id="cartList">
		<tr id="header" align="center">
			<th>상품 카테고리</th>
			<th>상품번호</th>
			<th>상품명</th>
			<th>가격</th>
			<th>선택</th>
		</tr>
		<c:forEach var="i" begin="0" end="${productList.size() -1}">
			<tr>
				<td>${productList[i].get("PRODUCTCATE") }</td>
				<td>${productList[i].get("PRODUCTINFO") }</td>
				<td>${productList[i].get("PRODUCTNAME") }</td>
				<td>${productList[i].get("PRODUCTPRICE") }</td>
				<td><button class="buy_cart" value="${productList[i].get('NUM') }">구매하기</button></td>
				<td></td>
			</tr>
		</c:forEach>
	</table>
	
	<script>
		$(".buy_cart").click(function(){
			var num = $(this).val();
							location.href="/cart/confirm?num="+num;
		});
	</script>