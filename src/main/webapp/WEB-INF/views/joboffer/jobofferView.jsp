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
<link href="resources/css/main.css" rel="stylesheet">
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


		<section id="team">
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
								<a href="jobofferView.jo"> <span id="label-1" >구직자 검색</span>
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
			</div>
		</section>

		<div>

			<table align="center" width="71%" border="1" cellspacing="0">

				<tr height="40px" class="kategorie1">
					<th class="main_th main_tab2">근무 기간</th>
					<th class="main_th main_tab2">근무 요일</th>
					<th class="main_th main_tab2">근무 시간</th>
				</tr>

				<tr height="100px" class="kategorie2">
					<td><select id="sel_adress1">
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
					</select> <select id="seoul" class="sel_adress2">
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
					</select> <select id="gyeonggi" style="display: none;" class="sel_adress2">
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
					</select> <select id="incheon" style="display: none;" class="sel_adress2">
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
					</select> <select id="gangwon" style="display: none;" class="sel_adress2">
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
					</select> <select id="daejeon" style="display: none;" class="sel_adress2">
							<option>대전전체</option>
							<option value="">대덕구</option>
							<option value="">동구</option>
							<option value="">서구</option>
							<option value="">유성구</option>
							<option value="">중구</option>
					</select> <select id="sejong" style="display: none;" class="sel_adress2">
							<option>세종전체</option>
							<option>세종시</option>
					</select> <select id="chungcheongnam" style="display: none;"
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
					</select> <br> <br> 
            
					<a href="jobseekersearch.jo" class="testt" id="search_adress">
						<img src="resources/images/search.png" width="10%">
					</a>
							</td>


					<td>
						<div class="day">
							<input type="checkbox" name="day1" value="day1">월~금 <input
								type="checkbox" name="day2" value="day2">월~토 <input
								type="checkbox" name="day3" value="day3">월~일<br> <input
								type="checkbox" name="day4" value="day4">월~토(격주) <input
								type="checkbox" name="day5" value="day5">주말<br> <input
								type="checkbox" name="day6" value="day6">요일협의
						</div>
					</td>
					<td>
						<div class="time">
							<input type="checkbox" name="time1" value="time1">오전 <input
								type="checkbox" name="time2" value="time2">오전~오후 <input
								type="checkbox" name="time3" value="time3">종일 <br>
							<input type="checkbox" name="time4" value="time4">오후 <input
								type="checkbox" name="time5" value="time5">오후~저녁 <input
								type="checkbox" name="time6" value="time6">시간협의 <br>
							<input type="checkbox" name="time7" value="time7">저녁 <input
								type="checkbox" name="time8" value="time8">저녁~새벽 <br>
							<input type="checkbox" name="time9" value="time9">새벽 <input
								type="checkbox" name="time10" value="time10">새벽~오전
						</div>
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
				<option>나이</option>
			</select>
		</div>
		
		<script>
			function div1show(){
				$("#1").show();
			}
			function div2show(){				
				$("#2").show();
			}
			function div2hide(){				
				$("#2").hide();
			}
		</script>
		<hr>
		<a onclick="div1show();">검색버튼 -> joboffersearch.jo -> 리스트 노출</a>
		<hr>
		<div id="1" style="display: none">
		<hr>
			<label>사진, 이름, 경력, 나이, 성별 정도를 표시</label> <p>
			<a>정렬하기 - 선택구현(빼도 될 듯)</a> <p>
			<a onclick="div2show();">노출된 리스트 -> 상세보기 -> workerdetail.wo</a> <p>
		<hr>
		</div>
		<div id="2" style="display: none">
		<hr>
			<h3><font color="red">modal창으로 표시(로그인페이지에서 회원가입버튼 누르면 나오는것 처럼)</font></h3>			
			<label>1. 신청안한 상대</label>
			<a>신청하기 -> workask.wo </a> <p>
			<label>2. 이미 신청한 상대</label>		
			<a>취소하기 -> workcancel.wo </a> <p>
			<a onclick="div2hide();">닫기</a>
		<hr>
		</div>





		<c:forEach var="resume" items="${list}">
			<!-- 반복문 시작 -->

			<div style="margin: 0 20% 0 0">

				<table style="width: 100%; table-layout: fixed">
					<tr>
						<td>
							<%--회원사진 --%>
							<p>
								<a href="#" data-toggle="modal" data-target="#view-1"><img
									src="resources/images/demo/다운로드.jpg" style="width: 80px;"></a>
							</p>
							<%--
								-내용-
								나이 성별 이름 폰번호
						--%> 
						
						${resume.resumeContent}
						</td>

			

			
						<td style="width: 70%; align:center; float:left;">

						</td>

					</tr>

				</table>
			</div>
		</c:forEach>
		<!-- 반복문 종료 -->


	</div>

	<table align="center" height="20">
		<tr>
			<td colspan="6"><c:if test="${currentPage <= 1}">
		[이전] &nbsp;
	</c:if> <c:if test="${currentPage > 1}">
					<c:url var="viewlist_ST" value="/jobofferView.jo">
						<c:param name="page" value="${currentPage-1}" />
					</c:url>
					<a href="${viewlist_ST}">[이전]</a> &nbsp;
	</c:if> <!-- 페이지 숫자 보여주기 --> <c:forEach var="p" begin="${startPage}"
					end="${endPage}">
					<c:if test="${p eq currentPage}">
						<font color="red" size="4"><b>[${p}]</b></font>
					</c:if>
					<c:if test="${p ne currentPage}">
						<c:url var="viewlist_chk" value="/jobofferView.jo">
							<c:param name="page" value="${p}" />
						</c:url>
						<a href="${viewlist_chk}">${p}</a>
					</c:if>
				</c:forEach> <c:if test="${currentPage >= maxPage}">
		[다음]
	</c:if> <c:if test="${currentPage < maxPage}">
					<c:url var="viewlist_END" value="/jobofferView.jo">
						<c:param name="page" value="${currentPage+1}" />
					</c:url>
					<a href="${viewlist_END}">[다음]</a>
				</c:if></td>
		</tr>
	</table>


	<div class="modal fade" id="view-1" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-1">CU 수원역점</h4>
				</div>
				<div class="modal-body">
					<div class="modal-works">
						<img src="resources/images/demo/다운로드.jpg" alt="매장 아이콘."
							class="img_content" /> <span>테스트트트트틑</span><span>내용</span> <span>근무조건</span><span>주소</span>

					</div>
					<p>성실한 사람을 원합니다!!! 이성우 같이 성실한 사람만 지원하세요</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Select</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>	
</body>
</html>