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
			<div class="container">
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
						
						
						<li>
							<a class="page-scroll" href="login.lo">로그인</a>
						</li>
						<li>
							<a class="page-scroll" href="jobofferView.jo">구인</a>
						</li>
						<li>
							<a class="page-scroll" href="jobsearchView.jo">구직</a>
						</li>
						<li>
							<a class="page-scroll" href="blist.bl">커뮤니티</a>
						</li>
						<li>
							<a class="page-scroll" href="servicecenter.se">고객센터</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		</div>
</body>
</html>