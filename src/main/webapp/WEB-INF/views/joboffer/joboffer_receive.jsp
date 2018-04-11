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
<title>WorkNow - 구인하기</title>
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

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body id="page-top">
	<div class="bodymargin">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<jsp:include page="/WEB-INF/views/header/header.jsp" />


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
				<!-- 1 -->
					<!-- team member item -->
					<div class="jobofferbtn1">
						<div class="team-item">
							<div class="team-image">
								<a href="jobofferView.jo" > <img src="resources/images/demo/job-offer.png" 
									class="img-responsive" alt="author" width="75%">
								</a>
							</div>
						</div>
					</div>
					<!-- 2 -->
					<!-- end team member item -->
					<!-- team member item -->
					<div class="jobofferbtn1">
						<div class="team-item">
							<div class="team-image">
								<a href="receive.re"> <img src="resources/images/demo/orderlist.png" 
									class="img-responsive" alt="author" width="75%">
								</a>
							</div>

						</div>
					</div>
					<!-- 3 -->
					<!-- end team member item -->
					<!-- team member item -->
					<div class="jobofferbtn1">
						<div class="team-item">
							<div class="team-image">
								<a href="announcement.an"> <img src="resources/images/demo/notepad.png"
									class="img-responsive" alt="author" width="75%">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="jobofferlist">
			<h2>받은 신청 목록</h2>
			<hr>
			<select class="selectlist">
				<option>정렬선택</option>
				<option>이름</option>
				<option>나이</option>
			</select>
		</div>
		<% for(int i=0; i< 3; i++){
			%>
		<div style="margin:0 20% 0 20%">
			<table style="width:100%">
			<tr>
			<td rowspan="2"><img src="resources/images/demo/다운로드.jpg"	style="width: 80px;"> </td>
			<td> 		<input type="text" placeholder="제목들어감" style="width: 100%; display: inline;"></td>			
			</tr>
			<tr>
			<td><input type="text" placeholder="내용들 들어감" style="width: 100%;">	</td>
			</tr>
			</table>
		</div>
		<% } %>
	</div>
</body>
</html>