<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
	<head>				
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Sanza - Onepage Multipurpose Bootstrap HTML by MOOZThemes.com</title>
		<!-- Bootstrap core CSS -->
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="resources/css/owl.carousel.css" rel="stylesheet">
		<link href="resources/css/owl.theme.default.min.css"  rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<link href="resources/css/main.css" rel="stylesheet">
		
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	</head>
	<body id="page-top">
	<jsp:include page="/WEB-INF/views/header/header.jsp" />
	
		<!-- Navigation -->
	
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
						      <div>
						      	<table align="center" border="1" cellspacing="0" width="900" id="kt" >
						      		<tr height="40px"  class="kategorie1">
						      			<th class="main_th main_tab2">지역별 알바</th>
						      			<th class="main_th main_tab2">업종별 알바</th>
						      			<th class="main_th main_tab2">시간별 알바</th>
						      		</tr>
						      		<tr height="200px"  class="kategorie2 ">
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
											<option>부여군</option><option>예산군</option><option>태안군</option	><option>연기군</option>	
											<option>홍성군</option><option>금산군</option><option>서천군</option><option>청양군</option>	
						      			</select>
						      			
						      			<br><br>
						      			<a href="#" class="search_adress" id="search_adress">
						      			<img src="resources/images/search.png" width="10%"></a>	      			
						      			</td>
						      			
						      			<td>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">아이콘</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">아이콘</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">아이콘</a>	
						      			<a href="#" class="testt" id="search_adress"><br>
						      			<img src="resources/images/search.png" width="10%"></a>	 					      			
						      			</td>
						      									      			
						      			<td>
						      			시작일 &nbsp;<input type="date" id="userdate" name="userdate" value="2018-04-15"><br>
						      			종료일 &nbsp;<input type="date"><br>
						      			<a href="#" class="testt" id="search_adress"><br>
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
						      			
						      			<td>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">편의점 해봄</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">카페</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">술집</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">노래방ㅋ</a>						      			
						      			</td>
						      									      			
						      			<td>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">월~금</a>
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">토일</a>	
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">오전</a>	
						      			<a href="#" data-toggle="modal" data-target="#show_kategorie" class="main_tab2">오후</a>							      			
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
						<div class="owl-partners owl-carousel" style="">
							<div class="col-md-4 col-0-gutter">
								<div class="ot-portfolio-item" >
									<figure class="effect-bubba" id="result_1">
										<img src="resources/images/demo/shop-icon.png" alt="img02" class="img-responsive" />
										<a class="content1">CU 수원역점<br></a>
										<a class="content2">
										근무시간 : 협의<br>
										시급 : 9000원 <br>
										위치 : 수원시 영통구<br>
										등록일 : 30분전<br>												
										</a>
										<figcaption>
											<h2>가게 이름</h2>
											<p>상세히 보기</p>
											<a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="col-md-4 col-0-gutter">
								<div class="ot-portfolio-item" >
									<figure class="effect-bubba" id="result_1">
										<img src="resources/images/demo/shop-icon.png" alt="img02" class="img-responsive" />
										<a class="content1">CU 수원역점<br></a>
										<a class="content2">
										근무시간 : 협의<br>
										시급 : 9000원 <br>
										위치 : 수원시 영통구<br>
										등록일 : 30분전<br>												
										</a>
										<figcaption>
											<h2>가게 이름</h2>
											<p>상세히 보기</p>
											<a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="col-md-4 col-0-gutter">
								<div class="ot-portfolio-item">
									<figure class="effect-bubba" id="result_1">
										<img src="resources/images/demo/shop-icon.png" alt="img02" class="img-responsive" />
										<a class="content1">CU 수원역점<br></a>
										<a class="content2">
										근무시간 : 협의<br>
										시급 : 9000원 <br>
										위치 : 수원시 영통구<br>
										등록일 : 30분전<br>												
										</a>
										<figcaption>
											<h2>가게 이름</h2>
											<p>상세히 보기</p>
											<a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="col-md-4 col-0-gutter">
								<div class="ot-portfolio-item">
									<figure class="effect-bubba" id="result_1">
										<img src="resources/images/demo/shop-icon.png" alt="img02" class="img-responsive" />
										<a class="content1">CU 수원역점<br></a>
										<a class="content2">
										근무시간 : 협의<br>
										시급 : 9000원 <br>
										위치 : 수원시 영통구<br>
										등록일 : 30분전<br>												
										</a>
										
										<figcaption>
											<h2>가게 이름</h2>
											<p>상세히 보기</p>											
											<a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="col-md-4 col-0-gutter">
								<div class="ot-portfolio-item">
									<figure class="effect-bubba" id="result_1">
										<img src="resources/images/demo/shop-icon.png" alt="img02" class="img-responsive" />
										<a class="content1">CU 수원역점<br></a>
										<a class="content2">
										근무시간 : 협의<br>
										시급 : 9000원 <br>
										위치 : 수원시 영통구<br>
										등록일 : 30분전<br>												
										</a>
										<figcaption>
											<h2>가게 이름</h2>
											<p>상세히 보기</p>
											<a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
										</figcaption>
									</figure>
								</div> 
							</div>
							<div class="col-md-4 col-0-gutter">
								<div class="ot-portfolio-item">
									<figure class="effect-bubba" id="result_1">
										<img src="resources/images/demo/shop-icon.png" alt="img02" class="img-responsive" />
										<a class="content1">CU 수원역점<br></a>
										<a class="content2">
										근무시간 : 협의<br>
										시급 : 9000원 <br>
										위치 : 수원시 영통구<br>
										등록일 : 30분전<br>												
										</a>
										<figcaption>
											<h2>가게 이름</h2>
											<p>상세히 보기</p>
											<a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
										</figcaption>
									</figure>
								</div>
							</div>
							
						</div>
				</div>
				</div>
				</div>
			</div>
			</div>
		</header>
		
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
		
		<!-- 카테고리 보기  -->
		<div class="modal fade" id="show_kategorie" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1">Dean & Letter</h4>
					</div>
					<div class="modal-body">
						<p>카테고리 보는 페이지22</p>
						<div class="col-lg-12 text-center">
						
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div> 
			</div>
		</div>
		</div>
		
		

		<!-- Modal for portfolio item 1 -->
		<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1">CU 수원역점</h4>
					</div>
					<div class="modal-body">						
						<div class="modal-works">
						<img src="resources/images/demo/shop-icon.png" alt="매장 아이콘." class="img_content" />						
						<span>매장명</span><span>내용</span>
						<span>근무조건</span><span>주소</span>
						
						</div>
						<p>성실한 사람을 원합니다!!! 이성우 같이 성실한 사람만 지원하세요</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 2 -->
		<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-2">Startup Framework</h4>
					</div>
					<div class="modal-body">
						<img src="resources/images/demo/portfolio-2.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 3 -->
		<div class="modal fade" id="Modal-3" tabindex="-1" role="dialog" aria-labelledby="Modal-label-3">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-3">Lamp & Velvet</h4>
					</div>
					<div class="modal-body">
						<img src="resources/images/demo/portfolio-3.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 4 -->
		<div class="modal fade" id="Modal-4" tabindex="-1" role="dialog" aria-labelledby="Modal-label-4">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-4">Smart Name</h4>
					</div>
					<div class="modal-body">
						<img src="resources/images/demo/portfolio-4.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

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
		
		
	</body>
</html>