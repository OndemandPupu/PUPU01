<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- Right Column -->
	<div class="w3-col m2">
		<div class="w3-card-2 w3-round w3-white w3-center">
			<div class="w3-container">
				<input type="button" id="F_btn" value="팔로워목록" /> <br/>
				<div id="F_dialog" title="팔로워목록"></div>
				<input type="button" id="K_btn" value="알림" />
				<div id="chat" title="알림"></div>
				<hr />
				<div id="login"></div>
			</div>
		</div>
		<br>
		<div class="w3-card-2 w3-round w3-white w3-center">
			<div class="w3-container">
				<p>Friend Request</p>
				<img src="" alt="Avatar" style="width: 50%"><br>
				<span>Jane Doe</span>
				<div class="w3-row w3-opacity">
					<div class="w3-half">
						<button class="w3-btn w3-green w3-btn-block w3-section"
							title="Accept">
							<i class="fa fa-check"></i>
						</button>
					</div>
					<div class="w3-half">
						<button class="w3-btn w3-red w3-btn-block w3-section"
							title="Decline">	
							<i class="fa fa-remove"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
	<br>

	<script>

 
    //창 열기 버튼을 클릭했을경우
    $("#F_btn").on("click",function(){
        $("#F_dialog").dialog("open"); //다이얼로그창 오픈                
    });
    
    $("#K_btn").on("click",function(){
        $("#K_dialog").dialog("open"); //다이얼로그창 오픈                
    });

</script>
<script>

$(document).ready(function(){
	$.ajax({
		"dataType":"json",
		"url":"/followShow",
		"methode":"get"
	}).done(function(rst){
		for(var i =0;i<rst.length;i++) {
			$("#F_dialog").append("<b>"+rst[i].id+"</b><br/>");	
		}
	});
});
</script>
<script>
	var socket;
	
	var target = "ws://localhost/knock_member";
	socket = new WebSocket(target);
	socket.onopen = function(args) {
		$("#login").html("<p>서버정상접속</p>");
	}
	socket.onmessage = function(args) {
		var i = args.data;
		var com = i.split("#");
		if(com[0]==1) {
			$.ajax({
				"url":"/authLike?fileuid="+com[2],
				"methode":"get"	
			}).done(function(rst){
				if(rst!="NNNN") {
					alert(rst);
					$("#chat").html(com[2]+"님이'"+rst+"'게시글에 글을 남겼습니다.");
				}
			});
		}
		if(com[0]==2) {
			$.ajax({
				"url":"/authComment?fileuid="+com[1],
				"methode":"get"	
			}).done(function(rst){
				if(rst!="NNNN") {
					alert(rst);
					$("#chat").html(com[2]+"님이'"+rst+"'게시글에 글을 남겼습니다.");
				}
			});	
		}
		
		document.getElementById("chat").scrollTop = document.getElementById("chat").scrollHeight;
	}
	socket.onclose = function(args) {
	}
	
	function destroy() {
		socket.close();
	}

	</script>
	<script>
// Accordion
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-theme-d1";
    } else { 
        x.className = x.className.replace("w3-show", "");
        x.previousElementSibling.className = 
        x.previousElementSibling.className.replace(" w3-theme-d1", "");
    }
}
</script>
	<script>
// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
