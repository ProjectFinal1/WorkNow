<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<style>
</style>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<title>Sanza - Onepage Multipurpose Bootstrap HTML by
	MOOZThemes.com</title>
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link href="resources/css/owl.carousel.css" rel="stylesheet">
<link href="resources/css/owl.theme.default.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/joboffer.css" rel="stylesheet">
</head>
<body id="page-top">
	<div class="bodymargin">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<!-- Navigation -->
		<nav class="navbar navbar-default header_main sujung">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand page-scroll" href="#page-top"><img
						src="resources/images/logo.png" alt="Sanza theme logo"></a>
				</div>


				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden"><a href="#page-top"></a></li>
						<li><a class="page-scroll" href="#about">소개</a></li>
						<li><a class="page-scroll" href="">로그인</a></li>
						<li><a class="page-scroll" href="joboffer.of">구인</a></li>
						<li><a class="page-scroll" href="">구직</a></li>
						<li><a class="page-scroll" href="blist.do">커뮤니티</a></li>
						<li><a class="page-scroll" href="">고객센터</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

		<br>
		<br>
		<br>
		<br>
		<br>

		<section id="team" class="light-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>구인 페이지</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- team member item -->
					<div class="jobofferbtn1">
						<div class="team-item">
							<div class="team-image">
								<a href="#"> <img src="resources/images/demo/author-2.jpg"
									class="img-responsive" alt="author">
								</a>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="jobofferbtn1">
						<div class="team-item">
							<div class="team-image">
								<a href="#"> <img src="resources/images/demo/author-6.jpg"
									class="img-responsive" alt="author">
								</a>
							</div>

						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="jobofferbtn1">
						<div class="team-item">
							<div class="team-image">
								<a href="#"> <img src="resources/images/demo/author-4.jpg"
									class="img-responsive" alt="author">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<div>
			
			<table align="center" width="71%" border="1">
			
				<tr height="40px" class="kategorie1">
					<th class="main_th main_tab2">근무 기간</th>
					<th class="main_th main_tab2">근무 요일</th>
					<th class="main_th main_tab2">근무 시간</th>
				</tr>
				
					
				
				<tr height="200px" class="kategorie2">
					<td><a href="#" data-toggle="modal"
						data-target="#show_kategorie" class="main_tab2">강원도</a> <a
						href="#" data-toggle="modal" data-target="#show_kategorie"
						class="main_tab2">서울시</a> <a href="#" data-toggle="modal"
						data-target="#show_kategorie" class="main_tab2">수원시</a> <a
						href="#" data-toggle="modal" data-target="#show_kategorie"
						class="main_tab2">평택시</a></td>

					<td><a href="#" data-toggle="modal"
						data-target="#show_kategorie" class="main_tab2">편의점 해봄</a> <a
						href="#" data-toggle="modal" data-target="#show_kategorie"
						class="main_tab2">카페</a> <a href="#" data-toggle="modal"
						data-target="#show_kategorie" class="main_tab2">술집</a> <a href="#"
						data-toggle="modal" data-target="#show_kategorie"
						class="main_tab2">노래방ㅋ</a></td>

					<td><a href="#" data-toggle="modal"
						data-target="#show_kategorie" class="main_tab2">월~금</a> <a
						href="#" data-toggle="modal" data-target="#show_kategorie"
						class="main_tab2">토일</a> <a href="#" data-toggle="modal"
						data-target="#show_kategorie" class="main_tab2">오전</a> <a href="#"
						data-toggle="modal" data-target="#show_kategorie"
						class="main_tab2">오후</a></td>
				</tr>
			</table>
		</div>

		<div class="jobofferlist">
			<h2>구직자 리스트</h2>
			<hr>
			<select class="selectlist">
				<option>정렬선택</option>
				<option>이름</option>
				<option>정렬선택</option>
			</select>
		</div>


	</div>
</body>
</html>