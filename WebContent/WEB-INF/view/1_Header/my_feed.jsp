<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- 기본 템플릿을 작성! -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
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
<script src="js/bootstrap.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}

* {
	margin: 0;
	padding: 0
}

body {
	font-family: 'Open Sans', arial, sans-serif;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
}

#top_view {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 50px;
	padding: 3px;
	background-color: #fff;
	font-color: #FF8000;
	height: 50px;
	width: 100px;
	margin: 5px;
	font-size: 30px;
	font-weight: 700;
}

#down_view {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 50px;
	padding: 3px;
	background-color: #fff;
	font-color: #FF8000;
	height: 50px;
}

#wrap {
	overflow: hidden;
}

#wrap>#main_lab {
	float: left;
	width: 500px
}

#wrap>#content_wrap {
	float: right;
	width: 100%;
	margin-right: -430px
}

#main_lab {
	position: fixed;
	top: 50px;
	bottom: 50px;
	left: 0;
	width: 400px;
}

#content_wrap {
	width: 400px;
}

#wrap>#content_wrap>#content {
	padding-right: 500px;
}

.modal-dialog.modal-80size {
	width: 90%;
	height: 90%;
	margin: 0;
	padding: 0;
}

.modal-content.modal-80size {
	height: auto;
	min-height: 90%;
}

.modal.modal-center {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal.modal-center:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog.modal-center {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}
</style>
<c:choose>
	<c:when test="${size eq -1 }">
		<div class="w3-row-padding">
			<div class="w3-col m12">
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container w3-padding" id="upload">
						<img src="/w3images/avatar2.png" alt="Avatar"
							class="w3-left w3-circle w3-margin-right" style="width: 60px">
						<h6 class="w3-opacity">
							<a>${nickname}</a>(${userId})님<span id="sever_conection"></span>
						</h6>
						<textarea class="form-control" id="usrname"
							placeholder="무슨 생각을 하고 있나요~?" name="comments"
							style="border: none;"></textarea>
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
									<textarea class="form-control" id="usrname"
										placeholder="무슨 생각을 하고 있나요~?" name="comments"
										style="border: none;"></textarea>
								</div>
								<select name="cate">
									<option value="test1">test1</option>
									<option value="test2">test2</option>
									<option value="test3">test3</option>
									<option value="test4">test4</option>
								</select> <input type="file" id="up_files" name="file"
									onchange="handleFileSelect()" />

								<pre id="list1"
									style="height: 220px; width: 220px; background-color: white; border: none;"></pre>
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
	</c:when>
	<c:otherwise>
		<div class="w3-row-padding">
			<div class="w3-col m12">
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container w3-padding" id="upload">
						<img src="/w3images/avatar2.png" alt="Avatar"
							class="w3-left w3-circle w3-margin-right" style="width: 60px">
						<h6 class="w3-opacity">
							<a>${nickname}</a>(${userId})님<span id="sever_conection"></span>
						</h6>
						<textarea class="form-control" id="usrname"
							placeholder="무슨 생각을 하고 있나요~?" name="comments"
							style="border: none;"></textarea>
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
									<textarea class="form-control" id="usrname"
										placeholder="무슨 생각을 하고 있나요~?" name="comments"
										style="border: none;"></textarea>
								</div>
								<select name="cate">
									<option value="test1">test1</option>
									<option value="test2">test2</option>
									<option value="test3">test3</option>
									<option value="test4">test4</option>
								</select> <input type="file" id="up_files" name="file"
									onchange="handleFileSelect()" />
								<pre id="list1"
									style="height: 220px; width: 220px; background-color: white; border: none;"></pre>
								<div class="modal-footer">
										<button type="submit" class="btn btn-success btn-block"
											id="F_upload">
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
		<c:forEach var="i" begin="0" end="${size }" varStatus="status">
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br> <a href="/selectview"><img src="/w3images/avatar2.png"
					alt="Avatar" id="fileselect"
					class="w3-left w3-circle w3-margin-right" style="width: 60px"></a>
				<h6 class="w3-opacity">
					<a href="/profile?findsee=${list[i].get('ID')}"> <b>${list[i].get("NAME") }</b>(${list[i].get("ID") })님
					</a>
				</h6>
				<p>${list[i].get("COMMENTS") }</p>
				#업로드된 이 공간의 파일 uuid 는 [<b>${list[i].get('FILEUUID')}</b>] 입니다
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-half">

						<button type="button" id="filemodal_${status.index }"
							style="border: none; background: transparent;"
							onclick="button1_click('${list[i].get('FILEUUID') }', '${list[i].get('ID')}','${list[i].get('COMMENTS') }' )">
							<img src="/users/${list[i].get('FILEUUID') }" style="width: 100%"
								alt="Northern Lights" class="w3-margin-bottom" id="test">
						</button>
					</div>
				</div>
				<button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom"
					onclick="likeclick('${list[i].get('FILEUUID') }')">
					<i class="fa fa-thumbs-up"></i>  좋아요♥
				</button>
				<button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom"
					onclick="board_click()">
					<i class="fa fa-comment"></i>  댓글달기
				</button>
				<div id="f_comborder"></div>
				<input type="text" id="f_comments" placeholder="댓글을 입력하세요">
				<br />
				<c:forEach var="ooj" items="${liker }">
		${ooj.L_FILEUUID }
			<c:if test="${list[i].get('FILEUUID') eq ooj.L_FILEUUID }">
			${ooj.L_SELECTLIKER }
			</c:if>
				</c:forEach>
				<div id="like_p_${status.index }"></div>
			</div>
		</c:forEach>
	</c:otherwise>
</c:choose>
<div class="modal modal-center fade" id="my80sizeCenterModal"
	tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
	<div class="modal-dialog modal-80size modal-center" role="document">
		<div class="modal-content modal-80size">
			<div id="wrap">
				<div id="top_view">
					<a class="logo" href="/main" style="color: #FF8000">Pupu</a> <input
						type="hidden" value="${userId }" id="s_id">
				</div>
				<nav id="main_lab">
					<ul class="nav">
						<li>
							<p>
								<img id="modal_img" class="btn-img" src="" width="300"
									height="500">
							</p>
						</li>
						<li><input type="button" id=asd value="상품정보입력할래?"></li>
					</ul>
				</nav>
				<div id="content_wrap">
					<div id="content">
						<div class="col-sm-12" id="featured">
							<div class="page-header text-muted">
								<i class="glyphicon glyphicon-pencil"></i>
								<p id="modal_comments"></p>
								<button type="button" class="btn" onclick="" id="like2"
									style="color: #FF8000">
									<b><i class="glyphicon glyphicon-heart"></i>LIKE</b>
								</button>
								<span>
									<button type="submit" id="bt" class="btn"
										style="color: #FF8000">
										<i class="glyphicon glyphicon-remove"></i><b>WRITE</b>
									</button>
								</span>
							</div>
							<div class="row">
								<div class="col-sm-10">
									<div id="port">
										<input type="text"
											style="width: 500; height: 100; background: #E6E6E6;"
											placeholder="COMMENT" id="write">
									</div>
								</div>
							</div>
						</div>
						<div id="ccc"></div>
						<hr />
						<br />
						<div class="row">
							<div class="col-sm-4 text-center">
								<div id="port1">
									<label for="productname"> 상품명 : </label> <input type="hidden"
										id="filename" value=""> <input type="text" name="name"
										id="productname"><br> <label for="price">
										가격 : </label> <input type="text" name="productprice" id="productprice"><br>
										 <input type="button"
										value="정보입력" id="bt1">
								</div>

								<div id="port2">
									<a href="javascript:showProduct()">상품정보가 등록되어있습니다.</a>장바구니에담기<input
										type="checkbox" id="h_product">
								</div>
								<div id="port2_sun">
									<label>상품명 : </label>
									<p id="nameP"></p>
									<br /> <label>가격 : </label>
									<p id="priceP"></p>
									<br /> <label>제공자 : </label>
									<p id="idP"></p>
									<br />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>


<script>

	$("#h_product").change(function() {
		var v =  $("#h_product").val();
		if(v=="on") {
			printTime1();
			var time;
			function printTime1() {
		        var now = new Date();                                               
		        var nowTime = now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate();
		        time = nowTime;          
		        setTimeout("printTime()",1000);       
			}
			var fileid = $("#filename").val();
			$.ajax({
				"url":"/havs/cart?fileuuid="+fileid+"&time="+time,
				"methode":"get"
			}).done(function(rst) {
				if(rst=="true") {
					alert("장바구니에 등록되었습니다.");
				}else {
					alert("실패");
				}
			})
		}
	});
</script>
<script type="text/javascript">
	function board_click() {
		
	}
</script>
<script>
var socket;
$(document).ready(function(){
	var target = "ws://localhost/j_member";
	socket = new WebSocket(target);
	socket.onopen = function(args) {
		$("#sever_conection").html("서버와연결됨..");
	}
	socket.onmessage = function(args) {
		document.getElementById("chat" ).innerHTML += "[# "+args.data+"]<br/>";
		document.getElementById("chat").scrollTop = document.getElementById("chat").scrollHeight;
	}
	socket.onclose = function(args) {
		document.getElementById("rst" ).innerHTML = "<b>웹소켓닫김!!</b>";
	}
	
	function destroy() {
		socket.close();
	}
	
	
	$("#list1").hide();
    $("#upload").click(function(){
        $("#myModal").modal();
		$("#up_files").click(function(){
			$("#list1").show();		
		});
    });
});
</script>

<script>
function likeclick(uuid) {
	$.ajax({
		"dataType":"json",
		"url":"/liker?uuid="+uuid,
		"methode":"get"
	}).done(function(rst){
		if(rst[0].unlike!="false")
		for(var i=0;i<rst.length;i++) {
			$("#like_p_"+i).append("<b>"+rst[i].like+"</b>");
		}
	})
};
</script>

<script>
$("#bt").dblclick(function(){
	$(document.getElementById("port")).slideToggle();
});
</script>
<script>
 $("#bt1").click(function() {
	$("#port1").hide();
	var p_name = $("#productname").val();
	var p_price = $("#productprice").val();
	var fileuid = $("#filename").val();
	$.ajax({
		"url":"/product?name=" + p_name + "&price=" + p_price+"&fileuid="+fileuid,
		"methode":"get"
	}).done(function(rst){
		if (rst != '') {
			window.alert("정보등록완료");
			$("#asd").hide();
			$("#port2").show();
			$("#nameP").html(p_name);
			$("#priceP").html(p_price);
			$("#idP").html(rst);
		} else {
			window.alert("정보등록실패");
		}
	});
 })
</script>
<script>

</script>
<script>
function button1_click(uuid, id, comment) {
	$("#port2_sun").hide();
	$("#modal_img").attr("src", "/users/"+uuid);
	$("#modal_comments").html(comment);
	$("#filename").attr("value",""+uuid);
	$("#my80sizeCenterModal").modal();
	$("#ccc").html("");
	var d = $("#filename").val();
	$(document.getElementById("port")).slideToggle();
	$.ajax({
		"dataType": "json",
		"url":"/memo/show?fileuuid="+uuid,
		"methode":"get"
	}).done(function(rst) {
		if(rst!="null") {
			for(var i=0;i<rst.length;i++) {
				$("#ccc").append("<img src='http://api.randomuser.me/portraits/thumb/women/17.jpg' class='img-circle'/><b>"+rst[i].id+"</b> : "+rst[i].memo+"("+rst[i].dates+")<br/>");
			}
		} else {
			$("#ccc").hide();
		}
	})
	$.ajax({
		"dataType":"json",
		"url":"/productshow?filename="+d,
		"methode":"get"
	}).done(function(rst) {
		if(rst[0].name!="null"){
			$("#port2").show();
			$("#asd").hide();
		}else {
			$("#port2").hide();
			$("#asd").show();
		}
	})
}
</script>

<script>
function showProduct() {
	$("#port2_sun").slideToggle();
	var d = $("#filename").val();
	$.ajax({
		"dataType":"json",
		"url":"/productshow?filename="+d,
		"methode":"get"
	}).done(function(rst) {
		if(rst[0].name!="null") {
			$("#nameP").html(rst[0].name);
			$("#priceP").html(rst[0].price);
			$("#idP").html(rst[0].id);	
		}else {
			$("#port2").hide();
			$("#asd").show();	
		}
	})
}
</script>

<script>
$("#port1").hide();
$("#asd").click(function() {
	$("#port1").show();
});
</script>

<script>
$("#write").change(function(){
	printTime();
	var time;
	function printTime() {
        var now = new Date();                                               
        var nowTime = now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate() + " " + now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();
        time = nowTime;          
        setTimeout("printTime()",1000);       
	}
	var t=	$("#modal_img").attr("alt");
	var d = $("#filename").val();
	var m =	$("#write").val();
	var i = $("#s_id").val();
	$("#write").val("");
		$.ajax({
			"url":"/memo/upMemo?fileuuid="+d+"&memo="+m+"&id="+i,
			"methode":"get"
		}).done(function(rst){
			if(rst=="YYYYY") {
				$("#ccc").append("<b>"+i+"</b> : "+m+"("+time+")<br/>");
			}else {
				window.alert("코멘트 등록 실패");
			}
		});
});
</script>


<script>
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
