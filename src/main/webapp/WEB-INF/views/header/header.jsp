<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div style="margin-top:5%">
		<nav class="navbar navbar-default header_main sujung"> 
			<div class="container" >
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					
					<!-- 로고 스타일 적용- 2018 04 02-->
					<a class="navbar-brand page-scroll" href="home.ma" style="margin-top:10px;"><img src="resources/images/logo.png" alt="logo" style="width:120px;"></a>
				</div>				
						
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						
						
						<!-- 메인에서만 소개버튼이 뜨도록 조절하는 JSTL문 - 2018 04 02 작성 -->
						<c:set var="currentURL" value="${pageContext.request.requestURL}"/>								
						<c:if test="${currentURL eq 'http://localhost:8088/worknow/WEB-INF/views/Main.jsp'}">					
						<li>
							<a class="page-scroll" href="#about">소개</a>
						</li>
						</c:if> 
						
						
						
						<c:set var="member" value="${sessionScope.member}" />						
						<c:if test="${!empty sessionScope.member }">						
						<li>
							<a class="page-scroll" href="mypage.my">마이페이지</a>
						</li>						
						</c:if>
						<li>
							<a class="page-scroll" href="jobofferView.jo">구인</a>
						</li>
						<li>
							<a class="page-scroll" href="jobsearchView.jo">구직</a>
						</li>						
						<li><a href="fboard.bo">커뮤니티<i class='fa fa-angle-down'></i></a>
							<ul style="display: none;">
								<li><a href="fboard.bo">자유게시판</a></li>
								<li><a href="sboard.bo">후기게시판</a></li>
								<li><a href="qboard.bo">문의게시판</a></li>
							</ul>
						</li>
						<li>
							<a class="page-scroll" href="servicecenter.se">고객센터</a>
						</li>					
						
						<c:if test="${empty sessionScope.member }">
						<li>
							<c:if test="${!empty member}">
								<b>${member.memberId}님 환영합니다</b>
							</c:if>
							<c:if test="${empty member}">
								<a class="page-scroll" href="login.lo">로그인</a>	
							</c:if>																										
						</li>
						</c:if>
						
						<c:if test="${!empty sessionScope.member }">					
						<li>
						<ul class="nav navbar-top-links navbar-right">
									
									
									<li class="dropdown" style="float:right;"><a class="dropdown-toggle"
										data-toggle="dropdown" href="#"> <i
											class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
									</a>
										<ul class="dropdown-menu dropdown-alerts">
											<li><a href="#">
													<div>
														<i class="fa fa-comment fa-fw"></i> New Comment <span
															class="pull-right text-muted small">4 minutes ago</span>
													</div>
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
													<div>
														<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
															class="pull-right text-muted small">12 minutes ago</span>
													</div>
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
													<div>
														<i class="fa fa-envelope fa-fw"></i> Message Sent <span
															class="pull-right text-muted small">4 minutes ago</span>
													</div>
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
													<div>
														<i class="fa fa-tasks fa-fw"></i> New Task <span
															class="pull-right text-muted small">4 minutes ago</span>
													</div>
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
													<div>
														<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
															class="pull-right text-muted small">4 minutes ago</span>
													</div>
											</a></li>
											<li class="divider"></li>
											<li><a class="text-center" href="#"> <strong>See
														All Alerts</strong> <i class="fa fa-angle-right"></i>
											</a></li>
										</ul> <!-- /.dropdown-alerts --></li>
									<!-- /.dropdown -->
									<li class="dropdown" style="float:right;"><a class="dropdown-toggle"
										data-toggle="dropdown" href="#"> <i
											class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
									</a>
										<ul class="dropdown-menu dropdown-user">
											<li><a href="#"><i class="fa fa-user fa-fw"></i>
													User Profile</a></li>
											<li><a href="#"><i class="fa fa-gear fa-fw"></i>
													Settings</a></li>
											<li class="divider"></li>											
											<li><a href="logout.lo"><i class="fa fa-sign-out fa-fw"></i>로그아웃</a></li>
										</ul></li>
								</ul>
							</li>
						</c:if>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script> 
		<script>
			$('nav li').hover(
  				function() {
	  				$('ul', this).stop().slideDown(200);
  				},
				function() {
    				$('ul', this).stop().slideUp(200);
			 });
</script>
		</div>
</body>
</html>