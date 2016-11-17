<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 정보등록</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<form action="/member/join">
	<!-- Top content -->
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-5 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>회원 가입</h3>
								<p>아래 회원 양식을 작성해 주세요:</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-pencil"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form action="/member/join" method="post"
								class="registration-form">
								<p class="form-group">
									<label class="sr-only" for="id">ID</label> <input type="text"
										name="id" placeholder="ID" class="form-last-name form-control"
										id="id"> <span id="rst"></span>
								</p>
								<p class="form-group">
									<label class="sr-only" for="id">PASS</label> <input
										type="password" name="pass" placeholder="PASSWORD"
										class="form-last-name form-control" id="pass">
								</p>
								<p class="form-group">
									<label class="sr-only" for="id">REPASS</label> <input
										type="password" placeholder="REPASSWORD"
										class="form-last-name form-control" id="pass2"> <span
										id="rst1"></span>
								</p>
								<p class="form-group">
									<label class="sr-only" for="name">이름</label> <input type="text"
										name="name" placeholder="NAME"
										class="form-first-name form-control" id="name">
								</p>
								<p class="form-group">
									<label class="sr-only" for="email">Email</label> <input
										type="text" name="email" placeholder="EMAIL"
										class="form-email form-control" id="emailId">
								</p>
								<p class="form-group" id="email_auth" style="display: none">
									<label class="sr-only" for="email">인증번호</label> <input
										type="text" placeholder="발송받은 인증번호"
										class="form-email form-control" id="auth2"> <span
										id="Auth"></span> <input type="button" value="인증 확인" id="mail" />
								</p>
								<p class="form-group">
									<label class="sr-only" for="form-last-name">address</label> <input
										type="text" name="address" placeholder="ADDRESS"
										class="form-last-name form-control" id="address">
								</p>
								<p class="form-group">
									<label class="sr-only" for="phone">phone</label> <input
										type="text" name="phone" placeholder="PHONE"
										class="form-last-name form-control" id="phone">
								</p>
								<p class="form-group">
									<label class="sr-only" for="birth">birth</label> <input
										type="text" name="birth" placeholder="BIRTH"
										class="form-last-name form-control" id="birth">
								</p>
								<p class="form-group">
									<label class="sr-only" for="gender">gender</label> <input
										type="text" name="gender" placeholder="GENDER"
										class="form-last-name form-control" id="gender">
								</p>

								<p class="form-group">
									<label class="sr-only" for="interest">interest</label>
									<textarea name="interest" placeholder="INTEREST"
										class="form-about-yourself form-control" id="interest"></textarea>
								</p>
								<button type="submit" class="btn">Sign me up!</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<script>
	document.getElementById("id").addEventListener("blur", function() {
		var v = document.getElementById("id").value;

		var xhr = new XMLHttpRequest();
		xhr.open("get", "/member/joinAjax?id=" + v, true);
		xhr.onreadystatechange = function() {
			if (xhr.status == 200 & xhr.readyState == 4) {
				var t = xhr.responseText;
				console.log(t);
				var html;
				if (t == "TRUE") {
					html = "<h4 style='color:red;'>이미 사용중인 아이디입니다.</h4><br/>";
				} else {
					html = "<h4 style='color:green;'>사용가능한 아이디 입니다.</h4><br/>";
				}
				document.getElementById("rst").innerHTML = html;
			}

		};
		xhr.send();
	});
</script>

<script>
	document.getElementById("pass2").addEventListener("blur", function() {
		var pass2 = document.getElementById("pass2").value;
		var pass = document.getElementById("pass").value;
		var html;
		if (pass != pass2) {
			html = "<h4 style='color:red;'>패스워드가 일치하지 않습니다.</h4><br/>";
		} else {
			html = "<h4 style='color:green;'>패스워드가 일치합니다.</h4><br/>";
		}
		document.getElementById("rst1").innerHTML = html;
	});
</script>
<script>
	document.getElementById("emailId").addEventListener("change", function() {
		var reg = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
		
		if(reg.test($("#emailId").val())){
			var xhr = new XMLHttpRequest();
			var v = document.getElementById("emailId").value;
			
			 xhr.open("get", "/member/joinAjax2?email="+v, true);
			 xhr.onreadystatechange = function() {
				 if (xhr.status == 200 & xhr.readyState == 4) {
					 var t = xhr.responseText;
					 if (t != null) {	
						window.alert("인증코드가 전송되었습니다.");
						$("#email_auth").show();
						document.getElementById("mail").addEventListener("click", function() {
							 var v1 = document.getElementById("auth2").value;
							if(t == v1) {
								window.alert("정상인증처리되었습니다.");
								$("#email_auth").hide();
							}else {
								window.alert("정상인증처리되지않았습니다.인증코드를 다시 확인해주세요.");	 
							}
						});
					 }else {
						 window.alert("인증코드 발송에 실패하였습니다.");
					}
				 }
			 }
			 xhr.send();	 
		}else{
			$("#email_auth").hide();
			window.alert("이메일 주소 형식에 맞지 않습니다.");
		}
	});
</script>