
$(document).ready(function() {
	//파일업로드 ajax처리	
	$("#fileupload").click(function(){
		
		if($(".isPhoto").val()=="true")
			{
		  var form = $('form')[0];
	         var formData = new FormData(form);
	             $.ajax({
	                url: 'fileupload',
	                processData: false,
	                contentType: false,
	                data: formData,
	                type: 'POST',
	                success: function(result){
	                    alert("업로드 성공!!");
	                    //성공하면 이벤트 전부 사용불가 처리 한다.
	                    $(".upload-button").attr("disabled","disabled");
	                    $("#fileupload").attr("disabled","disabled");
	                    $("#ex_file").attr("disabled","disabled");
	                    $(".upload-button").off();
	                    $("#fileupload").off();
	                    $('#ex_file').off();
	                    $("#photoname").val(result);
	                }
	            });		
			}
		else{
			alert("이미지파일만 업로드가능합니다.");
		}
		
	});
  /*
  일단 주석 해둠
  
	// var fileTarget = $('.upload-hidden');
	//파일 이름 처리
	$('#ex_file').change(function() { // 값이변경되면

		if (window.FileReader) {// modern browser
			var filename = $(this)[0].files[0].name;

		} else { // old IE
			var filename = $(this).val().split('/').pop().split('\\').pop();
			// 파일명만 추출
		}
		// 추출한파일명 삽입
		$('.upload-name').val(filename);

			});
  */
  
  //왼쪽 박스 이미지 체인지
	$('#ex_file').change(function() {
					var parent = $(this).parent();
					parent.children('.upload-display').remove();
					if (window.FileReader) { 
						// image 파일만
						if (!$(this)[0].files[0].type.match(/image\//))
							{
								//이미지 파일이 아닐경우 에러 이미지 표현
								$(".img-responsive").attr("src","resources/images/demo/error-img.png");
								$(".isPhoto").val("false");
								return;
							}
						//파일명 추출
						if (window.FileReader) {// modern browser
							var filename = $(this)[0].files[0].name;

						} else { // old IE
							var filename = $(this).val().split('/').pop().split('\\').pop();
							// 파일명만 추출
						}
						// 추출한파일명 삽입
						$('.upload-name').val(filename);
						
						//경로변경
						var reader = new FileReader();
						reader.onload = function(e) {
							var src = e.target.result;
							//이미지 파일이 맞을경우 src변경및 사진이 맞다 체크
							$(".img-responsive").attr("src",src);
							$(".isPhoto").val("true");
						}
						reader.readAsDataURL($(this)[0].files[0]);
					}
	});

	//이미지를 클릭하는경우 확대하는 창으로 이동
	$("#img_view").click(function(){
	
		$(".img_content").attr("src",$(".img-responsive").attr("src"));
	});
	
	//총 결제 금액 처리
	
	$("#p1").change(function(){
		
		var payment=Number($(".payvalue").text());
		if($('input:checkbox[id="p1"]').is(":checked") == true)
		{
			payment+=5000;
		}
		else
		{
			payment-=5000;
		}
		$(".payvalue").text(payment);
	});
	
$("#p2").change(function(){
		
		var payment=Number($(".payvalue").text());
		if($('input:checkbox[id="p2"]').is(":checked") == true)
		{
			payment+=2000;
		}
		else
		{
			payment-=2000;
		}
		$(".payvalue").text(payment);
	});

$("#p3").change(function(){
	
	var payment=Number($(".payvalue").text());
	if($('input:checkbox[id="p3"]').is(":checked") == true)
	{
		payment+=2000;
	}
	else
	{
		payment-=2000;
	}
	$(".payvalue").text(payment);
});

//캐쉬 읽어와 새로고침 처리

$("#cash_refresh").click(function(){
	
	var id=$("#userid").val(); 
	
	//에이젝스를 통한 캐쉬값을 받아와 처리하기
$.ajax({
    url : "cash_refresh.ma", // 호출할 페이지 or 서블릿 을 적어준다.
    type : "GET", //보낼방식 겟or post
    data : {id : id}, //데이타 타입 여러개 전송가능
    success : function(data) {
        //alert("성공!! cash = "+data);
        $(".cashvalue").text(data);
    },
    error : function(jqXHR, textStatus, errorThrown) {
        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
    }
	});

	return false;
});

//프리뷰 쿼리 처리
$("#preview_btn").click(function(){

	//제목
	$(".preview_title").text($(".main_top").val());
	//회사/점포명
	$(".preview_name").text($(".company_name").val());
	//사진
	$(".preview_img").attr("src",$(".img-responsive").attr("src"));
	
	
	//직종 아이콘 처리 7가지
	if($("select[name=job_select]").val()=="service")
		{
		$(".service").html("<i class='fas fa-hand-holding-heart'><br><span class='text_10 ser_text'>서비스</span></i>");
		}
	else if($("select[name=job_select]").val()=="work")
	{
		$(".service").html("<i class='fas fa-people-carry'><br><span class='text_10 ser_text'>단순노무</span></i>");
		}
	else if($("select[name=job_select]").val()=="it")
	{
		$(".service").html("<i class='fas fa-keyboard'><br><span class='text_10 ser_text'>IT관련</span></i>");
		}
	else if($("select[name=job_select]").val()=="food")
	{
		$(".service").html("<i class='fas fa-utensils'><br><span class='text_10 ser_text'>음식점,카페</span></i>");
		}
	else if($("select[name=job_select]").val()=="delivery")
	{
		$(".service").html("<i class='fas fa-motorcycle'><br><span class='text_10 ser_text'>배달</span></i>");
		}
	else if($("select[name=job_select]").val()=="agency")
	{
		$(".service").html("<i class='fas fa-user-plus'><br><span class='text_10 ser_text'>행사대행</span></i>");
		}
	else if($("select[name=job_select]").val()=="etc")
	{
		$(".service").html("<i class='fas fa-sign-language'><br><span class='text_10 ser_text'>기타부업</span></i>");
		}
	//성별 아이콘 처리
	if($("select[name=sex_select]").val()=="male")
		{
		$(".sex").html("<i class='fas fa-male'><br><span class='text_10'>남자</span></i>");
		}
	else if($("select[name=sex_select]").val()=="female")
	{
		$(".sex").html("<i class='fas fa-female'><br><span class='text_10'>여자</span></i>");
	}
	else if($("select[name=sex_select]").val()=="all")
	{
		$(".sex").html("<i class='fas fa-male'><i class='fas fa-female'></i><br><span class='text_10'>남녀무관</span></i><br>");
	}
	//나이 아이콘처리
	var AgeIconText="";
	
	if($("select[name=age_select]").val()=="up")
		AgeIconText="<i class='fas fa-angle-double-up' ></i>";
	else
		AgeIconText="<i class='fas fa-angle-double-down' ></i>";
	$(".age").html("<span>"+$(".age_num").val()+"</span>"+AgeIconText);
	
	//근무날짜처리
	$(".preview_day").html("<input type='date' value="+$(".start_day").val() +" disabled='disabled'>&nbsp; ~ &nbsp;<input type='date' value="+$(".end_day").val()+" disabled='disabled'>");
	
	//근무시간처리
	$('.preview_hour').html("<input type='text' value="+$("select[name=start_hour]").val()+" size=4 disabled='disabled'>&nbsp; : &nbsp;<input type='text' value="+$("select[name=start_minute]").val()+" size=4 disabled='disabled'>&nbsp; ~ &nbsp;" +
			"<input type='text' value="+$("select[name=end_hour]").val()+" size=4 disabled='disabled'>&nbsp; : &nbsp;<input type='text' value="+$("select[name=end_minute]").val()+" size=4 disabled='disabled'>");
	//급여분류
	$('.preview_pay').html("<input type='text' value="+$("select[name=pay_select]").val()+" size=4 disabled='disabled'> &nbsp;&nbsp; <input type='text' value="+$("input[name=pay_value]").val()+" size=4 disabled='disabled'>원");
	
	//소개글
	$('.preview_content_text').val($('.content_text').val());
	
	//상세정보
	
	$('.preview_tel').text($("input[name=telnumber]").val());
	$('.preview_email').text($("input[name=ceo]").val());
	$('.preview_post').text($("input[name=post]").val());
	$('.preview_road_address').text($("input[name=address1]").val());
	$('.preview_address1').text($("input[name=address2]").val());
	$('.preview_address2').text($("input[name=address3]").val());
	
	//네이버 지도 api입니다.
	var map = new naver.maps.Map('map');
    var myaddress = $(".postcodify_address").val();// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
    if(myaddress==""||myaddress==null)
    	myaddress="불정로 6";
    naver.maps.Service.geocode({address: myaddress}, function(status, response) {
        if (status !== naver.maps.Service.Status.OK) {
            return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
        }
        var result = response.result;
        // 검색 결과 갯수: result.total
        // 첫번째 결과 결과 주소: result.items[0].address
        // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
        var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
        map.setCenter(myaddr); // 검색된 좌표로 지도 이동
        // 마커 표시
        var marker = new naver.maps.Marker({
          position: myaddr,
          map: map
        });
        
        // 마커 클릭 이벤트 처리
        naver.maps.Event.addListener(marker, "click", function(e) {
          if (infowindow.getMap()) {
              infowindow.close();
          } else {
              infowindow.open(map, marker);
          }
        });
        // 마크 클릭시 인포윈도우 오픈
        var infowindow = new naver.maps.InfoWindow({
            content: '<h4> ['+$(".company_name").val()+']</h4><img src="'+$(".img-responsive").attr("src")+'" style="width:150px;height:110px;">'
        });
    });
    /////////////////////////////////////////////////////////////////////////////////////////
	
});
//submit 유효성 검사 처리

});