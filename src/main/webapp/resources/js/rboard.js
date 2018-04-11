$(document).ready(function(){
	
	$('.search').click(function(){
		$('#search_result').show();
	});
	
	// 주소 선택 했을 시 두번째 주소 선택칸 내용 변경 메소드
	$('#rb_address1').change(function(){
		if($(this).val() == "경기"){
			$(".rb_address2").hide();
			$("#gyeonggi").show();
		}		
		if($(this).val() == "서울"){
			$(".rb_address2").hide();
			$("#seoul").show();
		}		
		if($(this).val() == "인천"){
			$(".rb_address2").hide();
			$("#incheon").show();
		}		
		if($(this).val() == "강원"){
			$(".rb_address2").hide();
			$("#gangwon").show();
		}		
		if($(this).val() == "대전"){
			$(".rb_address2").hide();
			$("#daejeon").show();
		}		
		if($(this).val() == "세종"){
			$(".rb_address2").hide();
			$("#sejong").show();
		}		
		if($(this).val() == "충남"){
			$(".rb_address2").hide();
			$("#chungcheongnam").show();
		}		
	});
	
	// 주소로 구직찾기 클릭
	$("#search_address").click(function(){		
			var address1 = $('#rb_address1').val();
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
			    		if(jboard[0] == null){
				    		alert("결과값이 없습니다");
				    		$(".search_result").css("visibility", "hidden"); 
				    		$(".search_all").show();
				    	}else{
				    		$(".search_all").hide();
							$(".search_result").css("visibility", "visible"); 
				    		for(var n=0; n<jboard.length; n++){
					    		$('.subject_result' + n).html(jboard[n].JOB_SUBJECT + "<br><br>");
						    	$('.subject_result' + n).css("color","white").css("font-size","15px");
						    	$('.contents_result' + n).html(jboard[n].JOB_STARTDAY + " ~ " + jboard[n].JOB_ENDDAY
						    			+ "<br>시급: " + jboard[n].JOB_VALUE+"원<br>" + "위치 : " + jboard[n].COM_ADDRESS);
						        $('.contents_result' + n).css("color","white").css("font-size","12px");
						        
						        $('#detail_sub'+ n).html(jboard[n].JOB_SUBJECT);
						        $('#detail_content'+ n).html(jboard[n].JOB_CONTENT);
						        $('#detail_value'+ n).html(jboard[n].JOB_VALUE + "원");
					    	}	  
				    	}			    	
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
		for(var n=0; n<10; n++){
    		$('.subject_result' + n).html("검색결과없음");
	    	$('.contents_result' + n).html("");
	        
	        $('#detail_sub'+ n).html("");
	        $('#detail_content'+ n).html("");
	        $('#detail_value'+ n).html("");
    	}			
	});
	
});

