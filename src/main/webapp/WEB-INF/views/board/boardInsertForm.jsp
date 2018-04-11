<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<title>WorkNow - boardInsertForm</title>
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link href="resources/css/owl.carousel.css" rel="stylesheet">
<link href="resources/css/owl.theme.default.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">


<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body id="page-top">

	<jsp:include page="/WEB-INF/views/header/header.jsp" />

	<br>
	<br>
	<br>
	<br>
	<br>
	<br> 
<c:set var="member" value="${sessionScope.member}"></c:set>

<h1 align="center">답변형 게시글 쓰기</h1>
<br>
<form action="binsert.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="boardName" value="${member.id}">
<table align="center" id="tb">
	<tr><td>제목</td><td><input type="text" name="boardSubject"></td></tr>
	<%-- <tr><td>작성자</td><td><input type="text" readonly value="${member.id}"></td></tr> --%>
	<tr><td>작성자</td><td><input type="text" readonly value="admin" name="boardName"></td></tr>
	<tr><td>내용</td><td><textarea cols="50" rows="7" name="boardContent"></textarea></td></tr>	
	<tr><td colspan="2" align="center"><input type="submit" value="등록하기"> &nbsp; 
	<c:url var="blist" value="/fboard.bo">
		<c:param name="page" value="1"/>
	</c:url>
		<a href="${blist}">목록으로</a></td></tr>
</table>
</form>

</body>
</html>