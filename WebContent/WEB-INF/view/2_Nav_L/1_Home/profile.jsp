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
         	<h4 class="w3-center">My Profile</h4>
         	<p class="w3-center"><img src="/profile/${obj.get('PROFILE') }" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
         	<hr>
         	<c:if test="${userId ne obj.get('ID') }">
         		<button id="friend" onclick="addFriend('${userId}','${obj.get('ID') }');">친구추가</button>
         	</c:if>
         	<c:if test="${userId eq obj.get('ID') }">
         		<button id="setprofile">내정보</button>
         	</c:if>
		
         	<hr>
         	<p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("NAME") }</p>
        	 <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("ID") }</p>
         	<p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> ${obj.get("BIRTH") }</p>
        </div>
	</div>
</c:forEach>
<script>
$("#setprofile").click(function() {
	$("#myprofile_CenterModal").modal();
});
function addFriend(myid, youid) {
	 $.ajax({
	    	"url":"/follow?myid="+id+"&youid="+youid,
	    	"methode":"get"
	 }).done(function(rst) {
		 
	 })
}
</script>