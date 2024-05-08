<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SignUp</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
.out {
    max-width: 400px;
    margin: 0px auto;
    padding: 43px 0px 200px;
}
.title {
    margin-bottom: 34px;
    color: rgb(0, 0, 0);
    font-size: 44px;
    font-weight: 600;
    text-align: center;
}
.middle {
    display: flex;
    position: relative;
    overflow: hidden;
    height: calc(-100px + 100vh);
}
.iMiddle {
    position: absolute;
    top: 0px;
    left: 0px;
    width: 20%;
    height: 4px;
    background: rgb(0, 0, 0);
    transition: width 0.2s ease 0s;
    z-index: 1;
}
.d2 {
    position: relative;
    flex: 1 0 100%;
    padding-top: 18px;
    border-top: 4px solid rgb(244, 244, 244);
}
.agree {
    margin-bottom: 20px;
    font-size: 20px;
    font-weight: 500;
    line-height: 28px;
    white-space: pre-wrap;
}
.d3 {
    padding: 22px 0px;
    margin-bottom: 15px;
    border-bottom: 1px solid rgb(244, 244, 244);
}
.sp {
    position: relative;
    overflow: hidden;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
}
.ip {
    position: absolute;
    z-index: -1;
    top: 2px;
    left: 2px;
    overflow: hidden;
    width: 1px;
    height: 1px;
    appearance: none;
    visibility: hidden;
    background: transparent;
    border: 0px;
}
.lb {
    cursor: pointer;
    position: relative;
    z-index: 1;
    display: inline-block;
    padding-left: 29px;
    font-size: 14px;
    color: rgb(48, 48, 51);
    vertical-align: top;
}
.lb::before {
    content: "";
    position: absolute;
    top: 0px;
    left: 0px;
    width: 20px;
    height: 20px;
    text-align: center;
    background: rgb(255, 255, 255);
    border: 1px solid rgb(212, 212, 212);
    border-radius: 2px;
    transition: background-color 0.2s ease 0s;
}
.lb::after {
    content: "";
    position: absolute;
    top: 3px;
    left: 7px;
    transform: rotate(45deg);
    box-sizing: content-box;
    width: 5px;
    height: 10px;
    border-style: solid;
    border-color: rgb(212, 212, 212);
    border-image: initial;
    border-width: 0px 1px 1px 0px;
}
.ip:checked+.lb::before {
    font-weight: 600;
}
.ip:checked+.lb::before {
    background: #375fff;
    border-color: #375fff;
}
.ip:checked+.lb::after {
    border-color: #ffffff;
}
.u {
    margin-bottom: 34px;
}
.d4 {
    display: flex;
    -webkit-box-align: start;
    align-items: start;
}
.sp2 {
    position: relative;
    overflow: hidden;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
}
.ip2 {
    position: absolute;
    z-index: -1;
    top: 2px;
    left: 2px;
    overflow: hidden;
    width: 1px;
    height: 1px;
    appearance: none;
    visibility: hidden;
    background: transparent;
    border: 0px;
}
.lb2 {
    cursor: pointer;
    position: relative;
    z-index: 1;
    display: inline-block;
    padding-left: 29px;
    font-size: 14px;
    color: rgb(48, 48, 51);
    vertical-align: top;
}
.lbb {
    padding: 5px 0px 5px 26px;
    font-size: 14px;
    line-height: 26px;
}
.lbb::after {
    top: 50%;
    left: 6px;
    width: 6px;
    height: 11px;
    margin-top: -8px;
    content: '';
    position: absolute;
    transform: rotate(45deg);
    box-sizing: content-box;
    border: 1px solid #d4d4d4;
    border-width: 0 1px 1px 0;
}
.ip2:checked+.lbb::after {
    border-color: #375fff;
}
button {
    border: 0;
    background: transparent;
    cursor: pointer;
    outline: none;
}
.btn {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-width: 40px;
    min-height: 25px;
    margin-left: 1.4px;
    padding: 9px 6px;
    font-size: 14px;
    color: rgb(48, 48, 51);
    text-decoration: underline;
}
.btn2 {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-width: 40px;
    min-height: 25px;
    width: 100%;
    height: 52px;
    background: rgb(0, 0, 0);
    color: rgb(255, 255, 255);
    font-size: 14px;
    font-weight: 700;
}
.btn2:disabled {
    cursor: not-allowed;
    display: flex;
    align-items: center;
    justify-content: center;
    min-width: 40px;
    min-height: 25px;
    width: 100%;
    height: 52px;
    background: #c4c4c4;
    color: #ffffff;
    font-size: 14px;
    font-weight: 700;
}
}
</style>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
</head>
<body>
	<div class="out">
		<h2 class="title">간편가입</h2>
		<div offset="100px" class="middle">
			<i step="1" class="iMiddle"></i>
			<div class="d2">
				<h3 class="agree">29CM 서비스 이용약관에<br>동의해주세요.</h3>
				<div class="d3">
					<span class="sp"><input
						class="ip" name="all" type="checkbox"><label
						class="lb" for="all" title="all">모두 동의
							(선택 정보 포함)</label></span>
				</div>
				<ul class="u">
					<div class="d4">
						<span type="join" class="sp2"><input
							class="ip2" name="age" type="checkbox"><label
							class="lb2 lbb" for="age" title="age">[필수] 만
								14세 이상입니다</label></span>
					</div>
					<div class="d4">
						<span type="join" class="sp2"><input
							class="ip2" name="term" type="checkbox"><label
							class="lb2 lbb" for="term" title="term">[필수]
								이용약관 동의</label></span>
						<button class="btn" type="button">보기</button>
					</div>
					<div class="d4">
						<span type="join" class="sp2"><input
							class="ip2" name="requiredPrivacy"
							type="checkbox"><label class="lb2 lbb"
							for="requiredPrivacy" title="requiredPrivacy">[필수] 개인정보
								수집 및 이용 동의</label></span>
						<button class="btn" type="button">보기</button>
					</div>
					<div class="d4">
						<span type="join" class="sp2"><input
							class="ip2" name="marketingPrivacy"
							type="checkbox"><label class="lb2 lbb"
							for="marketingPrivacy" title="marketingPrivacy">[선택] 마케팅
								목적의 개인정보 수집 및 이용 동의</label></span>
						<button class="btn" type="button">보기</button>
					</div>
					<div class="d4">
						<span type="join" class="sp2"><input
							class="ip2" name="advertising" type="checkbox"><label
							class="lb2 lbb" for="advertising"
							title="advertising">[선택] 광고성 정보 수신 동의</label></span>
					</div>
				</ul>
				<button class="btn2" type="button"
					disabled="">동의하고 가입하기</button>
			</div>
		</div>
	</div>
</body>
<script>
  $(".lb").on("click",function(){
	 if($(".ip").prop("checked")){
		 $(".ip").prop("checked",false); 
		 $(".ip2").prop("checked",false);
		 $(".btn2").prop('disabled', true);
	 }else{
		 $(".ip").prop("checked",true);  
		 $(".ip2").prop("checked",true);
		 $(".btn2").prop('disabled', false);
	 }
  });
  $(".lb2").on("click",function(){
	   var names = $(this).attr("for");
	   alert(names);
	   
	   let bolean = $(`input[name='${names}']`).prop("checked");
	   alert(bolean);
	   
	   if($(`.ip2[name='${names}']`).prop("checked")){
			 $(`.ip2[name='${names}']`).prop("checked",false); 
	   }else{
		   $(`.ip2[name='${names}']`).prop("checked",true);  
	   } 
		 
	   if ($("input[name=age]").prop("checked")&&$("input[name=term]").prop("checked")&&$("input[name=requiredPrivacy]").prop("checked")) {
				$(".btn2").prop('disabled', false);
	   }else{
				$(".btn2").prop('disabled', true);
	   }
   }); 
  
  
	  
  
</script>
</html>