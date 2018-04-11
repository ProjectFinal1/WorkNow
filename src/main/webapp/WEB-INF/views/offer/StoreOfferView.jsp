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
<title>WorkJob - 구직등록페이지</title>
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<!-- 폰트어썸 아이콘 사용위한 css -->
<link href="resources/css/fa-brands.min.css" rel="stylesheet">
<link href="resources/css/fa-regulars.min.css" rel="stylesheet">
<link href="resources/css/fa-solid.min.css" rel="stylesheet">
<link href="resources/css/fontawesome.min.css" rel="stylesheet">	
<!-- Custom styles for this template -->
<link href="resources/css/owl.carousel.css" rel="stylesheet">
<link href="resources/css/owl.theme.default.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/storeoffer.css" rel="stylesheet">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="resources/js/storeoffer.js"></script>
</head>

  <body id="page-top">
	<header>
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
							<li><a class="page-scroll" href="joboffer.ma">구인등록</a></li>
							<li><a class="page-scroll" href="storeoffer.ma">구직등록</a></li>
							<li><a class="page-scroll" href="blist.do">커뮤니티</a></li>
							<li><a class="page-scroll" href="">고객센터</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->

					<!-- /.container-fluid -->
				</div>
			</nav>


			<br> <br> <br> <br> <br>
			<!-- 위에  -->
			<section>
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-center">
							<div class="section-title">
								<h2>구직등록 페이지</h2>
							</div>
						</div>
					</div>
					<div class="row alpha-bg">
		
						<form name="photoprint" action="FileUpload.jsp" method="post"
							enctype="multipart/form-data">

							<div>
							<input id="userid" type="hidden" value="<%=userid%>">
							</div>

							<div class="joboffer text-left">
							<br>
							&nbsp;&nbsp;<h3>제목, 사진</h3>
							<hr>

							<input class="main_top"type=text value="[숙식제공]유화니의 24시간 노예구해요" max="50" size=50>							


									<table>
									
									<tr>
									<td><div class="shop-image">
										
										<a id="img_view" data-toggle="modal" data-target="#Modal-1"> <img
											src="resources/images/demo/shop-icon.png"
											class="img-responsive">
										</a>
						
									</div></td>
									<td>
									<div class="filebox">
									<input class="upload-name" value="파일선택" disabled="disabled">

									<label for="ex_file" class="btn btn-default btn-sm upload-button"><span class="glyphicon glyphicon-picture"></span>업로드</label> 
									<input type="file" id="ex_file"> 
									</div> 
									<br>									
									</td>
									</tr>									
							</table>
							</form>
                
							<div class="midsec">
							<!-- 개인회원일경우 표시 X -->
							<h3>구인정보</h3>
							<hr>
							<a href="#">기업정보와 동일</a>
							<br><br>
							<span >직종</span>
							<select name="job_select">
								 <option value="service">서비스</option>
								  <option value="work">단순노무</option>
								  <option value="it">IT관련</option>
								  <option value="food">음식점,카페</option>
								  <option value="delivery">배달</option>
								  <option value="agency">행사대행</option>
								  <option value="etc">기타부업</option>
								</select>
							<br>                                 
							<span >이메일</span> <input name=email class="text_12" type=email value="yunhwan@sm.com" max="50" size=50>
							<br>                                 
							<span >대표자명</span><input name="ceo" class="text_12" type=text value="유놔니" max="50" size=50>
							<br>                                 
							<span >전화번호</span> 
							<input name="telnumber" class="text_12" type="tel"  pattern=" [0-9]{3,4}-[0-9]{4}-[0-9]{4}" placeholder="010-0000-0000" size=50>
							<br>                                 
							<span >회사/점포명</span>  <input class="company_name text_12" type=text value="유놔니25시" max="50" size=50>
							<br>
							<span>회사 우편번호</span><input type="text" name="post" class="postcodify_postcode5" value="" size="6"/>
							<br>
							<span></span><input type="button" id="postcodify_search_button" class= "btn btn-default btn-sm" value="상세 주소검색">
							<br>
							<span>도로명주소</span><input type="text" name="address1" class="postcodify_address" value="" />
							<span>상세주소</span><input type="text" name="address2" class="postcodify_extra_info" value="" />
							<span>세부사항</span><input type="text" name="address3" class="postcodify_details" value="" />

							
							
							</div>
							
							<div class="job_info_sec">
							<h3>근무조건</h3>
							<hr>
							<div class="work_start"><span >근무시작일</span> <input name="start_day" class ="text_12 start_day" type="date" size=50 > <span >근무종료일</span> <input name="end_day" class="text_12 end_day"type="date" size=50 >
							</div>
							<br>
							<span >근무시작시간</span> 
							<select name="start_hour">
								  <option value="0">00</option>
								  <option value="1">01</option>
								  <option value="2">02</option>
								  <option value="3">03</option>
								  <option value="4">04</option>
								  <option value="5">05</option>
								  <option value="6">06</option>
								  <option value="7">07</option>
								  <option value="8">08</option>
								  <option value="9">09</option>
								  <option value="10">10</option>
								  <option value="11">11</option>
								  <option value="12">12</option>
								  <option value="13">13</option>
								  <option value="14">14</option>
								  <option value="15">15</option>
								  <option value="16">16</option>
								  <option value="17">17</option>
								  <option value="18">18</option>
								  <option value="19">19</option>
								  <option value="20">20</option>
								  <option value="21">21</option>
								  <option value="22">22</option>
								  <option value="23">23</option>
								</select>
								<span>시</span>
								<select name="start_minute">
								 <option value="00">00</option>
								  <option value="10">10</option>
								  <option value="20">20</option>
								  <option value="30">30</option>
								  <option value="40">40</option>
								  <option value="50">50</option>
								</select>
								<span>분</span>        
								
								 
								<span >근무종료시간</span>
								<select name="end_hour">
								  <option value="0">00</option>
								  <option value="1">01</option>
								  <option value="2">02</option>
								  <option value="3">03</option>
								  <option value="4">04</option>
								  <option value="5">05</option>
								  <option value="6">06</option>
								  <option value="7">07</option>
								  <option value="8">08</option>
								  <option value="9">09</option>
								  <option value="10">10</option>
								  <option value="11">11</option>
								  <option value="12">12</option>
								  <option value="13">13</option>
								  <option value="14">14</option>
								  <option value="15">15</option>
								  <option value="16">16</option>
								  <option value="17">17</option>
								  <option value="18">18</option>
								  <option value="19">19</option>
								  <option value="20">20</option>
								  <option value="21">21</option>
								  <option value="22">22</option>
								  <option value="23">23</option>
								</select>
								<span>시</span>
								<select name="end_minute">
								 <option value="00">00</option>
								  <option value="10">10</option>
								  <option value="20">20</option>
								  <option value="30">30</option>
								  <option value="40">40</option>
								  <option value="50">50</option>
								</select>
								<span>분</span>
								<br>
								<span>급여분류</span>
								<select name="pay_select">
								 <option value="시급">시급</option>
								  <option value="일급">일급</option>
								  <option value="주급">주급</option>
								  <option value="월급">월급</option>
								  <option value="건당">건당</option>
								</select>
								&nbsp;
								<input name="pay_value" type=text value=0 size=10>
								<span>원</span> 
								<br>
								<span>성별 : </span> 
								<select name="sex_select">
								 <option value="male">남</option>
								  <option value="female">녀</option>
								  <option value="all">남녀무관</option>
								</select>
								&nbsp;
								<span>나이 : </span> 
								<input type=number min=15 max=100 value=20 class="age_num">살
								&nbsp;
								<select name="age_select">
								 <option value="up">이상</option>
								  <option value="down">이하</option>
								</select>
								<br>                           					
								</div>
								<br>
								<div class="text_sec">
								<h3>본문</h3>
								<hr>
								<br>
								<textarea class="content_text"rows=10 cols=80>유화니의 24시간 노예가 되실분을 구합니다. 가ㅈ처럼 대해드립니다.</textarea>
								
								</div>
								
								<div class="premium_sec">
								<h3>프리미엄 서비스</h3>
								<hr>
								<span>검색 상단 파워링크 서비스 건당 5000</span>&nbsp;<input type="checkbox" name="premiumlevel1" id="p1">
								<br>
								<span>글씨 체 볼드 처리 서비스 건당  2000</span>&nbsp;<input type="checkbox" name="premiumlevel2" id="p2">
								<br>
								<span>글씨 색 파란색 변경 서비스 건당 2000</span>&nbsp;<input type="checkbox" name="premiumlevel3" id="p3">
								</div>
								<div class="payment_sec">
								<h3>결제금액 </h3>
								<hr>
								<div class="text-right">

								<button class="btn btn-default" id="cash_refresh" ><span class="glyphicon glyphicon-refresh"></span></button>&nbsp; 현재 캐쉬 :  <span class="text_15 cashvalue" >0</span>원

								<br> 
								최종 결제금액 : <span class="text_15 payvalue" >1000</span>원
								</div>
								<hr>
								<div class="text-center">
								<input type="button" value="미리보기" id="preview_btn" class="btn btn-default btn-sm" data-toggle="modal" data-target="#Modal-2">
								<input type="submit" value="결제하기"  class="btn btn-default btn-sm">
								
								</div>
								
								
								</div>
								
							<br>
						</div>

						</form>

					</div>

				</div>
			</section>

			<div></div>
		</div>



		
	</header>
	<!-- 사진 확대 모달뷰 -->
	<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1">사진확인</h4>
					</div>
					<div class="modal-body">						
						<div class="modal-works">
						<img src="resources/images/demo/shop-icon.png" alt="매장 아이콘." class="img_content" />						
						
						
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 여기서 부터 미리보기 모달창 -->
		<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title preview_title" id="Modal-label-1">[미리보기제목]</h4>
					</div>
					<!-- 여기서 부터 미리보기 본체 -->
					<div class="modal-body">						
						<div class="modal-works2">
						<div class="images">
						<hr>
						<h3><span class="preview_name">회사/점포명  </span><span> 지원자격</span></h3>
						<table>
						<tr><td style="width:300px"><img src="resources/images/demo/shop-icon.png" alt="매장 이미지" class="preview_img" /></td>				
						<td><div class="preview_icon text-center service"></div></td>
						<td><div class="preview_icon text-center sex"></div></td>	
						<td><div class="preview_icon text-center age"></div></td></tr>	
						</table>
						<hr>
						<br>
						</div>
						
						<div class="preview_payment">
						<h3>근무조건</h3>
						<hr>
						근무날짜  : <div class="preview_day"></div><br>
						근무시간 : <div class="preview_hour"></div><br>
						급여분류 : <div class="preview_pay"></div>
						</div>
						
						<div class="preview_content">
						<h3>소개글</h3>
						<hr>
						<textarea class="preview_content_text"rows=10 cols=80>미리보기 본문입니다.</textarea>
						</div>
						<div class="preview_maps">
						<h3>찾아오시는길</h3>
						<hr>
						<table class="preview_maptable">

						<tr><td rowspan=6><img src="resources/images/demo/shop-icon.png" alt="매장 이미지" class="preview_map" /></td>

						<tr><td rowspan=6><div id="map" style="width:250px;height:250px;"></div></td>

						<td><span>연락처 : </span><span class="preview_tel">010-000-0000</span></td></tr>
						<tr><td><span>이메일 : </span><span class="preview_email">010-000-0000</span></td></tr>
						<tr><td><span>회사 우편번호 : </span><span class="preview_post">060-52</span></td></tr>
						<tr><td><span>도로명주소 : </span><span class="preview_road_address">집으로</span></td></tr>
						<tr><td><span>상세주소 : </span><span class="preview_address1">가고싶다</span></tr>
						<tr><td><span>세부사항 : </span><span class="preview_address2">리얼리</span></td></tr>
						
						
						
						</table>
							
						</div>
						
						<hr>
						<div class="text-center">
						<button class="btn btn-default btn-sm"><i class="fas fa-exchange-alt"> 매칭등록</i></button>
						</div>
						
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
</body>

			
		
		<script src="resources/js/bootstrap.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script
			src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="resources/js/owl.carousel.min.js"></script>
		<script src="resources/js/cbpAnimatedHeader.js"></script>
		<script src="resources/js/jquery.appear.js"></script>
		<script src="resources/js/SmoothScroll.min.js"></script>
		<script src="resources/js/mooz.themes.scripts.js"></script>
	    <script src="resources/js/main.js"></script>
	    <!-- jQuery와 Postcodify를 로딩한다 -->
		<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

		<!-- 네이버지도 api -->
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=zlXwIca6xGMLNnnR5Qcd&submodules=geocoder"></script>
		
		<script>
      
      </script>

		<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
		<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
		
</html>