<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 주석노트 ( Ctrl + F 로 검색해서 찾아가세요 )-->
<!-- 1개인회원가입 -->
<!-- 2기업회원가입 -->
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	
<!-- Custom styles for this template -->
<link href="resources/css/owl.carousel.css" rel="stylesheet">
<link href="resources/css/owl.theme.default.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">

<link href="resources/css/login.css" rel="stylesheet">


<style>
.form-control{
margin:1% 0 2% 0;
}
</style>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
function makeModal() {
	$("#modal").css({
		'position' : 'absolute',
		'width' : '100%',
		'height' : '200%',
		'z-index' : '100'
	}).fadeIn(500);

	$('#signupContent').css({
		'position' : 'absolute',
		'z-index' : '200'
	}).fadeIn(500);

	$("#per, #com").css({
		"display" : "none"
	});
	
	$('body').css({'height' : '192%'});
};

function closeModal() {
	$("#modal").fadeOut(200);

	$('#signupContent').hide();
};

function signupSelect1() {
	$("#per").fadeIn(500);
	$("#com").hide();

};

function signupSelect2() {
	$("#per").hide();
	$("#com").fadeIn(500);

};


function idCheck() {
	//하나 입력 시 동시에 입력되게 한다.
	$('#id_per').keydown(function() {
		$('#PersonalId').val($(this).val());
	});

	// 마지막에 입력 시 입력되게 한다.
	$('#id_per').change(function() {
		$('#PersonalId').val($(this).val());
	});
	
	//jQuery에서 선택자역할	
	var peridStr = $("#id_per").val();
	
	$.ajax({
		url : "dupid.du?id=" + peridStr,
		success : function(data) { 														
			if (data == "success") {
				$("#id_per").css({'background-color':'lightblue'});
				$("#result").text("");
			} else if (data == "fail") {
				$("#id_per").css({'background-color':'#FFCC66'});
				$("#result").text("중복된 아이디입니다.").css({'color':'red'});
			} else if (data == "tooShort"){
				$("#id_per").css({'background-color':'#FFCC66'});
				$("#result").text("아이디가 너무 짧습니다.").css({'color':'red'});										
			} else if (data == "tooLong"){
				$("#id_per").css({'background-color':'#FFCC66'});
				$("#result").text("아이디가 너무 깁니다.").css({'color':'red'});
			}
		}
	});
	
};


function idCheck2() {
	
	// 하나 입력 시 동시에 입력되게 한다.
	$('#id_com').keydown(function() {
		$('#ComId').val($(this).val());							
	});

	// 마지막에 입력 시 입력되게 한다.
	$('#id_com').change(function() {
		$('#ComId').val($(this).val());
	});
	
var comidStr = $("#id_com").val();
$.ajax({
	url : "dupid.du?id=" + comidStr,
	success : function(data) { 														
		if (data == "success") {
			$("#id_com").css({'background-color':'lightblue'});
			$("#resultComid").text("");
		} else if (data == "fail") {
			$("#id_com").css({'background-color':'#FFCC66'});
			$("#resultComid").text("중복된 아이디입니다.").css({'color':'red'});
		} else if (data == "tooShort"){
			$("#id_com").css({'background-color':'#FFCC66'});
			$("#resultComid").text("아이디가 너무 짧습니다.").css({'color':'red'});										
		} else if (data == "tooLong"){
			$("#id_com").css({'background-color':'#FFCC66'});
			$("#resultComid").text("아이디가 너무 깁니다.").css({'color':'red'});
		}
	}
});
};

function passCheck(){
	if ($('#pass1').val() != $('#pass2').val()) {
		$("#passResult").text("비밀번호가 서로 다릅니다.").css({'color':'red'});								
	} else if ($('#pass1').val() == $('#pass2').val()) {
		if ($('#pass1').val().length < 8){
			$("#passResult").text("비밀번호는 8자 이상으로 해주세요.").css({'color':'red'});
		}
		else 
			$("#passResult").text("비밀번호가 일치합니다.").css({'color':'blue'});
	}
};

function passCheck2(){
	if ($('#pass3').val() != $('#pass4').val()) {
		$("#passResult2").text("비밀번호가 서로 다릅니다.").css({'color':'red'});								
	} else if ($('#pass3').val() == $('#pass4').val()) {
		if ($('#pass3').val().length < 8){
			$("#passResult2").text("비밀번호는 8자 이상으로 해주세요.").css({'color':'red'});
		}
		else 
			$("#passResult2").text("비밀번호가 일치합니다.").css({'color':'blue'});
	}
};

</script>


</head>
<body>
	<jsp:include page="/WEB-INF/views/header/header.jsp" />	
	
	<div id="modal"
		style="display: none; background-color: #888888; left: 0; top: 0; opacity: 0.8;">	
	</div>
	
	<div id="signupContent" class="card card-container"	
	style="max-width: 100%; height: auto; margin: 5% 25% 0 27%; display: none; padding: 15;">			
			<button id="btbt1" value="1" onclick="signupSelect1();"
			style="width: 50%; float: left; border: 0; outline: 0; background-color: white">
				<img class="profile-img-card"
					src="resources/images/demo/personal.png"
					style="display: inline; margin: auto; width: 100%; height: 25%; border-radius: 0;" />
			</button>
			<button id="btbt2" value="2" onclick="signupSelect2();"
				style="width: 50%; float: left; border: 0; outline: 0; background-color: white">
				<img class="profile-img-card"
					src="resources/images/demo/company.png"
					style="display: inline; margin: auto; width: 100%; height: 25%; border-radius: 0;" />
			</button>			
	
	<!-- 1개인회원가입 -->	
		<div id="per" style="display: none; margin: auto;">	
			<div class="col-xs-12 col-sm-12 col-md-4 well well-sm"
				style="width: 100%; margin-top:3%; ">
				<legend>
					<i class="glyphicon glyphicon-globe"></i>
					</a> 개인회원가입
				</legend>
				<form action="persignup.pe" method="post" class="form" enctype="multipart/form-data">
					<label>프로필 사진</label>

					
					<article>
					<div id="holder" style="margin:auto;text-align:center;"></div>
						<p id="status"></p>
						<p>
							<button class="btn btn-lg btn-primary btn-block" onclick="document.getElementById('profilePhoto').click();">
							사진등록</button>						
							<input id="profilePhoto" type="file" name="perPhoto" accept='image/jpeg,image/gif,image/png' style="opacity:0;height:1px" required/>
						</p>						
					</article>
					
					<!-- <input class="form-control" name="perPhoto" type="file" style="text-align:center;"/> -->
					
					
					<script>
						var upload = document.getElementsByTagName('input')[0], 
						holder = document.getElementById('holder'),
						state = document.getElementById('status');
						var basic = new Image();
						
						basic.src = 'http://i65.tinypic.com/noj51z.png';
						basic.width = 180;
						
						holder.appendChild(basic);

						if (typeof window.FileReader === 'undefined') {
							state.className = 'fail';
						} else {
							state.className = 'success';							
						}

						upload.onchange = function(e) {
							e.preventDefault();

							var file = upload.files[0], reader = new FileReader();
							reader.onload = function(event) {
								var img = new Image();
								img.src = event.target.result;
								
								img.width = 180;
									
								holder.innerHTML='';
								holder.appendChild(img);
							};
							reader.readAsDataURL(file);
							return false;
						};
					</script>
					
					<input id="id_per" onKeyUp="idCheck();" class="form-control" name="memberId" placeholder="아이디" style="width:50%;display:inline" required/>
					<span id="result" style="display:inline;margin-left:5px"></span><p/>
					
					<input id="PersonalId" type="text" name="perId" style="display:none;">
							
					
					
					<input id="pass1" onKeyUp="passCheck();" class="form-control" name="memberPass" placeholder="패스워드" type="password" style="width:50%;display:inline;" required/>
					<input id="pass2" onKeyUp="passCheck();" class="form-control" placeholder="패스워드 확인" type="password" style="width:49%;display:inline" required/>

					<span id="passResult" style="display:inline;margin-top:10px"></span>
					
					<input id="name" class="form-control" name="memberName" placeholder="이름" required/> 
					<div style="text-align:center;">
						<label>나이 : </label>						
						<input class="form-control"	name="perAge" type="text" style="width: 10%; display: inline; margin-right:10%" required/>
					<label> 성 별 : </label>
					<label class="radio-inline"> 
						<input type="radio" name="perSex" id="1" value="남" required/> 남자
					</label>
					<label class="radio-inline">
						<input type="radio"	name="perSex" id="2" value="여" required/> 여자
					</label>
					</div>
					
				
					<span onclick="sample2_execDaumPostcode()">
					<input class="form-control" type="text" id="per_postcode" placeholder="우편번호" style="width:60%;display:inline;" required />
					<input type="button" value="우편번호 찾기"/><br>
					</span>
					<input class="form-control" name="perAddress" type="text" id="per_address" placeholder="한글주소" required/>					
				
					<input class="form-control" name="memberPhone"	placeholder="연락처" type="tel" required/>
					
					<input class="form-control" name="memberEmail" placeholder="이메일" type="email" required/>
					
					
					<textarea class="form-control" name="perTalk" placeholder="소개(100자 이내)" rows='4' style="resize: none;"></textarea>

					<div class="row">
						<div class='col-xs-12' id='thepwddiv'></div>


						<noscript>
							<div>
								<input class="form-control" type='password' name='regpwd' />
							</div>
						</noscript>
					</div>


					<br /> <br />
					<button class="btn btn-lg btn-primary btn-block" type="submit">
						회원가입</button>
				</form>
			</div>
		</div>




<!-- 2기업회원가입 -->
		<div id="com" style="display: none; margin: auto;">
			<div class="col-xs-12 col-sm-12 col-md-4 well well-sm"
				style="width: 100%; margin-top:3%; ">
				<legend>
					<i class="glyphicon glyphicon-globe"></i>
					</a> 기업회원가입
				</legend>
				<form action="comsignup.co" method="post" class="form">

					
					<input id="id_com" onKeyUp="idCheck2();" class="form-control" name="memberId" placeholder="아이디" style="width:60%;display:inline" required/>
				
					<input id="ComId" type="text" name="comId" style="display:none;">
												
					<span id="resultComid" style="display:block;"></span>
					
					<input id="pass3" onKeyUp="passCheck2();" class="form-control" name="memberPass" placeholder="패스워드" type="password" style="width:22%;display:inline;" required/>
					<input id="pass4" onKeyUp="passCheck2();" class="form-control" placeholder="패스워드 확인" type="password" style="width:22%;display:inline" required/>
					<span id="passResult2"></span>
					<input class="form-control" name="comCeo" placeholder="대표자명" type="text" required/>
					<input class="form-control" name="memberName" placeholder="이름" type="text" required/>
					<input class="form-control" name="comName" placeholder="기업명" type="text" required/> 
					<input class="form-control" name="comNumber"	placeholder="사업자등록번호" type="tel" required/>
					
					<div style="text-align:center;">
					
					
					</div>
					
				
					<span onclick="sample2_execDaumPostcode()">
					<input class="form-control" type="text" id="com_postcode" placeholder="우편번호" style="width:60%;display:inline;" required />
					<input type="button" value="우편번호 찾기"/><br>
					</span>
					<input class="form-control" name="comAddress" type="text" id="com_address" placeholder="한글주소" required/>					

					<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
					<div id="layer2" style="display:none;position:fixed;overflow:hidden;z-index:0;-webkit-overflow-scrolling:touch;">
						<img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode2()" alt="닫기 버튼">
					</div>

					
					<input class="form-control" name="memberPhone"	placeholder="연락처" type="tel" required/>
					
					<input class="form-control" name="memberEmail" placeholder="이메일" type="email" required/>

					<div class="row">
						<div class='col-xs-12' id='thepwddiv'></div>

						<noscript>
							<div>
								<input class="form-control" type='password' name='regpwd' />
							</div>
						</noscript>
					</div>


					<br /> <br />
					<button class="btn btn-lg btn-primary btn-block" type="submit">
						회원가입</button>
				</form>
			</div>
		</div>
		<div style="width:100%;text-align:center;">			
			<button id="modalclose" onclick="closeModal();"
				class="btn btn-lg btn-primary btn-block"
				style="width: 100%;">닫기</button>
		</div>
			<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
					<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
						<img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
					</div>

					<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
					<script>
					    // 우편번호 찾기 화면을 넣을 element
					    var element_layer = document.getElementById('layer');
					
					    function closeDaumPostcode() {
					        // iframe을 넣은 element를 안보이게 한다.
					        element_layer.style.display = 'none';
					    }
					    
					    function sample2_execDaumPostcode() {					    	
					        new daum.Postcode({
					            oncomplete: function(data) {
					                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
					                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
					                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					                var fullAddr = data.address; // 최종 주소 변수
					                var extraAddr = ''; // 조합형 주소 변수
					
					                // 기본 주소가 도로명 타입일때 조합한다.
					                if(data.addressType === 'R'){
					                    //법정동명이 있을 경우 추가한다.
					                    if(data.bname !== ''){
					                        extraAddr += data.bname;
					                    }
					                    // 건물명이 있을 경우 추가한다.
					                    if(data.buildingName !== ''){
					                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					                    }
					                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
					                }
					
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                
					                if($("#per").css('display') == 'block'){					                	
					                	console.log("per의 상태 : " + $("#per").css('display'));
					                	console.log("com의 상태 : " + $("#com").css('display'));
					                	
					                document.getElementById('per_postcode').value = data.zonecode; //5자리 새우편번호 사용
					                document.getElementById('per_address').value = fullAddr;
					                } else {
					                	console.log("per의 상태 : " + $("#per").css('display'));
					                	console.log("per의 상태 : " + $("#com").css('display'));
					                	document.getElementById('com_postcode').value = data.zonecode; //5자리 새우편번호 사용
						                document.getElementById('com_address').value = fullAddr;					                	
					                }
                        
					
					                // iframe을 넣은 element를 안보이게 한다.
					                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					                element_layer.style.display = 'none';
					            },
					            width : '100%',
					            height : '100%',
					            maxSuggestItems : 5
					        }).embed(element_layer);
					
					        // iframe을 넣은 element를 보이게 한다.
					        element_layer.style.display = 'block';	        
					
					        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
					        initLayerPosition();
					    }
					
					    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
					    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
					    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
					    function initLayerPosition(){
					        var width = 300; //우편번호서비스가 들어갈 element의 width
					        var height = 400; //우편번호서비스가 들어갈 element의 height
					        var borderWidth = 5; //샘플에서 사용하는 border의 두께
					
					        // 위에서 선언한 값들을 실제 element에 넣는다.
					        element_layer.style.width = width + 'px';
					        element_layer.style.height = height + 'px';
					        element_layer.style.border = borderWidth + 'px solid';
					        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
					        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
					        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
					    }
					</script>
	</div>
				
	<div class="container">
		<div class="card card-container">			
			<img id="profile-img" class="profile-img-card"
				src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
			<p id="profile-name" class="profile-name-card"></p>
			<div class="form-signin">
				<span id="reauth-email" class="reauth-email"></span>

        <script>
					$(function() {
						$("#logincheck").click(function() {
							var memloginid = $("#memberId").val();
							var memloginpass = $("#memberPass").val();
							$.ajax({
								url : "loginCheck.lo",
								data : {
									id : memloginid,
									pass : memloginpass
								},
								dataType : "text",
								type : "post",
								success : function(value) {
									if (value == "loginsuccess") {										
										window.location.href="memberLogin.me?id=" + memloginid + "&pass=" + memloginpass;
										alert("로그인 되었습니다.");
									} else {
										alert("아이디와 비밀번호를 확인해주세요.");										
									}
								},
								error : function(value) {
									alert("잘못 입력하셨습니다." + value);
								}
							});
							return false;
						}); //click
					}); //ready
				</script>
				<form action="memberLogin.me" method="POST" class="login">
								
				<input type="text" id="memberId" name="memberId" class="form-control" placeholder="ID">
				<input type="password" id="memberPass" name="memberPass" class="form-control" placeholder="Password">
						
				<button class="btn btn-lg btn-primary btn-block btn-signin"									
					id="logincheck" type="submit">로그인</button>					
				</form>		
				
				<button id="signup"
					class="btn btn-lg btn-primary btn-block btn-signin"
					onclick="makeModal();">회원가입</button>
			</div>		
		</div>    		
	</div>
</body>
</html>