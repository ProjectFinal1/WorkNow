$(document).ready(function(){
	
	var result_address1;	//첫번째 주소 선택값
	var result_address2;	//두번째 주소 선택값
	
	var tob	//업종 선택값
	
	var startDate;	//시작 시간
	var endDate;	//끝 시간
	
	$('.search').click(function(){
		$('#search_result').show();
	});
	
	var $menuEle = $('dt'); // 탭메뉴를 변수에 지정
	$menuEle.click(function() { // 탭메뉴 클릭 이벤트
	    $('dd').addClass('hidden');
	    $(this).next().removeClass('hidden');
	})
	
	
	//첫번째 주소 클릭
	$('.select_test').click(function(){
		result_address1 = $(this).text();
		if($(this).text() == "경기"){
			$(".sel_address2").hide();
			$("#gyeonggi").show();
		}		
		if($(this).text() == "서울"){
			$(".sel_address2").hide();
			$("#seoul").show();
		}		
		if($(this).text() == "인천"){
			$(".sel_address2").hide();
			$("#incheon").show();
		}		
		if($(this).text() == "강원"){
			$(".sel_address2").hide();
			$("#gangwon").show();
		}		
		if($(this).text() == "대전"){
			$(".sel_address2").hide();
			$("#daejeon").show();
		}		
		if($(this).text() == "세종"){
			$(".sel_address2").hide();
			$("#sejong").show();
		}		
		if($(this).text() == "충남"){
			$(".sel_address2").hide();
			$("#chungcheongnam").show();
		}		
	});
	
	//두번째 주소 클릭
	$(".select_test2").click(function(){
		result_address2 = $(this).text();
		$("#result_select1").text(result_address1 + " " + result_address2);
		
	});
	
	//직종 클릭
	$(".search_tob").click(function(){
		tob = $(this).attr('id');
		if(tob == "search_all")
			tob = "무관";
		if(tob == "search_it")
			tob = "IT관련";
		if(tob == "search_work")
			tob = "단순노무";
		if(tob == "search_etc")        
			tob = "기타부업";
		if(tob == "search_Acting")
			tob = "대행";
		if(tob == "search_restaurant")    
			tob = "음식점,카페";
		if(tob == "search_delivery")
			tob = "배달";			
		if(tob == "search_service")   
			tob = "서비스";
		
		$("#result_select2").text(tob);
	});
	
	//시간
	$("#search_time1").click(function(){
		//시작시간
		startDate = $("#job_start").val();
		startDate = startDate.replace(/-/g, "");
		
		//끝 시간
		endDate = $("#job_end").val();
		endDate = endDate.replace(/-/g, "");
		
		$("#result_select3").text(startDate + "  " + endDate);
		
	});
	
	
	//구직 검색하기
	$('#search_time').click(function(){
		//시작시간
		startDate = $("#job_start").val();
		startDate = startDate.replace(/-/g, "");
		
		//끝 시간
		endDate = $("#job_end").val();
		endDate = endDate.replace(/-/g, "");
		
		$.ajax({
		    url : "search_job.ma",
		    type : "GET",
		    dataType : "json",
		    data : {result_address1 : result_address1,
		    		result_address2 : result_address2,
		    		tob : tob,
		    		startDate : startDate,
		    		endDate : endDate},
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
	
	
	
	
	
	
	$(".select_test").mouseover(function(){
		$(this).css("background-color", "#edb303");
		$(this).css("text-decoration", "none");
		$(this).css("color", "white");
	});

	$(".select_test").mouseleave(function(){
		$(this).css("background-color", "white");
		$(this).css("color", "black");
	});
	
	$(".select_test2").mouseover(function(){
		$(this).css("color", "#edb303");
		$(this).css("text-decoration", "none");
	});

	$(".select_test2").mouseleave(function(){
		$(this).css("color", "black");
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

