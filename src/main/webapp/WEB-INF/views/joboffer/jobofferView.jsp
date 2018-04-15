<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="listCount" value="${requestScope.listCount}" />
<c:set var="currentPage" value="${requestScope.currentPage}" />
<c:set var="startPage" value="${requestScope.startPage}" />
<c:set var="endPage" value="${requestScope.endPage}" />
<c:set var="maxPage" value="${requestScope.maxPage}" />
<c:set var="list" value="${requestScope.list}" />
<c:set var="member" value="${sessionScope.member}" />

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
<link href="resources/css/joboffer.css" rel="stylesheet">

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
								<a href="announcement.an"> <span id="label-3">공고등록</span> <img
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
				      <th scope="col">인재찾기</th>
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
				      	<div class="search2"  style="float: left; width: 50%;">
					      	<div><p id="KategorieList">성별</p>
						      	<input type="radio" name="sex" value="무관" checked="checked">무관&nbsp;
								<input type="radio" name="sex" value="남">남자 &nbsp;
								<input type="radio" name="sex" value="여">여자
					      	</div><br>			    		
							<div><p id="KategorieList">연령</p>
								<select id="search_age" class="search_age">
								<option>무관</option>
								<c:forEach var="i" begin="15" end="70" step="1">
									<option>${i} 세</option>
								</c:forEach>
								</select>
								- <select id="search_age2" class="search_age2">
									<option>선택</option>
								</select>
							</div>
							
						</div>
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
				      <th> <div id="search_go">
				      <a href="#" class="rb_search" id="100">		

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
		  <thead>
		    <tr>
 		      <th scope="col" style="visibility: hidden;" id="searchTitle">인재정보</th>
		      <th scope="col" style="visibility: hidden;" id="searchTitle"></th>
		    </tr>
		  </thead>		  	
			  <tbody id="tbody2">
						
<!-- 						<table class='table twotable'> 				    				 -->
<!-- 				    				<tr>  -->
<!-- 							      <td>  -->
<!-- 								      <div class=''>  -->
<!-- 										<div class=''>  -->
<!-- 											<div class=''>  -->
<!-- 													<div class=''>  -->
<!-- 														<div class='ot-portfolio-item' >  -->
<!-- 															<figure class='effect-bubba' id='resultall'>  -->
<!-- 																<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' />  -->
<!-- 																<div class="contents_all"> -->
<!-- 																	<a class='subject_result'> 이성우</a> <a class="contents_agesex"> (남자 27세)</a><br> -->
																	
<!-- 																	<a class='contents_contents'> 열심히 성실히 일하도록 하겠습니다.  <br> 														 -->
<!-- 																	</a>  -->
<!-- 																	<a class='contents_address'>	경기도 수원시 권선구 <br> 																	 -->
<!-- 																	</a>  -->
<!-- 																	<a class='contents_type'>	서비스,it관련 <br>  																	 -->
<!-- 																	</a>  -->
<!-- 																</div> -->
																
<!-- 																<figcaption>  -->
<!-- 																	<h2>상세히 보고 싶으시면 클릭해주세요</h2>  -->
<!-- 																	<p>상세히 보기</p>  -->
<!-- 																	<a href='#' data-toggle='modal' data-target='#Modal1'>View more</a>  -->
<!-- 																</figcaption>  -->
<!-- 															</figure>  -->
<!-- 														</div>  -->
<!-- 													</div>  -->
<!-- 											</div>  -->
<!-- 										</div>  -->
<!-- 										</div> -->
<!-- 							      </td>  -->
<!-- 							     </tr>  -->
<!-- 							   </table> -->
						
						
			 </tbody>	
		</table>
				
<!-- 		<table class="table table22 searchTitle"> -->
<!-- 		  <thead> -->
<!-- 		    <tr> -->
<!--  		      <th scope="col" style="visibility: hidden;" id="searchTitle">인재정보</th> -->
<!-- 		      <th scope="col" style="visibility: hidden;" id="searchTitle"></th> -->
<!-- 		    </tr> -->
<!-- 		  </thead>		  	 -->
<!-- 			  <tbody id="tbody2"> -->
	
<!-- 			 </tbody>	 -->
<!-- 		</table> -->
		
		
		<div class='pagelist'>
		</div>
	
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
	

		
		
	</div>

	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/js/joboffer.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/cbpAnimatedHeader.js"></script>
	<script src="resources/js/jquery.appear.js"></script>
	<script src="resources/js/SmoothScroll.min.js"></script>
	<script src="resources/js/mooz.themes.scripts.js"></script>
</body>
</html>