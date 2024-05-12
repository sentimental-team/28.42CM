<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	padding: 40px 50px 90px
}

.kids_title_left a.large-ctgr {
    color: black; 
    text-decoration: none; /* 클릭 후에도 줄 안생기게 하는 css */
}

.kids_title_left a.large-ctgr:link,
.kids_title_left a.large-ctgr:visited,
.kids_title_left a.large-ctgr:hover,
.kids_title_left a.large-ctgr:focus,
.kids_title_left a.large-ctgr:active {
    color: black;
    text-decoration: none;
    /* 클릭 후 기존 색 유지 css */
}

#kids-left {
	width: 200px;
	padding-right: 80px;
	box-sizing: content-box;
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
	cursor: pointer;
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

.button:focus,
.button:active {
    background-color: var(--dark-black);
}

.button:hover {
    background-color: darken(var(--button-color), 10%);
}
.smallCategory {
	-webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-flow: wrap;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.smallCategory_btn {
	position: relative;
    padding: 11px 20px;
}

.s_span {
    display: inline-block;
    font-size: var(--ruler-semantic-typography-text-l-bold-font-size);
    color: #737272;
}

.s_span::after {
    content: "";
    position: absolute;
    right: 0px;
    width: 1px;
    height: 20px;
    background: var(--ruler-semantic-color-border-line);
    color: #e4e4e4;
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

body, input, select, textarea, button, a {
    -webkit-text-size-adjust: none;
    font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic, '나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}

.bold {
    font-weight: bold; /* 글자 굵게 */
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
			<div>
				<!-- <button></button>  화면이 작아졌을 때 #kids-left메뉴 나타나게 하는거 -->
				<h2 class="kids_title_left"><a class="large-ctgr" href="http://localhost/jspPro/sentiBoard/view/kidsBoardView.jsp">유아,아동</a></h2>
				<!-- <ul class="left_bar_meue" > -->
				<ul class="left-menu">
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/kids_all.jsp">ALL</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/kids_new.jsp">NEW</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/kids_cloth.jsp">의류</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/kids_shoesNbag.jsp">신발,가방</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/kids_product.jsp">아동,홈</a></li>
				</ul>
				<!-- </ul> -->
			</div>
		</div>

		<div id="kids-right">
			<!-- <h2 class="kids_title_right" >유아,아동</h2> -->
			<div class="widget">
				<div class="widget-gap">
				<div class="smallCategory">
					<button class="smallCategory_btn">
						<span class="s_span" color="primary">전체</span>
					</button>
					<button class="smallCategory_btn">
						<span class="s_span" color="secondary">운동화</span>
					</button>
					<button class="smallCategory_btn">
						<span class="s_span" color="secondary">샌들</span>
					</button>
					<button class="smallCategory_btn">
						<span class="s_span" color="secondary">장화</span>
					</button>
					<button class="smallCategory_btn">
						<span class="s_span" color="secondary">가방</span>
					</button>
					<button class="smallCategory_btn">
						<span class="s_span" color="secondary">잡화</span>
					</button>
				</div></div>
				<div class="controlgroup">
					<select id="sort-type" class="styled-select">
						<option>추천순</option>
						<option>신상품순</option>
						<option>리뷰많은순</option>
						<option>낮은가격순</option>
						<option>높은가격순</option>
						<option>높은할인순</option>
						<option>좋아요많은순</option>
						<option>판매순</option>
					</select>
				</div>

				<br>
			</div>

			<ul class="photo_list">
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2023/03/27/a766d30c08204769afee93ee452d9869_20230327150230.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">크록스</a> <a
								title="크록스공식 지비츠 78종 택1">
								<div class="j">
									<h5 class="jj">크록스공식 지비츠 78종 택1</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk">6%</span> <strong class="qqq">4,700</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">759</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.9</div>
									<div class="review-count">(130)</div>
								</a>
							</div>
						</div>
					</div>
				</li>

				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2024/01/08/01866c39c5b04fe1a20f756cd5c91662_20240108110204.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">크록스</a> <a
								title="크록스공식 키즈 HANDLE IT RAIN BOOT KIDS 5종 택1 (24SKBT12803)">
								<div class="j">
									<h5 class="jj">크록스공식 키즈 HANDLE IT RAIN BOOT KIDS 5종 택1 (24SKBT12803)</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk">3%</span> <strong class="qqq">53,200</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">87</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.8</div>
									<div class="review-count">(6)</div>
								</a>
							</div>
						</div>
					</div>
				</li>

				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2021/05/14/93b2884ca9ac47e7b52084df018a7898_20210514134805.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">빅토리아슈즈</a> <a title="빅토리아슈즈 키즈 글리터 발레리나 (1046100-PLATA)">
								<div class="j">
									<h5 class="jj">빅토리아슈즈 키즈 글리터 발레리나 (1046100-PLATA)</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk">15%</span> <strong class="qqq">58,650</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">294</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.5</div>
									<div class="review-count">(13)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2022/05/20/70a592fa8f3c4802bc42f2c7b9e58a90_20220520141132.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">빅토리아슈즈</a> <a
								title="[빅토리아슈즈x키티버니포니] 아동 벨크로 메르세데스 로나 틴타다 유니벌스(1366925-MULTICOLOR)">
								<div class="j">
									<h5 class="jj">[빅토리아슈즈x키티버니포니] 아동 벨크로 메르세데스 로나 틴타다 유니벌스(1366925-MULTICOLOR)</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk"></span> <strong class="qqq">69,000</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">1,278</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.7</div>
									<div class="review-count">(20)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2023/05/17/3c1fd50ab8144b2a86f8dc3cfd77f75d_20230517190837.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">호텔세리토스</a> <a title="호텔세리토스 키즈 Kids Candy Ball Cap">
								<div class="j">
									<h5 class="jj">호텔세리토스 키즈 Kids Candy Ball Cap</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk"></span> <strong class="qqq">32,000</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">116</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.4</div>
									<div class="review-count">(7)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/item/202308/11ee3728c3a9f979bdfabb5493f9d316.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">리복</a> <a title="클럽 C 인펀트 - 크림 / GY7474">
								<div class="j">
									<h5 class="jj">클럽 C 인펀트 - 크림 / GY7474</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk"></span> <strong class="qqq">59,000</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">176</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.9</div>
									<div class="review-count">(14)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2023/12/13/827743eab64b40feb0ccf68df137a12e_20231213091404.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">레인보우 샌들</a> <a title="레인보우샌들 키즈 SIERRA BROWN">
								<div class="j">
									<h5 class="jj">레인보우샌들 키즈 SIERRA BROWN</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk">25%</span> <strong class="qqq">43,510</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">71</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">5</div>
									<div class="review-count">(2)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2020/10/19/670e8627dda8406687137f8140a559e9_20201019131933.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">앙레베</a> <a title="앙레베 기저귀 가방 뉴 이너백 XL 사이즈 고야드이너백">
								<div class="j">
									<h5 class="jj">앙레베 기저귀 가방 뉴 이너백 XL 사이즈 고야드이너백</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk"></span> <strong class="qqq">26,000</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">330</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.9</div>
									<div class="review-count">(22)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2022/07/05/2b8e9b76a57548ada5745f06074e8860_20220705100741.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">키티버니포니</a> <a
								title="이지 미니 백팩">
								<div class="j">
									<h5 class="jj">이지 미니 백팩</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk"></span> <strong class="qqq">80,000</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">448</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">5</div>
									<div class="review-count">(3)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/next-product/2019/09/06/aecf32597bfd43f28b4052b464a9b796_20190906130800.jpg?width=600"
									class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">이지피지</a> <a
								title="이지피지 키즈 선글라스 밀크 (1-5세)">
								<div class="j">
									<h5 class="jj">이지피지 키즈 선글라스 밀크 (1-5세)</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk"></span> <strong class="qqq">65,000</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">106</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">5</div>
									<div class="review-count">(6)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
<br>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
<script>
function reinitializeJavaScript() {
    // 재초기화 로직, 예: 이벤트 리스너 재설정, 플러그인 재활성화 등
    console.log('Components reinitialized.');
}

$(document).ready(function() {
    $('.medium-ctgr').click(function(e) {
        e.preventDefault();  // 기본 동작 방지
        var urlToRequest = $(this).data('url');  // 요청 URL을 data-url 속성에서 가져옵니다.

        $.ajax({
            type: "POST",
            url: urlToRequest,
            data: {
                // 필요하다면 서버에 보낼 데이터
            },
            success: function(response) {
                // .photo_list 내용 업데이트
                var updatedPhotoList = $(response).find('.photo_list').html();
                $('.photo_list').html(updatedPhotoList);

                // .widget 내용 업데이트
                var updatedWidget = $(response).find('.widget').html();
                $('.widget').html(updatedWidget);
            },
            error: function(xhr, status, error) {
                alert('Error loading new content: ' + error);
            }
        });
    });
});
</script>
<script>
$(document).ready(function() {
    $('.smallCategory_btn').click(function() {
        // 모든 버튼에서 'bold' 클래스를 제거합니다.
        $('.smallCategory_btn').removeClass('bold');

        // 클릭된 버튼에만 'bold' 클래스를 추가합니다.
        $(this).addClass('bold');
    });
});
</script>
</body>
</html>