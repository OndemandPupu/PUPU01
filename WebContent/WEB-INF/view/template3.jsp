<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- 기본 템플릿을 작성! -->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<header style="margin: 0px; padding: 30px; background-color: #cce6ff">
		<tiles:insertAttribute name="header" />
	</header>

	<div class="container" style="min-height: 600px;">
		<div class="row">
			<nav>
				<div class="col-md-8">
					<tiles:insertAttribute name="body" />
				</div>
			</nav>
			<aside>
				<div class="col-md-2" style="margin: 0px; padding: 30px;">
					<tiles:insertAttribute name="nav" />
				</div>
			</aside>
		</div>
	</div>

	<footer class="container-fluid text-center"
		style="background-color: #cce6ff">
		CopyRight <b> &copy; PUPU corp.</b> All rights reserved.
	</footer>
</body>

</html>