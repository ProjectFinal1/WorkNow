$(document).ready(function(){
	
	var result_address1;	//첫번째 주소 선택값
	var result_address2;	//두번째 주소 선택값
	
	var tob	//업종 선택값
	
	var startDate;	//시작 시간
	var endDate;	//끝 시간
	
	var str;
	
	var buttonclick = 0;
	
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
	$(".rb_search").click(function(){		
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
				    	}else{
				    		$("#tbody2").empty();
				    		$(".pagelist").empty();
				    		$("#searchTitle").fadeIn();
				    		
				    		var startrow = rboard[rboard.length-1].startrow;
				    		var endrow = rboard[rboard.length-1].endrow;
				    		
				    		var listcount = rboard[rboard.length-1].listcount;
				    		var nowpage = rboard[rboard.length-1].page;
				    		var maxpage = rboard[rboard.length-1].maxpage;
				    		var startpage = rboard[rboard.length-1].startpage;
				    		var endpage = rboard[rboard.length-1].endpage;
				    		
				    		if(nowpage<=1){ //1페이지 이하인 경우 %>
			    				$(".pagelist").append("[이전] "); 
			    			}else{  //2페이지 이상인 경우 - 한 페이지 적은 페이지로 이동 %>
			    				$(".pagelist").append("<a class='asd' href='#'>");
			    				$(".pagelist").append("[이전]</a> ");
			    			} 
			    				
			    			for(var a=startpage; a<= endpage; a++){
			    				if(a==nowpage){  // 현재 페이지 - 링크 걸지 않습니다.
			    					$(".pagelist").append("<span id='nowwordlist' class='asd'>" + a + "</span>");
			    				}else{ //현재 페이지 아닌 경우 링크 겁니다.
			    					$(".pagelist").append("<a href='#' id='1' class='asd'>" + a + "</a>");
			    				}
			    			}
			    			
			    			//현재 페이지가 가장 큰 페이지보다 크거나 같은 경우 [다음]링크에 걸지 않습니다
			    			if(nowpage >= maxpage){
			    				$(".pagelist").append("[다음]");
			    			}else{
			    				$(".pagelist").append("<a class='asd'>[다음]</a>");
			    			}	
				    		
				    		for(var n=startrow-1; n<=endrow-1; n++){
				    			str = "<table class='table twotable'>" +				    				
				    				"<tr>" +
							      "<td>" +
								      "<div class=''>" +
										"<div class=''>" +
											"<div class=''>" +
													"<div class=''>" +
														"<div class='ot-portfolio-item' >" +
															"<figure class='effect-bubba' id='resultall'>" +
																"<img src='resources/images/demo/shop-icon.png' alt='img02' class='img-responsive' />" +
																"<div class='contents_all'>" + 
																"<a class='subject_result''>" + rboard[n].MEMBER_NAME + "</a> <a class='contents_agesex'>(" + rboard[n].PER_SEX + "자 " + rboard[n].PER_AGE +  "세)</a><br>" +
																"</a>" +
																"<a class='contents_contents'>"+	rboard[n].PER_TALK + "<br>" +															
																"</a>" +
																"<a class='contents_address'>"+	rboard[n].RESUME_TYPE +"<br>" + 																	
																"</a>" +
																"<a class='contents_type'>"+	rboard[n].PER_ADDRESS +"<br>" + 																	
																"</a>" +
																"</div>" + 
																
																"<figcaption>" +
																	"<h2 class='popo1111'>자세히보기</h2>" +	
																	"<a href='#' data-toggle='modal' data-target='#Modal" + n +  "'>View more</a>" +
																"</figcaption>" +
															"</figure>" +
														"</div>" +
													"</div>" +
											"</div>" +
										"</div>" +
										"</div>";
							      "</td>" +
							     "</tr>" +
							     "</table>";
							      
							      	$('#detail_PER_TALK' + n).html(rboard[n].PER_TALK);
							      	$('#detail_MEMBER_NAME' + n).html(rboard[n].MEMBER_NAME + " (" + rboard[n].PER_SEX +"자 " + rboard[n].PER_AGE + "세 )<br>");
							      	$('#detail_MEMBER_PHONE' + n).html(rboard[n].MEMBER_PHONE);
							      	$('#detail_MEMBER_EMAIL' + n).html(rboard[n].MEMBER_EMAIL);
							      	$('#detail_RESUME_TYPE' + n).html(rboard[n].RESUME_TYPE);
							      	$('#detail_PER_ADDRESS' + n).html("근무가능 지역 : " + rboard[n].PER_ADDRESS);
							      	$('#detail_RESUME_ENDDAY' + n).html("근무 가능 날짜 : " + rboard[n].RESUME_STARTDAY + " ~ " + rboard[n].RESUME_ENDDAY);
							      	$('#detail_RESUME_CONTENT' + n).html(rboard[n].RESUME_CONTENT);
							      	
					    			$("#tbody2").append(str); 
					    			if(rboard[n+1].PER_TALK == null){
					    				break;
					    			}
					    	}
				    	}
			    },
			    error : function(jqXHR, textStatus, errorThrown) {
			        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
			    }
			});
			
	});
	
	$("#click_gogogo").click(function() {
		if(buttonclick == 0 ){
			if (confirm('신청하시겠습니까?')) {
                alert("신청되었습니다");
                $("#click_gogogo").text("신청취소");
    			buttonclick = 1;
           } else {
               
           }
			
		}else{
			if (confirm('취소하시겠습니까??')) {
                alert("취소되었습니다");
                $("#click_gogogo").text("신청하기");
    			buttonclick = 0;
           } else {
               
           }
		}
	});
	
});