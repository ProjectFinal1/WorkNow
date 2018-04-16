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
	
	//네이버 지도 api입니다.
	var map = new naver.maps.Map('map');
    var myaddress = $(".postcodify_address").val();// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
    if(myaddress==""||myaddress==null)
    	myaddress="서울특별시 강남구 테헤란로 14길 6";
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
	
	
});