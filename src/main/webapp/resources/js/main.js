$(document).ready(function(){
	
	$('.search').click(function(){
		$('#search_result').show();
	});
	
	var $menuEle = $('dt'); // 탭메뉴를 변수에 지정
	$menuEle.click(function() { // 탭메뉴 클릭 이벤트
	    $('dd').addClass('hidden');
	    $(this).next().removeClass('hidden');
	})
	
	// 주소 선택 했을 시 두번째 주소 선택칸 내용 변경 메소드
	$('#sel_address1').change(function(){
		if($(this).val() == "경기"){
			$(".sel_address2").hide();
			$("#gyeonggi").show();
		}
		
		if($(this).val() == "서울"){
			$(".sel_address2").hide();
			$("#seoul").show();
		}
		
		if($(this).val() == "인천"){
			$(".sel_address2").hide();
			$("#incheon").show();
		}
		
		if($(this).val() == "강원"){
			$(".sel_address2").hide();
			$("#gangwon").show();
		}
		
		if($(this).val() == "대전"){
			$(".sel_address2").hide();
			$("#daejeon").show();
		}
		
		if($(this).val() == "세종"){
			$(".sel_address2").hide();
			$("#sejong").show();
		}
		
		if($(this).val() == "충남"){
			$(".sel_address2").hide();
			$("#chungcheongnam").show();
		}		
	});
	
	// 주소로 알바찾기 돋보기 클릭
	$("#search_address").click(function(){
		
			$(".search_all").hide();
			$(".search_result").css("visibility", "visible"); 
			
			var address1 = $('#sel_address1').val();
			var adrees2 = "";
			
			if(address1 == "경기")
				address2 = $('#gyeonggi').val();
			
			if(address1 == "서울")
				address2 = $('#seoul').val();
			
			if(address1 == "인천")
				address2 = $('#incheon').val();
			
			if(address1 == "강원")
				address2 = $('#gangwon').val();
			
			if(address1 == "대전")
				address2 = $('#daejeon').val();
			
			if(address1 == "세종")
				address2 = $('#sejong').val();
			
			if(address1 == "충남")
				address2 = $('#chungcheongnam').val();
			
			
			
			$.ajax({
			    url : "search_address.ma",
			    type : "GET",
			    dataType : "json",
			    data : {address1 : address1,
			    		address2 : address2},
			    success : function(jboard) {
			    	$('.addr_result1').html(jboard.JOB_SUBJECT + "<br><br>");
			    	$('.addr_result1').css("color","white").css("font-size","15px");
			    	$('.addr_result2').html(jboard.startday + " ~ " + jboard.endday 
			    			+ "<br>시급: " + jboard.JOB_VALUE+"원<br>" + "위치 : " + jboard.COM_ADDRESS);
			        $('.addr_result2').css("color","white").css("font-size","12px");
			        
			        $('#detail_sub1').html(jboard.JOB_SUBJECT);
			        $('#detail_content1').html(jboard.JOB_CONTENT);
			        $('#detail_value1').html(jboard.JOB_VALUE + "원");
			    },
			    error : function(jqXHR, textStatus, errorThrown) {
			        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
			    }
			});
			
	});
	
	// 다시 알바찾기로 돌아가기
	$(".search_back").click(function(){
		$(".search_result").css("visibility", "hidden"); 
		$(".search_all").show();
	});
	
});

