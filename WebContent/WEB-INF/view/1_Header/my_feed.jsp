<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>NewsFeed</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<meta
	content="This tutorial will explain about to open Bootstrap Modal Popup on Ajax Click Function. When user clicks on button, A ajax request comes and load the another page content."
	name="description" />
<meta content="demo of bootstrap modal popup, demo of bootstrap modal"
	name="keywords" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" language="javascript"
	src="js/bootstrap.js"></script>

<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}
</style>
<body class="w3-theme-l5">

	<!-- Accordion -->
	<div class="w3-card-2 w3-round">
		<div class="w3-accordion w3-white">
			<div id="Demo3" class="w3-accordion-content w3-container">
				<div class="w3-row-padding">
					<br>
					<div class="w3-half">
						<img src="/w3images/lights.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/nature.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/mountains.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/forest.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/nature.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/fjords.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="w3-row-padding">
		<div class="w3-col m12">
			<div class="w3-card-2 w3-round w3-white">
				<div class="w3-container w3-padding" id="upload">
					<img src="/w3images/avatar2.png" alt="Avatar"
						class="w3-left w3-circle w3-margin-right" style="width: 60px">
					<h6 class="w3-opacity">
						<a>${nickname}</a>(${userId})님
					</h6>
					<input type="text" class="form-control" id="usrname"
									placeholder="무슨 생각을 하고 있나요~?" name="comments">
					<button type="button" class="w3-btn w3-theme">
						<i class="fa fa-pencil"></i>  사진첨부
					</button>
					<button type="button" class="w3-btn w3-theme">
						<i class="fa fa-pencil"></i>  올리기
					</button>
				</div>
			</div>
		</div>
	</div>
	<form role="form" action="/file/upload" method="post"
		enctype="multipart/form-data">
		<div class="container">
			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-body" style="padding: 40px 50px;">

							<div class="w3-container w3-padding" id="upload">
								<img src="/w3images/avatar2.png" alt="Avatar"
									class="w3-left w3-circle w3-margin-right" style="width: 60px">
								<h6 class="w3-opacity">
									<a>${nickname}</a>(${userId})님
								</h6>
								<input type="text" class="form-control" id="usrname"
									placeholder="무슨 생각을 하고 있나요~?" name="comments">
							</div>
							<input type="file" id="up_files" name="file"
								onchange="handleFileSelect()" />
							<pre id="list1" style="height: 220px; width: 220px;"></pre>

							<div class="modal-footer">
								<button type="submit" class="btn btn-success btn-block">
									<span class="glyphicon glyphicon-off"></span> 올리기
								</button>

								<button type="submit"
									class="btn btn-danger btn-default pull-left"
									data-dismiss="modal">
									<span class="glyphicon glyphicon-remove"></span> Cancel
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script>
$(document).ready(function(){
	$("#list1").hide();
    $("#upload").click(function(){
        $("#myModal").modal();
		$("#up_files").click(function(){
			$("#list1").show();		
		});
    });
});
</script>
	<c:forEach var="obj" items="${list }">
		<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
			<br> <a href="/selectview"><img src="/w3images/avatar2.png"
				alt="Avatar" id="fileselect"
				class="w3-left w3-circle w3-margin-right" style="width: 60px"></a>
			<h6 class="w3-opacity"><a>${obj.get("NAME") }</a>(${obj.get("ID") })님</h6>
			<br>
			<hr class="w3-clear">
			<p>${obj.get("COMMENTS") }</p>
			<div class="w3-row-padding" style="margin: 0 -16px">
				<div class="w3-half">
					<img src="/users/${obj.get('FILEUUID') }" style="width: 100%"
						alt="Northern Lights" class="w3-margin-bottom">
				</div>
			</div>
			<button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom">
				<i class="fa fa-thumbs-up"></i>  좋아요♥
			</button>
			<button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom">
				<i class="fa fa-comment"></i>  댓글달기
			</button>
		</div>
	</c:forEach>
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
	<script type="text/javascript">
    function handleFileSelect() 
    {
        var files = document.getElementById('up_files').files[0]; //파일 객체
 
        var reader = new FileReader();
 
        //파일정보 수집        
        reader.onload = (function(theFile) 
        {
            return function(e) 
            {
                //이미지 뷰
                var img_view = ['<img src="', e.target.result, '" title="', escape(theFile.name), '"  style= "width:200px;height:200px;  " />'].join('');                
                document.getElementById('list1').innerHTML = img_view;
            };
 
        })(files);
            
        reader.readAsDataURL(files);    
    }
</script>
</body>
</html>

