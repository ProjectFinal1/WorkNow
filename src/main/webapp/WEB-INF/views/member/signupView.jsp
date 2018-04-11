<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WorkNow - 회원가입</title>
<!-- 	style="background-color: rgba( 255, 255, 255, 10);width:50%;margin:auto;" -->
<style>
	.modalcontent{
	background-color: rgba( 255, 255, 255, 10);
	width:50%;	
	margin:10% 25% 0 25%;
	}
	
	.modalcontent btn-signin {
	width:50%;
	}
</style>

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
		
		<link href="resources/css/login.css" rel="stylesheet">		
		<link href="resources/css/signup.css" rel="stylesheet">
		
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
</head>
<body>
<jsp:include page="/WEB-INF/views/header/header.jsp" />
<br><br><br><br><br><br>


<script>
function makeModal() {	
	$("#modal").css({"visibility":"visible",'width':'100%','height':'100%'}).fadeIn(500);	
}

function closeModal() {	
 	$("#modal").fadeOut(200);
}
</script>

<button onclick="makeModal();">ㄱㄱ</button>
<div id="modal" style="visibility:hidden;background-color:gray;position:absolute;display:none;left:0;top:0;z-index:9000;opacity:0.5;">


<button id="modalconfirm">확인</button>
<button id="modalclose" onclick="closeModal();">닫기</button>


</div>

</body>
</html>