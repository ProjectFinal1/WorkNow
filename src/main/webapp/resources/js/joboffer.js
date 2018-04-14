$(document).ready(function(){
	
	var result_address1;	//첫번째 주소 선택값
	var result_address2;	//두번째 주소 선택값
	
	var tob	//업종 선택값
	
	var startDate;	//시작 시간
	var endDate;	//끝 시간
	
	
	//첫번째 주소 클릭
	$('.select_test').click(function(){
		result_address1 = $(this).text();
		if($(this).text() == "경기"){
			$(".sel_address2").hide();
			$("#gyeonggi").show();
			$("#gogo").css("background-color", "white");
			$("#gogo").css("color", "black");
			$('.select_test').attr("id","nono");
			$(this).attr("id","gogo");
		}		
		if($(this).text() == "서울"){
			$(".sel_address2").hide();
			$("#seoul").show();
			$("#gogo").css("background-color", "white");
			$("#gogo").css("color", "black");
			$('.select_test').attr("id","nono");
			$(this).attr("id","gogo");
		}		
		if($(this).text() == "인천"){
			$(".sel_address2").hide();
			$("#incheon").show();
			$("#gogo").css("background-color", "white");
			$("#gogo").css("color", "black");
			$('.select_test').attr("id","nono");
			$(this).attr("id","gogo");
		}		
		if($(this).text() == "강원"){
			$(".sel_address2").hide();
			$("#gangwon").show();
			$("#gogo").css("background-color", "white");
			$("#gogo").css("color", "black");
			$('.select_test').attr("id","nono");
			$(this).attr("id","gogo");
		}		
		if($(this).text() == "대전"){
			$(".sel_address2").hide();
			$("#daejeon").show();
			$("#gogo").css("background-color", "white");
			$("#gogo").css("color", "black");
			$('.select_test').attr("id","nono");
			$(this).attr("id","gogo");
		}		
		if($(this).text() == "세종"){
			$(".sel_address2").hide();
			$("#sejong").show();
			$("#gogo").css("background-color", "white");
			$("#gogo").css("color", "black");
			$('.select_test').attr("id","nono");
			$(this).attr("id","gogo");
		}		
		if($(this).text() == "충남"){
			$(".sel_address2").hide();
			$("#chungcheongnam").show();
			$("#gogo").css("background-color", "white");
			$("#gogo").css("color", "black");
			$('.select_test').attr("id","nono");
			$(this).attr("id","gogo");
		}		
		
		$(this).css("background-color", "#edb303");
		$(this).css("text-decoration", "none");
		$(this).css("color", "white");
	});
	
	$(".select_test").mouseover(function(){
		$(this).css("background-color", "#edb303");
		$(this).css("text-decoration", "none");
		$(this).css("color", "white");
	});

	$(".select_test").mouseleave(function(){
		if($(this).attr("id") == "gogo"){
			
		}else{
			$(this).css("background-color", "white");
			$(this).css("color", "black");
		}		
	});
	
	
	//두번째 주소 클릭
	$(".select_test2").click(function(){
		result_address2 = $(this).text(); 
		
		$("#gogo2").css("color", "black");
		$("#gogo2").attr("id","nono");
		
		
		$(this).css("color", "#edb303");
		$(this).css("text-decoration", "none");		
		
		
		$(this).attr("id","gogo2");
		
		$("#result_select1").text(result_address1 + " " + result_address2);
		$("#result_select1").fadeIn();
	});
	
	
	$(".select_test2").mouseover(function(){
		$(this).css("color", "#edb303");
		$(this).css("text-decoration", "none");
	});

	$(".select_test2").mouseleave(function(){
		if($(this).attr("id") == "gogo2"){
			
		}else{			
			$(this).css("color", "black");
		}
	});
	
	
	//성별 클릭
	$("input[name=sex]").change(function(){
		if($(this).val() == "무관")
			$("#result_select2").text("성별무관");
		else
			$("#result_select2").text($(this).val()+"자");
			$("#result_select2").fadeIn();
	})
	
	
	//연령 선택 시 두번째 select 바뀌는 기능
	$('#search_age').change(function(){
		$('#search_age2').empty();
		var age = $('#search_age').val().replace("세","");
		age = age.trim();
		age = parseInt(age);
		
		for(var n=age; n<71; n++)		
			$('#search_age2').append("<option>"+ (n+1) + " 세" +"</option>");
		
		if($("#search_age").val() == "무관"){
			$("#result_select3").text("연령 상관없음");
			$("#result_select3").fadeIn();
		}else{
			$("#result_select3").text($("#search_age").val() + " ~ " + $("#search_age2").val());
			$("#result_select3").fadeIn();
		}
		
		
	});
	
	$("#search_age2").change(function(){
		if($("#search_age").val() == "무관"){
			$("#result_select3").text("나이무관");
			$("#result_select3").fadeIn(); 
		}else{
			$("#result_select3").text($("#search_age").val() + " ~ " + $("#search_age2").val());
			$("#result_select3").fadeIn();
		}
		
	})
	
	
	//직종 클릭
	$(".select_tob").click(function(){
		tob = $(this).text();
		
		if(tob == "무관"){
			$("#result_select4").text("업ㆍ직종 무관");
			$("#result_select4").fadeIn();
		}else{
			$("#result_select4").text(tob);
			$("#result_select4").fadeIn();
		}
		
	});
	
	$(".select_tob").mouseover(function(){
		$(this).css("text-decoration", "none");
	});

	$(".select_tob").mouseleave(function(){
		$(this).css("text-decoration", "none");
	});
//	
//	$(".select_time").mouseover(function(){
//		$(this).css("text-decoration", "none");
//	});
	
	
	//시간
	$(".select_time").click(function(){		
		startDate = $("#job_start2").val().substring(5);
		endDate = $("#job_end2").val().substring(5);
		
		$("#result_select5").text(startDate + " ~ " + endDate)
		$("#result_select5").fadeIn();		
	});
	
	
	// 구인찾기 검색 클릭
	$("#rb_search").click(function(){		
			//성별
			var sex = $("input:radio[name=sex]:checked").val();
			
			//나이
			var search_age = $("#search_age").val();
			var search_age2 = $("#search_age2").val();
			
			//시작날, 끝나는날
			var job_start2 = $("#job_start2").val();
			job_start2 = job_start2.replace(/-/g, "");
			
			var job_end2 = $("#job_end2").val();
			job_end2 = job_end2.replace(/-/g, "");
			
			
			$.ajax({
			    url : "search_address.rb",
			    type : "GET",
			    dataType : "json",
			    data : {result_address1 : result_address1,
			    		result_address2 : result_address2,
			    		sex : sex,
			    		search_age : search_age,
			    		search_age2 : search_age2,
			    		tob : tob,
			    		job_start2 : job_start2,
			    		job_end2 : job_end2},
			    success : function(rboard) {
			    		if(rboard[0] == null){
				    		alert("결과값이 없습니다");
				    		$(".search_result").css("visibility", "hidden"); 
				    		$(".search_all").show();
				    	}else{
				    		$(".search_all").hide();
							$(".search_result").css("visibility", "visible"); 
				    		for(var n=0; n<rboard.length; n++){
					    		$('.subject_result' + n).html(rboard[n].JOB_SUBJECT + "<br><br>");
						    	$('.subject_result' + n).css("color","white").css("font-size","15px");
						    	$('.contents_result' + n).html(rboard[n].JOB_STARTDAY + " ~ " + rboard[n].JOB_ENDDAY
						    			+ "<br>시급: " + rboard[n].JOB_VALUE+"원<br>" + "위치 : " + rboard[n].COM_ADDRESS);
						        $('.contents_result' + n).css("color","white").css("font-size","12px");
						        
						        $('#detail_sub'+ n).html(rboard[n].JOB_SUBJECT);
						        $('#detail_content'+ n).html(rboard[n].JOB_CONTENT);
						        $('#detail_value'+ n).html(rboard[n].JOB_VALUE + "원");
					    	}	  
				    	}			    	
			    },
			    error : function(jqXHR, textStatus, errorThrown) {
			        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
			    }
			});
			
	});
	
});