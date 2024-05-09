<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

table {
	border-collapse: collapse;
	border-spacing: 0;
}

img {
	border: 0;
	vertical-align: top;
}

em, address {
	font-style: normal;
}

article, aside, details, figcaption, figure, footer, header, main, menu,
	nav, section, summary {
	display: block;
}

a {
	-webkit-text-decoration: none;
	text-decoration: none;
	outline: none;
}

button {
	border: 0;
	background: transparent;
	cursor: pointer;
	outline: none;
}

input, textarea {
	-webkit-appearance: none;
	border-radius: 0;
}

input::-ms-clear {
	display: none;
}

body, input, select, textarea, button, a {
	-webkit-text-size-adjust: none;
	font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic,
		'나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}

input[type='search']::-webkit-search-decoration, input[type='search']::-webkit-search-cancel-button,
	input[type='search']::-webkit-search-results-button, input[type='search']::-webkit-search-results-decoration
	{
	-webkit-appearance: none;
}

html, body {
	min-height: 100vh;
}

.out {
	position: relative;
	margin-top: 59px;
}

.middle {
	position: relative;
}

.in {
	height: 680px;
	width: 100%;
	position: relative;
}

.dots {
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

.dot {
	width: 16px;
	height: 16px;
	background: rgba(255, 255, 255, 0.3);
	vertical-align: top;
	display: inline-block;
}

@media ( min-width : 541px) { <
	style>.dot {
		margin: 0px 5px;
		border-radius: 50%;
	}
}

.dot-active {
	background: rgb(255, 255, 255);
}

.slide {
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform;
}

.slideA {
	position: relative;
	background-color: rgb(244, 244, 244);
	width: 100%;
	height: 100%;
}

.slideI {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	object-fit: cover;
	object-position: 50% center;
}

.slide-container {
	height: 100%;
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
	margin-left: auto;
}
/* .css-10klw3m {
    height: 100%;
} */
/* .slide-container-pointer-events {
    touch-action: pan-y;
} */
.slide-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box;
}

@media ( min-width : 541px) { <
	style>.slideC {
		height: 680px;
		margin: 0px 100px 0px 380px;
	}
}

.slideC {
	overflow: hidden;
	text-align: left;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	position: absolute;
	top: 0px;
}

@media ( min-width : 541px) { <
	style>.slideD {
		width: 440px;
		margin-left: 60px;
	}
}

.slideD {
	color: rgb(255, 255, 255);
}

.slideK {
	white-space: pre-wrap;
	font-size: 48px;
	font-weight: 500;
	line-height: 58px;
}

.slideE {
	margin-top: 19px;
	font-size: 28px;
	line-height: 35px;
	white-space: pre-wrap;
}

.pBox {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	padding: 30px;
	z-index: 10;
	cursor: pointer;
	left: 275px;
	right: auto;
}

.prev {
	width: 30px;
	height: 60px;
	transform: rotate(180deg);
}

.nBox {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	padding: 30px;
	z-index: 10;
	cursor: pointer;
	right: 0px;
	left: auto;
}

.next {
	width: 30px;
	height: 60px;
}

@media ( min-width : 541px) { <
	style>.middleCa {
		position: absolute;
		z-index: 2;
		top: 0px;
		left: 25px;
	}
}

.middleCa {
	width: 250px;
	margin: 25px 0px 0px;
	padding: 25px 25px 15px;
	background: rgb(255, 255, 255);
	box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 30px 0px;
}

.hp {
	padding: 3px 0px;
}

.mainCa {
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

.ca {
	list-style: none;
}

.caa {
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
</style>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
</head>
<body>

	<div class="out">
		<div class="middle">
			<div class="in">
				<div
					class="slide-container css-10klw3m slide-container-pointer-events ">
					<div class="dots">
						<span class="dot-active"></span><span class="dot"></span><span
							class="dot"></span><span class="dot"></span><span class="dot"></span><span
							class="dot"></span><span class="dot"></span><span class="dot"></span><span
							class="dot"></span>
					</div>
					<div class="slide-wrapper"
						style="transform: translate3d(-4795px, 0px, 0px); transition-duration: 300ms;">
						<div class="slide swiper-slide-duplicate"
							data-swiper-slide-index="8" style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/showcase/1179"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/ccbbbcbc4633480ea4bc1838d4777b33_20240503170458.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#ffffff" class="slideD">
										<h2 class="slideK">창작의 순간을 응원해요</h2>
										<p class="slideE">LAMY×POINT OF VIEW</p>
									</div>
								</div></a>
						</div>
						<div class="slide" data-swiper-slide-index="0"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://shop.29cm.co.kr/brand/36027?brandId=36027&amp;sort=RECOMMEND&amp;defaultSort=RECOMMEND&amp;sortOrder=DESC"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/524cef7cab804c7d877b6fb00eb81e7a_20240503174523.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#000000" class="slideD">
										<h2 class="slideK">아름다운 실용</h2>
										<p class="slideE">29EDITION</p>
									</div>
								</div></a>
						</div>
						<div class="slide" data-swiper-slide-index="1"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/around-showroom/2024/05/06/desker"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/dc41df296e734208beebc7321661c170_20240503174445.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#ffffff" class="slideD">
										<h2 class="slideK">완벽한 업무 공간</h2>
										<p class="slideE">DESKER</p>
									</div>
								</div></a>
						</div>
						<div class="slide" data-swiper-slide-index="2"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/focus/2024/05/02/1st"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/df44c4f46e1c454dba2a6e9f1b3d572d_20240503174251.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#ffffff" class="slideD">
										<h2 class="slideK">반짝이는 나의 공간</h2>
										<p class="slideE">FINCA</p>
									</div>
								</div></a>
						</div>
						<div class="slide swiper-slide-prev" data-swiper-slide-index="3"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/showcase/1163"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/e63a6539d49042c19c67cacbf1b5f5b8_20240503174409.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#ffffff" class="slideD">
										<h2 class="slideK">재치 있는 일상을 위해</h2>
										<p class="slideE">VODM</p>
									</div>
								</div></a>
						</div>
						<div class="slide swiper-slide-active" data-swiper-slide-index="4"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/brand-news/21586?product_sort=best"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/34441f064a2e4dfcb5bc53fe6070baa3_20240503175009.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#ffffff" class="slideD">
										<h2 class="slideK">긍정의 에너지</h2>
										<p class="slideE">OGGITT</p>
									</div>
								</div></a>
						</div>
						<div class="slide swiper-slide-next" data-swiper-slide-index="5"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/showcase/1176"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/e67082ef7fd94aafb1f55639bfb637b7_20240503170329.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#000000" class="slideD">
										<h2 class="slideK">이토록 위트 있는 작품</h2>
										<p class="slideE">ARTISH×GISELLE DEKEL</p>
									</div>
								</div></a>
						</div>
						<div class="slide" data-swiper-slide-index="6"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/showcase/1178"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/f8d41cd3a8c94d03a1af6335481f7a05_20240503170446.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#ffffff" class="slideD">
										<h2 class="slideK">전시를 기억하는 방법</h2>
										<p class="slideE">GROUNDSEESAW</p>
									</div>
								</div></a>
						</div>
						<div class="slide" data-swiper-slide-index="7"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/focus/2024/04/26/1st"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/ede2df9e1ee545e5886ca042f94eca96_20240503174332.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#ffffff" class="slideD">
										<h2 class="slideK">당신의 일상이 빛나길</h2>
										<p class="slideE">GLOSSY</p>
									</div>
								</div></a>
						</div>
						<div class="slide" data-swiper-slide-index="8"
							style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://content.29cm.co.kr/showcase/1179"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/ccbbbcbc4633480ea4bc1838d4777b33_20240503170458.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#ffffff" class="slideD">
										<h2 class="slideK">창작의 순간을 응원해요</h2>
										<p class="slideE">LAMY×POINT OF VIEW</p>
									</div>
								</div></a>
						</div>
						<div class="slide swiper-slide-duplicate"
							data-swiper-slide-index="0" style="width: 959px;">
							<a class="slideA" target="_self"
								href="https://shop.29cm.co.kr/brand/36027?brandId=36027&amp;sort=RECOMMEND&amp;defaultSort=RECOMMEND&amp;sortOrder=DESC"><picture>
								<img
									src="https://img.29cm.co.kr/next-product/2024/05/03/524cef7cab804c7d877b6fb00eb81e7a_20240503174523.jpg?width=2000"
									class="slideI"></picture>
								<div class="slideC">
									<div color="#000000" class="slideD">
										<h2 class="slideK">아름다운 실용</h2>
										<p class="slideE">29EDITION</p>
									</div>
								</div></a>
						</div>

					</div>
					<div class="pBox">
						<svg class="prev" xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 42 80">
								<path d="M1 0l40 40.083L1.166 80" fill="none"
								fill-rule="evenodd" stroke="#000000" stroke-width="5"></path></svg>
					</div>
					<div class="nBox">
						<svg class="next" xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 42 80">
							<path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd"
								stroke="#000000" stroke-width="5"></path></svg>
					</div>


				</div>


			</div>
			<div class="middleCa">
				<div class="hp">
					<h2 class="mainCa">가구,인테리어</h2>
				</div>
				<ul class="ca">
					<a class="caa" href="#">ALL</a>
					<a class="caa" href="#">NEW</a>
					<a class="caa" href="#">비앤비이탈리아</a>
					<a class="caa" href="#">침구</a>
					<a class="caa" href="#">홈패브릭</a>
					<a class="caa" href="#">가구</a>
					<a class="caa" href="#">조명</a>
					<a class="caa" href="#">홈데코</a>
					<a class="caa" href="#">가드닝</a>
					<a class="caa" href="#">홈프레그런스</a>
					<a class="caa" href="#">아트,디자인</a>
					<a class="caa" href="#">책,음반</a>
					<a class="caa" href="#">스테이셔너리</a>
				</ul>
			</div>

		</div>
	</div>

</body>
</html>