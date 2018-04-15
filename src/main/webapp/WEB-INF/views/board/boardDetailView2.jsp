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
<title>WorkNow - boardDetailView</title>
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

	<c:set var="board" value="${requestScope.board}" />
	<c:set var="currentPage" value="${requestScope.currentPage}" />
	<c:set var="member" value="${sessionScope.member}" />
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1 align="center">게시글 상세보기</h1>
	<table align="center" cellpadding="10" cellspacing="0" border="1"
		width="500" id="tb">
		<tr align="center" valign="middle">
			<th colspan="3">${board.boardNum}번글상세보기</th>
		</tr>
		<tr>
			<td height="15" width="100">제 목</td>
			<td colspan="2">${board.boardSubject}</td>			
		</tr>
		<tr>
			<td>내 용</td>
			<td colspan="2">${board.boardContent}</td>
		</tr>
		<tr>
		<td colspan="3">
		<c:forEach var="rl" items="${relist}">
			${rl.replyNum} ${rl.replyLevel} ${rl.replyName} ${rl.replyContent} ${rl.replyDate}
		</c:forEach>
		</td>
		</tr>		
		<tr align="center" valign="middle">
			<%-- <td colspan="2"><c:if test="${!empty member}">
					<c:url var="brf" value="boardReplyForm.do">
						<c:param name="bnum" value="${board.boardNum}" />
						<c:param name="page" value="${currentPage}" />
					</c:url>
					<a href="${brf}"> [댓글달기] </a> &nbsp;&nbsp; 
         <c:if test="${member.id eq board.boardWriter}">
						<c:url var="bupview" value="bupview.do">
							<c:param name="bnum" value="${board.boardNum}" />
							<c:param name="page" value="${currentPage}" />
						</c:url>
						<c:url var="bdelete" value="bdelete.do">
							<c:param name="bnum" value="${board.boardNum}" />
						</c:url>
						<a href="${bupview}"> [수정페이지로 이동] </a> &nbsp;&nbsp; 
            <a href="${bdelete}"> [글삭제] </a> &nbsp;&nbsp; 
         </c:if>
				</c:if> <c:url var="blist" value="/fboard.bo">
					<c:param name="page" value="${currentPage}" />
				</c:url> <a href="${blist}">[목록]</a></td> --%>
				
			<td colspan="2">				
				<c:url var="brf" value="boardReplyForm.do">
					<c:param name="bnum" value="${board.boardNum}" />
					<c:param name="page" value="${currentPage}" />
				</c:url> <a href="${brf}"> [댓글달기] </a> &nbsp;&nbsp; 
				
				<c:url var="bupview" value="bupview.do">
					<c:param name="bnum" value="${board.boardNum}" />
					<c:param name="page" value="${currentPage}" />
				</c:url> <a href="${bupview}"> [수정페이지로 이동] </a> &nbsp;&nbsp;
				
				<c:url var="bdelete" value="bdelete.do">
					<c:param name="bnum" value="${board.boardNum}" />
				</c:url> <a href="${bdelete}"> [글삭제] </a> &nbsp;&nbsp; 
				
				<c:url var="blist" value="/fboard.bo">
					<c:param name="page" value="${currentPage}" />
				</c:url> <a href="${blist}">[목록]</a></td>
		</tr>
	</table>
	<br>

</body>
</html>