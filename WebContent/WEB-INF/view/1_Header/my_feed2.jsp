<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html >
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Basis Template for Bootstrap 3</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
	</head>
	<body>
<div class="wrapper">
    <div class="box">
        <div class="row">
            <!-- sidebar -->
            <div class="column col-sm-3" id="sidebar">
                <a class="logo" href="#">Pupu</a>
                <ul class="nav">
                    <li>
                    
                    	
								<p>
									<button class="btn" id="btn" type="submit" >
										
										<img class="btn-img"
											src="/users/${uid }" width="500"
											height="300">
									</button>
								<p>
									무엇을 원하던 전부!</br>
								</p>
						
                    
                    
                    
                    </li>
                
                
                    <li class="active"><a href="#featured"><i class="glyphicon glyphicon-home"></i>내정보</a>
                    </li>
                    <li><a href="#stories"><i class="glyphicon glyphicon-user"></i>내이야기</a>
                    </li>
                </ul>
                <ul class="nav hidden-xs" id="sidebar-footer">
                    <li>
                      <a href=""><h3>Want you!</h3> 만든이 <i class="glyphicon glyphicon-off"></i> by Team Pupu</a>
                    </li>
                </ul>
            </div>
            <!-- /sidebar -->
          
            <!-- main -->
            <div class="column col-sm-9" id="main">
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->
                        
                        
                        
                        
                        <div class="col-sm-12" id="featured">   
                          <div class="page-header text-muted" >
                         <i class="glyphicon glyphicon-pencil"></i> <b>내가 남긴말이 나타나는 곳 이란다</b>
                          <button type="submit" onclick="loadDoc()" class="btn" style="color:#FF8000 "><b><i class="glyphicon glyphicon-heart"></i>LIKE</b></button>
                          <span> <button type="submit" onclick="loadDoc()" class="btn" style="color:#FF8000 "><i class="glyphicon glyphicon-remove"></i><b>DISLIKE</b></button></span>
                          </div> 
                        </div>
                        
                        <!--/top story-->
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>수용아 이거 어떠냐 </h3>
                            <h4><span class="label label-default">techvisually.com</span></h4><h4>
                            <small class="text-muted">1 hour ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><img src="http://api.randomuser.me/portraits/thumb/men/19.jpg" class="img-circle"></a>
                          </div> 
                        </div>
                        
                        <div class="col-sm-12" id="stories">  
                          <div class="page-header text-muted divider">
                            Top Stories
                          </div>
                        </div>
                        
                        
                        <!--/stories-->
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>완전 좋음 이거 추천</h3>
                            <h4><span class="label label-default">searchenginewatch.com</span></h4><h4>
                            <small class="text-muted">1 hour ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><img src="http://api.randomuser.me/portraits/thumb/men/86.jpg" class="img-circle"></a>
                          </div> 
                        </div>
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
                        </div>
                        
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>14 완전 좋음 이거 추천</h3>
                            <h4><span class="label label-default">devgarage.com</span></h4><h4>
                            <small class="text-muted">2 days ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><img src="http://api.randomuser.me/portraits/thumb/men/19.jpg" class="img-circle"></a>
                          </div>
                        </div>
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
                        </div>
                        
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>완전 좋음 이거 추천</h3>
                            <h4><span class="label label-default">bootply.com</span></h4><h4>
                            <small class="text-muted">3 days ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><img src="http://api.randomuser.me/portraits/thumb/women/17.jpg" class="img-circle"></a>
                          </div>
                        </div>
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
                        </div>
                        
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>완전 좋음 이거 추천</h3>
                            <h4><span class="label label-default">bootply.com</span></h4><h4>
                            <small class="text-muted">4 days ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><img src="http://api.randomuser.me/portraits/thumb/men/86.jpg" class="img-circle"></a>
                          </div>
                        </div>
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
                        </div>
                        
                        <div class="row">    
                          <div class="col-sm-9">
                            <h3>완전 좋음 이거 추천</h3>
                            <h4><span class="label label-default">bootply.com</span></h4><h4>
                            <small class="text-muted">4 days ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-3">
                            <a href="#" class="pull-right"><img src="http://api.randomuser.me/portraits/thumb/women/17.jpg" class="img-circle"></a>
                          </div>
                        </div>
                        
                        <div class="col-sm-12">
                          <div class="page-header text-muted divider">
                            Up Next
                          </div>
                        </div>
                      
                        <div class="row">    
                          <div class="col-sm-4 text-center">
                            <h4>상품구매</h4>
                            <a href="#"><img src="//placehold.it/400/f0f0f0" class="img-respsonsive img-circle"></a>
                          </div>
                          <div class="col-sm-4 text-center">
                            <h4>관련정보 등록</h4>
                            <a href="#"><img src="//placehold.it/400/f0f0f0" class="img-respsonsive img-circle"></a>
                          </div>
                          <div class="col-sm-4 text-center">
                            <h4>관련 SITE</h4>
                            <a href="#"><img src="//placehold.it/400/f0f0f0" class="img-respsonsive img-circle"></a>
                          </div>
                        </div>
                      
                      
                        <div class="col-sm-12">
                          <div class="page-header text-muted divider">
                            Connect with Us
                          </div>
                        </div>
                      
                        <div class="row">
                          <div class="col-sm-6">
                            <a href="#">Twitter</a> <small class="text-muted">|</small> <a href="#">Facebook</a> <small class="text-muted">|</small> <a href="#">Google+</a>
                          </div>
                        </div>
                        
                        <hr>
                      
                        <div class="row" id="footer">    
                          <div class="col-sm-6">
                            
                          </div>
                          <div class="col-sm-6">
                            <p>
                            <a href="#" class="pull-right">©Copyright Inc.</a>
                            </p>
                          </div>
                        </div>
                      
                      <hr>
                      
                      <h3 class="text-center">
                      <a href="http://bootply.com/86704" target="ext">Pupu</a>
                      </h3>
                        
                      <hr>
                        
                      
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->
        </div>
    </div>
</div>
	<!-- script references -->
		
	</body>
</html>