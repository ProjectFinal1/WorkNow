<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link href="resources/css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <!-- Custom styles for this template -->
      <link href="resources/css/owl.carousel.css" rel="stylesheet">
      <link href="resources/css/owl.theme.default.min.css"  rel="stylesheet">
      <link href="resources/css/style.css" rel="stylesheet">
      <link href="resources/css/main.css" rel="stylesheet">         


</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<c:set var="member" value="${sessionScope.member}" />
<c:set var="userid" value="${member.memberId}"/>

      <nav class="navbar navbar-default header_main sujung"> 
         <div class="container" >
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               </button>
               
               <!-- 로고 스타일 적용- 2018 04 02-->
               <a class="navbar-brand page-scroll" href="home.ma" style="margin-top:10px;"><img src="resources/images/logo.png" alt="logo" style="width:120px;"></a>
            </div>            
                  
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               <ul class="nav navbar-nav navbar-right">
                  <li class="hidden">
                     <a href="#page-top"></a>
                  </li>
                  <li>
                  
                  
                  <c:if test="${!empty sessionScope.member }">               
                  <li>
                  <ul class="nav navbar-top-links navbar-right" style="">                     
                     <li class="dropdown" style="float:right;">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
                           <i class="fa fa-user fa-fw"></i> 
                           <i class="fa fa-caret-down"></i>
                        </a>
                     
                        <ul class="dropdown-menu dropdown-user">
                           <li>
                              <a href="mypage.my">
                                 <i class="fa fa-user fa-fw"></i> 마이페이지</a>
                           </li>                                 
                           <li>
                           <a href="#">
                              <i class="fa fa-comment fa-fw"></i>   새로운 요청</a>
                           </li>                                 
                           <li class="divider"></li>                           
                                    <c:if test="${userid == 'ADMIN'}">
                                       <li>
                                          <a href="admin.ad">관리자 페이지</a>
                                        </li>
                                       <li class="divider"></li>
                                    </c:if>
                                    <li>
                              <a href="logout.lo">
                              <i class="fa fa-sign-out fa-fw"></i>로그아웃</a>
                           </li>
                        </ul>
                     </li>
                  </ul>
                  </li>
                  </c:if>
                  <c:if test="${empty sessionScope.member }">
                  <li style="margin-top:7px;">
                     <a class="page-scroll" href="login.lo">로그인</a>                                                            
                  </li>
                  </c:if>                              
                  <!-- 메인에서만 소개버튼이 뜨도록 조절하는 JSTL문 - 2018 04 02 작성 -->
                  <c:set var="currentURL" value="${pageContext.request.requestURL}"/>                        
                  <c:if test="${currentURL eq 'http://localhost:8088/worknow/WEB-INF/views/Main.jsp'}">               
                  <li style="margin-top:7px;">
                     <a class="page-scroll" href="#about">소개</a>
                  </li>
                  </c:if> 
                  
                  <li style="margin-top:7px;">
                     <a class="page-scroll" href="jobofferView.jo">구인</a>
                  </li>
                  <li style="margin-top:7px;">
                     <a class="page-scroll" href="jobsearchView.jo">구직</a>
                  </li>
                  
                  
                  <li>
                  <ul class="nav navbar-top-links navbar-right">                     
                     <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="fboard.bo"> 
                           커뮤니티<i class="fa fa-caret-down"></i>
                        </a>                     
                        <ul class="dropdown-menu dropdown-user">
                           <li>
                              <a href="fboard.bo">자유게시판</a>
                           </li>                                 
                           <li>
                              <a href="sboad.bo">후기게시판</a>
                           </li>                                 
                           <li>
                              <a href="qboard.bo">문의게시판</a>
                           </li>                              
                        </ul>
                     </li>
                  </ul>
                  </li>                        
                  <li style="margin-top:7px;">
                     <a class="page-scroll" href="servicecenter.se">고객센터</a>
                  </li>               
                  
          </ul>
            </div>
            <!-- /.navbar-collapse -->
         </div>
         <!-- /.container-fluid -->
      </nav>
      <!-- 
      <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script> 
      
         <script>
         $('nav li').hover(
              function() {
                 $('ul', this).stop().slideDown(200);
              },
            function() {
                $('ul', this).stop().slideUp(200);
          });
   
         </script>
      </div>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
      <script src="resources/js/bootstrap.min.js"></script>
      <script src="resources/js/owl.carousel.min.js"></script>
      <script src="resources/js/cbpAnimatedHeader.js"></script>
      <script src="resources/js/jquery.appear.js"></script>
      <script src="resources/js/SmoothScroll.min.js"></script>
      <script src="resources/js/mooz.themes.scripts.js"></script>
      <script src="resources/js/main.js"></script>
 -->
 
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script src="resources/js/joboffer.js"></script>
   <script   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script   src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
   <script src="resources/js/bootstrap.min.js"></script>
   <script src="resources/js/owl.carousel.min.js"></script>
   <script src="resources/js/cbpAnimatedHeader.js"></script>
   <script src="resources/js/jquery.appear.js"></script>
   <script src="resources/js/SmoothScroll.min.js"></script>
   <script src="resources/js/mooz.themes.scripts.js"></script> 
</body>
</html>

