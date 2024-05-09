<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost/jspPro/images/satomi.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<style>
/* 기본스타일 */
*, *::before, *::after {
	box-sizing: border-box;
}

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table,
	caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, menu, nav, output,
	ruby, section, summary, time, mark, audio, video, input, textarea,
	button, select {
	margin: 0;
	padding: 0;
}

ol, ul, li {
	list-style: none;
}

body, input, select, textarea, button, a {
	-webkit-text-size-adjust: none;
	font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic,
		'나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}

ul {
	list-style-type: disc;
}
</style>
<style>
span.material-symbols-outlined {
	vertical-align: text-bottom;
}

body {
	width: 100%;
}

#wrap {
	position: relative;
	margin-top: 59px;
	`
}

#first {
	/* background-color: yellow; */
	
}

@media ( min-width : 541px) {
	#second {
		max-width: 1920px;
		margin: 0px auto;
		padding: 0px 50px 0px 300px;
	}
}

#third {
	position: relative;
	overflow: hidden;
}

#fourth {
	box-sizing: border-box;
	min-width: 1000px;
	max-width: 1920px;
	margin: 120px auto 10px;
	padding: 0px 220px;
}

@media ( max-width : 1340px) {
	#fourth {
		padding: 0px 50px;
	}
}

.aa {
	height: 680px;
	width: 100%;
	position: relative;
}

.aa1 {
	height: 100%;
}

.aa1_1 {
	bottom: 30px;
	position: absolute;
	text-align: center;
	transition: all 0.3s ease 0s;
	transform: translateZ(0px);
	z-index: 10;
	height: 10px;
	left: 0px;
	right: 0px;
}

.aa3 {
	margin: 0px 5px;
	border-radius: 50%;
	width: 16px;
	height: 16px;
	background: rgba(255, 255, 255, 0.3);
	vertical-align: top;
	display: inline-block;
}

.bb {
	width: 250px;
	margin: 25px 0px 0px;
	padding: 25px 25px 15px;
	background: rgb(255, 255, 255);
	box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 30px 0px;
}

@media ( min-width : 541px) {
	.bb {
		position: absolute;
		z-index: 2;
		top: 0px;
		left: 25px;
	}
}

.bb1 {
	position: relative;
	display: block;
	box-sizing: border-box;
	width: 100%;
	margin: -6px 0px 8px;
	padding: 0px 30px 12px 0px;
	font-size: 23px;
	font-weight: 800;
	line-height: 1.25;
	color: rgb(0, 0, 0);
	text-align: left;
	text-transform: uppercase;
	border-bottom: 4px solid rgb(0, 0, 0);
	outline: none;
}

.bb2 {
	position: relative;
	display: block;
	box-sizing: border-box;
	width: 100%;
	padding: 3px 30px 3px 0px;
	font-size: 16px;
	font-weight: 200;
	line-height: 28px;
	color: rgb(93, 93, 93);
	text-align: left;
	border: 0px;
	outline: none;
}

.aa2 {
	transition-duration: 0ms;
	transform: translate3d(-5148px, 0px, 0px);
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box;
	overflow: hidden;
}

.aa2_1 {
	width: 858px;
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform;
}

.aa2_1_1 {
	position: relative;
	background-color: rgb(244, 244, 244);
	width: 100%;
	height: 100%;
}

.aa2_1_1_1 {
	overflow: hidden;
	text-align: left;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	position: absolute;
	top: 0px;
}

@media ( min-width : 541px) {
	.aa2_1_1_1 {
		height: 680px;
		margin: 0px 100px 0px 380px;
	}
}

.aa2_1_1_1_1 {
	width: 440px;
	margin-left: 60px;
}

.aa2_1_1_1_1_1 {
	white-space: pre-wrap;
	font-size: 48px;
	font-weight: 500;
	line-height: 58px;
}

.aa2_1_1_1_1_2 {
	margin-top: 19px;
	font-size: 28px;
	line-height: 35px;
	white-space: pre-wrap;
}

.aaa {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	object-fit: cover;
	object-position: 50% center;
	border: 0;
	vertical-align: top;
}

.aaa1 {
	box-sizing: border-box;
}

.aa3 {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	padding: 30px;
	z-index: 10;
	cursor: pointer;
	left: 350px;
	right: auto;
}

.aa3_1 {
	width: 30px;
	height: 60px;
	transform: rotate(180deg);
}

.aa3_1_1 {
	stroke: rgb(48, 48, 51);
	stroke-width: 3;
}

.aa4 {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	padding: 30px;
	z-index: 10;
	cursor: pointer;
	right: 0px;
	left: auto;
}

.aa4_1 {
	width: 30px;
	height: 60px;
}

.aa4_1_1 {
	stroke: rgb(48, 48, 51);
	stroke-width: 3;
}

@media ( min-width : 541px) {
	.cc {
		padding: 58px 0px 80px;
	}
}

.cc::after {
	display: table;
	clear: both;
	content: "";
}

@media ( min-width : 541px) {
	.cc1_1 {
		display: flex;
		flex-wrap: wrap;
		margin-left: -40px;
		max-width: 1400px;
		flex: 1;
	}
}

@media ( min-width : 541px) {
	.cc1_1_1 {
		flex: 0 0 auto;
		width: 50%;
		padding: 0px 0px 30px 40px;
		box-sizing: border-box;
		align-items: center;
		justify-content: center;
	}
}

@media ( min-width : 541px) and (max-width: 1400px) {
	.cc1_1_1 {
		padding-left: 30px;
	}
}

.cc1_1_1_1 {
	display: block;
	position: relative;
	text-decoration: none;
}

.cc1_1_1_1_1 {
	width: 100%;
}

.cc1_1_1_2 {
	display: flex;
	flex-direction: column;
	-webkit-box-pack: center;
	justify-content: center;
	color: rgb(0, 0, 0);
}

.cc1_1_1_3 {
	margin-top: 12px;
	font-size: 23px;
	line-height: 30px;
	font-weight: 600;
}

.cc1_1_1_4 {
	margin-top: 6px;
	font-size: 15px;
	line-height: 24px;
}

#third>ul {
	display: flex;
}

#third>ul>button:nth-child(1) {
	flex: 1 1 0%;
	display: block;
	min-height: 70px;
	height: 100%;
	border-top: 1px solid rgb(48, 48, 51);
	background: rgb(48, 48, 51);
	font-size: 18px;
	line-height: 70px;
	color: rgb(255, 255, 255);
	text-align: center;
	position: relative;
	margin: 0px -1px;
}

#third>ul>button:nth-child(2) {
	flex: 1 1 0%;
	display: block;
	min-height: 70px;
	height: 100%;
	border-top: 1px solid rgb(212, 212, 212);
	background: rgb(255, 255, 255);
	font-size: 18px;
	line-height: 70px;
	color: rgb(160, 160, 160);
	text-align: center;
}

@media ( min-width : 541px) {
	.dd {
		padding: 50px 100px 40px;
		text-align: center;
		background: rgb(48, 48, 51);
	}
}

.dd {
	position: relative;
}

@media ( min-width : 541px) { <
	style>.css-fnx4f5 {
		display: none;
	}
}

@media ( min-width : 541px) {
	.dd1 {
		display: none;
	}
}

@media ( min-width : 541px) {
	.dd1_1 {
		display: none;
	}
}

.dd2 {
	position: relative;
}

.dd2_1 {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	z-index: 10;
	cursor: pointer;
	padding: 20px 30px;
	background: none;
	left: -100px;
	right: auto;
}

.dd2_2 {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	z-index: 10;
	cursor: pointer;
	padding: 20px 30px;
	background: none;
	right: -100px;
	left: auto;
}

.dd3_1 {
	position: absolute;
	text-align: center;
	transition: all 0.3s ease 0s;
	transform: translateZ(0px);
	left: 0px;
	right: 0px;
	z-index: 10;
	bottom: 0px;
}

@media ( min-width : 541px) {
	.dd3_1 {
		height: 16px;
	}
}

.dd3_2 {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box;
	transform: translate3d(0px, 0px, 0px);
}

@media ( min-width : 541px) {
	.dd3_1_1 {
		border-radius: 50%;
		width: 16px;
		height: 16px;
		background: rgb(255, 255, 255);
		opacity: 0.3;
		margin: 0px 5px;
	}
}

.dd3_2_1 {
	width: 694px;
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform;
}

.dd3_2_1_1 {
	display: flex;
	flex-wrap: wrap;
	flex-shrink: 0;
	position: relative;
	width: 100%;
	height: 100%;
}

.dd3_2_1_1_1 {
	position: relative;
	box-sizing: border-box;
	width: 20%;
	padding: 0px 20px;
	color: rgb(255, 255, 255);
	text-align: center;
}

@media ( max-width : 1400px) {
	.dd3_2_1_1_1 {
		padding: 0px 10px;
	}
}

.dd3_2_1_1_1_1 {
	display: block;
}

.dd3_2_1_1_1_2 {
	position: absolute;
	top: 15px;
	right: 0px;
	left: 0px;
	margin-top: calc(100% - 40px);
	font-size: 13px;
	font-weight: 700;
	line-height: 1.2;
	color: transparent;
}

.dd3_2_1_1_1_1_1 {
	position: relative;
	overflow: hidden;
	width: 100%;
	padding-top: 100%;
	background: rgb(244, 244, 244);
}

.dd3_2_1_1_1_1_2 {
	margin-top: 15px;
}

.ddd {
	position: absolute;
	inset: 0px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
}

.ddd1 {
	display: block;
	font-weight: 700;
	line-height: 1.2;
	color: rgb(255, 255, 255);
}

@media ( min-width : 541px) {
	.ddd1 {
		margin-bottom: 7px;
		font-size: 13px;
		text-decoration: underline;
	}
}

.ddd2 {
	margin-bottom: 14px;
	font-size: 12px;
	line-height: 16px;
	color: rgb(93, 93, 93);
	word-break: break-all;
}

.ddd3 {
	font-size: 14px;
	font-weight: 600;
	line-height: 16px;
	color: rgb(255, 255, 255);
}

.ddd1_1 {
	width: 100%;
	height: 100%;
}

.qq {
	position: relative;
	display: flex;
	padding: 30px 0px 155px;
	border-bottom: 1px solid rgb(212, 212, 212);
}

.qq1 {
	position: absolute;
	top: 30px;
	bottom: 0px;
	left: 33%;
	width: 1px;
	margin: 0px;
	background: rgb(212, 212, 212);
	border: 0px;
}

.qq2 {
	position: absolute;
	top: 30px;
	bottom: 0px;
	left: 66%;
	width: 1px;
	margin: 0px;
	background: rgb(212, 212, 212);
	border: 0px;
}

.qq3 {
	box-sizing: border-box;
	width: 100%;
	margin-top: -120px;
}

.qq3_1 {
	position: relative;
	width: 100%;
	max-width: 100%;
	height: 2902px;
	max-height: 2902px;
}

}
.qq3_1_1_1 {
	padding: 0px 8%;
}

.qq3_1_1_1_1 {
	position: relative;
	display: block;
	margin-top: 120px;
	text-align: left;
}

@media screen and (width <= 1000px) {
	.qq3_1_1_1_1_1 {
		width: 70%;
		max-width: 200px;
	}
}

.qq3_1_1_1_1_1 {
	position: absolute;
	top: -30px;
	left: -5%;
	width: 200px;
	height: 4px;
	background: rgb(0, 0, 0);
}

.qq3_1_1_1_1_2 {
	position: relative;
	display: block;
	width: 100%;
	padding-bottom: 100%;
	background-color: rgb(212, 212, 212);
}

.qq3_1_1_1_1_3 {
	padding-right: 30px;
	color: rgb(0, 0, 0);
	word-break: keep-all;
}

.qq3_1_1_1_1_2_1 {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center center;
}

.qq3_1_1_1_1_3_1 {
	margin-top: 14px;
	font-size: 22px;
	font-weight: 600;
	line-height: 30px;
}

.qq3_1_1_1_1_3_2 {
	margin-top: 10px;
	font-size: 15px;
	line-height: 24px;
}

.qq3_1_1_1_2 {
	display: flex;
	margin-top: 20px;
	border-top: 1px solid rgb(212, 212, 212);
	box-sizing: border-box;
}

.qq3_1_1_1_2_1 {
	display: flex;
	flex: 1 1 0%;
	padding: 15px 0px 10px;
}

@media ( min-width : 541px) and (max-width: 1200px) {
	.qq3_1_1_1_2_1 {
		flex-direction: column-reverse;
	}
}

.qq3_1_1_1_2_2 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	flex-wrap: nowrap;
	width: 65px;
	border-left: 1px solid rgb(212, 212, 212);
}

.qq3_1_1_1_2_1_1 {
	width: 52px;
	height: 52px;
}

.qq3_1_1_1_2_1_2 {
	margin-left: 18px;
	font-size: 11px;
	line-height: 16px;
	color: rgb(0, 0, 0);
	text-align: left;
	padding-right: 10px;
}

@media ( min-width : 541px) and (max-width: 1200px) {
	.qq3_1_1_1_2_1_2 {
		margin-left: 0px;
		margin-bottom: 10px;
	}
}

.qq3_1_1_1_2_1_2_1 {
	display: block;
	font-weight: 800;
}

.qq3_1_1_1_2_1_2_2 {
	display: block;
	margin-top: 6px;
	font-size: 11px;
	line-height: 16px;
	text-align: left;
	color: rgb(0, 0, 0);
}

.qq3_1_1_1_3 {
	display: flex;
	margin-top: 20px;
	border-top: 1px solid rgb(212, 212, 212);
	box-sizing: border-box;
}

.qq3_1_1_1_3_1 {
	display: flex;
	flex: 1 1 0%;
	padding: 15px 0px 10px;
}

@media ( min-width : 541px) and (max-width: 1200px) {
	.qq3_1_1_1_3_1 {
		flex-direction: column-reverse;
	}
}

.qq3_1_1_1_3_1_1 {
	width: 52px;
	height: 52px;
}

@media ( min-width : 541px) and (max-width: 1200px) {
	.qq3_1_1_1_3_1_1_1 {
		margin-left: 0px;
		margin-bottom: 10px;
	}
}

.qq3_1_1_1_3_1_1_1 {
	margin-left: 18px;
	font-size: 11px;
	line-height: 16px;
	color: rgb(0, 0, 0);
	text-align: left;
	padding-right: 10px;
}

.qq3_1_1_1_3_1_1_1_1 {
	display: block;
	font-weight: 800;
}

.qq3_1_1_1_3_1_1_1_2 {
	display: block;
	margin-top: 6px;
	font-size: 11px;
	line-height: 16px;
	text-align: left;
	color: rgb(0, 0, 0);
}

.qq3_1_1_1_3_2 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	flex-wrap: nowrap;
	width: 65px;
	border-left: 1px solid rgb(212, 212, 212);
}

.qq3_1_1_1_3_3 {
	display: flex;
	flex-direction: column;
	padding-top: 6px;
	-webkit-box-align: center;
	align-items: center;
}

.qq3_1_1_1_3_3_1 {
	display: block;
	margin: 5px 0px 0px;
	text-align: center;
	font-size: 11px;
	font-family: campton;
	color: rgb(93, 93, 93);
}

.swiper {
	width: 100%;
	height: 620px;
}

@media ( min-width : 541px) {
	.uuu {
		height: 680px;
		margin: 0px 100px 0px 380px;
	}
}

.uuu {
	overflow: hidden;
	text-align: left;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	position: absolute;
	top: 0px;
}

@media ( min-width : 541px) {
	.uuu1 {
		width: 440px;
		margin-left: 60px;
	}
}

.uuu1_1 {
	white-space: pre-wrap;
	font-size: xx-large;
	font-weight: 500;
	line-height: 58px;
}

.uuu1_2 {
	margin-top: 19px;
	font-size: 20px;
	line-height: 35px;
	white-space: pre-wrap;
}
</style>
<style>
button {
	border: 0;
	background: transparent;
	cursor: pointer;
	outline: none;
}

</style>
<style>
</style>
</head>
<body>
	<div id="wrap">
		<div id="first">
			<div class="swiper">
				<!-- Additional required wrapper -->
				<div class="swiper-wrapper">
					<!-- Slides -->
					<div class="swiper-slide">
						<a> <img alt=""
							src="https://img.29cm.co.kr/next-product/2024/05/08/96bde54e9ec940539c0837111b378a36_20240508180009.jpg?width=2000"
							class="img_size">
							<div class="uuu">
								<div class="uuu1">
									<h2 class="uuu1_1">여름을 책임질 티셔츠</h2>
									<p class="uuu1_2">SUNLOVE</p>
								</div>
							</div>
						</a>
					</div>
					<div class="swiper-slide">
						<a> <img alt=""
							src="https://img.29cm.co.kr/next-product/2024/05/08/4ec88434854c497bac2902dd7a8e2f95_20240508180139.jpg?width=2000">
							<div class="uuu">
								<div class="uuu1">
									<h2 class="uuu1_1">여름을 책임질 티셔츠</h2>
									<p class="uuu1_2">SUNLOVE</p>
								</div>
							</div>
						</a>
					</div>
					<div class="swiper-slide">
						<a> <img alt=""
							src="https://img.29cm.co.kr/next-product/2024/05/08/d584fab437484d39a4caa3ad46542b04_20240508175948.jpg?width=2000">
							<div class="uuu">
								<div class="uuu1">
									<h2 class="uuu1_1">여름을 책임질 티셔츠</h2>
									<p class="uuu1_2">SUNLOVE</p>
								</div>
							</div>
						</a>
					</div>
					<div class="swiper-slide">
						<a> <img alt=""
							src="https://img.29cm.co.kr/next-product/2024/05/08/1ce47f52b7234a6ab219f894fadf2ff3_20240508180216.jpg?width=2000">
							<div class="uuu">
								<div class="uuu1">
									<h2 class="uuu1_1">여름을 책임질 티셔츠</h2>
									<p class="uuu1_2">SUNLOVE</p>
								</div>
							</div>
						</a>
					</div>
					<div class="swiper-slide">
						<a> <img alt=""
							src="https://img.29cm.co.kr/next-product/2024/05/08/9082c5aec071415aa5b77014b240fa05_20240508180125.jpg?width=2000">
							<div class="uuu">
								<div class="uuu1">
									<h2 class="uuu1_1">여름을 책임질 티셔츠</h2>
									<p class="uuu1_2">SUNLOVE</p>
								</div>
							</div>
						</a>
					</div>
					<div class="swiper-slide">
						<a> <img alt=""
							src="https://img.29cm.co.kr/next-product/2024/05/08/8a26ce9c1aea43449f6a2e46c90db32a_20240508180048.jpg?width=2000">
							<div class="uuu">
								<div class="uuu1">
									<h2 class="uuu1_1">여름을 책임질 티셔츠</h2>
									<p class="uuu1_2">SUNLOVE</p>
								</div>
							</div>
						</a>
					</div>

				</div>


				<!-- If we need navigation buttons -->
				<div style="left: 350px" class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>


			</div>

			<div class="bb">
				<div>
					<h2 class="bb1">주방,생활</h2>
				</div>
				<ul>
					<a href="" class="bb2">All</a>
					<a href="" class="bb2">NEW</a>
					<a href="" class="bb2">청소,수납</a>
					<a href="" class="bb2">쿡웨어</a>
					<a href="" class="bb2">테이블웨어</a>
					<a href="" class="bb2">욕실</a>
					<a href="" class="bb2">반려동물</a>
				</ul>
			</div>
		</div>
		<!-- first -->

		<div id="second">
			<div class="cc"></div>

			<div class="cc1">
				<ul class="cc1_1">
					<li class="cc1_1_1"><a
						href="https://content.29cm.co.kr/brand-news/21601"
						class="cc1_1_1_1">
							<div>
								<div>
									<img class="cc1_1_1_1_1" alt=""
										src="https://img.29cm.co.kr/next-product/2024/05/08/31caebbe415e4e7b95cdff0118078a7d_20240508180242.jpg?width=800">
								</div>
							</div>
							<div class="cc1_1_1_2">
								<h1 class="cc1_1_1_3">선물하기 좋은 테이블웨어</h1>
								<p class="cc1_1_1_4">메이크어포터리의 신상품을 가장 먼저 만나요</p>
							</div>
					</a></li>
					<li class="cc1_1_1"><a
						href="https://content.29cm.co.kr/brand-news/21601"
						class="cc1_1_1_1">
							<div>
								<div>
									<img class="cc1_1_1_1_1" alt=""
										src="https://img.29cm.co.kr/next-product/2024/05/08/78f3d9a2c26a456fbce9be635dcaa172_20240508180313.jpg?width=800">
								</div>
							</div>
							<div class="cc1_1_1_2">
								<h1 class="cc1_1_1_3">왼손잡이도 사로잡은</h1>
								<p class="cc1_1_1_4">글로벌나이프와 함께 즐겁게 요리해요</p>
							</div>
					</a></li>

				</ul>
			</div>
		</div>
		<!-- second -->

		<div id="third">
			<ul>
				<button>New arrivals</button>
				<button>Weekly best</button>
				<!-- 밑에 코딩은 신상품에 관련된 것들이나 비동기 처리로 주간 베스트 제풀이 로드 되게 코드 추가해야함.  -->
			</ul>
			<div class="dd">
				<h2 class="dd1">
					New arrivals <a class="dd1_1"
						href="https://www.29cm.co.kr/shop/category/list?category_large_code=272100100&amp;category_medium_code=new">전체보기</a>
				</h2>
				<div class="swiper" style="position: relative; height: 350px">
					<!-- Additional required wrapper -->
					<div class="swiper-wrapper">
						<!-- Slides -->
						<div class="swiper-slide">
							<div class="dd3_2">
								<div class="dd3_2_1">
									<div class="dd3_2_1_1">
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202405/11ef082abb927237b9bb69b9ba03a5a7.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202405/11ef0829f9b4c699bb14d1b1c8a3ae5e.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202404/11eef163bb471cae9367176e3746dc06.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202405/11ef0917e1693159bb14d775ef7620cc.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202404/11ef03aa4d54527bbb141dd1c0655cf5.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>

									</div>
								</div>
							</div>

						</div>
						<!-- Slides -->
						<!-- Slides -->
						<div class="swiper-slide">
							<div class="dd3_2">
								<div class="dd3_2_1">
									<div class="dd3_2_1_1">
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202405/11ef082abb927237b9bb69b9ba03a5a7.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202405/11ef0829f9b4c699bb14d1b1c8a3ae5e.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202404/11eef163bb471cae9367176e3746dc06.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202405/11ef0917e1693159bb14d775ef7620cc.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>
										<div class="dd3_2_1_1_1">
											<a class="dd3_2_1_1_1_1">
												<div class="dd3_2_1_1_1_1_1">
													<div class="ddd">
														<img class="ddd1_1" alt=""
															src="https://img.29cm.co.kr/item/202404/11ef03aa4d54527bbb141dd1c0655cf5.jpg?width=500">
													</div>
												</div>
												<div class="dd3_2_1_1_1_1_2">
													<h2 class="ddd1">디스이즈네버댓</h2>
													<div class="dd2">TNT FARAH Boxer Briefs Black/Grey</div>
													<span class="ddd3"> 45,000 <span class="ddd3_1">원</span>
													</span>
												</div>
											</a> <a class="dd3_2_1_1_1_2">디스이즈네버댓</a>

										</div>

									</div>
								</div>
							</div>

						</div>
						<!-- Slides -->

					</div>
					<!-- swiper-wrapper -->


					<!-- If we need navigation buttons -->					
						<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
				<!-- swiper -->

			</div>
			<!-- dd -->
		</div>
		<!-- third -->

		<script>
const swiper = new Swiper('.swiper', {
	  // Optional parameters
	  direction: 'horizontal',
	  loop: true,

	  // If we need pagination
	  pagination: {
	    el: '.swiper-pagination',
	  },

	  // Navigation arrows
	  navigation: {
	    nextEl: '.swiper-button-next',
	    prevEl: '.swiper-button-prev',
	  },

	  // And if we need scrollbar
	  scrollbar: {
	    el: '.swiper-scrollbar',
	  },
	});

</script>
</body>
</html>