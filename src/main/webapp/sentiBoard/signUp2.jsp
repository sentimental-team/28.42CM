<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Interior</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
</style>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
</head>
<body>
	
		<i step="2" class="iMiddle2"></i>
		<div class="d22">
			<h3 class="agree">로그인에 사용할<br>아이디를 입력해주세요.</h3>
			<div class="d32">
				<input class="ip1" placeholder="아이디 (이메일) 입력"
					autocapitalize="none" autocomplete="username" type="text"
					name="username" value="">
			</div>
			<button class="btn1" type="button"disabled="">다음</button>
		</div>
</body>
<script>
// 이메일 유효성 검사
function emailCheck(email){     
	const email_regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
	if(!email_regex.test(email)){ 
		return false; 
	}else{
		return true;
	}
}
$(".ip1").on("keyup",function validateEmail() {
	var email = $(".ip1").val();
	var result = '<p class="p2">이메일 형식이 올바르지 않습니다.</p>';

	$(".btn1").prop('disabled', true);
	$(".p2").remove();
	if (emailCheck(email)) {
		$(".btn1").prop('disabled', false);
	} else {
		$(".d32").append(result);
		
	}
});


//signUp3.jsp 파일로 화면
$(function () {
    $(".btn1").click(function () {
        $.ajax({
            type: 'POST',
            url: 'signUp3.jsp',
            dataType: 'html',
            error: function (error) {
                alert("Error!");
            },
            success: function (data) {
            	$('#content').children().remove();
                // Contents 영역 교체
                $("#content").html(data);
            }
        });
    });
})
</script>
</html>