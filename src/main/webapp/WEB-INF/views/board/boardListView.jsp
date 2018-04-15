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
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<title>WorkNow - boardListView</title>
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

<script type="text/javascript">
	function showInsertForm() {
		location.href = "binsertView.do";
	}
</script>

</head>
<body id="page-top">

	<jsp:include page="/WEB-INF/views/header/header.jsp" />

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1 align="center">자유 게시판</h1>
	<%-- <h4 align="center">
		총 게시글 갯수 : ${listCount}
		<c:if test="${!empty member}">
&nbsp; &nbsp; &nbsp; <button onclick="showInsertForm();">글쓰기</button>
		</c:if>
		&nbsp; &nbsp; &nbsp; <button onclick="showInsertForm();">글쓰기</button>
	</h4>
	<table align="center" border="1" cellspacing="0" width="700" id="tb">
		<tr>
			<th align="center">번호</th>
			<th align="center">제목</th>
			<th align="center">작성자</th>
			<th align="center">날짜</th>
			<th align="center">조회수</th>
			<th align="center">댓글수</th>
		</tr>

		<c:forEach var="b" items="${list}">

			<tr>
				<td align="center">${b.boardNum}</td>
				<!-- 답글일 때는 들여쓰기함 -->
				<td>
					<c:if test="${b.boardLevel eq 1}"> <!-- 원글의 답글일 때 -->
	 &nbsp; &nbsp; ▶ 
	 </c:if><c:if test="${b.boardLevel eq 2}"> <!-- 답글의 답글일 때 -->
	 &nbsp; &nbsp; &nbsp; &nbsp; ▶▶ 
	</c:if> <!-- 로그인한 사용자만 상세보기할 수 있게 처리함 --> <c:if test="${!empty member}">
	<c:url var="bdetail" value="/bdetail.do">
		<c:param name="bnum" value="${b.boardNum}"/>
		<c:param name="page" value="${currentPage}"/>
	</c:url>
	<a href="${bdetail}">${b.boardSubject}</a>
	</c:if><c:if test="${empty member}">

	${b.boardSubject}
	</c:if> <c:url var="bdetail" value="/bdetail.do">
						<c:param name="bnum" value="${b.boardNum}" />
						<c:param name="page" value="${currentPage}" />
					</c:url> <a href="${bdetail}">${b.boardSubject}</a>

				</td>
				<td align="center">${b.boardName}</td>
				<td align="center"><fmt:formatDate value="${b.boardDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td align="center">${b.boardDate}</td>
				<td align="center">${b.boardCount}</td>
				<td align="center">${b.replyCount}</td>
			</tr>
		</c:forEach>
		<!-- 페이지 번호 처리 -->
		<tr align="center" height="20">
			<td colspan="6"><c:if test="${currentPage <= 1}">
		[이전] &nbsp;
	</c:if> <c:if test="${currentPage > 1}">
					<c:url var="blistST" value="/fboard.bo">
						<c:param name="page" value="${currentPage-1}" />
					</c:url>
					<a href="${blistST}">[이전]</a> &nbsp;
	</c:if> <!-- 페이지 숫자 보여주기 --> <c:forEach var="p" begin="${startPage}"
					end="${endPage}">
					<c:if test="${p eq currentPage}">
						<font color="red" size="3"><b>${p}</b></font>
					</c:if>
					<c:if test="${p ne currentPage}">
						<c:url var="blistchk" value="/fboard.bo">
							<c:param name="page" value="${p}" />
						</c:url>
						<a href="${blistchk}">${p}</a>
					</c:if>
				</c:forEach> <c:if test="${currentPage >= maxPage}">
		[다음]

	</c:if> <c:if test="${currentPage < maxPage}">
					<c:url var="blistEND" value="/fboard.bo">
						<c:param name="page" value="${currentPage+1}" />
					</c:url>
					<a href="${blistEND}">[다음]</a>
				</c:if></td>
		</tr>
	</table> --%>
	
	<div align="center">
                <table width="1200px">
                    <tr>
                        <td align="right">
                            <b>(총 게시글 갯수 : ${listCount})</b>
                            <c:if test="${!empty member}">
								&nbsp;&nbsp;&nbsp;<button onclick="showInsertForm();">글 작성</button>
							</c:if>
							<c:if test="${empty member}">
								&nbsp;&nbsp;&nbsp;<b>로그인시 글 등록이 가능합니다.</b>
							</c:if>
                        </td>
                    </tr>
                </table>
                <table border="1" width="1200px">
                    <tr>
                        <th width="50px">
                            No
                        </th>
                        <th width="800px">
                            제목
                        </th>
                        <th width="100px">
                            작성자
                        </th>
                        <th width="200px">
                            작성일
                        </th>
                        <th width="50px">
                            조회수
                        </th>
                    </tr>
                    <c:choose>
                        <c:when test="${fn:length(list) == 0}">
                            <tr>
                                <td colspan="4" align="center">
                                    조회결과가 없습니다.
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="list" items="${list}" varStatus="status">
                                <tr>
                                    <td align="center">${list.boardNum}</td>
                                    <td>
                                    <!-- 로그인한 사용자만 상세보기할 수 있게 처리함 --> 
                                    <c:if test="${!empty member}">
										<c:url var="bdetail" value="/bdetail.do">
											<c:param name="bnum" value="${list.boardNum}"/>
											<c:param name="page" value="${currentPage}"/>
										</c:url>
										<a class="mouseOverHighlight" href="${bdetail}">${list.boardSubject}<font color="red" size="2"><b>(${list.replyCount})</b></font></a>
									</c:if>
									<c:if test="${empty member}">
										${list.boardSubject}
									</c:if>
									<%-- <a name="subject" class="mouseOverHighlight" content_id="${list.boardNum}">${list.boardSubject}</a> --%>
									</td>  
                                    <td align="center">${list.boardName}</td>
                                    <td align="center">${list.boardDate}</td>
                                    <td align="center">${list.boardCount}</td>
                                </tr>
                            </c:forEach>
                        </c:otherwise> 
                    </c:choose>
                    <!-- 페이지 번호 처리 -->
		<tr align="center" height="20">
			<td colspan="6"><c:if test="${currentPage <= 1}">
		[이전] &nbsp;
	</c:if> <c:if test="${currentPage > 1}">
					<c:url var="blistST" value="/fboard.bo">
						<c:param name="page" value="${currentPage-1}" />
					</c:url>
					<a href="${blistST}">[이전]</a> &nbsp;
	</c:if> <!-- 페이지 숫자 보여주기 --> <c:forEach var="p" begin="${startPage}"
					end="${endPage}">
					<c:if test="${p eq currentPage}">
						<font color="red" size="3"><b>${p}</b></font>
					</c:if>
					<c:if test="${p ne currentPage}">
						<c:url var="blistchk" value="/fboard.bo">
							<c:param name="page" value="${p}" />
						</c:url>
						<a href="${blistchk}">${p}</a>
					</c:if>
				</c:forEach> <c:if test="${currentPage >= maxPage}">
		[다음]
	</c:if> <c:if test="${currentPage < maxPage}">
					<c:url var="blistEND" value="/fboard.bo">
						<c:param name="page" value="${currentPage+1}" />
					</c:url>
					<a href="${blistEND}">[다음]</a>
				</c:if></td>
		</tr>
                </table>
                <br>
                <div id="pagination"></div>
            </div>
	
	<br>
	<br>
</body>
</html>















