<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="listCount" value="${requestScope.listCount}"/>
<c:set var="currentPage" value="${requestScope.currentPage}"/>
<c:set var="startPage" value="${requestScope.startPage}"/>
<c:set var="endPage" value="${requestScope.endPage}"/>
<c:set var="maxPage" value="${requestScope.maxPage}"/>
<c:set var="list" value="${requestScope.list}"/>
<c:set var="member" value="${sessionScope.member}"/>

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

	<c:forEach var="resume" items="${list}"><!-- 반복문 시작 -->
				
				<div style="margin: 0 20% 0 0">

					<table style="width: 100%; table-layout:fixed" >
						<tr>
							<td rowspan="2">
								<%--회원사진 --%>
								<p>
									<img src="resources/images/demo/다운로드.jpg" style="width: 80px;">
								</p>
							</td>
							
							<td style="width: 70%; display: inline; float: left;">
								<%-- 제목 --%>
								<h5>제목 쓰는곳</h5>
							</td>
						</tr>

						<tr>
							<td style="width: 70%; display: inline; float: left;">
						<%--
								-내용-
								나이 성별 이름 폰번호
						--%> 		 
					 ${resume.resumeContent}

							</td>
							<td>
							<input type="button" value="수락"> 
							<input type="button" value="거절">
							</td>
							
						</tr>

					</table>
				</div>
			</c:forEach><!-- 반복문 종료 -->
			
			
		</div>
		
	

<table>
<tr align="center" height="20">
<td colspan="6">
	<c:if test="${currentPage <= 1}">
		[이전] &nbsp;
	</c:if><c:if test="${currentPage > 1}">
	<c:url var="receivelist_ST" value="/receive.re">
		<c:param name="page" value="${currentPage-1}"/>
	</c:url>
		<a href="${receivelist_ST}">[이전]</a> &nbsp;
	</c:if>
	<!-- 페이지 숫자 보여주기 -->
	<c:forEach var="p" begin="${startPage}" end="${endPage}">
	<c:if test="${p eq currentPage}">
	<font color="red" size="4"><b>[${p}]</b></font>
	</c:if><c:if test="${p ne currentPage}">
	<c:url var="receivelist_chk" value="/receive.re">
		<c:param name="page" value="${p}"/>
	</c:url>
		<a href="${receivelist_chk}">${p}</a>
	</c:if>
	</c:forEach>
	<c:if test="${currentPage >= maxPage}">
		[다음]
	</c:if><c:if test="${currentPage < maxPage}">
	<c:url var="receivelist_END" value="/receive.re">
		<c:param name="page" value="${currentPage+1}"/>
	</c:url>
		<a href="${receivelist_END}">[다음]</a>
	</c:if>
</td>
</tr>
</table>


</body>
</html>