<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">
	<head>				
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<title>WorkNow - 지금 당장 일하자!</title>
		<!-- Bootstrap core CSS -->
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="resources/css/owl.carousel.css" rel="stylesheet">
		<link href="resources/css/owl.theme.default.min.css"  rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
<!-- 		<link href="resources/css/main.css" rel="stylesheet"> -->

		
	</head>
	<body id="page-top">
	<jsp:include page="/WEB-INF/views/header/header.jsp" />
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<!-- Navigation -->
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
					<a class="navbar-brand page-scroll" href="#page-top"><img src="resources/images/logo.png" alt="Sanza theme logo"></a>
				</div>
				
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a class="page-scroll" href="#about">소개</a>
						</li>						
						<li>
							<a class="page-scroll" href="jobofferView.jo">구인</a>
						</li>
						<li>
							<a class="page-scroll" href="">구직</a>
						</li>
						<li>
							<a class="page-scroll" href="blist.do">커뮤니티</a>
						</li>
						<li>
							<a class="page-scroll" href="">고객센터</a>
						</li>
						<li>
							<a class="page-scroll" href="">로그인</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<!-- Header -->
		<header> 

			<div class="container">
				<div class="slider-container">
					<div class="intro-text">
						<div class="intro-lead-in">Welcome To WorkNow</div>
						<div class="intro-heading" style="font-size:40pt;">원하는 아르바이트 or 직원을 검색하세요!			
						
						</div>
						
						<hr>
						<br><br> 
						
						<dl class="search_all">
						   <dt class="main_tab">알바 찾기</dt>
						   <dd>
						   	  <!-- 주소 선택 부분 -->
						      <div>
						      	<table align="center" border="1" cellspacing="0" width="900" id="" >
						      		<tr height="40px"  class="kategorie1">
						      			<th class="main_th main_tab2">지역별 알바</th>
						      			<th class="main_th main_tab2">업종별 알바</th>
						      			<th class="main_th main_tab2">시간별 알바</th>
						      		</tr>
						      		<tr height="200px" class="kategorie2 ">
						      			<!-- 주소로 구직찾기 -->
						      			<td>
						      			<div style="width:300px">
						      			<div style="overflow-x:hidden; width:110px; height:110px; float: left" class="sel_address1">
						      				<a class="select_test" href="#" onclick= "return false;">서울<br></a>
						      				<a class="select_test" href="#" onclick= "return false;">경기<br></a> 
						      				<a class="select_test" href="#" onclick= "return false;">인천<br></a>  
						      				<a class="select_test" href="#" onclick= "return false;">강원<br></a>
						      				<a class="select_test" href="#" onclick= "return false;">대전<br></a>  
						      				<a class="select_test" href="#" onclick= "return false;">세종<br></a>
						      				<a class="select_test" href="#" onclick= "return false;">충남<br></a>  
						      				<a class="select_test" href="#" onclick= "return false;">충북<br></a> 
						      				<a class="select_test" href="#" onclick= "return false;">부산<br></a>
						      				<a class="select_test" href="#" onclick= "return false;">울산<br></a>  
						      				<a class="select_test" href="#" onclick= "return false;">경남<br></a> 
						      				<a class="select_test" href="#" onclick= "return false;">경북<br></a>
						      				<a class="select_test" href="#" onclick= "return false;">대구<br></a>  
						      				<a class="select_test" href="#" onclick= "return false;">광주<br></a> 
						      				<a class="select_test" href="#" onclick= "return false;">전남<br></a>
						      				<a class="select_test" href="#" onclick= "return false;">전북<br></a>  
						      				<a class="select_test" href="#" onclick= "return false;">제주<br></a> 
						      				<a class="select_test" href="#" onclick= "return false;">전국<br></a>
						      			</div>
						      			<div style="overflow-x:hidden; width:150px; height:110px; float:left " 
						      			class="sel_address2">
						      				시/도를 선택하시오  
						      			</div>
						      			<div style="display:none; overflow-x:hidden; width:150px; height:110px; float:left " 
						      			id="seoul" class="sel_address2">
						      				<a class="select_test2" href="#" onclick= "return false;">강북구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">강서구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">관악구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">광진구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">구로구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">금천구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">노원구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">도봉구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">동대문구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">동작구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">마포구<br></a> 
						      				<a class="select_test2" href="#" onclick= "return false;">서대문구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">서초구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">성동구<br></a> 
						      				<a class="select_test2" href="#" onclick= "return false;">성북구<br></a>   
						      				<a class="select_test2" href="#" onclick= "return false;">송파구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">양천구<br></a> 
						      				<a class="select_test2" href="#" onclick= "return false;">영등포구<br></a> 
						      				<a class="select_test2" href="#" onclick= "return false;">용산구<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">은평구<br></a> 
						      				<a class="select_test2" href="#" onclick= "return false;">종로구<br></a> 
						      			    <a class="select_test2" href="#" onclick= "return false;">중구<br></a>
						      			    <a class="select_test2" href="#" onclick= "return false;">중랑구<br></a>  
						      			</div>
						      			<div style="display:none; overflow-x:hidden; width:150px; height:110px; float:left " 
						      			id="gyeonggi" class="sel_address2">                             
								      		<a class="select_test2" href="#" onclick= "return false;">경기전체 <br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">가평군<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">고양시 덕양구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">고양시 일산동구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">고양시 일산서구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">광명시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">광주시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">구리<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">군포시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">김포시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">남양주시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">동두천시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">부천시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">성남시 분당구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">성남시 수정구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">성남시 중원구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">수원시 권선구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">수원시 영통구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">수원시 장안구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">수원시 팔달구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">시흥시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">안산시 단원구 <br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">안산시 상록구 <br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">안성시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">안양시 동안구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">안양시 만안구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">양주시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">양평군<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">여주시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">연천군<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">오산시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">용인시 기흥구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">용인시 수지구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">용인시 처인구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">의왕시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">의정부<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">이천시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">파주시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">평택시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">포천시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">하남시<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">화성시<br></a> 						      			
						      			</div>
						      			<div style="display:none; overflow-x:hidden; width:150px; height:110px; float:left " 
						      			id="incheon" class="sel_address2">  
						      				<a class="select_test2" href="#" onclick= "return false;">인천전체<br></a> 					      				
								      		<a class="select_test2" href="#" onclick= "return false;">계양구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">남구<br></a> 
								      		<a class="select_test2" href="#" onclick= "return false;">남동구<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">동구<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">부평구<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">서구<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">연수구<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">중구<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">강화군<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">옹진군<br></a> 
						      			</div>
						      			<div style="display:none; overflow-x:hidden; width:150px; height:110px; float:left " 
						      			id="gangwon" class="sel_address2">  
						      				<a class="select_test2" href="#" onclick= "return false;">강원전체<br></a>  			      				
								      		<a class="select_test2" href="#" onclick= "return false;">원주시<br></a>  
								      		<a class="select_test2" href="#" onclick= "return false;">동해시<br></a>  
								      		<a class="select_test2" href="#" onclick= "return false;">삼척시<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">속초시<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">강릉시<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">춘천시<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">태백시<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">양양군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">철원군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">횡성군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">화천군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">홍천군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">인제군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">정선군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">양구군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">영월군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">평창군<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">고성군<br></a>  
						      			</div>
						      			<div style="display:none; overflow-x:hidden; width:150px; height:110px; float:left " 
						      			id="daejeon" class="sel_address2">  
						      				<a class="select_test2" href="#" onclick= "return false;">대전전체<br></a> 			      				
								      		<a class="select_test2" href="#" onclick= "return false;">대덕구<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">동구<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">서구<br></a>  
											<a class="select_test2" href="#" onclick= "return false;">유성구<br></a> 
											<a class="select_test2" href="#" onclick= "return false;">중구<br></a>  
						      			</div>
						      			<div style="display:none; overflow-x:hidden; width:150px; height:110px; float:left " 
						      			id="sejong" class="sel_address2">  
						      				<a class="select_test2" href="#" onclick= "return false;">세종전체<br></a>  			      				
								      		<a class="select_test2" href="#" onclick= "return false;">세종시<br></a>  
						      			</div>
						      			<div style="display:none; overflow-x:hidden; width:150px; height:110px; float:left " 
						      			id="chungcheongnam" class="sel_address2">
						      				<a class="select_test2" href="#" onclick= "return false;">충남전체<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">아산시<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">서산시<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">천안시<br></a>
						      				<a class="select_test2" href="#" onclick= "return false;">공주시<br></a>	
											<a class="select_test2" href="#" onclick= "return false;">보령시<br></a>
											<a class="select_test2" href="#" onclick= "return false;">논산시<br></a>
											<a class="select_test2" href="#" onclick= "return false;">계룡시<br></a>
											<a class="select_test2" href="#" onclick= "return false;">당진군<br></a>	
											<a class="select_test2" href="#" onclick= "return false;">부여군<br></a>
											<a class="select_test2" href="#" onclick= "return false;">예산군<br></a>
											<a class="select_test2" href="#" onclick= "return false;">태안군<br></a>
											<a class="select_test2" href="#" onclick= "return false;">연기군<br></a>	
											<a class="select_test2" href="#" onclick= "return false;">홍성군<br></a>
											<a class="select_test2" href="#" onclick= "return false;">금산군<br></a>
											<a class="select_test2" href="#" onclick= "return false;">서천군<br></a>
											<a class="select_test2" href="#" onclick= "return false;">청양군<br></a>	
						      			</div>  
						      		</div>
				      					
						      			</td>
						      			
						      			<!-- 직종별 알바찾기 아이콘들 -->
						      			<td>
						      			
						      			<a href="#" class="testt" onclick= "return false;">무관
						      			<img src="resources/images/main/desktop.png" alt="img01" class="search_tob" id="search_all" /></a>
						      			
						      			<a href="#" class="testt" onclick= "return false;">
						      			<img src="resources/images/main/desktop.png" alt="img01" class="search_tob" id="search_it" /></a>	 
						      			
						      			<a href="#" class="testt" onclick= "return false;">
						      			<img src="resources/images/main/grab.png" alt="img01" class="search_tob" id="search_work" /></a>
						      			
						      			<a href="#" class="testt" onclick= "return false;">
						      			<img src="resources/images/main/money.png" alt="img01" class="search_tob" id="search_etc" /></a>
						      			
						      			<a href="#" class="testt" onclick= "return false;">
						      			<img src="resources/images/main/person.png" alt="img01" class="search_tob" id="search_Acting" /></a>
						      			
						      			<a href="#" class="testt" onclick= "return false;">
						      			<img src="resources/images/main/restaurant.png" alt="img01" class="search_tob" id="search_restaurant" /></a>
						      			
						      			<a href="#" class="testt" onclick= "return false;">
						      			<img src="resources/images/main/truck.png" alt="img01" class="search_tob" id="search_delivery" /></a>
						      			
						      			<a href="#" class="testt" onclick= "return false;">
						      			<img src="resources/images/main/up.png" alt="img01" class="search_tob" id="search_service" /></a>
						      						      			
						      			</td>
						      				
						      			<!-- 시간별로 구직찾기 -->					      			
						      			<td>
						      			시작일 &nbsp;<input type="date" id="job_start" name="userdate" value="2018-04-16"><br>
						      			종료일 &nbsp;<input type="date" id="job_end" value="2018-05-16"><br>
						      			<a href="#" class="testt" id="search_time"><br>
						      			<img src="resources/images/search.png" width="10%"></a>	 							      			
						      			</td>
						      		</tr>
						      	</table>	
						      	<h2 id="result_select1"></h2>
						      	<h2 id="result_select2"></h2>			
						      	<h2 id="result_select3"></h2>			
						      </div>	
						   </dd>
						
						   <dt class="main_tab">구인</dt>
						   <dd class="hidden">
						      	<div>
						      	<table align="center" border="1" cellspacing="0" width="900" id="kt" >
						      		<tr height="40px"  class="kategorie1">
						      			<th class="main_th main_tab2">근무가능 지역</th>
						      		</tr>
						      		<tr height="200px"  class="kategorie2 ">
						      			<!-- 주소로 구인찾기 -->
						      			<td>


						      			<select id="sel_adress1">
						      				<option value="seoul">서울</option><option value="gyeonggi">경기</option>
						      				<option value="incheon">인천</option><option value="gangwon">강원</option> 
						      				<option value="daejeon">대전</option><option value="sejong">세종</option>
						      				<option value="chungnam">충남</option> <option value="chungbug">충북</option><option value="busan">부산</option>
						      				<option value="ulsan">울산</option> <option value="gyeongnam">경남</option>	<option value="gyeongbug">경북</option>
						      				<option value="daegu">대구</option> <option value="gwangju">광주</option>	<option value="jeonnam">전남</option>
						      				<option value="jeonbug">전북</option> <option value="jeju">제주</option>	<option value="jeongug">전국</option>

						      			</select>
 			<select id="seoul" class="sel_adress2">
						      				<option value="seoul_all">서울전체</option> <option value="">강남구</option> <option value="">강동구</option>
						      				<option value="gangbug">강북구</option> <option value="">강서구</option> <option value="">관악구</option>
						      				<option value="gwangjin">광진구</option> <option value="">구로구</option> <option value="">금천구</option>
						      				<option value="nowon">노원구</option> <option value="">도봉구</option> <option value="">동대문구</option>
						      				<option value="dongjag">동작구</option> <option value="">마포구</option> <option value="">서대문구</option>
						      				<option value="seocho">서초구</option> <option value="">성동구</option> <option value="">성북구</option>
						      				<option value="">송파구</option> <option value="">양천구</option> <option value="">영등포구</option>
						      				<option value="">용산구</option> <option value="">은평구</option> <option value="">종로구</option>
						      				<option value="">중구</option> <option value="">중랑구</option>

						      			</select>
						      			

						      			<select id="gyeonggi" style="display:none;" class="sel_adress2">
						      				<option value="gyeonggi_all">경기전체</option> <option value="gapyeong">가평군</option> <option value="deogyang">고양시 덕양구</option>
						      				<option value="ilsandong">고양시 일산동구</option> <option value="ilsanseo">고양시 일산서구</option> <option value="gwacheon">과천시</option>
						      				<option value="guang">광명시</option> <option value="gwang">광주시</option> <option value="guri">구리시</option>
						      				<option value="gunpo">군포시</option> <option value="kimpo">김포시</option> <option value="namyangjuju">남양주시</option>
						      				<option value="dongducheon">동두천시</option> <option value="bucheon">부천시</option> <option value="bundang">성남시 분당구</option>
						      				<option value="sujeong">성남시 수정구</option> <option value="jungwon">성남시 중원구</option> <option value="gwonseong">수원시 권선구</option>
						      				<option value="youngtong">수원시 영통구</option> <option value="changan">수원시 장안구</option> <option value="paldal">수원시 팔달구</option>
						      				<option value="siheung">시흥시</option> <option value="danwon">안산시 단원구</option> <option value="sanglog">안산시 상록구</option>
						      				<option value="anseong">안성시</option> <option value="dongan">안양시 동안구</option>	<option value="manan">안양시 만안구</option> 
						      				<option value="yangju">양주시</option> <option value="yangpyeong">양평군</option> <option value="yeoju">여주시</option>
						      				<option value="yeoncheon">연천군</option> <option value="osan">오산시</option> <option value="giheung">용인시 기흥구</option> 
						      				<option value="suji">용인시 수지구</option> <option value="cheoin">용인시 처인구</option>
						      				<option value="uiwang">의왕시</option> <option value="uijeongbu">의정부시</option> <option value="icheon">이천시</option>
						      				<option value="paju">파주시</option> <option value="pyeongtaeg">평택시</option> <option value="pocheon">포천시</option>
						      				<option value="hanam">하남시</option> <option value="hwaseong">화성시</option>						      				

						      			</select>
					      			
   			                <select id="incheon" style="display:none;" class="sel_adress2">	

						      				<option value="incheon_all">인천전체</option>					      				
								      		<option value="gyeyang">계양구</option><option value="incheon_namgu">남구 </option><option value="incheon_namdong">남동구</option>  
											<option value="incheon_dong">동구 </option><option value="bupyeong">부평구</option><option value="incheon_seo">서구 </option>  
											<option value="yeonsu">연수구</option><option value="incheon_jung">중구 </option><option value="ganghwa">강화군</option>  
											<option value="ongjin">옹진군</option>  

						      			</select>

						      			<select id="gangwon" style="display:none;" class="sel_adress2">		
						      				<option value="gangwon_all">강원전체</option>				      				
								      		<option value="wonju">원주시</option><option value="donghae">동해시</option><option value="samcheog">삼척시</option>
											<option value="sogcho">속초시</option><option value="gangleung">강릉시</option><option value="chuncheon">춘천시</option>
											<option value="taebaeg">태백시</option><option value="yangyang">양양군</option><option value="cheolwon">철원군</option>
											<option value="hoengseong">횡성군</option><option value="hwacheon">화천군</option><option value="hongcheon">홍천군</option>
											<option value="inje">인제군</option><option value="jeongseon">정선군</option><option value="yanggu">양구군</option>
											<option value="yeongwol">영월군</option><option value="pyeongchang">평창군</option><option value="goseong">고성군</option>
                        </select>

                          <select id="daejeon" style="display:none;" class="sel_adress2">		
						      				<option value="daejeon_all">대전전체</option>				      				
								      		<option value="daedeog">대덕구</option>
											<option value="daejeon_dong">동구 </option>
											<option value="daejeon_seo">서구 </option>
											<option value="yuseong">유성구</option>
											<option value="daejeon_jung">중구 </option>

						      			</select>

                          <select id="sejong" style="display:none;" class="sel_adress2">	
						      				<option value="sejong_all">세종전체</option>					      				

								      		<option>세종시</option>
						      			</select>
	
                          <select id="chungcheongnam" style="display:none;" class="sel_adress2">
											<option value="chungcheongnam_all">충남전체</option>

						      				<option>아산시</option><option>서산시</option><option>천안시</option><option>공주시</option>	
											<option>보령시</option><option>논산시</option><option>계룡시</option><option>당진군</option>	
											<option>부여군</option><option>예산군</option><option>태안군</option><option>연기군</option>	
											<option>홍성군</option><option>금산군</option><option>서천군</option><option>청양군</option>	
						      			</select>
						      			&nbsp; &nbsp; &nbsp;
						      			성별 &nbsp;
							      			<input type="radio" name="sex" value="무관" checked="checked">무관&nbsp;
											<input type="radio" name="sex" value="남">남자 &nbsp;
											<input type="radio" name="sex" value="여">여자 &nbsp;
						      			<br><br>


						      			<a href="#" class="testt" id="search_address">

						      			<img src="resources/images/search.png" width="10%" id="search_address"></a>	      									      			     			

						      			</td>
						      			
						      			<!-- 직종별 알바찾기 아이콘들 -->
						      			<td>

                          <a href="#" class="testt" id="search_tob1">
						      			<img src="resources/images/main/desktop.png" alt="img01" class="search_tob" id="search_it" /></a>	 
						      			
						      			<a href="#" class="testt" id="search_tob2">
						      			<img src="resources/images/main/grab.png" alt="img01" class="search_tob" id="search_work" /></a>
						      			
						      			<a href="#" class="testt" id="search_tob2">
						      			<img src="resources/images/main/money.png" alt="img01" class="search_tob" id="search_etc" /></a>
						      			
						      			<a href="#" class="testt" id="search_tob3">
						      			<img src="resources/images/main/person.png" alt="img01" class="search_tob" id="search_Acting" /></a>
						      			
						      			<a href="#" class="testt" id="search_tob4">
						      			<img src="resources/images/main/restaurant.png" alt="img01" class="search_tob" id="search_restaurant" /></a>
						      			
						      			<a href="#" class="testt" id="search_tob5">
						      			<img src="resources/images/main/truck.png" alt="img01" class="search_tob" id="search_delivery" /></a>
						      			
						      			<a href="#" class="testt" id="search_tob6">
						      			<img src="resources/images/main/up.png" alt="img01" class="search_tob" id="search_service" /></a>
						      						      			
						      			</td>
						      									      			
						      			<td>
						      			시작일 &nbsp;<input type="date" id="job_start" name="userdate" value="2018-04-15"><br>
						      			종료일 &nbsp;<input type="date" id="job_end" value="2018-08-15"><br>
						      			<a href="#" class="testt" id="search_time"><br>

						      			<img src="resources/images/search.png" width="10%"></a>	 							      			
						      			</td>
						      		</tr>
						      	</table>							
						      </div>	
						   </dd>
						
						   <dt class="main_tab">사람 찾기</dt>
						   <dd class="hidden">
						      	<div>
						      	<table align="center" border="1" cellspacing="0" width="900" id="kt" >
						      		<tr height="40px"  class="kategorie1">
						      			<th class="main_th main_tab2">여기에서 사는 사람</th>
						      			<th class="main_th main_tab2">이거 잘하는 사람</th>
						      			<th class="main_th main_tab2">이런 시간대</th>
						      		</tr>
						      		<tr height="200px"  class="kategorie2 ">
						      			<td>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">강원도</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">서울시</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">수원시</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">평택시</a>						      			
						      			</td>
						      			
						      			<a href="#" class="testt" id="rb_search">
						      			<img src="resources/images/search.png" width="10%" id="search_address2"></a><br>
						      			</td>
						      		</tr>
						      	</table>				
						      </div>
						   </dd>
						</dl>						
					
					<!-- 목록 나오는 부분 -->
					<div class="search_result_background search_result" style="visibility:hidden">
					<div class="search_result" style="visibility:hidden">

						<a href="#" class="search_back">검색하기</a>						
						<div class="owl-partners owl-carousel">
							<c:forEach var="i" begin="0" end="9" step="1">
								<div class="col-md-4 col-0-gutter">
									<div class="ot-portfolio-item" >
										<figure class="effect-bubba" id="result_1">
											<img src="resources/images/demo/shop-icon.png" alt="img02" class="img-responsive" />
											<a class="subject_result${i}">검색결과없음
											</a>
											<a class="contents_result${i}">																			
											</a>
											<figcaption>
												<h2>가게 이름</h2>	
												<p>상세히 보기</p>
												<a href="#" data-toggle="modal" data-target="#Modal${i}">View more</a>
											</figcaption>
										</figure>
									</div>
								</div>
							</c:forEach> 							

						</div>
				</div>
				</div>
				
				
				
				</div>
			</div>
			</div>
		</header>
		
		<!-- 사이트 소개  -->
		<section id="about" class="dark-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>What We Got</h2>
							<p>WorkNow에서는 아래와 같은 서비스를 제공해 드립니다.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<i class="fa ot-circle"><img src="resources/images/WN/advertising.png" style="margin-top:25%;width:50%;"></i>
							<h3>Job Offering</h3>
							<p>구인공고를 등록해 구직자 모집을 보다 간편하게 할 수 있습니다.</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<i class="fa ot-circle"><img src="resources/images/WN/advertising.png" style="margin-top:25%;width:50%;"></i>
							<h3>Job Searching</h3>
							<p>모든 회원님들에게 당일부터 예약까지 다양한 조건의 아르바이트 검색서비스를 제공합니다.</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<i class="fa ot-circle"><img src="resources/images/WN/advertising.png" style="margin-top:25%;width:50%;"></i>
							<h3>Matching</h3>
							<p>검색부터 계약성사까지 몇번의 클릭만으로 제공 받을 수 있습니다.</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<i class="fa ot-circle"><img src="resources/images/WN/advertising.png" style="margin-top:25%;width:50%;"></i>
							<h3>커뮤니티</h3>
							<p>유저-유저, 유저-관리자와의 소통을 통해 자유로운 활동을 보조합니다.</p>
						</div>
					</div>
					<!-- end about module -->
				</div>
			</div>
			<!-- /.container -->
		</section>
		
		<!-- 팀원 소개 -->
		<section id="team" class="light-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Creaters</h2>
							<p>열정을 가진 WorkNow 개발진입니다!</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- team member item -->
					<div class="col-md-4" style="wideh:25%">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-2.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>김윤환</h3>
								<div class="team-position">Team-leader</div>
								<p>저희가 만든 홈페이지를 통해 예고치 않은 일정 조율로 인한 부득이한 인력모집에 효율성을 부여하고자 했습니다.</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="col-md-4" style="wideh:25%">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-6.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>박용준</h3>
								<div class="team-position">Developer</div>
								<p>Worsa dona namet, cons uectetur dipiscing adon elit. Aliquam vitae fringilla unda mir.</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					
					<!-- team member item -->
					<div class="col-md-4" style="wideh:25%">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-4.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>김태용</h3>
								<div class="team-position">Pro-Tester</div>
								<p>Dolor sit don namet, cons uectetur beriscing adon elit. Aliquam vitae fringilla unda.</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="col-md-4" style="wideh:25%">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-4.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>이성우</h3>
								<div class="team-position">Developer</div>
								<p>Dolor sit don namet, cons uectetur beriscing adon elit. Aliquam vitae fringilla unda.</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
				</div>
			</div>
		</section>
		
		
		
		
		
		<p id="back-top">
			<a href="#top"><i class="fa fa-angle-up"></i></a>
		</p>
		<footer>
			<div class="container text-center">
				<p>Designed by <a href="http://moozthemes.com"><span>MOOZ</span>Themes.com</a></p>
			</div>
		</footer>
		
		<!-- 상세히 보기 -->
		<c:forEach var="i" begin="0" end="9" step="1">
			<div class="modal fade" id="Modal${i}" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1 detail_sub${i}"></h4>
					</div>
					<div class="modal-body">						
						<div class="modal-works">

            <img src="resources/images/demo/shop-icon.png" alt="매장 아이콘." class="img_content" />						
						<span>테스트트트트틑</span><span>내용</span>				
						</div>

						<p id="detail_sub${i}"></p>
						<p id="detail_content${i}"></p>
						<p id="detail_value${i}"></p>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>					
		</c:forEach> 		

<!-- 이부분도 뭔지 몰라 주석처리 함
		<!-- Modal for portfolio item 5 -->
		<div class="modal fade" id="Modal-5" tabindex="-1" role="dialog" aria-labelledby="Modal-label-5">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-5">Fast People</h4>
					</div>
					<div class="modal-body">
						<img src="resources/images/demo/portfolio-5.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>	
		

		<!-- Bootstrap core JavaScript ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- 뭔지 몰라 주석처리하고 병합하였음 
		
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>		
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/owl.carousel.min.js"></script>
		<script src="resources/js/cbpAnimatedHeader.js"></script>
		<script src="resources/js/jquery.appear.js"></script>
		<script src="resources/js/SmoothScroll.min.js"></script>
		<script src="resources/js/mooz.themes.scripts.js"></script>
		<script src="resources/js/main.js"></script>

	
		-->
		

<link href="resources/css/main.css" rel="stylesheet">
	</body>
</html>