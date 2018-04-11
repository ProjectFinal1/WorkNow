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
		</div>
	
		<table border="1" class="pattern">
		<tr>
			<th>제목</th>		
			<td><input type="text"></td>								
		</tr>
		
		<tr>
			<th>매장사진</th>
			<td><input type="file" name="shop_img" value=" "></td>
		</tr>
		
		<tr>
			<th>매장명</th>
			<td><input type="text"></td>
		</tr>
		
		<tr>
			<th>분류</th>
			<td>
			<select>
			<option>편의점</option>
			<option>편의점</option>
			<option>편의점</option>
			<option>편의점</option>
			<option>편의점</option>			
			</select></td>
		</tr>
		
		<tr>
			<th>대표자명</th>
			<td><input type="text"></td>
		</tr>
		
		<tr>
			<th>아이디</th>
			<td><input type="text"></td>
		</tr>
		
		<tr>
			<th>주소</th>
			<td><input type="text"></td>
		</tr>
		
		<tr>
			<th>연락처</th>
			<td><input type="text"></td>
		</tr>
		
		<tr>
			<th>이메일</th>
			<td><input type="text"></td>
		</tr>
		
		<tr>
			<th>근무조건</th>
			<td>시간</td>
		</tr>
	</table>
	
	<div class="prewindow">
		<input type="button" value="미리보기">
	</div>
	
	<table>
		
	</table>
</body>
</html>