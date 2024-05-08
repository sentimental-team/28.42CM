<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- <script src="/jspPro/resources/cdn-main/example.js"></script> -->
<style>
body {
	min-height: 190vh;
	max-width: 100vw;
}

#wrap {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	/* 위  display는  웹킷(Webkit) 엔진을 사용하는 브라우저에서 Flexbox 레이아웃을 지원하기 위한 속성입니다. 
        Flexbox를 사용하여 요소를 배치 및 정렬할 수 있게 해줍니다. 하지만 최신의 브라우저에서는 -webkit-box 대신에 
        display: flex;를 사용하는 것이 일반적입니다. */
	display: flex;
	min-width: 900px;
	position: relative;
}

.kids_title_left a.large-ctgr {
	color: black;
	text-decoration: none; /* 클릭 후에도 줄 안생기게 하는 css */
}

.kids_title_left a.large-ctgr:link, .kids_title_left a.large-ctgr:visited,
	.kids_title_left a.large-ctgr:hover, .kids_title_left a.large-ctgr:focus,
	.kids_title_left a.large-ctgr:active {
	color: black;
	text-decoration: none;
	/* 클릭 후 기존 색 유지 css */
}

#kids-left {
	width: 200px;
	padding-right: 40px;
	box-sizing: content-box;
	position: absolute;
	z-index: 2;
	top: 30px;
	left: 25px;
	background-color: white;
}

.kids_title_left {
	width: 200px;
	padding-bottom: 12px;
	border-bottom: 4px solid #000000;
	font-size: 23px;
	font-weight: 800;
	line-height: 1.25;
}

.left-menu {
	margin-top: 16px;
	list-style-type: none;
	padding: 0px;
}

.medium-ctgr {
	display: block;
	width: 100%;
	line-height: 2.13;
	font-size: 16px;
	color: rgb(93, 93, 93);
	text-align: left;
	outline: none;
	font-weight: 200;
	text-decoration: none;
}

#kids-right {
	flex: 1;
}

.kids_title_right {
	margin-bottom: 36px;
	font-size: 34px;
	font-weight: 600;
	line-height: 41px;
}

.kids_radio_box {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	flex-wrap: wrap;
	width: 100%;
	border: 1px solid rgb(212, 212, 212);
	background-color: rgb(255, 255, 255);
}

.aa {
	display: flex;
	flex-wrap: wrap;
	list-style: none;
}

.aa>span {
	min-height: 10px;
	line-height: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
	overflow: visible;
	height: 18px;
	margin-right: 10px; /* 간격 조절 */
	padding-right: 15px; /* 구분선 위치 조절 */
	border-right: 1px solid #ccc; /* 구분선 스타일 */
	font-size: 12px;
}

.aa>span:last-child {
	margin-right: 0;
	padding-right: 0;
	border-right: none;
}

input[type="radio"] {
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	width: 0;
	height: 0;
	position: absolute;
	opacity: 0;
}

label {
	cursor: pointer;
}

input[type="radio"]:checked+label {
	font-weight: bold; /* 체크된 상태일 때 텍스트의 굵기를 변경할 수 있다 */
}

.bb {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	height: 31px;
	padding: 0px;
	border-radius: 16.5px;
	border: solid 1px #e4e4e4;
	font-family: AppleSDGothicNeo;
	font-size: 13px;
	font-weight: 500;
	background-color: #ffffff;
	color: #5d5d5d;
	width: 60px
}

.photo_list {
	display: grid;
	grid-template-columns: repeat(20, 1fr);
	margin-top: 36px;
	counter-reset: list-number;
	grid-gap: 40px 20px;
	min-height: 800px;
	padding: 0px;
}

.css-1hjflnh {
	display: grid;
	grid-template-columns: repeat(6, 1fr);
	gap: 60px 20px;
	padding: 24px 0 60px;
}

.photo1 {
	position: relative;
	list-style: none;
	background-color: white;
	grid-column: auto/span 4;
}

.photo {
	position: relative;
	list-style: none;
	background-color: white;
	grid-column: auto/span 3;
}

.cc {
	position: relative;
	font-size: 12px;
	line-height: 1.4;
}

.dd {
	position: relative;
	overflow: hidden;
	padding-top: 100%;
	background-color: rgb(244, 244, 244);
}

.ff {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 100%;
}

@media ( max-width : 540px) { <
	style>.gg {
		padding: 16px 12px 0px;
	}
}

.gg {
	position: relative;
	padding-top: 14px;
}

.hh {
	overflow: hidden;
	display: block;
	margin-bottom: 4px;
	font-size: 11px;
	font-weight: 700;
	line-height: 1.4;
	color: rgb(0, 0, 0);
	text-overflow: ellipsis;
	white-space: nowrap;
}

.jj {
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	max-height: calc(4.2em);
	font-size: inherit;
	font-weight: 300;
	overflow-wrap: break-word;
	white-space: normal;
	-webkit-line-clamp: 3
}

.jj1 {
	margin-top: 12px;
	font-size: 14px;
	font-weight: 500;
	line-height: 1;
}

.jjj {
	line-height: 1;
	font-size: 11px;
	font-weight: normal;
	color: rgb(196, 196, 196);
	text-decoration: line-through;
}

.01 {
	margin-top: 4px;
}

.kkk {
	margin-right: 5px;
	color: rgb(255, 72, 0);
}

.qqq {
	margin-top: 12px;
	font-size: 14px;
	font-weight: 700;
	line-height: 1;
}

.eee {
	display: flex;
	margin-top: 6px;
	list-style: none;
	padding: 0px;
}

.eee>li {
	padding: 0px 6px;
	font-size: 10px;
	font-weight: 500;
	line-height: 18px;
	color: rgb(29, 29, 29);
	background-color: rgb(244, 244, 244);
	border-radius: 1px;
}

.ppp {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	height: 15px;
	margin-top: 16px;
	font-size: 11px;
	color: rgb(93, 93, 93);
}

.ppp>a {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	margin-left: 5px;
	color: inherit;
}

.styled-select {
	display: block;
	width: 100%;
	padding: 10px;
	font-size: 16px;
	line-height: 1.3;
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	background-color: #fff;
	background-image:
		url('data:image/svg+xml;utf8,<svg fill="#000000" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>');
	background-repeat: no-repeat;
	background-position: right 10px center;
	border: 1px solid #ccc;
	border-radius: 5px;
	outline: none;
	cursor: pointer;
}

.styled-select:hover {
	border-color: #999;
}

.styled-select:focus {
	border-color: #66afe9;
	box-shadow: 0 0 0 3px rgba(102, 175, 233, 0.6);
}

.heart {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	font-size: inherit;
	color: inherit;
}

.ppp>.heart+.review {
	margin-left: 27px;
}

.review {
	color: inherit;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	line-height: 1;
}

.review-point {
	margin-right: 2px;
	color: rgb(255, 72, 0);
}

.heart>svg+.jj {
	margin-left: 4px;
}

.j h5 {
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	padding-right: 26px;
	font-size: 12px;
	font-weight: 400;
	word-break: break-all;
	overflow-wrap: break-word;
	white-space: normal;
	visibility: visible;
	-webkit-line-clamp: 2;
}

.widget {
	-webkit-box-align: center;
	align-items: center;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: start;
	justify-content: flex-start;
	min-height: 42px;
	border: 1px solid gray;
}

.widget-gap {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: start;
	justify-content: flex-start;
	flex: 1 1 0%;
	-webkit-box-align: center;
	align-items: center;
	height: 100%;
	min-height: 42px;
	border-right: 1px solid gray;
}

button {
	border: 0;
	background: transparent;
	cursor: pointer;
	outline: none;
}
</style>
<style>
/* Styles specific to top.jsp */
.th {
	margin: 10px;
	padding-left: 20px;
	display: flex;
	align-items: center;
}

.th p {
	font-size: 30px;
	margin: 0;
	padding: 0;
}

.tm {
	background-color: #444;
	color: #fff;
	padding: 10px;
	margin-left: auto;
	margin-right: 20px;
}

.tm a {
	color: #fff;
	text-decoration: none;
	margin: 0 10px;
}

.tm a:hover {
	text-decoration: underline;
}

.ma, .mb {
	list-style-type: none;
	padding: 0;
	margin: 0;
	margin-top: 10px;
	display: flex;
	flex-wrap: wrap;
	margin-left: 20px;
}

.ma li, .mb li {
	margin-left: 10px;
	white-space: nowrap;
}

.ma li a, .mb li a {
	font-size: 20px;
	color: black;
}

.ma li a {
	font-size: 30px;
	text-decoration: none;
}

.ma li a h3 {
	margin-right: 10px;
}

.mb li a {
	text-decoration: none;
}

.mb li a:hover {
	text-decoration: underline;
}

.ma li a:hover {
	text-decoration: underline;
}

.css-iwxnhl {
    position: relative;
    display: flex;
    padding: 30px 0px 155px;
    border-bottom: 1px solid rgb(212, 212, 212);
}

.css-ln2n0u {
    position: absolute;
    top: 30px;
    bottom: 0px;
    left: 33%;
    width: 1px;
    margin: 0px;
    background: rgb(212, 212, 212);
    border: 0px;
}

.css-1kak7cd {
    position: absolute;
    top: 30px;
    bottom: 0px;
    left: 66%;
    width: 1px;
    margin: 0px;
    background: rgb(212, 212, 212);
    border: 0px;
}

.css-1kc1i5k {
    box-sizing: border-box;
    width: 100%;
    margin-top: -120px;
}

.css-veh7ha {
    padding: 0px 8%;
}

.css-1jypvcz {
    position: relative;
    display: block;
    margin-top: 120px;
    text-align: left;
}

.css-1c39dt4 {
    position: absolute;
    top: -30px;
    left: -5%;
    width: 200px;
    height: 4px;
    background: rgb(0, 0, 0);
}

.css-u58y5m {
    position: relative;
    display: block;
    width: 100%;
    padding-bottom: 100%;
    background-color: rgb(212, 212, 212);
}

.css-mqd1xo {
    position: absolute;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: center center;
}

.css-10mzaug {
    padding-right: 30px;
    color: rgb(0, 0, 0);
    word-break: keep-all;
}

.css-1se6r14 {
    margin-top: 14px;
    font-size: 22px;
    font-weight: 600;
    line-height: 30px;
}

.css-jg1sml {
    margin-top: 10px;
    font-size: 15px;
    line-height: 24px;
}

.css-15xwjg0 {
    display: flex;
    margin-top: 20px;
    border-top: 1px solid rgb(212, 212, 212);
    box-sizing: border-box;
}

.css-mn2zdd {
    display: flex;
    flex: 1 1 0%;
    padding: 15px 0px 10px;
}

.css-nt3lq3 {
    width: 52px;
    height: 52px;
}

img {
    border: 0;
    vertical-align: top;
}

.css-161seae {
    margin-left: 18px;
    font-size: 11px;
    line-height: 16px;
    color: rgb(0, 0, 0);
    text-align: left;
    padding-right: 10px;
}

.css-16b7yk2 {
    display: block;
    font-weight: 800;
}

.css-pu7sky {
    display: block;
    margin-top: 6px;
    font-size: 11px;
    line-height: 16px;
    text-align: left;
    color: rgb(255, 72, 0);
}

.css-16j3p2r {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    flex-wrap: nowrap;
    width: 65px;
    border-left: 1px solid rgb(212, 212, 212);
}

.css-1u7zeg9 {
    display: flex;
    flex-direction: column;
    padding-top: 6px;
    -webkit-box-align: center;
    align-items: center;
}

body, input, select, textarea, button, a {
    -webkit-text-size-adjust: none;
    font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic, '나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}

.css-1afbq5h {
    display: block;
    margin: 5px 0px 0px;
    text-align: center;
    font-size: 11px;
    font-family: campton;
    color: rgb(93, 93, 93);
}
</style>
</head>
<body>
	<header>
		<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
	</header>
	<div id="wrap">
		<div id="kids-left">
			<button></button>
			<div style="padding: 10px 20px;">
				<!-- <button></button>  화면이 작아졌을 때 #kids-left메뉴 나타나게 하는거 -->
				<h2 class="kids_title_left">
					<a class="large-ctgr"
						href="http://localhost/jspPro/sentiBoard/view/kidsBoardView.jsp">유아,아동</a>
				</h2>
				<!-- <ul class="left_bar_meue" > -->
				<ul class="left-menu">
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_all.jsp">ALL</a></li>
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_new.jsp">NEW</a></li>
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_cloth.jsp">의류</a></li>
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_shoesNbag.jsp">신발,가방</a></li>
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_product.jsp">아동,홈</a></li>
				</ul>
				<!-- </ul> -->
			</div>
		</div>
		<div class="img">
			<img alt=""
				src="https://img.29cm.co.kr/next-product/2024/02/13/ff89213143a648d89153a99a6feb87c6_20240213104043.jpg?width=2000">
		</div>
	</div>
	<div class="css-4e43p e8dmgjc1">
		<div class="css-zl0y5r e16y5wrz0"></div>
	</div>
	<div class="css-iwxnhl euxw2yv1">
		<hr class="css-ln2n0u euxw2yv3">
		<hr class="css-1kak7cd euxw2yv3">
		<ul class="css-1kc1i5k euxw2yv2">
			<div role="grid" class="css-kdcvh2" tabindex="0"
				style="position: relative; width: 100%; max-width: 100%; height: 822px; max-height: 822px;">
				<div role="gridcell"
					style="top: 30px; left: 10px; width: 362px; writing-mode: horizontal-tb; position: absolute;">
					<div class="css-veh7ha elhzesg0">
						<a class="css-1jypvcz e1qv5i7p8"
							href=""><!-- 링크 작업 필요 --><span
							class="css-1c39dt4 e1qv5i7p0"></span>
						<div class="css-u58y5m e1qv5i7p1">
								<img
									src="https://img.29cm.co.kr/cms/202404/11ef05f9bc97b865b9bb61763f2cb69c.jpeg?width=500"
									class="css-mqd1xo e1qv5i7p3">
							</div>
							<div class="css-10mzaug e1qv5i7p4">
								<h1 class="css-1se6r14 e1qv5i7p6">함께 입는 기쁨 마리떼 앙팡</h1>
								<p class="css-jg1sml e1qv5i7p7">5월 가정의 달을 맞이하여 마리떼 어덜트 라인과
									함께 패밀리 룩을 연출할 수 있는 마리떼 앙팡 라인의 단독 할인 소식을 만나보세요.</p>
							</div></a>
						<div class="css-15xwjg0 e1b74qft0">
							<a class="css-mn2zdd e1b74qft1"
								href=""><!-- 링크 작업 필요 --><img
								src="https://img.29cm.co.kr/next-product/2024/04/23/9613fe48e8fa4d2fa8f4110a3f67bda8_20240423144221.jpg?width=150"
								class="css-nt3lq3 e1b74qft2">
							<div class="css-161seae e1b74qft3">
									<span class="css-16b7yk2 e1b74qft4">마리떼 앙팡</span><span>ENFANT
										W RAGLAN REGULAR LOGO SEMI CROP TEE navy</span><span
										class="css-pu7sky e1b74qft5">15% 33,150<span
										class="css-0 e1b74qft6">won</span></span>
								</div></a>
							<div class="css-16j3p2r e1b74qft7">
								<button class="css-1u7zeg9 e1b74qft8">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="14"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="0.7"></path></svg>
									<span class="css-1afbq5h e1b74qft9">34</span>
								</button>
							</div>
						</div>
						<div class="css-15xwjg0 e1b74qft0">
							<a class="css-mn2zdd e1b74qft1"
								href=""><!-- 링크 작업 필요 --><img
								src="https://img.29cm.co.kr/next-product/2024/04/23/b86ba261c46b4bb5aafe9eb3542f8fda_20240423144309.jpg?width=150"
								class="css-nt3lq3 e1b74qft2">
							<div class="css-161seae e1b74qft3">
									<span class="css-16b7yk2 e1b74qft4">마리떼 앙팡</span><span>ENFANT
										W CLASSIC LOGO CROP TEE navy</span><span class="css-pu7sky e1b74qft5">10%
										35,100<span class="css-0 e1b74qft6">won</span>
									</span>
								</div></a>
							<div class="css-16j3p2r e1b74qft7">
								<button class="css-1u7zeg9 e1b74qft8">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="14"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="0.7"></path></svg>
									<span class="css-1afbq5h e1b74qft9">12</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div></div>
		</ul>
	</div>
	<br><br>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
	<script>
</script>
</body>
</html>
