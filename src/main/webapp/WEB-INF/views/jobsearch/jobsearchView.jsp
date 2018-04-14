<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WorkNow - 구직하기</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">		
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
<body>
	<jsp:include page="/WEB-INF/views/header/header.jsp" />
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>구직페이지
	<p>
		<label>구인 페이지의 메뉴 2개(검색과 받은신청 리스트)가 매우 유사하게 동작할 예정임</label>
	<p>
		<label>페이지 디자인도 비슷하므로</label> <p>
		<label>광고를 양 옆에 두고 동작할 수 있도록 연습</label>
	<div
		style="width: 200px; height: 150px; border: 1px solid red; float: left; margin-left:10px;">
		첫번째 영역: 왼쪽에 위치시킴 => float:left 여기에 그림이나 글자 또는 광고 등을 넣음</div>		
		<div>
			작업영역
		</div>
	<div
		style="width: 200px; height: 150px; border: 1px solid green; float: right; margin-right:10px;">
		두번째 영역: 첫번째 영역 옆에 나란히 붙임 => float:left 여기에 그림이나 글자 또는 광고 등을 넣음</div>
</body>
</html>