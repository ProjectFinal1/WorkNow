
$(document).ready(function() {
	
	
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



// //왼쪽 박스 이미지 체인지

	$('#ex_file').change(function() {
					var parent = $(this).parent();
					parent.children('.upload-display').remove();
					if (window.FileReader) { // image 파일만
						if (!$(this)[0].files[0].type.match(/image\//))
							{
								//이미지 파일이 아닐경우 에러 이미지 표현
								$(".img-responsive").attr("src","resources/images/demo/error-img.png");
								return;
							}
						var reader = new FileReader();
						reader.onload = function(e) {
							var src = e.target.result;
							$(".img-responsive").attr("src",src);
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
	
	
	//var date=$(".start_day").val().split("-");
	//var year=date[0];
	//var month=date[1];
	//var day=date[2];
	//$(".preview_day").html(datenum1+" "+datenum2);
	//$(".preview_day").html("<input type='date' value='2018-04-11' disabled='disabled'>&nbsp; ~ &nbsp;<input type='date' value='2018-04-11' disabled='disabled'>");
	//<input type='date' value='2018-04-11' disabled='disabled'>&nbsp; ~ &nbsp;<input type='date' value='2018-04-11' disabled='disabled'>
	
	
	/*	
	 * <input type="text" value="09" size=4 disabled="disabled">&nbsp; : &nbsp;<input type="text" value="30" size=4 disabled="disabled">&nbsp; ~ &nbsp;
						<input type="text" value="20" size=4 disabled="disabled">&nbsp; : &nbsp;<input type="text" value="00" size=4 disabled="disabled">
	 * <i class="fas fa-people-carry"><br><span class="text_10 ser_text">단순노무</span></i>
	 <option value="service">서비스</option>
	  <option value="work">단순노무</option>
	  <option value="it">IT관련</option>
	  <option value="food">음식점,카페</option>
	  <option value="delivery">배달</option>
	  <option value="agency">행사대행</option>
	  <option value="etc">기타부업</option>*/
	
});
//submit 유효성 검사 처리



});