<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<c:set var="listCount" value="${requestScope.listCount}" />
<c:set var="currentPage" value="${requestScope.currentPage}" />
<c:set var="startPage" value="${requestScope.startPage}" />
<c:set var="endPage" value="${requestScope.endPage}" />
<c:set var="maxPage" value="${requestScope.maxPage}" />
<c:set var="list" value="${requestScope.list}" />
<c:set var="member" value="${sessionScope.member}" />

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
            $(document).ready(function(){
                 
                //--페이지 셋팅
                var listCount = ${listCount}; //전체 페이지
                var startPage = ${startPage}; //현재 페이지
                 
                var pagination = "";
                 
                //--페이지네이션에 항상 10개가 보이도록 조절
                var forStart = 0;
                var forEnd = 0;
                 
                if((startPage-5) < 1){
                    forStart = 1;
                }else{
                    forStart = startPage-5;
                }
                 
                if(forStart == 1){
                     
                    if(totalPage>9){
                        forEnd = 10;
                    }else{
                        forEnd = totalPage;
                    }
                     
                }else{
                     
                    if((startPage+4) > listCount){
                         
                        forEnd = listCount;
                         
                        if(forEnd>9){
                            forStart = forEnd-9
                        }
                         
                    }else{
                        forEnd = startPage+4;
                    }
                }
                //--페이지네이션에 항상 10개가 보이도록 조절
                 
                //전체 페이지 수를 받아 돌린다.
                for(var i = forStart ; i<= forEnd ; i++){
                    if(startPage == i){
                        pagination += ' <button name="page_move" start_page="'+i+'" disabled>'+i+'</button>';
                    }else{
                        pagination += ' <button name="page_move" start_page="'+i+'" style="cursor:pointer;" >'+i+'</button>';
                    }
                }
                 
                //하단 페이지 부분에 붙인다.
                $("#pagination").append(pagination);
                //--페이지 셋팅
                 
                 
                $("a[name='subject']").click(function(){
                     
                    location.href = "/worknow/bdetail.do?boardNum="+$(this).attr("boardNum");
                     
                });
                 
                $("#write").click(function(){
                    location.href = "/worknow/binsertView.do";
                });
                                 
                $(document).on("click","button[name='page_move']",function(){
                     
                    var visiblePages = 10;//리스트 보여줄 페이지
                     
                    $('#startPage').val($(this).attr("start_page"));//보고 싶은 페이지
                    $('#visiblePages').val(visiblePages);
                     
                    $("#frmSearch").submit();
                     
                });
                 
            });
        </script>
        <style>
            .mouseOverHighlight {
                   border-bottom: 1px solid blue;
                   cursor: pointer !important;
                   color: blue;
                   pointer-events: auto;
                }
        </style>
    </head>
    <body>
    	<jsp:include page="/WEB-INF/views/header/header.jsp" />
    	<br>
		<br>
		<br>
		<br>
		<br>
		<br>
        <form class="form-inline" id="frmSearch" action="/worknow/fboard.bo">
            <input type="hidden" id="startPage" name="startPage" value=""><!-- 페이징을 위한 hidden타입 추가 -->
            <input type="hidden" id="visiblePages" name="visiblePages" value=""><!-- 페이징을 위한 hidden타입 추가 -->
            <div align="center">
                <table width="1200px">
                    <tr>
                        <td align="right">
                            <button type="button" id="write" name="write">글 작성</button>
                        </td>
                    </tr>
                </table>
                <table border="1" width="1200px">
                    <tr>
                        <th width="50px">
                            No
                        </th>
                        <th width="850px">
                            제목
                        </th>
                        <th width="100px">
                            작성자
                        </th>
                        <th width="200px">
                            작성일
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
                                        <a name="subject" class="mouseOverHighlight" content_id="${list.boardNum}">${list.boardSubject}</a>
                                    </td>
                                    <td align="center">${list.boardName}</td>
                                    <td align="center">${list.boardDate}</td>
                                </tr>
                            </c:forEach>
                        </c:otherwise> 
                    </c:choose>
                </table>
                <br>
                <div id="pagination"></div>
            </div>
        </form>
    </body>
</html>