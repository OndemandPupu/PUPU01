<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form>
	<input type="text" size="20" style="float: left" placeholder="검색어입력" />
	<input type="button" value="search" /><br /> <br />
	<div align="left">
		<a href="/main" style="float: left"> 홈으로</a>
	</div>
</form>
<div style="width: 200; float: right">
	<a href="/cart"><input type="button" value="장바구니" /></a> <a href=""><input
		type="button" value="도움말" /></a>
	<form action="/upload">
		<input type="submit" value="사진업로드">
	</form>
</div>