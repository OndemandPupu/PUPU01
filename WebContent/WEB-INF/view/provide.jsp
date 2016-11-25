<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="provide_myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body" style="padding: 40px 50px;">
					<div align="center" id="fome_provide">
					<h2>사진에 대한 정보를 입력하시겠습니까?</h2>
					<input type="button" value="예" id="yes"><input type="button" value="아니요" id="no">
					</div>
					<div id="fome_provide2">
					## 정확하게입력<br/>
					<input type="hidden" value="${uid }" id="uid">
						<label>상 품 명 :</label><input type="text" id="p_name"> <br/>
						<label>상 품 가 격 :</label><input type="text" id="p_price"><br/>	
						 <input type="button" value="정보입력" id="bt1">
					</div>
					<script>
					$("#fome_provide2").hide();
					$("#yes").click(function() {
						$("#fome_provide").hide();
						$("#fome_provide2").show();
					})
					$("#bt1").click(function() {
						var p_name = $("#p_name").val();
						var p_price = $("#p_price").val();
						var p_id = $("#p_id").val();
						var fileuid = $("#uid").val();
						$.ajax({
							"url":"/product?name=" + p_name + "&price=" + p_price+"&fileuid="+fileuid,
							"methode":"get"
						}).done(function(rst){
							if(rst != '') {
								window.alert("정보등록완료");
								location.href="/main";
							}
						})
					})
					$("#no").click(function() {
						window.close();
						 location.href="/main";
					})
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>
	
<script>
$(document).ready(function() {
	$("#provide_myModal").modal();
})
</script>