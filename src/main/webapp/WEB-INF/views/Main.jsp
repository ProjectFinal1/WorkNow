<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%> 
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
		<link href="resources/css/main.css" rel="stylesheet">
	</head>
	<body id="page-top">
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
						<div class="intro-heading">원하는 알바 선택해</div>
						<hr>
						

						<br><br> 
						
						<dl class="search_all">
						   <dt class="main_tab">알바 찾기</dt>
						   <dd>
						   	  <!-- 주소 선택 부분 -->
						      <div>
						      	<table align="center" border="1" cellspacing="0" width="900" id="kt" >
						      		<tr height="40px"  class="kategorie1">
						      			<th class="main_th main_tab2">지역별 알바</th>
						      			<th class="main_th main_tab2">업종별 알바</th>
						      			<th class="main_th main_tab2">시간별 알바</th>
						      		</tr>
						      		<tr height="200px"  class="kategorie2 ">
						      			<!-- 주소로 구직찾기 -->
						      			<td>
						      			<select id="sel_address1">
						      				<option >서울</option> <option >경기</option>
						      				<option >인천</option> <option >강원</option> 
						      				<option >대전</option> <option >세종</option>
						      				<option >충남</option> <option >충북</option><option>부산</option>
						      				<option >울산</option> <option >경남</option>	<option>경북</option>
						      				<option >대구</option> <option >광주</option>	<option>전남</option>
						      				<option >전북</option> <option >제주</option>	<option>전국</option>
						      			</select>
						      			
						      			<select id="seoul" class="sel_address2">
						      				<option>서울전체</option> <option>강남구</option> <option>강동구</option>
						      				<option>강북구</option> <option>강서구</option> <option>관악구</option>
						      				<option>광진구</option> <option>구로구</option> <option>금천구</option>
						      				<option>노원구</option> <option>도봉구</option> <option>동대문구</option>
						      				<option>동작구</option> <option>마포구</option> <option>서대문구</option>
						      				<option>서초구</option> <option>성동구</option> <option>성북구</option>
						      				<option>송파구</option> <option>양천구</option> <option>영등포구</option>
						      				<option>용산구</option> <option>은평구</option> <option>종로구</option>
						      				<option>중구</option> <option>중랑구</option>
						      			</select>
						      			
						      			<select id="gyeonggi" style="display:none;" class="sel_address2">
						      				<option>경기전체</option> <option>가평군</option> <option>고양시 덕양구</option>
						      				<option>고양시 일산동구</option> <option>고양시 일산서구</option> <option>과천시</option>
						      				<option>광명시</option> <option>광주시</option> <option>구리시</option>
						      				<option>군포시</option> <option>김포시</option> <option>남양주시</option>
						      				<option>동두천시</option> <option>부천시</option> <option>성남시 분당구</option>
						      				<option>성남시 수정구</option> <option>성남시 중원구</option> <option>수원시 권선구</option>
						      				<option>수원시 영통구</option> <option>수원시 장안구</option> <option>수원시 팔달구</option>
						      				<option>시흥시</option> <option>안산시 단원구</option> <option>안산시 상록구</option>
						      				<option>안성시</option> <option>안양시 동안구</option>	<option>안양시 만안구</option> 
						      				<option>양주시</option> <option>양평군</option> <option>여주시</option>
						      				<option>연천군</option> <option>오산시</option> <option>용인시 기흥구</option> 
						      				<option>용인시 수지구</option> <option>용인시 처인구</option>
						      				<option>의왕시</option> <option>의정부시</option> <option>이천시</option>
						      				<option>파주시</option> <option>평택시</option> <option>포천시</option>
						      				<option>하남시</option> <option>화성시</option>						      				
						      			</select>
						      			
						      			
						      			<select id="incheon" style="display:none;" class="sel_address2">	
						      				<option>인천전체</option>					      				
								      		<option>계양구</option><option>남구 </option><option>남동구</option>  
											<option>동구 </option><option>부평구</option><option>서구 </option>  
											<option>연수구</option><option>중구 </option><option>강화군</option>  
											<option>옹진군</option>  
						      			</select>
						      			
						      			
						      			<select id="gangwon" style="display:none;" class="sel_address2">		
						      				<option>강원전체</option>				      				
								      		<option>원주시</option><option>동해시</option><option>삼척시</option>
											<option>속초시</option><option>강릉시</option><option>춘천시</option>
											<option>태백시</option><option>양양군</option><option>철원군</option>
											<option>횡성군</option><option>화천군</option><option>홍천군</option>
											<option>인제군</option><option>정선군</option><option>양구군</option>
											<option>영월군</option><option>평창군</option><option>고성군</option>
						      			</select>
						      			
						      			
						      			<select id="daejeon" style="display:none;" class="sel_address2">		
						      				<option>대전전체</option>				      				
								      		<option>대덕구</option>
											<option>동구 </option>
											<option>서구 </option>
											<option>유성구</option>
											<option>중구 </option>
						      			</select>
						      			
						      			<select id="sejong" style="display:none;" class="sel_address2">	
						      				<option>세종전체</option>					      				
								      		<option>세종시</option>
						      			</select>
						      			
						      			
						      			<select id="chungcheongnam" style="display:none;" class="sel_address2">
											<option>충남전체</option>
						      				<option>아산시</option><option>서산시</option><option>천안시</option><option>공주시</option>	
											<option>보령시</option><option>논산시</option><option>계룡시</option><option>당진군</option>	
											<option>부여군</option><option>예산군</option><option>태안군</option	><option>연기군</option>	
											<option>홍성군</option><option>금산군</option><option>서천군</option><option>청양군</option>	
						      			</select>
						      			
						      			<br><br>
						      			<a href="#" class="testt" id="search_address">
						      			<img src="resources/images/search.png" width="10%" id="search_address"></a>	      			
						      			</td>
						      			
						      			<!-- 직종별 알바찾기 아이콘들 -->
						      			<td>
						      			<a href="#" class="testt">
						      			<img src="resources/images/main/desktop.png" alt="img01" class="search_tob" id="search_it" /></a>	 
						      			
						      			<a href="#" class="testt">
						      			<img src="resources/images/main/grab.png" alt="img01" class="search_tob" id="search_work" /></a>
						      			
						      			<a href="#" class="testt">
						      			<img src="resources/images/main/money.png" alt="img01" class="search_tob" id="search_etc" /></a>
						      			
						      			<a href="#" class="testt">
						      			<img src="resources/images/main/person.png" alt="img01" class="search_tob" id="search_Acting" /></a>
						      			
						      			<a href="#" class="testt">
						      			<img src="resources/images/main/restaurant.png" alt="img01" class="search_tob" id="search_restaurant" /></a>
						      			
						      			<a href="#" class="testt">
						      			<img src="resources/images/main/truck.png" alt="img01" class="search_tob" id="search_delivery" /></a>
						      			
						      			<a href="#" class="testt">
						      			<img src="resources/images/main/up.png" alt="img01" class="search_tob" id="search_service" /></a>
						      						      			
						      			</td>
						      				
						      			<!-- 시간별로 구직찾기 -->					      			
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
						      			지역
						      			<select id="rb_address1">
						      				<option>서울</option> <option >경기</option>
						      				<option>인천</option> <option >강원</option> 
						      				<option>대전</option> <option >세종</option>
						      				<option>충남</option> <option >충북</option><option>부산</option>
						      				<option>울산</option> <option >경남</option><option>경북</option>
						      				<option>대구</option> <option >광주</option><option>전남</option>
						      				<option>전북</option> <option >제주</option><option>전국</option>
						      			</select>
						      			
						      			<select id="seoul2" class="rb_address2">
						      				<option>서울전체</option> <option>강남구</option> <option>강동구</option>
						      				<option>강북구</option> <option>강서구</option> <option>관악구</option>
						      				<option>광진구</option> <option>구로구</option> <option>금천구</option>
						      				<option>노원구</option> <option>도봉구</option> <option>동대문구</option>
						      				<option>동작구</option> <option>마포구</option> <option>서대문구</option>
						      				<option>서초구</option> <option>성동구</option> <option>성북구</option>
						      				<option>송파구</option> <option>양천구</option> <option>영등포구</option>
						      				<option>용산구</option> <option>은평구</option> <option>종로구</option>
						      				<option>중구</option> <option>중랑구</option>
						      			</select>
						      			
						      			<select id="gyeonggi2" style="display:none;" class="rb_address2">
						      				<option>경기전체</option> <option>가평군</option> <option>고양시 덕양구</option>
						      				<option>고양시 일산동구</option> <option>고양시 일산서구</option> <option>과천시</option>
						      				<option>광명시</option> <option>광주시</option> <option>구리시</option>
						      				<option>군포시</option> <option>김포시</option> <option>남양주시</option>
						      				<option>동두천시</option> <option>부천시</option> <option>성남시 분당구</option>
						      				<option>성남시 수정구</option> <option>성남시 중원구</option> <option>수원시 권선구</option>
						      				<option>수원시 영통구</option> <option>수원시 장안구</option> <option>수원시 팔달구</option>
						      				<option>시흥시</option> <option>안산시 단원구</option> <option>안산시 상록구</option>
						      				<option>안성시</option> <option>안양시 동안구</option>	<option>안양시 만안구</option> 
						      				<option>양주시</option> <option>양평군</option> <option>여주시</option>
						      				<option>연천군</option> <option>오산시</option> <option>용인시 기흥구</option> 
						      				<option>용인시 수지구</option> <option>용인시 처인구</option>
						      				<option>의왕시</option> <option>의정부시</option> <option>이천시</option>
						      				<option>파주시</option> <option>평택시</option> <option>포천시</option>
						      				<option>하남시</option> <option>화성시</option>						      				
						      			</select>
						      			
						      			
						      			<select id="incheon2" style="display:none;" class="rb_address2">	
						      				<option>인천전체</option>					      				
								      		<option>계양구</option><option>남구 </option><option>남동구</option>  
											<option>동구 </option><option>부평구</option><option>서구 </option>  
											<option>연수구</option><option>중구 </option><option>강화군</option>  
											<option>옹진군</option>  
						      			</select>
						      			
						      			
						      			<select id="gangwon2" style="display:none;" class="rb_address2">		
						      				<option>강원전체</option>				      				
								      		<option>원주시</option><option>동해시</option><option>삼척시</option>
											<option>속초시</option><option>강릉시</option><option>춘천시</option>
											<option>태백시</option><option>양양군</option><option>철원군</option>
											<option>횡성군</option><option>화천군</option><option>홍천군</option>
											<option>인제군</option><option>정선군</option><option>양구군</option>
											<option>영월군</option><option>평창군</option><option>고성군</option>
						      			</select>
						      			
						      			
						      			<select id="daejeon2" style="display:none;" class="rb_address2">		
						      				<option>대전전체</option>				      				
								      		<option>대덕구</option>
											<option>동구 </option>
											<option>서구 </option>
											<option>유성구</option>
											<option>중구 </option>
						      			</select>
						      			
						      			<select id="sejong2" style="display:none;" class="rb_address2">	
						      				<option>세종전체</option>					      				
								      		<option>세종시</option>
						      			</select>
						      			
						      			
						      			<select id="chungcheongnam2" style="display:none;" class="rb_address2">
											<option>충남전체</option>
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
						      			연령
						      			<select id="search_age" class="search_age">
						      			<option>무관</option>
						      			<c:forEach var="i" begin="15" end="70" step="1">
						      				<option>${i} 세</option>
						      			</c:forEach>
						      			</select>
						      			- <select id="search_age2" class="search_age2">
						      				<option>선택</option>
						      			</select>
						      			<br>
						      			업ㆍ직종
						      			<select id="search_tob2" class="search_tob2">
						      				<option>무관</option><option>서비스</option><option>단순노무</option><option>배달</option>	
											<option>대행</option><option>IT관련</option><option>음식점/카페</option><option>기타부업</option>	
						      			</select>
						      			<br>
						      			근무일<br>
						      			시작일 &nbsp;<input type="date" id="job_start2"value="2018-04-15"><br>
						      			종료일 &nbsp;<input type="date" id="job_end2" value="2018-08-15"><br>
						      			<br>
						      			
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
							<h2>우리 사이트를 소개합니다</h2>
							<p>A creative agency based on Candy Land, ready to boost your business with some beautifull templates. MOOZ Agency is one of the best in town see more you will be amazed.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<i class="fa fa-briefcase ot-circle"></i>
							<h3>이런식으로 구성되어 있습니다.</h3>
							<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<i class="fa fa-photo ot-circle"></i>
							<h3>이런 기능이 있습니다.</h3>
							<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<i class="fa fa-camera-retro ot-circle"></i>
							<h3>이빨 개 아프다</h3>
							<p>Accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<i class="fa fa-cube ot-circle"></i>
							<h3>이렇게 구성되어있습니다.</h3>
							<p> Itaque earum rerum hic tenetur a sapiente, ut aut reiciendis maiores</p>
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
							<h2>만든 사람들</h2>
							<p>A creative agency based on Candy Land, ready to boost your business with some beautifull templates. MOOZ Agency is one of the best in town see more you will be amazed.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-2.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>김윤환</h3>
								<div class="team-position">팀장</div>
								<p>Mida sit una namet, cons uectetur adipiscing adon elit. Aliquam vitae barasa droma.</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-6.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>김태용</h3>
								<div class="team-position">팀원</div>
								<p>Worsa dona namet, cons uectetur dipiscing adon elit. Aliquam vitae fringilla unda mir.</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-4.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>황철호</h3>
								<div class="team-position">팀원</div>
								<p>Dolor sit don namet, cons uectetur beriscing adon elit. Aliquam vitae fringilla unda.</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-4.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>박용준</h3>
								<div class="team-position">팀원</div>
								<p>Dolor sit don namet, cons uectetur beriscing adon elit. Aliquam vitae fringilla unda.</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="resources/images/demo/author-4.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>이성우</h3>
								<div class="team-position">변태</div>
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
						<pre>		
						<span>매장명</span><b id="balckblack">view연결 해야함 <br></b><span>내용</span>
						<span>근무조건</span><span>주소</span>
						</pre>				
						
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


		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/owl.carousel.min.js"></script>
		<script src="resources/js/cbpAnimatedHeader.js"></script>
		<script src="resources/js/jquery.appear.js"></script>
		<script src="resources/js/SmoothScroll.min.js"></script>
		<script src="resources/js/mooz.themes.scripts.js"></script>
		<script src="resources/js/main.js"></script>
		<script src="resources/js/rboard.js"></script>
	</body>
</html>