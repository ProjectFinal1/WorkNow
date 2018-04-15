<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
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
        <script type="text/javascript">
            $(document).ready(function(){
                 
                $("#list").click(function(){
                    location.href = "/worknow/fboard.bo";
                });
                 
                //댓글 저장
                $("#reply_save").click(function(){
                     
                    //널 검사
                    if($("#replyContent").val().trim() == ""){
                        alert("내용을 입력하세요.");
                        $("#replyContent").focus();
                        return false;
                    }
                    
                  //값 셋팅
                    var reply = {
                    		replyNum          : $("#bnum").val(),
                    		replyLevel     : $("#replyLevel").val(),
                    		replyName          : $("#id").val(),
                    		replyContent     : $("#replyContent").val(),
                    		replyDate    : $("#replyDate").val(),
                            
                    };
                     
                    //ajax 호출
                    $.ajax({
                        url         :   "/worknow/breply.do",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        data        :   reply,
                        success     :   function(){
                            location.href = "/worknow/bdetail.do?bnum=" + $("#bnum").val() + "&page=" + $("#page").val();
                        },
                        error       :   function(){
                        	alert("댓글이 등록되었습니다.");
                            location.href = "/worknow/bdetail.do?bnum=" + $("#bnum").val() + "&page=" + $("#page").val();
                        }
                    });
                     
                });
                 
                //댓글 삭제
                $("button[name='reply_del']").click(function(){
                	//값 셋팅
                    var replydel = {
                    		replyNum          : $("#bnum").val(),
                    		replyName          : $("#id").val(),
                    		replyContent     : $("#replyContent").val(),
                    		replyDate    : $("#replyDate").val(),
                            
                    };
                     
                    //ajax 호출
                    $.ajax({
                        url         :   "/worknow/brdelete.do",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        data        :   replydel,
                        success     :   function(){
                            location.href = "/worknow/bdetail.do?bnum=" + $("#bnum").val() + "&page=" + $("#page").val();
                        },
                        error       :   function(){
                        	alert("댓글이 삭제되었습니다.");
                            location.href = "/worknow/bdetail.do?bnum=" + $("#bnum").val() + "&page=" + $("#page").val();
                        }
                    });
                });
                 
            });
        </script>
    </head>
    <style>
        textarea{
              width:100%;
            }
             
        .reply_reply {
                border: 2px solid #FF50CF;
            }
    </style>
    <body>
    	<jsp:include page="/WEB-INF/views/header/header.jsp" />

		<c:set var="board" value="${requestScope.board}" />
		<c:set var="reply" value="${requestScope.reply}" />
		<c:set var="currentPage" value="${requestScope.currentPage}" />
		<c:set var="member" value="${sessionScope.member}" />
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<h1 align="center">${board.boardNum}번 게시글 상세보기</h1>
		<input type="hidden" id="bnum" name="bnum" value="${board.boardNum}"/>
		<input type="hidden" id="page" name="page" value="${currentPage}" />
		<input type="hidden" id="id" name="id" value="${member.memberId}" />
        <div align="center">
            <br>
            <br>
            <table border="1" width="1200px" >
                <tr>
                    <td colspan="2" align="right">                    
	                    <c:url var="bupview" value="bupview.do">
							<c:param name="bnum" value="${board.boardNum}" />
							<c:param name="page" value="${currentPage}" />
						</c:url>
	                    <button type="button" onclick="location.href='${bupview}'">글 수정</button>
                        <c:url var="bdelete" value="bdelete.do">
							<c:param name="bnum" value="${board.boardNum}" />
						</c:url>
                    	<button type="button" onclick="location.href='${bdelete}'">글 삭제</button>
                        <button id="list" name="list">목록</button>
                    </td>
                </tr>
                <tr>
                    <td width="900px">
                        제목: ${board.boardSubject}
                    </td>
                    <td>
                        작성자: ${board.boardName}
                    </td>
                </tr>
                <tr height="500px">
                    <td colspan="2" valign="top">
                        ${board.boardContent}
                    </td>
                </tr>
            </table>
            <table border="1" width="1200px" id="reply_area">
                <!-- 댓글이 들어갈 공간 -->
                <c:forEach var="replyList" items="${reply}" varStatus="status">
                    <tr>
                        <td width="100px">
                            ${replyList.replyName}
                        </td>
                        <td width="870px">
                            ${replyList.replyContent}
                        </td>
                        <td width="200px">
                            ${replyList.replyDate}
                        </td>
                        <td width="100px">
                        	<button name="reply_del" id="${replyList.replyLevel}">삭제</button>
                            <button name="reply_rep" id = "${replyList.replyLevel}">신고</button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <table border="1" width="1200px" bordercolor="#46AA46">
                <tr>
                    <td align="right" width="500px">
                        이름: <input type="text" id="replyName" name="replyName" style="width:170px;" maxlength="10" readonly value="${member.memberId}"/>
                        <button id="reply_save" name="reply_save">댓글 등록</button>
                        <button type="button" onclick="location.href='/worknow/fboard.bo'">목록</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea id="replyContent" name="replyContent" rows="4" cols="50" placeholder="댓글을 입력하세요."></textarea>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>