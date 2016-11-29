<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Profile -->
    <c:forEach var="obj" items="${profile }">
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
        <input type="hidden" id="my_id" value="${userId}">
        <input type="hidden" id="your_id" value="${obj.get('ID') }">
         	<h4 class="w3-center">My Profile</h4>
         	<p class="w3-center"><img src="/profilefolder/${obj.get('PROFILE') }" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
         	<hr>
         	<c:if test="${userId ne obj.get('ID') }">
         		<button id="friend" onclick="addFriend('${userId}','${obj.get('ID') }');">팔로워</button>
         		<p id="f_check"></p>
         	</c:if>
         	<c:if test="${userId eq obj.get('ID') }">
         		<a href="/myprofile"><button id="setprofile">내정보</button></a>
         	</c:if>
		
         	<hr>
         	<p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("NAME") }</p>
        	 <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("ID") }</p>
         	<p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("BIRTH") }</p>
        </div>
	</div>
</c:forEach>
<script>
$(document).ready(function() {
	var my_id = $("#my_id").val();
	var your_id = $("#your_id").val();
	$.ajax({
		"url":"/followcheck?my_id="+my_id+"&you_id="+your_id,
    	"methode":"get"
	}).done(function(rst){
		if(rst=="FALSE") {
			$("#friend").hide();
			$("#f_check").html("<button>팔로워~</button>");
		}else {
			$("#friend").show();
			function addFriend(youid, myid) {
				 $.ajax({
				    	"url":"/follow?myid="+myid+"&youid="+youid,
				    	"methode":"get"
				 }).done(function(rst) {
					 if(rst=="TRUE") {
						 alert("친구됨!");
						 $("#friend").hide();
						 $("#f_check").html("<button>친구입니다.</button>");
						 
					 }
				 })
			}
		}
	})
});

</script>