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

		<br> <br> <br> <br> <br>

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

				<tr height="100px" class="kategorie2">
					<td>
					<select id="sel_adress1">
							<option value="seoul">서울</option>
							<option value="gyeonggi">경기</option>
							<option value="incheon">인천</option>
							<option value="gangwon">강원</option>
							<option value="daejeon">대전</option>
							<option value="sejong">세종</option>
							<option value="chungcheongnam">충남</option>
							<option value="">충북</option>
							<option value="">부산</option>
							<option value="">울산</option>
							<option value="">경남</option>
							<option value="">경북</option>
							<option value="">대구</option>
							<option value="">광주</option>
							<option value="">전남</option>
							<option value="">전북</option>
							<option value="">제주</option>
							<option value="">전국</option>
					</select> 
					<select id="seoul" class="sel_adress2">
							<option value="">서울전체</option>
							<option value="">강남구</option>
							<option value="">강동구</option>
							<option value="">강북구</option>
							<option value="">강서구</option>
							<option value="">관악구</option>
							<option value="">광진구</option>
							<option value="">구로구</option>
							<option value="">금천구</option>
							<option value="">노원구</option>
							<option value="">도봉구</option>
							<option value="">동대문구</option>
							<option value="">동작구</option>
							<option value="">마포구</option>
							<option value="">서대문구</option>
							<option value="">서초구</option>
							<option value="">성동구</option>
							<option value="">성북구</option>
							<option value="">송파구</option>
							<option value="">양천구</option>
							<option value="">영등포구</option>
							<option value="">용산구</option>
							<option value="">은평구</option>
							<option value="">종로구</option>
							<option value="">중구</option>
							<option value="">중랑구</option>
					</select>
					 <select id="gyeonggi" style="display: none;" class="sel_adress2">
							<option value="">경기전체</option>
							<option value="">가평군</option>
							<option value="">고양시 덕양구</option>
							<option value="">고양시 일산동구</option>
							<option value="">고양시 일산서구</option>
							<option value="">과천시</option>
							<option value="">광명시</option>
							<option value="">광주시</option>
							<option value="">구리시</option>
							<option value="">군포시</option>
							<option value="">김포시</option>
							<option value="">남양주시</option>
							<option value="">동두천시</option>
							<option value="">부천시</option>
							<option value="">성남시 분당구</option>
							<option value="">성남시 수정구</option>
							<option value="">성남시 중원구</option>
							<option value="">수원시 권선구</option>
							<option value="">수원시 영통구</option>
							<option value="">수원시 장안구</option>
							<option value="">수원시 팔달구</option>
							<option value="">시흥시</option>
							<option value="">안산시 단원구</option>
							<option value="">안산시 상록구</option>
							<option value="">안성시</option>
							<option value="">안양시 동안구</option>
							<option value="">안양시 만안구</option>
							<option value="">양주시</option>
							<option value="">양평군</option>
							<option value="">여주시</option>
							<option value="">연천군</option>
							<option value="">오산시</option>
							<option value="">용인시 기흥구</option>
							<option value="">용인시 수지구</option>
							<option value="">용인시 처인구</option>
							<option value="">의왕시</option>
							<option value="">의정부시</option>
							<option value="">이천시</option>
							<option value="">파주시</option>
							<option value="">평택시</option>
							<option value="">포천시</option>
							<option value="">하남시</option>
							<option value="">화성시</option>
					</select> 
					<select id="incheon" style="display: none;" class="sel_adress2">
							<option>인천전체</option>
							<option value="">계양구</option>
							<option value="">남구</option>
							<option value="">남동구</option>
							<option value="">동구</option>
							<option value="">부평구</option>
							<option value="">서구</option>
							<option value="">연수구</option>
							<option value="">중구</option>
							<option value="">강화군</option>
							<option value="">옹진군</option>
					</select>
					 <select id="gangwon" style="display: none;" class="sel_adress2">
							<option>강원전체</option>
							<option value="">원주시</option>
							<option value="">동해시</option>
							<option value="">삼척시</option>
							<option value="">속초시</option>
							<option value="">강릉시</option>
							<option value="">춘천시</option>
							<option value="">태백시</option>
							<option value="">양양군</option>
							<option value="">철원군</option>
							<option value="">횡성군</option>
							<option value="">화천군</option>
							<option value="">홍천군</option>
							<option value="">인제군</option>
							<option value="">정선군</option>
							<option value="">양구군</option>
							<option value="">영월군</option>
							<option value="">평창군</option>
							<option value="">고성군</option>
					</select>
					 <select id="daejeon" style="display: none;" class="sel_adress2">
							<option>대전전체</option>
							<option value="">대덕구</option>
							<option value="">동구</option>
							<option value="">서구</option>
							<option value="">유성구</option>
							<option value="">중구</option>
					</select> 
					<select id="sejong" style="display: none;" class="sel_adress2">
							<option>세종전체</option>
							<option>세종시</option>
					</select> 
					<select id="chungcheongnam" style="display: none;"
						class="sel_adress2">
							<option>충남전체</option>
							<option>아산시</option>
							<option>서산시</option>
							<option>천안시</option>
							<option>공주시</option>
							<option>보령시</option>
							<option>논산시</option>
							<option>계룡시</option>
							<option>당진군</option>
							<option>부여군</option>
							<option>예산군</option>
							<option>태안군</option>
							<option>연기군</option>
							<option>홍성군</option>
							<option>금산군</option>
							<option>서천군</option>
							<option>청양군</option>
					</select> <br>
					<br> <a href="#" class="testt" id="search_adress"> <img
							src="resources/images/search.png" width="10%"></a>
							</td>


					<td>
					<a href="#" data-toggle="modal"
						data-target="#show_kategorie" class="main_tab2">월~금</a> <a
						href="#" data-toggle="modal" data-target="#show_kategorie"
						class="main_tab2">토일</a> <a href="#" data-toggle="modal"
						data-target="#show_kategorie" class="main_tab2">오전</a> <a href="#"
						data-toggle="modal" data-target="#show_kategorie"
						class="main_tab2">오후</a>
					</td>
					<td>
						<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">00시 ~ 06시</a><br>
						<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">6시 ~ 12시</a><br>	
						<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">12시 ~ 18시</a><br>
						<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">18시 ~ 24시</a>				
					</td>
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
		
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>
</body>
</html>