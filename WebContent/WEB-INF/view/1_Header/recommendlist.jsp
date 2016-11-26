<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart</title>
</head>
<body>
   <h1>장바구니</h1>
   <table border=1 id="cartList">
      <tr id="header">
         
         <th>상품번호</th>
         <th>상품명</th>
         <th>가격</th>
         <th>선택</th>
      </tr>
      <c:forEach var="i" begin="0" end="${productList.size() }">
         <tr>
            <td>${productList[i].get("PRODUCTINFO") }</td>
            <td>${productList[i].get("PRODUCTNAME") }</td>
            <td>${productList[i].get("PRODUCTPRICE") }</td>
            <td><input type="checkbox"></td>
            <td></td>
         </tr>
      </c:forEach>
   </table>
</body>
</html>