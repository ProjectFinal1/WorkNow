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
                    if($("#reply_writer").val().trim() == ""){
                        alert("이름을 입력하세요.");
                        $("#reply_writer").focus();
                        return false;
                    }
                     
                    if($("#reply_password").val().trim() == ""){
                        alert("패스워드를 입력하세요.");
                        $("#reply_password").focus();
                        return false;
                    }
                     
                    if($("#reply_content").val().trim() == ""){
                        alert("내용을 입력하세요.");
                        $("#reply_content").focus();
                        return false;
                    }
                     
                    var reply_content = $("#reply_content").val().replace("\n", "<br>"); //개행처리
                     
                    //값 셋팅
                    var objParams = {
                            board_id        : $("#board_id").val(),
                            parent_id       : "0",  
                            depth           : "0",
                            reply_writer    : $("#reply_writer").val(),
                            reply_password  : $("#reply_password").val(),
                            reply_content   : reply_content
                    };
                     
                    var reply_id;
                     
                    //ajax 호출
                    $.ajax({
                        url         :   "/board/reply/save",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        async       :   false, //동기: false, 비동기: ture
                        data        :   objParams,
                        success     :   function(retVal){
 
                            if(retVal.code != "OK") {
                                alert(retVal.message);
                            }else{
                                reply_id = retVal.reply_id;
                            }
                             
                        },
                        error       :   function(request, status, error){
                            console.log("AJAX_ERROR");
                        }
                    });
                     
                    var reply_area = $("#reply_area");
                     
                    var reply = 
                        '<tr reply_type="main">'+
                        '   <td width="870px">'+
                        reply_content+
                        '   </td>'+
                        '   <td width="100px">'+
                        $("#reply_writer").val()+
                        '   </td>'+
                        '   <td width="100px">'+
                        '       <input type="password" id="reply_password_'+reply_id+'" style="width:100px;" maxlength="10" placeholder="패스워드"/>'+
                        '   </td>'+
                        '   <td>'+
                        '       <button name="reply_del" reply_id = "'+reply_id+'">삭제</button>      '+
                        '       <button name="reply_reply" reply_id = "'+reply_id+'">댓글</button>'+
                        '   </td>'+
                        '</tr>';
                         
                     if($('#reply_area').contents().size()==0){
                         $('#reply_area').append(reply);
                     }else{
                         $('#reply_area tr:last').after(reply);
                     }
 
                    //댓글 초기화
                    $("#reply_writer").val("");
                    $("#reply_password").val("");
                    $("#reply_content").val("");
                     
                });
                 
                //댓글 삭제
                $("button[name='reply_del']").click(function(){
                     
                    var check = false;
                    var reply_id = $(this).attr("reply_id");
                    var reply_password = "reply_password_"+reply_id;
                     
                    if($("#"+reply_password).val().trim() == ""){
                        alert("패스워드을 입력하세요.");
                        $("#"+reply_password).focus();
                        return false;
                    }
                     
                    //패스워드와 아이디를 넘겨 삭제를 한다.
                    //값 셋팅
                    var objParams = {
                            reply_password  : $("#"+reply_password).val(),
                            reply_id        : reply_id
                    };
                     
                    //ajax 호출
                    $.ajax({
                        url         :   "/board/reply/del",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        async       :   false, //동기: false, 비동기: ture
                        data        :   objParams,
                        success     :   function(retVal){
 
                            if(retVal.code != "OK") {
                                alert(retVal.message);
                            }else{
                                 
                                check = true;
                                                                 
                            }
                             
                        },
                        error       :   function(request, status, error){
                            console.log("AJAX_ERROR");
                        }
                    });
                     
                    if(check){
                        //삭제하면서 하위 댓글도 삭제
                        var prevTr = $(this).parent().parent().next(); //댓글의 다음
                         
                        while(prevTr.attr("reply_type")=="sub"){//댓글의 다음이 sub면 계속 넘어감
                            prevTr = prevTr.next();
                            prevTr.prev().remove();
                        }
                         
                        //마지막 리플 처리
                        if(prevTr.attr("reply_type") == undefined){
                            prevTr = $(this).parent().parent();
                            prevTr.remove();
                        }
                         
                        $(this).parent().parent().remove(); 
                    }
                     
                });
                 
                //대댓글 입력창
                $(document).on("click","button[name='reply_reply']",function(){ //동적 이벤트
                     
                    $("#reply_add").remove();
                     
                    var reply_id = $(this).attr("reply_id");
                    var last_check = false;//마지막 tr 체크
                     
                    //입력받는 창 등록
                     var replyEditor = 
                        '<tr id="reply_add" class="reply_reply">'+
                        '   <td width="870px">'+
                        '       <textarea name="reply_reply_content" rows="3" cols="50"></textarea>'+
                        '   </td>'+
                        '   <td width="100px">'+
                        '       <input type="text" name="reply_reply_writer" style="width:100%;" maxlength="10" placeholder="작성자"/>'+
                        '   </td>'+
                        '   <td width="100px">'+
                        '       <input type="password" name="reply_reply_password" style="width:100%;" maxlength="10" placeholder="패스워드"/>'+
                        '   </td>'+
                        '   <td>'+
                        '       <button name="reply_reply_save" reply_id="'+reply_id+'">등록</button>'+
                        '       <button name="reply_reply_cancel">취소</button>'+
                        '   </td>'+
                        '</tr>';
                         
                    var prevTr = $(this).parent().parent().next();
                     
                    //부모의 부모 다음이 sub이면 마지막 sub 뒤에 붙인다.
                    //마지막 리플 처리
                    if(prevTr.attr("reply_type") == undefined){
                        prevTr = $(this).parent().parent();
                    }else{
                        while(prevTr.attr("reply_type")=="sub"){//댓글의 다음이 sub면 계속 넘어감
                            prevTr = prevTr.next();
                        }
                         
                        if(prevTr.attr("reply_type") == undefined){//next뒤에 tr이 없다면 마지막이라는 표시를 해주자
                            last_check = true;
                        }else{
                            prevTr = prevTr.prev();
                        }
                         
                    }
                     
                    if(last_check){//마지막이라면 제일 마지막 tr 뒤에 댓글 입력을 붙인다.
                        $('#reply_area tr:last').after(replyEditor);    
                    }else{
                        prevTr.after(replyEditor);
                    }
                     
                });
                 
                //대댓글 등록
                $(document).on("click","button[name='reply_reply_save']",function(){
                                         
                    var reply_reply_writer = $("input[name='reply_reply_writer']");
                    var reply_reply_password = $("input[name='reply_reply_password']");
                    var reply_reply_content = $("textarea[name='reply_reply_content']");
                    var reply_reply_content_val = reply_reply_content.val().replace("\n", "<br>"); //개행처리
                     
                    //널 검사
                    if(reply_reply_writer.val().trim() == ""){
                        alert("이름을 입력하세요.");
                        reply_reply_writer.focus();
                        return false;
                    }
                     
                    if(reply_reply_password.val().trim() == ""){
                        alert("패스워드를 입력하세요.");
                        reply_reply_password.focus();
                        return false;
                    }
                     
                    if(reply_reply_content.val().trim() == ""){
                        alert("내용을 입력하세요.");
                        reply_reply_content.focus();
                        return false;
                    }
                     
                    //값 셋팅
                    var objParams = {
                            board_id        : $("#board_id").val(),
                            parent_id       : $(this).attr("reply_id"), 
                            depth           : "1",
                            reply_writer    : reply_reply_writer.val(),
                            reply_password  : reply_reply_password.val(),
                            reply_content   : reply_reply_content_val
                    };
                     
                    var reply_id;
                     
                    //ajax 호출
                    $.ajax({
                        url         :   "/board/reply/save",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        async       :   false, //동기: false, 비동기: ture
                        data        :   objParams,
                        success     :   function(retVal){
 
                            if(retVal.code != "OK") {
                                alert(retVal.message);
                            }else{
                                reply_id = retVal.reply_id;
                            }
                             
                        },
                        error       :   function(request, status, error){
                            console.log("AJAX_ERROR");
                        }
                    });
                     
                    var reply = 
                        '<tr reply_type="sub">'+
                        '   <td width="870px"> → '+
                        reply_reply_content_val+
                        '   </td>'+
                        '   <td width="100px">'+
                        reply_reply_writer.val()+
                        '   </td>'+
                        '   <td width="100px">'+
                        '       <input type="password" id="reply_password_'+reply_id+'" style="width:100px;" maxlength="10" placeholder="패스워드"/>'+
                        '   </td>'+
                        '   <td>'+
                        '       <button name="reply_del" reply_id = "'+reply_id+'">삭제</button>'+
                        '   </td>'+
                        '</tr>';
                         
                    var prevTr = $(this).parent().parent().prev();
                     
                    prevTr.after(reply);
                                         
                    $("#reply_add").remove();
                     
                });
                 
                //대댓글 입력창 취소
                $(document).on("click","button[name='reply_reply_cancel']",function(){
                    $("#reply_add").remove();
                });
                 
                //글수정
                $("#modify").click(function(){
                     
                    var password = $("input[name='password']");
                     
                    if(password.val().trim() == ""){
                        alert("패스워드를 입력하세요.");
                        password.focus();
                        return false;
                    }
                                         
                    //ajax로 패스워드 검수 후 수정 페이지로 포워딩
                    //값 셋팅
                    var objParams = {
                            id       : $("#board_id").val(),    
                            password : $("#password").val()
                    };
                                         
                    //ajax 호출
                    $.ajax({
                        url         :   "/board/check",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        async       :   false, //동기: false, 비동기: ture
                        data        :   objParams,
                        success     :   function(retVal){
 
                            if(retVal.code != "OK") {
                                alert(retVal.message);
                            }else{
                                location.href = "/board/edit?id="+$("#board_id").val();
                            }
                             
                        },
                        error       :   function(request, status, error){
                            console.log("AJAX_ERROR");
                        }
                    });
                     
                });
                 
                //글 삭제
                $("#delete").click(function(){
                     
                    var password = $("input[name='password']");
                     
                    if(password.val().trim() == ""){
                        alert("패스워드를 입력하세요.");
                        password.focus();
                        return false;
                    }
                     
                    //ajax로 패스워드 검수 후 수정 페이지로 포워딩
                    //값 셋팅
                    var objParams = {
                            id       : $("#board_id").val(),    
                            password : $("#password").val()
                    };
                                         
                    //ajax 호출
                    $.ajax({
                        url         :   "/board/del",
                        dataType    :   "json",
                        contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
                        type        :   "post",
                        async       :   false, //동기: false, 비동기: ture
                        data        :   objParams,
                        success     :   function(retVal){
 
                            if(retVal.code != "OK") {
                                alert(retVal.message);
                            }else{
                                alert("삭제 되었습니다.");
                                location.href = "/worknow/fboard.bo";
                            }
                             
                        },
                        error       :   function(request, status, error){
                            console.log("AJAX_ERROR");
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
		<c:set var="currentPage" value="${requestScope.currentPage}" />
		<c:set var="member" value="${sessionScope.member}" />
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<h1 align="center">${board.boardNum}번 게시글 상세보기</h1>
		<input type="hidden" id="boardNum" name="boardNum" value="${board.boardNum}" />
        <div align="center">
            </br>
            </br>
            <table border="1" width="1200px" >
                <tr>
                    <td colspan="2" align="right">
                        <input type="password" id="password" name="password" style="width:200px;" maxlength="10" placeholder="패스워드"/>
                        <button id="modify" name="modify">글 수정</button>
                        <button id="delete" name="delete">글 삭제</button>
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
                <tr reply_type="all"><!-- 뒤에 댓글 붙이기 쉽게 선언 -->
                    <td colspan="4"></td>
                </tr>
                <!-- 댓글이 들어갈 공간 -->
                <c:forEach var="replyList" items="${replyList}" varStatus="status">
                    <tr reply_type="<c:if test="${replyList.depth == '0'}">main</c:if><c:if test="${replyList.depth == '1'}">sub</c:if>"><!-- 댓글의 depth 표시 -->
                        <td width="870px">
                            <c:if test="${replyList.depth == '1'}"> → </c:if>${replyList.reply_content}
                        </td>
                        <td width="100px">
                            ${replyList.reply_writer}
                        </td>
                        <td width="100px">
                            <input type="password" id="reply_password_${replyList.reply_id}" style="width:100px;" maxlength="10" placeholder="패스워드"/>
                        </td>
                        <td>
                            <button name="reply_del" reply_id = "${replyList.reply_id}">삭제</button>
                            <c:if test="${replyList.depth != '1'}">
                                <button name="reply_reply" reply_id = "${replyList.reply_id}">댓글</button><!-- 첫 댓글에만 댓글이 추가 대댓글 불가 -->
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <table border="1" width="1200px" bordercolor="#46AA46">
                <tr>
                    <td width="500px">
                        이름: <input type="text" id="reply_writer" name="reply_writer" style="width:170px;" maxlength="10" placeholder="작성자"/>
                        패스워드: <input type="password" id="reply_password" name="reply_password" style="width:170px;" maxlength="10" placeholder="패스워드"/>
                        <button id="reply_save" name="reply_save">댓글 등록</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea id="reply_content" name="reply_content" rows="4" cols="50" placeholder="댓글을 입력하세요."></textarea>
                    </td>
                </tr>
            </table>
            <table width="1200px">
                <tr>
                    <td align="right">
                        <button id="list" name="list">목록</button>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>