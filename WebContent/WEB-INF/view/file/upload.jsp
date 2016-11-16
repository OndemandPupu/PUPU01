<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<div class="panel panel-default">
	<div class="panel-heading">
		<a href="#" class="pull-right">View all</a>
		<h4>자료 등록</h4>
	</div>
	<div class="panel-body">
		<p>
			 <button class="btn" id="btn" type="submit"><img class="btn-img" src="//placehold.it/100"></button>
				&nbsp;&nbsp;&nbsp;<input type="text" placeholder="무슨 생각을 하고 계신가요?">
		</p>
		<div class="clearfix">
		
		</div>
		<hr>
		<span><select name="cate">
				<option value="pc">PC관리</option>
				<option value="media">동영상</option>
				<option value="office">사무</option>
				<option value="edu">교육</option>
				<option value="etc">기타</option>
		</select> <input type="file" name="file" /></span>
		<div class="btn-group pull-right btn-toggle">
			<hr />
			<button class="btn btn-default" type="submit" value="자료등록">upload</button>

		</div>
	</div>
	<!--/panel-body-->
</div>
<!--/panel-->
</div>
<!--/col-->