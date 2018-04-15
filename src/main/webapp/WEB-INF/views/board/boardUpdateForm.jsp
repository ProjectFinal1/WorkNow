<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="member" value="${sessionScope.member}" />
<c:set var="board" value="${requestScope.board}"/>
<c:set var="currentPage" value="${requestScope.currentPage}"/>
<html>
<head>
<title>게시판</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>
<script type="text/javascript">
            $(document).ready(function(){
            	
            	CKEDITOR.replace( 'boardContent' );
            	CKEDITOR.config.height = 500;
            	
            	$("#list").click(function(){
            		location.href = "/worknow/fboard.bo";
            	});
            	
            	$("#save").click(function(){
            		
            		//에디터 내용 가져옴
            		var boardContent = CKEDITOR.instances.boardContent.getData();
            		
            		//널 검사
                    if($("#boardSubject").val().trim() == ""){
                    	alert("제목을 입력하세요.");
                    	$("#boardSubject").focus();
                    	return false;
                    }
            		
                    if($("#boardName").val().trim() == ""){
                    	alert("로그인 하세요.");
                    	$("#boardName").focus();
                    	return false;
                    }
                    
                  //값 셋팅
                    var board = {
                    		boardNum          : $("#boardNum").val(),
                    		boardName          : $("#boardName").val(),
                            boardSubject     : $("#boardSubject").val(),
                            boardContent     : boardContent,
                            boardDate    : $("#boardDate").val(),
                            
                    };
                     
                    //ajax 호출
                    $.ajax({
                        url         :   "/worknow/bupdate.do",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        data        :   board,
                        success     :   function(){
                            location.href = "/worknow/bdetail.do?bnum=" + $("#boardNum").val() + "&page=" + $("#page").val();
                        },
                        error       :   function(){
                        	alert("게시글 수정에 성공하였습니다.");
                            location.href = "/worknow/bdetail.do?bnum=" + $("#boardNum").val() + "&page=" + $("#page").val();
                        }
                    });
            		
            	});
            	
            });
        </script>
</head>
<body>	
	<input type="hidden" id="boardName" name="boardName" value="${member.memberId}" />
	<input type="hidden" id="page" name="page" value="${currentPage}">
	<input type="hidden" id="boardNum" name="boardNum" value="${board.boardNum}">
	<input type="hidden" id="boardDate" name="boardDate" value="${board.boardDate}">
	<div align="center">
		<br> <br>
		<table width="1200px">
			<tr>
				<td>제목: <input type="text" id="boardSubject" name="boardSubject"
					style="width: 740px;" placeholder="제목" value="${board.boardSubject}" />
					작성자: <input type="text" id="boardName" name="boardName"
					style="width: 200px;" maxlength="10" placeholder="작성자" readonly value="${member.memberId}" /> 
					<button id="save" name="save">수정</button>
					<button id="list" name="list">목록</button>
				</td>
			</tr>
			<tr>
				<td><textarea name="boardContent" id="boardContent" rows="10" cols="80">${board.boardContent}</textarea>
				</td>
			</tr>
			<tr>
				<td align="right">
					
				</td>
			</tr>
		</table>
	</div>
</body>
</html>