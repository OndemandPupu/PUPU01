<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Profile -->
    <c:forEach var="obj" items="${profile }">
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">My Profile</h4>
         <p class="w3-center"><img src="/w3images/avatar3.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("NAME") }</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("ID") }</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("BIRTH") }</p>
        </div>
      </div>
      </c:forEach>
      <br>
     