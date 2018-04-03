<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WorkNow - 로그인</title>
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
		
		
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>	
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>


	<script>
    function makeModal() {	
    	$("#modal").css({"visibility":"visible",'width':'100%','height':'100%'}).fadeIn(500);
    	$("#per, #com").css({"display":"none"});
    }

    function closeModal() {	
     	$("#modal").fadeOut(200);
     	$("#signupContent").css({"height":"300px"}).fadeIn(500);
    }
    function signupSelect1(){  	            		
    	$("#per").fadeIn(500);
		$("#com").hide();    			
		$("#signupContent").css({"height":"500px"}).fadeIn(500);
		
    	};
    function signupSelect2(){	
    	$("#per").hide();
    	$("#com").fadeIn(500);
    	$("#signupContent").css({"height":"800px"});
    		};	                      		
	
    		
	</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header/header.jsp" />
<div id="modal" style="visibility:hidden;background-color:#888888;position:absolute;display:none;left:0;top:0;z-index:9000;opacity:0.92;">
<!--  <div class="container" style="width:100%" > -->
        <div id="signupContent" class="card card-container" style="max-width:800px;height:300px;margin-top:13%;">
        
            <button id="btbt1" value="1" onclick="signupSelect1();" style="margin:0 5%"><img id="profile-img" class="profile-img-card" src="resources/images/demo/personal.png" style="display:inline;margin:auto;width:100%;height:25%;border-radius:0;"/></button>
            <button id="btbt2" value="2" onclick="signupSelect2();" style="margin:0 5%"><img id="profile-img" class="profile-img-card" src="resources/images/demo/company.png" style="display:inline;margin:auto;width:100%;height:25%;border-radius:0;"/></button>
                       
            <div id="per" style="display:none;margin:auto;">
<!--             	 <div class="container"> -->
<!-- 	<div class="row" style="width:100%"> -->
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm" style="width:70%;margin-top:3%;margin:auto;">
            <legend>
            <a href="http://www.jquery2dotnet.com">
            <i class="glyphicon glyphicon-globe"></i>
            </a> 개인회원가입</legend>
            <form action="#" method="post" class="form" role="form">    
            <input class="form-control" name="member_id" placeholder="아이디" />
            <input class="form-control" name="member_pass" placeholder="패스워드"/>            
            <input class="form-control" name="member_name" placeholder="이름" type="email" />
            <label>생년월일</label>
            <input class="form-control" name="member_date" type="date" style="width:40%;display:inline"/>
			<label class="radio-inline">
            <input type="radio" name="sex" id="1" value="male" />
                			남자
            </label>
            <label class="radio-inline">
                <input type="radio" name="sex" id="2" value="female" />
            					여자
            </label>            
            <input class="form-control" name="per_address" placeholder="주소" type="search" />
            <input class="form-control" name="member_phone" placeholder="연락처" type="tel" />       
            <input class="form-control" name="member_email" placeholder="이메일" type="email" />
            <textarea class="form-control" name="per_talk" placeholder="소개(100자 이내)" rows='4' style="resize:none;"></textarea>
            
            <input class="form-control" name="per_photo" placeholder="프로필 사진" type="file" />
            
            
            
			<div class="row">	
				<div class='col-xs-12' id='thepwddiv'></div>		
				
				
				<noscript>
				<div><input class="form-control" type='password'  name='regpwd' /></div>		
				</noscript>
			</div>
            

            <br />
            <br />
            <button class="btn btn-lg btn-primary btn-block" type="submit">
                Sign up</button>
            </form>
    </div>
    
        </div>


            
            
            <div id="com" style="display:none">
            	 <div class="container">
	<div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm" style="width:57%;margin-top:3%">
            <legend>
            <a href="http://www.jquery2dotnet.com">
            <i class="glyphicon glyphicon-globe"></i>
            </a> 기업회원가입</legend>
            <form action="#" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="firstname" placeholder="First Name" type="text"
                        required autofocus />
                </div>
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="lastname" placeholder="Last Name" type="text" required />
                </div>
            </div>
            <input class="form-control" name="youremail" placeholder="Your Email" type="email" />
            <input class="form-control" name="reenteremail" placeholder="Re-enter Email" type="email" />
			<div class="row">	
				<div class='col-xs-12' id='thepwddiv'></div>
				
				
				<noscript>
				<div><input class="form-control" type='password'  name='regpwd' /></div>		
				</noscript>
			</div>
            <label for="">
                Birth Date</label>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Month">Month</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Day">Day</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Year">Year</option>
                    </select>
                </div>
            </div>
            <label class="radio-inline">
                <input type="radio" name="sex" id="3" value="male" />
                Male
            </label>
            <label class="radio-inline">
                <input type="radio" name="sex" id="4" value="female" />
                Female
            </label>
            <br />
            <br />
            <button class="btn btn-lg btn-primary btn-block" type="submit">
                Sign up</button>
            </form>
        </div>
    </div>
</div>

            </div>
            
<button id="modalconfirm" class="btn btn-lg btn-primary btn-block" style="width:33%; margin:0 5%" >확인</button>
<button id="modalclose" onclick="closeModal();" class="btn btn-lg btn-primary btn-block" style="width:33%;margin:0 5%;"  >닫기</button>

        </div><!-- /card-container -->
<!--     </div>/container -->

</div>
<!-- </div> -->

<!-- </div> -->

    <div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <div class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" id="inputEmail" class="form-control" placeholder="ID">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password">
<!--                 <div id="remember" class="checkbox"> -->
<!--                     <label> -->
<!--                         <input type="checkbox" value="remember-me"> Remember me -->
<!--                     </label> -->
<!--                 </div> -->
                	<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">로그인</button>
<!--                 <a href="signup.si"> -->
               		<button id="signup" class="btn btn-lg btn-primary btn-block btn-signin" onclick="makeModal();">회원가입</button>
<!--                 </a> -->
            </div><!-- /form -->
<!--             <a href="#" class="forgot-password"> -->
<!--                 Forgot the password? -->
<!--             </a> -->
        </div><!-- /card-container -->
    </div><!-- /container -->




</body>
</html>