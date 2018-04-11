<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<
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
<script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>
<script type="text/javascript">
            $(document).ready(function(){
            	
            	CKEDITOR.replace( 'content' );
            	CKEDITOR.config.height = 500;
            	
            	$("#list").click(function(){
            		location.href = "/worknow/fboard.bo";
            	});
            	
            	$("#save").click(function(){
            		
            		//에디터 내용 가져옴
            		var content = CKEDITOR.instances.content.getData();
            		
            		//널 검사
                    if($("#subject").val().trim() == ""){
                    	alert("제목을 입력하세요.");
                    	$("#subject").focus();
                    	return false;
                    }
            		
                    if($("#writer").val().trim() == ""){
                    	alert("작성자를 입력하세요.");
                    	$("#writer").focus();
                    	return false;
                    }
                    
                   /*  if($("#password").val().trim() == ""){
                    	alert("비밀번호를 입력하세요.");
                    	$("#password").focus();
                    	return false;
                    } */
            		
            		//값 셋팅
            		var objParams = {
            				<c:if test="${board.boardNum != null}"> //있으면 수정 없으면 등록
            				id			: $("#boardNum").val(),
            				</c:if>
            				subject		: $("#boardSubject").val(),
            				writer		: $("#boardName").val(),
            				password	: $("#password").val(),
            				content		: content
    				};
            		
            		//ajax 호출
            		$.ajax({
            			url			:	"/worknow/binsert.do",
            			dataType	:	"json",
            			contentType :	"application/x-www-form-urlencoded; charset=UTF-8",
            			type 		:	"post",
            			data		:	objParams,
            			success 	:	function(retVal){

            				if(retVal.code == "OK") {
            					alert(retVal.message);
            					location.href = "/worknow/fboard.bo";	
            				} else {
            					alert(retVal.message);
            				}
            				
            			},
            			error		:	function(request, status, error){
            				console.log("AJAX_ERROR");
            			}
            		});
            		
            		
            	});
            	
            });
        </script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header/header.jsp" />

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<c:set var="member" value="${sessionScope.member}"></c:set>
	<c:set var="board" value="${requestScope.board}" />
	<c:set var="currentPage" value="${requestScope.currentPage}" />

	<h1 align="center">답변형 게시글 쓰기</h1>
	<br>
	<input type="hidden" id="boardNum" name="boardNum"
		value="${board.boardNum}" />
	<div align="center">
		</br> </br>
		<table width="1200px">
			<tr>
				<td>제목: <input type="text" id="subject" name="subject"
					style="width: 600px;" placeholder="제목" value="${board.boardSubject}" />
					작성자: <input type="text" id="writer" name="writer"
					style="width: 170px;" maxlength="10" placeholder="작성자"
					value="${board.boardName}" /> 비밀번호: <input type="password"
					id="password" name="password" style="width: 170px;" maxlength="10"
					placeholder="패스워드" />
					<button id="save" name="save">저장</button>
				</td>
			</tr>
			<tr>
				<td><textarea name="content" id="content" rows="10" cols="80">${board.boardContent}</textarea>
				</td>
			</tr>
			<tr>
				<td align="right">
					<button id="list" name="list">게시판</button>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>