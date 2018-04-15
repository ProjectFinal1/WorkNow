$(document).ready(function(){
	
	var result_address1;	//첫번째 주소 선택값
	var result_address2;	//두번째 주소 선택값
	
	var tob	//업종 선택값
	
	var startDate;	//시작 시간
	var endDate;	//끝 시간
	
	var select123 = 0;
	
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
	
	
	$("#gggo").click(function(){
		$(".lala1").fadeIn();
		$(".pagelist").fadeIn();
		
	});
	
	
	$("#select00").click(function() {
		if(select123 == 0 ){
			if (confirm('신청하시겠습니까?')) {
                alert("신청되었습니다");
                $("#select00").text("신청취소");
                select123 = 1;
           } else {
               
           }
			
		}else{
			if (confirm('취소하시겠습니까??')) {
                alert("취소되었습니다");
                $("#select00").text("신청하기");
                select123 = 0;
           } else {
               
           }
		}
	});
	
	
	
	
});