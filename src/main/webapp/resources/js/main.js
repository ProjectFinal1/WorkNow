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
	$('#sel_adress1').change(function(){
		if($(this).val() == "gyeonggi"){
			$(".sel_adress2").hide();
			$("#gyeonggi").show();
		}
		
		if($(this).val() == "seoul"){
			$(".sel_adress2").hide();
			$("#seoul").show();
		}
		
		if($(this).val() == "incheon"){
			$(".sel_adress2").hide();
			$("#incheon").show();
		}
		
		if($(this).val() == "gangwon"){
			$(".sel_adress2").hide();
			$("#gangwon").show();
		}
		
		if($(this).val() == "daejeon"){
			$(".sel_adress2").hide();
			$("#daejeon").show();
		}
		
		if($(this).val() == "sejong"){
			$(".sel_adress2").hide();
			$("#sejong").show();
		}
		
		if($(this).val() == "chungcheongnam"){
			$(".sel_adress2").hide();
			$("#chungcheongnam").show();
		}		
	});
	
	// 주소로 알바찾기 돋보기 클릭
	$(".search_adress").click(function(){
			$(".search_all").hide();
			$(".search_result").css("visibility", "visible"); 
			
			//데이터를 서버에 전송하여 결과를 문자열로 받는 방식
			//$.get()				
			$.get("test2.do",{
				userid : "user01",
				passwd : "pass01"					
			}, function(data){
				$('#p2').text(data);
			});	
		
			//$.ajax()		
			$.ajax({
				url : "test2.do",
				data : {
					userid : "user01",
					passwd : "pass01",
				},
				type : "GET",
				success : function(data){
					var str = $('#p2').text();
					$('#p2').text(str + ", " + data);
				}
			});		
			
			
	});
	
	// 다시 알바찾기로 돌아가기
	$(".search_back").click(function(){
		$(".search_result").css("visibility", "hidden"); 
		$(".search_all").show();
	});
	
});

