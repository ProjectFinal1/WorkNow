
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
					} else {
						$(this)[0].select();
						$(this)[0].blur();
						var imgSrc = document.selection.createRange().text;
						parent
								.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
						var img = $(this).siblings('.upload-display').find('img');
						img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""
								+ imgSrc + "\")";}
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

});