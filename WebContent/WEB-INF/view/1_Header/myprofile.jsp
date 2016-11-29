<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Profile -->
<c:forEach var="obj" items="${profile }">
	<div class="w3-card-2 w3-round w3-white" align="center">
		<div class="w3-container">
			<h4 class="w3-center">My Profile</h4>
			<p class="w3-center">
			<p id="view"></p>
				<img src=""
					class="w3-circle" style="height: 200px; width: 200px" id="image">
			
			<ul id="imfo">
				<li id="name1"><h5>이름: ${obj.get("NAME") }</h5></li>
				<li id="birth1"><h5>생년월일: ${obj.get("BIRTH") }</h5></li>
				<li id="gender1"><h5>성별: ${obj.get("GENDER") }</h5></li>
				<li id="phone1"><h5>핸드폰 번호: ${obj.get("PHONE") }</h5></li>
				<li id="address1"><h5>주소: ${obj.get("ADDRESS") }</h5> <br /></li>
			</ul>
			
			<form  action="/profileupload" enctype="multipart/form-data" method="post" id="up_file">
				<input type="file" id="up_files" name="file"
					onchange="handleFileSelect()" />
			<button type="submit" id="saveProfile" >프로필사진지정하기</button>
			</form><br/>

			<ul id="imfo2" style="display: none;">
				<li><h5>이름:</h5> <input type="text" id="name"></li>
				<li><h5>생년월일:</h5> <input type="text" id="birth"></li>
				<li><h5>성별:</h5> <input type="text" id="gender"></li>
				<li><h5>핸드폰 번호:</h5> <input type="text" id="phone"></li>
				<li><h5>주소:</h5> <input type="text" id="address"><br /></li>
				<li><h5>비밀번호:</h5> <input type="password" id="pass"><br /></li>
			</ul>
			<ul id="checkpass" style="display: none;">
				<li>현재 비밀번호를 입력해주세요. <br /> <input type="password" id="check"></li>
			</ul>
			<input type="button" id="bt1" value="수정하기"> <input
				type="button" id="bt2" value="수정신청"  style="display: none;">
		</div>
	</div>
</c:forEach>
<br>
<script>
$(document).ready(function() {
	$("#up_file").hide();
	$.ajax({
		"url":"/profileSet",
		"methode":"get"
	}).done(function(rst){
		if(rst!="") {
			$("#image").attr("src", "/profilefolder/"+rst);
		
		}
	})
});

	$("#bt1").click(function() {
		$("#checkpass").show();
	});

	$("#check").change(function() {
		$.ajax({
			"url" : "/checkpass?check=" + $("#check").val(),
			"methode" : "get"
		}).done(function(rst) {
			if (rst == "true") {
				alert("비밀번호가 일치합니다.");
				$("#checkpass").hide();
				$("#bt1").hide();
				$("#bt2").show();
				$("#up_file").show();
				$("#imfo2").show();
				$("#imfo").hide();
	
			} else {
				alert("비밀번호를 확인해주세요.");
				$("#check").val("");
			}
		});
	});
	$("#bt2").click(
			function() {
				var name = $("#name").val();
				var birth = $("#birth").val();
				var gender = $("#gender").val();
				var phone = $("#phone").val();
				var address = $("#address").val();
				var pass = $("#pass").val();

				$.ajax(
						{
							"url" : "/modify?name=" + name + "&birth=" + birth
									+ "&gender=" + gender + "&phone=" + phone
									+ "&address=" + address + "&pass=" + pass,
							"methode" : "get"
						}).done(function(rst) {
					alert(rst);
					if (rst == "TRUE") {
						alert("정상처리 되었습니다.");
						location.reload();
					} else {
						alert("서버와 연결이 끈킴");
					}
				});
			});
</script>
<script type="text/javascript">
	function handleFileSelect() {
		var files = document.getElementById('up_files').files[0]; //파일 객체

		var reader = new FileReader();

		//파일정보 수집        
		reader.onload = (function(theFile) {
			return function(e) {
				//이미지 뷰
				
				var img_view = [ '<img src="', e.target.result, '" title="',
						escape(theFile.name), '"/>' ].join('');
				document.getElementById('view').innerHTML = img_view;
				$("#view").hide();
			};

		})(files);

		reader.readAsDataURL(files);
	}
</script>

