<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link rel="stylesheet" href="css/lavalamp.css"/>
<script src="js/lavalamp.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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
<style>
  body{
    background: #eeece7
  }
  h1{
    font: 52px/1 'Montez';
    color: #a4834d;
  }
  
    h1+p {
   
    margin-bottom: 3.5em;
  }
  
  #page-wrap{
  
  
  }
  
  #navigation{
    padding: 3px;
  
  }
   #navigation li{
     float: left;
     border-right: 1px solid #eee;
     
      border: 0;
       
     
   }
  
     
      #navigation li a {
       
        border: 0;
        padding: 10px;
        font: 16px/1 Verdana;
        color: #0E100E;
          
         box-shadow: 1px 2px 1px   #266DF1;
      }
      #jang  a{
      border-radius:5px;
      background-color:  "";
      font-color: #266DF1;
      }
      
      #navigation li input {
       
        border: 0;
      
      }
      
      
      
         #navigation li:last-child {
     border: 0;
     
     }
      #navigation li a:hover,
      
       #navigation li a:focus {
        border-radius:5px;
        background-image: linear-gradient(0deg,#266DF1,#266DF1);
        box-shadow:1px 2px 1px #266DF1;
       }
      
</style>
<!--  -->

<form>
	<input type="text" size="20" style="float: left" placeholder="검색어입력" />
	<input type="button" value="search" /><br /> <br />
	<div align="left" id="home">
		<a href="/main" style="float: left"> 홈으로</a>
	</div>
</form>

<div style="width: 200; float: right" >
  <nav id="navigation">
  <ul class="clearfix">
    <li><a href="/profile/${userId }"><input type="button" />MY홈</a></li>
    <li><b></b></li>
	<li class="focus" >  <a href="/cart" ><input type="button"/>장바구니</a><li>
	<li><b></b></li>
	<li> <a href=""><input type="button" />도움말</a></li>
	<li><b></b></li>
	<li id="jang" ><a href="/logout" style="color: light-gray"><input type="button"/>로그아웃</a></li>
	</ul>
	</nav>
</div>

