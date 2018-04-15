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


<style>
#label-1 {
	position: absolute;
	top: 40%;
	left: 22%;
	opacity: 0.8;
	display: inline-block;
	background-color: rgba(255, 255, 255, 0.65);
	margin-bottom: 25px;
	padding: 4px 20px;
	font-size: 19px;
	color: #3E3E3E;
	font-weight: 300;
	line-height: 40px;
	font-family:"돋움", dotum, "굴림", gulim, arial, helvetica, sans-serif;
}
#label-2 {
	position: absolute;
	top: 40%;
	left: 25%;
	opacity: 0.8;
	display: inline-block;
	background-color: rgba(255, 255, 255, 0.65);
	margin-bottom: 25px;
	padding: 4px 20px;
	font-size: 19px;
	color: #3E3E3E;
	font-weight: 300;
	line-height: 40px;
	font-family:"돋움", dotum, "굴림", gulim, arial, helvetica, sans-serif;
}
#label-3 {
	position: absolute;
	top: 40%;
	left: 20%;
	opacity: 0.8;
	display: inline-block;
	background-color: rgba(255, 255, 255, 0.65);
	margin-bottom: 25px;
	padding: 4px 20px;
	font-size: 19px;
	color: #3E3E3E;
	font-weight: 300;
	line-height: 40px;
	font-family:"돋움", dotum, "굴림", gulim, arial, helvetica, sans-serif;
}
</style>
</head>
<body id="page-top">
	<div class="bodymargin">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<jsp:include page="/WEB-INF/views/header/header.jsp" />
		<link href="resources/css/jobsearch.css" rel="stylesheet">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>구직 페이지</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- 1 -->
					<!-- team member item -->
					<div class="jobofferbtn1">
						<div class="team-item">
							<div class="team-image">
								<a href="jobofferView.jo"> <span id="label-1">구직자 검색</span>
									<img src="resources/images/demo/job-offer.png"
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
								<a href="receive.re"> <span id="label-2">받은신청</span> <img
									src="resources/images/demo/orderlist.png"
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
							<div class="team-image3">
								<a href="announcement.an"> <span id="label-3">구직등록</span> <img
									src="resources/images/demo/notepad.png" class="img-responsive"
									alt="author" width="75%">
								</a>
							</div>
						</div>
					</div>
				</div>
				
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">일자리찾기</th>
				      <th scope="col"></th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>
				      	<p id="KategorieList1">지역 </p>		      	
				      	<div style="width:350px">
						   	<div style="overflow-x:hidden; width:110px; height:110px; float: left" class="sel_address1">
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">서울<br></a>
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">경기<br></a> 
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">인천<br></a>  
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">강원<br></a>
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">대전<br></a>  
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">세종<br></a>
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">충남<br></a>  
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">충북<br></a> 
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">부산<br></a>
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">울산<br></a>  
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">경남<br></a> 
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">경북<br></a>
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">대구<br></a>  
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">광주<br></a> 
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">전남<br></a>
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">전북<br></a>  
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">제주<br></a> 
						   		<a class="select_test" href="#" onclick= "return false;" id="nono">전국<br></a>
						   	</div>
						   	<div style="overflow-x:hidden; width:150px; height:110px; float:left " 
						   	class="sel_address2">
						   		시/도를 선택하시오  
						   	</div>
						   	<div style="display:none; overflow-x:hidden; width:160px; height:110px; float:left " 
						   	id="seoul" class="sel_address2">
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">강북구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">강서구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">관악구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">광진구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">구로구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">금천구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">노원구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">도봉구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">동대문구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">동작구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">마포구<br></a> 
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">서대문구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">서초구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">성동구<br></a> 
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">성북구<br></a>   
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">송파구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">양천구<br></a> 
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">영등포구<br></a> 
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">용산구<br></a>
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">은평구<br></a> 
						   		<a class="select_test2" href="#" onclick= "return false;" id="nono">종로구<br></a> 
						   	    <a class="select_test2" href="#" onclick= "return false;" id="nono">중구<br></a>
						   	    <a class="select_test2" href="#" onclick= "return false;" id="nono">중랑구<br></a>  
						   	</div>
					   	   <div style="display:none; overflow-x:hidden; width:160px; height:110px; float:left " 
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
						   	<div style="display:none; overflow-x:hidden; width:160px; height:110px; float:left " 
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
						   <div style="display:none; overflow-x:hidden; width:160px; height:110px; float:left " 
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
						   <div style="display:none; overflow-x:hidden; width:160px; height:110px; float:left " 
						    id="daejeon" class="sel_address2">  
							 <a class="select_test2" href="#" onclick= "return false;">대전전체<br></a> 			      				
							 <a class="select_test2" href="#" onclick= "return false;">대덕구<br></a> 
					 		 <a class="select_test2" href="#" onclick= "return false;">동구<br></a>  
							 <a class="select_test2" href="#" onclick= "return false;">서구<br></a>  
							 <a class="select_test2" href="#" onclick= "return false;">유성구<br></a> 
							 <a class="select_test2" href="#" onclick= "return false;">중구<br></a>  
						    </div>
						    <div style="display:none; overflow-x:hidden; width:160px; height:110px; float:left " 
					 		id="sejong" class="sel_address2">  
					 			<a class="select_test2" href="#" onclick= "return false;">세종전체<br></a>  			      				
					     		<a class="select_test2" href="#" onclick= "return false;">세종시<br></a>  
					 		</div>
					 		<div style="display:none; overflow-x:hidden; width:160px; height:110px; float:left " 
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
				      <td width="400px">
				      	
						<div style="float: left; width:50%;">
						<p id="KategorieList">업ㆍ직종</p>
							<div style=" overflow-x:hidden; width:150px; height:110px; float:left " 
						   	id="search_tob2" class="search_tob2">  
						    		<a class="select_tob" href="#" onclick= "return false;">무관<br></a> 					      				
						      		<a class="select_tob" href="#" onclick= "return false;">서비스<br></a> 
						      		<a class="select_tob" href="#" onclick= "return false;">단순노무<br></a> 
						      		<a class="select_tob" href="#" onclick= "return false;">배달<br></a> 
									<a class="select_tob" href="#" onclick= "return false;">대행<br></a> 
									<a class="select_tob" href="#" onclick= "return false;">IT<br></a> 
									<a class="select_tob" href="#" onclick= "return false;">음식점/카페<br></a> 
									<a class="select_tob" href="#" onclick= "return false;">기타부업/카페<br></a> 
						   	</div>
						</div>
						<div  style="float: left; width:50%;">
							<img src="resources/images/main/desktop.png" alt="img01" class="search_tob" id="search_all" />
						</div>
			  			
				      </td>
				      <td>
				   	   	<div><p id="KategorieList">근무일</p>
			  			시작일 &nbsp;<input type="date" id="job_start2"value="2018-04-16"><br><br>
		  				종료일 &nbsp;<input type="date" id="job_end2" value="2018-05-16"><br><br>
		  				<div class="select_time2">
		  					<a class="select_time"  href="#" onclick= "return false;">근무일 선택</a>
		  				</div>
						</div>				
				      </td>
				    </tr>
				    <tr class="active">
				      <th colspan="2">
				      	<div style="display:none;" id="result_select1"></div>
				      	<div style="display:none;" id="result_select2"></div>
				      	<div style="display:none;" id="result_select3"></div>
				      	<div style="display:none;" id="result_select4"></div>
				      	<div style="display:none;" id="result_select5"></div>
				      </th>
				      <th> <div id="gggo">
				      <a href="#" class="" id="100">		
				      <span class="glyphicon glyphicon-search" aria-hidden="true" style="color:white">검색</span>
					  </a></div></th>
				      <th>
				     
					  </th>
				    </tr> 
				  </tbody>
				</table>
				
		</div>

		<p id="back-top">
		<a href="#top"><i class="fa fa-angle-up"></i></a>
		</p>
		
		
		<!-- 목록 나오는 부분 -->	
		<table class="table table22 searchTitle">
			  <tbody id="tbody2">
				    			<tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal2'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr>
							     
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'> 판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>	서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     <tr class='lala1' style="display:none;">  
							      <td> 
								      <div class=''> 
										<div class=''> 
											<div class=''> 
													<div> 
														<div class='ot-portfolio-item' > 
															<figure class='effect-bubba' id='resultall'> 
																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' /> 
																<div class="contents_all">
																	
																	<a class='contents_sub'> 배스킨라빈스</a> <a class='contents_value'>시급 : 7000원</a>
																	<a class='contents_address'>근무지 : 경기 수원시</a><br>	
																	<a class='contents_contents'>판매 및 매장관리 아르바이트 구합니다</a> 
																	<a class='contents_type'>서비스,음식점/카페 </a> <a class='contents_type'> 2018.04.16 ~ 2018.05.16</a> 
																	
																	<hr>
																</div>
																
																<figcaption> 
																	<h2 class="ikqwe">자세히 보기</h2> 
																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a> 
																</figcaption> 
															</figure> 
														</div> 
													</div> 
											</div> 
										</div> 
										</div><br>
							      </td> 
							     </tr> 
							     
							     
							</table>
						
		
		
		
		<div class='pagelist' style="display:none;">
			[이전] &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 &nbsp;&nbsp;&nbsp; <a href="#">2</a>&nbsp;&nbsp;&nbsp; <a href="#">3</a>
			&nbsp;&nbsp; <a href="#">4</a>&nbsp;&nbsp;&nbsp; <a href="#">5</a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">[다음]</a>
		</div>
		
		<!-- 여기서 부터 미리보기 모달창 -->
		<div class="modal fade" id="Modal1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title preview_title" id="Modal-label-1"></h4>
					</div>
					<!-- 여기서 부터 미리보기 본체 -->
					<div class="modal-body">						
						<div class="modal-works2">
						<div class="images">
						<hr>
						<h3><span class="preview_name">회사/점포명  </span><span> 지원자격</span></h3>
						<table>
						<tr><td style="width:300px"><img src="resources/images/demo/shop-icon.png" alt="매장 이미지" class="preview_img" /></td>				
						<td><div class="preview_icon text-center service">서비스</div></td>
						<td><div class="preview_icon text-center sex">남</div></td>	
						<td><div class="preview_icon text-center age">24세</div></td></tr>	
						</table>
						<br>
						<span class="text_12">현재 모집인원 </span><span class="preview_max text_12"></span><span class="text_12 preiview_num">/ 1 명</span>
						<hr>
						<br>
						</div>
						
						<div class="preview_payment">
						<h3>근무조건</h3>
						<hr>
						근무날짜  : <div class="preview_day">2018년 04월 16일 ~ 2018년 05월 16일</div><br>
						근무시간 : <div class="preview_hour">09:00 ~ 18:00</div><br>
						급여분류 : <div class="preview_pay">시급 7000원</div>
						</div>
						
						<div class="preview_content">
						<h3>소개글</h3>
						<hr>
						<div class="preview_content_text">미리보기 본문입니다.</div>
						</div>
						<div class="preview_maps">
						<h3>찾아오시는길</h3>
						<hr>
						<table class="preview_maptable">
						<!-- 네이버 지도 api 공간  id=map 으로 줄것-->
						<tr><td rowspan=6><div id="map" style="width:250px;height:250px;"></div></td>
						<td><span>연락처 : </span><span class="preview_tel">010-000-0000</span></td></tr>
						<tr><td><span>이메일 : </span><span class="preview_email">ikqwe31@naver.com</span></td></tr>
						<tr><td><span>회사주소 : </span><span class="preview_road_address">경기 수원시 권선구 100-2번지 토마토빌딩</span></td></tr>
						
						</table>
							
						</div>
						
						<hr>
						<div class="text-center">
						<button class="btn btn-default btn-sm" id="select00">매칭등록</button>
						</div>
						
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 여기서 부터 미리보기 모달창 -->
		<div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title preview_title" id="Modal-label-1"></h4>
					</div>
					<!-- 여기서 부터 미리보기 본체 -->
					<div class="modal-body">						
						<div class="modal-works2">
						<div class="images">
						<hr>
						<h3><span class="preview_name">배스킨라빈스  </span><span> 지원자격</span></h3>
						<table>
						<tr><td style="width:300px"><img src="resources/images/demo/shop-icon.png" alt="매장 이미지" class="preview_img" /></td>				
						<td><div class="preview_icon text-center service">서비스</div></td>
						<td><div class="preview_icon text-center sex">남</div></td>	
						<td><div class="preview_icon text-center age">24세</div></td></tr>	
						</table>
						<br>
						<span class="text_12">현재 모집인원 </span><span class="preview_max text_12"></span><span class="text_12 preiview_num">/ 1 명</span>
						<hr>
						<br>
						</div>
						
						<div class="preview_payment">
						<h3>근무조건</h3>
						<hr>
						근무날짜  : <div class="preview_day">2018년 04월 16일 ~ 2018년 05월 16일</div><br>
						근무시간 : <div class="preview_hour">09:00 ~ 18:00</div><br>
						급여분류 : <div class="preview_pay">시급 7000원</div>
						</div>
						<br>
						<div class="preview_content">
						<h3>소개글</h3>
						<hr>
						<div class="preview_content_text">판매 및 매장관리 아르바이트 구합니다.</div>
						</div>
						<div class="preview_maps">
						<h3>찾아오시는길</h3>
						<hr>
						<table class="preview_maptable">
						<!-- 네이버 지도 api 공간  id=map 으로 줄것-->
						<tr><td rowspan=6><div id="map" style="width:250px;height:250px;"></div></td>
						<td><span>연락처 : </span><span class="preview_tel">010-000-0000</span></td></tr>
						<tr><td><span>이메일 : </span><span class="preview_email">ikqwe31@naver.com</span></td></tr>
						<tr><td><span>회사주소 : </span><span class="preview_road_address">경기 수원시 권선구 100-2번지 토마토빌딩</span></td></tr>
						
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
		
		
	</div>
	<script src="resources/js/jobsearch.js"></script>
</body>
</html>