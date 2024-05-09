<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
span.material-symbols-outlined {
	vertical-align: text-bottom;
}
</style>
<style>
<
style data-emotion ="css-global " data-s ="">*, *::before, *::after {
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

body {
	display: block;
	margin: 8px;
}

div {
	display: block;
	unicode-bidi: isolate;
}
</style>

<style>
@
supports (position:sticky) or (position:-webkit-sticky) { .large1 {
	padding-bottom:120px;
	
}
}
</style>
<style>
.large1_1 {
	position: relative;
	margin-top: 59px;
}
</style>
<style data-emotion="large1_1_1" data-s="">
.large1_1_1 {
	position: relative;
}

@media ( max-width : 540px) { <
	style>.swiper {
		height: 310px;
	}
}

.swiper {
	height: 680px;
	width: 100%;
	position: relative;
}

.css-10klw3m {
	height: 100%;
}

.css-medium_1 .swiper-pagination {
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
</style>
<style>
.slideshow-container {
	height: 100%;
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
}

.swiper-container-pointer-events {
	touch-action: pan-y;
}

.css-ccftqy .swiper-pagination {
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

.text {
	color: #2f2f2f;
	font-size: 15px;
	text-align: center;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
}

.numbertext {
	color: #2f2f2f;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}


img {
    border: 0;
    vertical-align: top;
}

.swiper-button-prev, .swiper-button-next {
	position: absolute;
	cursor: pointer;
	top: 50%;
	color: white;
	width: auto;
	padding: 30px;
	font-weight: bold;
	font-size: 18px;
	border-radius: 0 3px 3px 0;
	transition: 0.6s ease;
}

.swiper-button-next {
	right: 0;
	border-radius: 3px 0 0 3px;
	margin-top: -22px;
}

.swiper-button-prev {
	margin-top: -22px;
	z-index: 10;
	left: 275px;
	right: auto;
}

.swiper-button-prev:hover, .swiper-button-next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

.dots {
	position: absolute;
	top: 10px;
	width: 100%;
	text-align: center;
}

.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active, .dot:hover {
	background-color: #717171;
}

@
keyframes fade {from { opacity:0.4
	
}

to {
	opacity: 1
}

}
@
-webkit-keyframes fade {from { opacity:0.4
	
}

to {
	opacity: 1
}

}
.fade {
	animation-name: fade;
	animation-duration: 1.5s;
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
}
</style>
<style>
@media ( min-width : 541px) {
	.css-4e43p {
		max-width: 1920px;
		margin: 0px auto;
		padding: 0px 50px 0px 300px;
	}
}
</style>
<!-- style 삽입 -->
<style data-emotion="css 1onoukq" data-s="">
.css-1onoukq {
	width: 250px;
	margin: 25px 0px 0px;
	padding: 25px 25px 15px;
	background: rgb(255, 255, 255);
	box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 30px 0px;
}

@media ( min-width : 541px) {
	.css-1onoukq {
		position: absolute;
		z-index: 2;
		top: 0px;
		left: 25px;
	}
}
</style>
<style>
@media ( min-width : 541px) {
	.css-4e43p {
		max-width: 1920px;
		margin: 0px auto;
		padding: 0px 50px 0px 300px;
	}
}
</style>
<style>
.css-zl0y5r {
	padding: 58px 0px 80px;
}

@media ( min-width : 541px) {
	.css-19p5dbs {
		padding-bottom: 100px;
	}
}
</style>
<style>
.css-3dx3su {
	max-width: 1400px;
	min-width: 541px;
	margin-left: -40px;
	display: flex;
	flex: 1;
}

.css-1dmc8sd {
	padding: 0 0 30px 30px;
	width: 50%;
	align-items: center;
	justify-content: center;
	box-sizing: border-box;
}
</style>
<style>
@media ( min-width : 541px) {
	.css-zl0y5r {
		padding: 58px 0px 80px;
	}
	.css-zl0y5r::after {
		display: table;
		clear: both;
		content: "";
	}
	<
	style>.css-kkqm0g {
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
}
</style>
<style>
a.css-1iv23n0 {
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
<style>
@media ( min-width : 541px) {
	.css-19p5dbs {
		padding-bottom: 100px;
	}
}
</style>
<style>
.css-y6diwn {
	display: block;
	position: relative;
	text-decoration: none;
}

.css-1324aqc {
	width: 100%;
}
</style>
<style>
.css-9zetyy {
	display: flex;
	flex-direction: column;
	-webkit-box-pack: center;
	justify-content: center;
	color: rgb(0, 0, 0);
}

@media ( min-width : 541px) {
	.css-dtuif0 {
		margin-top: 12px;
		font-size: 23px;
		line-height: 30px;
		font-weight: 600;
	}
	.css-1w6vxok {
		margin-top: 6px;
		font-size: 15px;
		line-height: 24px;
	}
}
</style>
<style data-emotion="css" data-s=""></style>
<style data-emotion="css" data-s=""></style>

<style>
.swiper-container.swiper-container-initialized.swiper-container-horizontal.swiper-container-pointer-events
	.css-10klw3m.e1ha01s72 {
	
}

.css-10klw3m {
	height: 100%;
}

.swiper-container-pointer-events {
	touch-action: pan-y;
}

.swiper-container {
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
}
</style>
<style>
swiper-wrapper.style {
	transform: translate3d(-5460px, 0px, 0px);
	transition-duration: 0ms;
}

.swiper-container-android .swiper-slide, .swiper-wrapper {
	transform: translateZ(0);
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box;
}

swiper-slide.style {
	width: 1092px;
}

.swiper-slide {
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform;
}

.swiper-slide {
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform;
}
</style>
<style>
.css-1rw4rkj {
	position: relative;
	overflow: hidden;
}

.css-11egtcj {
	display: flex;
}

.css-13tv9x8 {
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

.css-ydj7ef {
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
</style>
<!-- new/weekly best style-->
<style>
.css-1rw4rkj {
	position: relative;
	overflow: hidden;
}

.css-11egtcj {
	display: flex;
}

.css-ydj7ef {
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

.css-13tv9x8 {
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
</style>
<style>
@media ( min-width : 541px) {
	.css-9qgiem {
		padding: 50px 100px 40px;
		text-align: center;
		background: rgb(48, 48, 51);
	}
	@media ( min-width : 541px) {
		.css-fnx4f5 {
			display: none;
		}
	}
	@media ( min-width : 541px) {
		.css-f1nnni {
			display: none;
		}
	}
}
</style>
<style>
.css-1ymgzmv {
	position: relative;
}

.css-6vy6m4 {
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

.css-1dv0xyg {
	width: 22px;
	height: 44px;
	opacity: 0.35;
	transform: rotate(180deg);
}

.css-vhkf1b {
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

.css-1tulk9i {
	width: 22px;
	height: 44px;
}

@media ( min-width : 541px) {
	.css-13alrll {
		padding-bottom: 54px;
	}
}

.swiper-container-pointer-events {
	touch-action: pan-y;
}

.swiper-container {
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
}
</style>
<style>
svg:not(:root) {
	overflow-clip-margin: content-box;
	overflow: hidden;
}
</style>
<style>
@media ( min-width : 541px) {
	.css-1ymgzmv .swiper-pagination {
		height: 16px;
	}
}

.css-1ymgzmv .swiper-pagination {
	position: absolute;
	text-align: center;
	transition: all 0.3s ease 0s;
	transform: translateZ(0px);
	left: 0px;
	right: 0px;
	z-index: 10;
	bottom: 0px;
}

.css-1ymgzmv .swiper-pagination-bullet-active {
	opacity: 1;
}

@media ( min-width : 541px) {
	.css-1ymgzmv .swiper-pagination-bullet {
		border-radius: 50%;
		width: 16px;
		height: 16px;
		background: rgb(255, 255, 255);
		opacity: 0.3;
		margin: 0px 5px;
	}
}

.css-1ymgzmv .swiper-pagination-bullet {
	display: inline-block;
}

@media ( min-width : 541px) {
	.css-1ymgzmv .swiper-pagination-bullet {
		border-radius: 50%;
		width: 16px;
		height: 16px;
		background: rgb(255, 255, 255);
		opacity: 0.3;
		margin: 0px 5px;
	}
}

.css-1ymgzmv .swiper-pagination-bullet {
	display: inline-block;
}

@media ( min-width : 541px) {
	.css-1ymgzmv .swiper-pagination-bullet {
		border-radius: 50%;
		width: 16px;
		height: 16px;
		background: rgb(255, 255, 255);
		opacity: 0.3;
		margin: 0px 5px;
	}
}

.css-1ymgzmv .swiper-pagination-bullet {
	display: inline-block;
}

@media ( min-width : 541px) {
	.css-1ymgzmv .swiper-pagination-bullet {
		border-radius: 50%;
		width: 16px;
		height: 16px;
		background: rgb(255, 255, 255);
		opacity: 0.3;
		margin: 0px 5px;
	}
}

.css-1ymgzmv .swiper-pagination-bullet {
	display: inline-block;
}

@media ( min-width : 541px) {
	.css-1ymgzmv .swiper-pagination-bullet {
		border-radius: 50%;
		width: 16px;
		height: 16px;
		background: rgb(255, 255, 255);
		opacity: 0.3;
		margin: 0px 5px;
	}
}

.css-1ymgzmv .swiper-pagination-bullet {
	display: inline-block;
}
</style>
<style>
/* swiper-wrapper.style {
    transform: translate3d(0px, 0px, 0px);
    transition-duration: 0ms;
} */ /* 바껴야되는 값 */
.swiper-wrapper {
	transform: translateZ(0);
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box;
}

.swiper-slide {
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform;
}
</style>
<style>
.swiper {
  width: 100%;
  height: 620px;
}

.img_size{
    width: 100%;
    height: 100%;
    background-repeat: no-repeat;
    object-fit: cover;
    object-position: 50% center;
}

@media (min-width: 541px) {
    .uuu {
        height: 680px;
        margin: 0px 100px 0px 380px;
    }
}
.uuu{
    overflow: hidden;
    text-align: left;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    position: absolute;
    top: 0px;
}
@media (min-width: 541px) {
    .uuu1 {
        width: 440px;
        margin-left: 60px;
    }
}
.uuu1_1{
    white-space: pre-wrap;
    font-size: xx-large;
    font-weight: 500;
    line-height: 58px;
}
.uuu1_2{
     margin-top: 19px;
    font-size: 20px;
    line-height: 35px;
    white-space: pre-wrap;
}
</style>
<style>
@media ( min-width : 541px) {
	.css-zl0y5r {
		padding: 58px 0px 80px;
	}
	.css-zl0y5r::after {
		display: table;
		clear: both;
		content: "";
	}
	<
	style>.css-kkqm0g {
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
}
</style>
<style>
@media ( min-width : 541px) {
	.medium_2 {
		position: absolute;
		z-index: 2;
		top: 0px;
		left: 25px;
	}
}

.medium_2 {
	width: 250px;
	margin: 25px 0px 0px;
	padding: 25px 25px 15px;
	background: rgb(255, 255, 255);
	box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 30px 0px;
}

.medium_2_1 {
	padding: 3px 0px;
}

.ctgr_large {
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
</style>
</head>
<body>
	<div></div>
	<div id="leisure">
		<div></div>
		<div class="large1"></div>
		<div class="large1_1">
			<div class="swiper">
			<div class="swiper-wrapper">
					<!-- Slides -->
			    <div class="swiper-slide">
			    	<a>
			    		<img alt="" src="https://img.29cm.co.kr/next-product/2024/05/08/c22e491618784c7ba208d82860dcf00c_20240508175925.jpg?width=2000">
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		<div class="uuu">
			    			<div class="uuu1">
			    				<h2 class="uuu1_1">흔들림 없는 안정감</h2>
			    				<p class="uuu1_2">BLACK YAK</p>
			    			</div>
			    		</div>
			    		
			    	</a>	
			    </div>
			<!-- If we need navigation buttons -->
			  <div style="left: 350px" class="swiper-button-prev"></div>
			  <div class="swiper-button-next"></div>
				</div>
			</div>
			<div class="medium_2">
				<div class="medium_2_1">
					<h2 class="ctgr_large">레저</h2>
				</div>
				<ul class="css-eannyr etlggkw3">
					<a class="css-1iv23n0 etlggkw4" href="#">ALL</a>
					<a class="css-1iv23n0 etlggkw4" href="#">NEW</a>
					<a class="css-1iv23n0 etlggkw4" href="#">캠핑</a>
					<a class="css-1iv23n0 etlggkw4" href="#">등산,하이킹</a>
					<a class="css-1iv23n0 etlggkw4" href="#">골프</a>
					<a class="css-1iv23n0 etlggkw4" href="#">수영</a>
					<a class="css-1iv23n0 etlggkw4" href="#">러닝</a>
					<a class="css-1iv23n0 etlggkw4" href="#">실내운동</a>
					<a class="css-1iv23n0 etlggkw4" href="#">여행</a>
					<a class="css-1iv23n0 etlggkw4" href="#">테니스</a>
					<a class="css-1iv23n0 etlggkw4" href="#">자전거</a>
				</ul>
			</div>
		</div>


		<div class="css-4e43p e8dmgjc1">
			<div class="css-zl0y5r e16y5wrz0"></div>
			<div class="css-19p5dbs e68p3yt0">
				<ul class="css-3dx3su e68p3yt2">
					<li class="css-1dmc8sd e68p3yt3"><a
						class="css-y6diwn e68p3yt4"
						href="/%ED%8A%B9%EB%B3%84%ED%95%9C%20%ED%98%9C%ED%83%9D%EA%B3%BC%20%ED%95%A8%EA%BB%98%20%EC%8A%A4%EC%9C%94%EC%9B%A8%EC%96%B4%EB%A5%BC%20%EC%A4%80%EB%B9%84%ED%95%B4%EC%9A%94"><div
								class="css-xsc7ie e68p3yt5">
								<div class="css-33647j e68p3yt6">
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/03/e21983298ad64277894b4a1b3d98be1a_20240503164922.jpg?width=800"
										alt="여름으로 풍덩" class="css-1324aqc e68p3yt7">
								</div>
							</div>
							<div class="css-9zetyy e68p3yt8">
								<h1 class="css-dtuif0 e68p3yt9">여름으로 풍덩</h1>
								<p class="css-1w6vxok e68p3yt11">특별한 혜택과 함께 스윔웨어를 준비해요</p>
							</div></a></li>
					<li class="css-1dmc8sd e68p3yt3"><a
						class="css-y6diwn e68p3yt4"
						href="https://content.29cm.co.kr/brand-news/21538"><div
								class="css-xsc7ie e68p3yt5">
								<div class="css-33647j e68p3yt6">
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/03/e5b71782b42a4168adb9f939607c4acc_20240503165001.jpg?width=800"
										alt="매일이 바캉스처럼" class="css-1324aqc e68p3yt7">
								</div>
							</div>
							<div class="css-9zetyy e68p3yt8">
								<h1 class="css-dtuif0 e68p3yt9">매일이 바캉스처럼</h1>
								<p class="css-1w6vxok e68p3yt11">레브레브와 함께 미리 여름을 맞이해요</p>
							</div></a></li>
				</ul>
				<ul class="css-3dx3su e68p3yt2">
					<li class="css-1dmc8sd e68p3yt3"><a
						class="css-y6diwn e68p3yt4"
						href="https://content.29cm.co.kr/focus/2024/04/29/1st"><div
								class="css-xsc7ie e68p3yt5">
								<div class="css-33647j e68p3yt6">
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/03/55d609f2670e41879e673d617e69f9c6_20240503165026.jpg?width=800"
										alt="운동과 일상의 경계에서" class="css-1324aqc e68p3yt7">
								</div>
							</div>
							<div class="css-9zetyy e68p3yt8">
								<h1 class="css-dtuif0 e68p3yt9">운동과 일상의 경계에서</h1>
								<p class="css-1w6vxok e68p3yt11">데비웨어를 최대 55% 할인으로 만나요</p>
							</div></a></li>
					<li class="css-1dmc8sd e68p3yt3"><a
						class="css-y6diwn e68p3yt4"
						href="https://content.29cm.co.kr/showcase/1185"><div
								class="css-xsc7ie e68p3yt5">
								<div class="css-33647j e68p3yt6">
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/03/90fba2d79bfb4a6da307b40cc624c871_20240503165052.jpg?width=800"
										alt="어디서든 편안하고 완벽하게" class="css-1324aqc e68p3yt7">
								</div>
							</div>
							<div class="css-9zetyy e68p3yt8">
								<h1 class="css-dtuif0 e68p3yt9">어디서든 편안하고 완벽하게</h1>
								<p class="css-1w6vxok e68p3yt11">데상트의 시그니처 원단 터프를 만나보세요</p>
							</div></a></li>
				</ul>
			</div>
		</div>

		<div class="css-1rw4rkj efvsb0w0">
			<ul class="css-11egtcj efvsb0w1">
				<button class="css-13tv9x8 efvsb0w2">New arrivals</button>
				<button class="css-ydj7ef efvsb0w2">Weekly best</button>
			</ul>
			<div class="css-9qgiem epow2i30">
				<h2 class="css-fnx4f5 epow2i33">
					New arrivals<a class="css-f1nnni epow2i34"
						href="https://www.29cm.co.kr/shop/category/list?category_large_code=286100100&amp;category_medium_code=new">전체보기</a>
				</h2>
				<div class="css-1ymgzmv epow2i31">
					<div class="css-6vy6m4 epow2i35">
						<svg class="epow2i38 css-1dv0xyg e15lsifv0"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
									<path d="M1 0l40 40.083L1.166 80" fill="none"
								fill-rule="evenodd" stroke="#000000" stroke-width="5"></path></svg>
					</div>
					<div class="css-vhkf1b epow2i36">
						<svg class="epow2i37 css-1tulk9i e15lsifv0"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
									<path d="M1 0l40 40.083L1.166 80" fill="none"
								fill-rule="evenodd" stroke="#000000" stroke-width="5"></path></svg>
					</div>
					<div
						class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events css-13alrll epow2i32">
						<div class="swiper-pagination swiper-pagination-bullets">
							<span
								class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
								class="swiper-pagination-bullet"></span><span
								class="swiper-pagination-bullet"></span><span
								class="swiper-pagination-bullet"></span><span
								class="swiper-pagination-bullet"></span>
						</div>
						<div class="swiper-wrapper"
							style="transform: translate3d(0px, 0px, 0px);">
							<div class="swiper-slide swiper-slide-active"
								style="width: 1017px;">
								<div class="css-s06ru1 el98g8e0">
									<div class="css-1htel8m eppx1jm0">
										<a class="css-13o7eu2 eppx1jm1"
											href="https://product.29cm.co.kr/catalog/2602241"><div
												class="css-15ri281 eppx1jm3">
												<div class="css-1efnu1n eppx1jm4">
													<img
														src="https://img.29cm.co.kr/item/202404/11eefe1d7f96a5b493679f5d95139ccb.jpg?width=500"
														alt="콜맨 루미에르 글로브 205602" class="css-uwwqev eppx1jm5">
												</div>
											</div>
											<div class="css-1pejrgr eppx1jm6">
												<h2 class="css-us5d4h eppx1jm7">콜맨</h2>
												<div class="css-5bfev eppx1jm8">콜맨 루미에르 글로브 205602</div>
												<span class="css-mojyhg eppx1jm9">22,000<span
													class="css-0 eppx1jm10">원</span></span>
											</div></a><a class="css-1cs9oh7 eppx1jm2"
											href="https://shop.29cm.co.kr/brand/16208">콜맨</a>
									</div>
									<div class="css-1htel8m eppx1jm0">
										<a class="css-13o7eu2 eppx1jm1"
											href="https://product.29cm.co.kr/catalog/2601604"><div
												class="css-15ri281 eppx1jm3">
												<div class="css-1efnu1n eppx1jm4">
													<img
														src="https://img.29cm.co.kr/item/202404/11eefe0e32c9ff40bb6a1957dcbc21e9.jpg?width=500"
														alt="콜맨 웨더마스터 헥사 타프 II 170T15750J"
														class="css-uwwqev eppx1jm5">
												</div>
											</div>
											<div class="css-1pejrgr eppx1jm6">
												<h2 class="css-us5d4h eppx1jm7">콜맨</h2>
												<div class="css-5bfev eppx1jm8">콜맨 웨더마스터 헥사 타프 II
													170T15750J</div>
												<span class="css-mojyhg eppx1jm9">430,000<span
													class="css-0 eppx1jm10">원</span></span>
											</div></a><a class="css-1cs9oh7 eppx1jm2"
											href="https://shop.29cm.co.kr/brand/16208">콜맨</a>
									</div>
									<div class="css-1htel8m eppx1jm0">
										<a class="css-13o7eu2 eppx1jm1"
											href="https://product.29cm.co.kr/catalog/2601837"><div
												class="css-15ri281 eppx1jm3">
												<div class="css-1efnu1n eppx1jm4">
													<img
														src="https://img.29cm.co.kr/item/202404/11eefe12175e340c9367b7104027bf3e.jpg?width=500"
														alt="콜맨 인스턴트 바이저 쉐이드 II/L+ /쉘터 타프 2000038824"
														class="css-uwwqev eppx1jm5">
												</div>
											</div>
											<div class="css-1pejrgr eppx1jm6">
												<h2 class="css-us5d4h eppx1jm7">콜맨</h2>
												<div class="css-5bfev eppx1jm8">콜맨 인스턴트 바이저 쉐이드 II/L+
													/쉘터 타프 2000038824</div>
												<span class="css-mojyhg eppx1jm9">198,000<span
													class="css-0 eppx1jm10">원</span></span>
											</div></a><a class="css-1cs9oh7 eppx1jm2"
											href="https://shop.29cm.co.kr/brand/16208">콜맨</a>
									</div>
									<div class="css-1htel8m eppx1jm0">
										<a class="css-13o7eu2 eppx1jm1"
											href="https://product.29cm.co.kr/catalog/2602456"><div
												class="css-15ri281 eppx1jm3">
												<div class="css-1efnu1n eppx1jm4">
													<img
														src="https://img.29cm.co.kr/item/202404/11eefe2b03f0b6fd88b16172d22744c1.jpg?width=500"
														alt="콜맨 팩 케이스 2000037441" class="css-uwwqev eppx1jm5">
												</div>
											</div>
											<div class="css-1pejrgr eppx1jm6">
												<h2 class="css-us5d4h eppx1jm7">콜맨</h2>
												<div class="css-5bfev eppx1jm8">콜맨 팩 케이스 2000037441</div>
												<span class="css-mojyhg eppx1jm9">52,000<span
													class="css-0 eppx1jm10">원</span></span>
											</div></a><a class="css-1cs9oh7 eppx1jm2"
											href="https://shop.29cm.co.kr/brand/16208">콜맨</a>
									</div>
									<div class="css-1htel8m eppx1jm0">
										<a class="css-13o7eu2 eppx1jm1"
											href="https://product.29cm.co.kr/catalog/2601867"><div
												class="css-15ri281 eppx1jm3">
												<div class="css-1efnu1n eppx1jm4">
													<img
														src="https://img.29cm.co.kr/item/202404/11eefe12ea05f7eabb6ae15cbc1553c3.jpg?width=500"
														alt="콜맨 얼티밋 아이스쿨러 II/35L (올리브) 2000037165"
														class="css-uwwqev eppx1jm5">
												</div>
											</div>
											<div class="css-1pejrgr eppx1jm6">
												<h2 class="css-us5d4h eppx1jm7">콜맨</h2>
												<div class="css-5bfev eppx1jm8">콜맨 얼티밋 아이스쿨러 II/35L
													(올리브) 2000037165</div>
												<span class="css-mojyhg eppx1jm9">97,000<span
													class="css-0 eppx1jm10">원</span></span>
											</div></a><a class="css-1cs9oh7 eppx1jm2"
											href="https://shop.29cm.co.kr/brand/16208">콜맨</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-next"
								style="width: 1017px;">
								<div class="css-s06ru1 el98g8e0">
									<div class="css-1htel8m eppx1jm0">
										<a class="css-13o7eu2 eppx1jm1"
											href="https://product.29cm.co.kr/catalog/2601709"><div
												class="css-15ri281 eppx1jm3">
												<div class="css-1efnu1n eppx1jm4">
													<img
														src="https://img.29cm.co.kr/item/202404/11eefe1036b0281788b13b7f4476c34f.jpg?width=500"
														alt="콜맨 스퀘어 타프(터쿠아즈) 2000023119"
														class="css-uwwqev eppx1jm5">
												</div>
											</div>
											<div class="css-1pejrgr eppx1jm6">
												<h2 class="css-us5d4h eppx1jm7">콜맨</h2>
												<div class="css-5bfev eppx1jm8">콜맨 스퀘어 타프(터쿠아즈)
													2000023119</div>
												<span class="css-mojyhg eppx1jm9">599,000<span
													class="css-0 eppx1jm10">원</span></span>
											</div></a><a class="css-1cs9oh7 eppx1jm2"
											href="https://shop.29cm.co.kr/brand/16208">콜맨</a>
									</div>
									<div class="css-1htel8m eppx1jm0">
										<a class="css-13o7eu2 eppx1jm1"
											href="https://product.29cm.co.kr/catalog/2602255"><div
												class="css-15ri281 eppx1jm3">
												<div class="css-1efnu1n eppx1jm4">
													<img
														src="https://img.29cm.co.kr/item/202404/11eefe1e94bca91cbb6a396c6b16e2c9.jpg?width=500"
														alt="콜맨 배터리가드 LED 랜턴 600 (블랙) 2000038854"
														class="css-uwwqev eppx1jm5">
												</div>
											</div>
											<div class="css-1pejrgr eppx1jm6">
												<h2 class="css-us5d4h eppx1jm7">콜맨</h2>
												<div class="css-5bfev eppx1jm8">콜맨 배터리가드 LED 랜턴 600
													(블랙) 2000038854</div>
												<span class="css-mojyhg eppx1jm9">44,000<span
													class="css-0 eppx1jm10">원</span></span>
											</div></a><a class="css-1cs9oh7 eppx1jm2"
											href="https://shop.29cm.co.kr/brand/16208">콜맨</a>
									</div>
									<div class="css-1htel8m eppx1jm0">
										<a class="css-13o7eu2 eppx1jm1"
											href="https://product.29cm.co.kr/catalog/2628167"><div
												class="css-15ri281 eppx1jm3">
												<div class="css-1efnu1n eppx1jm4">
													<img
														src="https://img.29cm.co.kr/item/202405/11ef0c3fed193657bb14cfada6525c51.jpg?width=500"
														alt="쿼시 올인원 미니 캠핑 롤티슈 아이보리 [70매]"
														class="css-uwwqev eppx1jm5">
												</div>
											</div>
											<div class="css-1pejrgr eppx1jm6">
												<h2 class="css-us5d4h eppx1jm7">쿼시</h2>
												<div class="css-5bfev eppx1jm8">쿼시 올인원 미니 캠핑 롤티슈 아이보리
													[70매]</div>
												<span class="css-1o7wxso eppx1jm9">13% 10,500<span
													class="css-0 eppx1jm10">원</span></span>
											</div></a><a class="css-1cs9oh7 eppx1jm2"
											href="https://shop.29cm.co.kr/brand/20714">쿼시</a>
									</div>





									<div class="css-xxabrc euxw2yv0">
										<div class="css-iwxnhl euxw2yv1">
											<hr class="css-ln2n0u euxw2yv3">
											<hr class="css-1kak7cd euxw2yv3">
											<ul class="css-1kc1i5k euxw2yv2">
												<div role="grid" class="css-kdcvh2" tabindex="0"
													style="position: relative; width: 100%; max-width: 100%; height: 2512px; max-height: 2512px;">
													<div role="gridcell"
														style="width: 319px; position: absolute; writing-mode: horizontal-tb; top: 1634px; left: 0px;">
														<div class="css-veh7ha elhzesg0">
															<a class="css-1jypvcz e1qv5i7p8"
																href="https://content.29cm.co.kr/brand-news/21432"><span
																class="css-1c39dt4 e1qv5i7p0"></span>
																<div class="css-u58y5m e1qv5i7p1">
																	<img
																		src="https://img.29cm.co.kr/cms/202404/11ef05c90b71b03dbb14cf4a4e01a13d.jpeg?width=500"
																		class="css-mqd1xo e1qv5i7p3">
																</div>
																<div class="css-10mzaug e1qv5i7p4">
																	<h1 class="css-1se6r14 e1qv5i7p6">시원함을 만끽할 준비</h1>
																	<p class="css-jg1sml e1qv5i7p7">HDEX 스윔웨어를 최대 35%
																		단독 할인가로 만나보세요. 다가오는 계절을 HDEX와 먼저 준비해보는건 어떨까요?</p>
																</div></a>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/2186226"><img
																	src="https://img.29cm.co.kr/next-product/2023/08/23/b0d5cb14b4ad444f972f6880e6038e6e_20230823124508.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">에이치덱스</span><span>우먼스
																			집업 크롭 래쉬가드 2 color</span><span class="css-pu7sky e1b74qft5">22%
																			53,800<span class="css-0 e1b74qft6">won</span>
																		</span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">304</span>
																	</button>
																</div>
															</div>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/2186224"><img
																	src="https://img.29cm.co.kr/next-product/2023/08/23/5735b43fe3bd4c1b88db8905c6a91368_20230823124417.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">에이치덱스</span><span>우먼스
																			집업 스탠다드 핏 래쉬가드 2 color</span><span
																			class="css-pu7sky e1b74qft5">20% 63,200<span
																			class="css-0 e1b74qft6">won</span>
																		</span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">96</span>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div role="gridcell"
														style="width: 319px; position: absolute; writing-mode: horizontal-tb; top: 918px; left: 638px;">
														<div class="css-veh7ha elhzesg0">
															<a class="css-1jypvcz e1qv5i7p8"
																href="https://content.29cm.co.kr/showcase/1167"><span
																class="css-1c39dt4 e1qv5i7p0"></span>
																<div class="css-u58y5m e1qv5i7p1">
																	<img
																		src="https://img.29cm.co.kr/cm/202404/11ef06d16d57b28fbb149bb536d89d65.jpg?width=500"
																		class="css-mqd1xo e1qv5i7p3">
																</div>
																<div class="css-10mzaug e1qv5i7p4">
																	<h1 class="css-1se6r14 e1qv5i7p6">흔들림 없는 안정감</h1>
																	<p class="css-jg1sml e1qv5i7p7">일상은 물론 자연 속에서도 함께할
																		수 있는 블랙야크의 요크셔 더퍼스트 GTX를 소개합니다. 아이유가 착용한 블랙야크 룩북을
																		만나보세요. 쇼케이스 기간 단독 할인과 추가 쿠폰 이벤트를 진행합니다.</p>
																</div></a>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/2539719"><img
																	src="https://img.29cm.co.kr/next-product/2024/03/19/844be9a8b8d24906bc242fe3eef07f83_20240319093647.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">블랙야크</span><span>요크셔
																			더퍼스트 GTX_LE</span><span class="css-pu7sky e1b74qft5">30%
																			175,296<span class="css-0 e1b74qft6">won</span>
																		</span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">23</span>
																	</button>
																</div>
															</div>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/2439788"><img
																	src="https://img.29cm.co.kr/item/202403/11eee684fb2177bc9a762b4d2bb50bca.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">블랙야크</span><span>요크셔
																			더퍼스트 GTX_BE</span><span class="css-pu7sky e1b74qft5">30%
																			175,296<span class="css-0 e1b74qft6">won</span>
																		</span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">19</span>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div role="gridcell"
														style="width: 319px; position: absolute; writing-mode: horizontal-tb; top: 918px; left: 0px;">
														<div class="css-veh7ha elhzesg0">
															<a class="css-1jypvcz e1qv5i7p8"
																href="https://product.29cm.co.kr/catalog/1997039"><span
																class="css-1c39dt4 e1qv5i7p0"></span>
																<div class="css-u58y5m e1qv5i7p1">
																	<img
																		src="https://img.29cm.co.kr/cm/202405/11ef0c115c4cf813b9bb6b14cdb65c11.jpg?width=500"
																		class="css-mqd1xo e1qv5i7p3">
																</div>
																<div class="css-10mzaug e1qv5i7p4">
																	<h1 class="css-1se6r14 e1qv5i7p6">피크닉 가는길</h1>
																	<p class="css-jg1sml e1qv5i7p7">피크닉 가는 길에 꼭 필요한, 눈에
																		띄는 디자인의 웨건을 소개합니다. 언제 어디서든 짐을 싣고 피크닉을 즐겨보세요.</p>
																</div></a>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/1997039"><img
																	src="https://img.29cm.co.kr/next-product/2023/03/28/5012492486b74a448fcf933dc151f49d_20230328112116.JPG?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">폴러스터프</span><span>[폴러스터프]
																			어드벤처 웨건 FURRY CAMO 캠핑웨건</span><span
																			class="css-1euw69w e1b74qft5">180,000<span
																			class="css-0 e1b74qft6">won</span></span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">52</span>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div role="gridcell"
														style="width: 319px; position: absolute; writing-mode: horizontal-tb; top: 942px; left: 319px;">
														<div class="css-veh7ha elhzesg0">
															<a class="css-1jypvcz e1qv5i7p8"
																href="https://content.29cm.co.kr/showcase/1185"><span
																class="css-1c39dt4 e1qv5i7p0"></span>
																<div class="css-u58y5m e1qv5i7p1">
																	<img
																		src="https://img.29cm.co.kr/cm/202405/11ef090de2822733bb14d9bf82a8b90b.jpg?width=500"
																		class="css-mqd1xo e1qv5i7p3">
																</div>
																<div class="css-10mzaug e1qv5i7p4">
																	<h1 class="css-1se6r14 e1qv5i7p6">어디서든 편안하고 완벽한 핏</h1>
																	<p class="css-jg1sml e1qv5i7p7">언제 어디서나 편안하고 완벽한 핏을
																		선사하는 데상트의 시그니처 원단 터프를 소개합니다. 쾌적한 착용감과 데상트만의 기술력으로 결합한
																		최상의 트레이닝 기능성 원단 티셔츠를 경험해 보세요.</p>
																</div></a>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/2325136"><img
																	src="https://img.29cm.co.kr/next-product/2024/04/29/bc79d117b7c448eb9724280cdc13e315_20240429122000.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">데상트</span><span>[TOUGH]
																			터프 에센셜 반팔 티셔츠 SP123UTS11</span><span
																			class="css-pu7sky e1b74qft5">10% 49,500<span
																			class="css-0 e1b74qft6">won</span>
																		</span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">8</span>
																	</button>
																</div>
															</div>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/2512039"><img
																	src="https://img.29cm.co.kr/next-product/2024/04/09/5fb6aca4b4c74dd4a1bbdf893c3f05b7_20240409161835.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">데상트</span><span>여성
																			스트레치 우븐 바람막이 SP122UWB31</span><span
																			class="css-pu7sky e1b74qft5">10% 161,100<span
																			class="css-0 e1b74qft6">won</span>
																		</span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">7</span>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div role="gridcell"
														style="width: 319px; position: absolute; writing-mode: horizontal-tb; top: 0px; left: 319px;">
														<div class="css-veh7ha elhzesg0">
															<a class="css-1jypvcz e1qv5i7p8"
																href="https://content.29cm.co.kr/brand-news/21514"><span
																class="css-1c39dt4 e1qv5i7p0"></span>
																<div class="css-u58y5m e1qv5i7p1">
																	<img
																		src="https://img.29cm.co.kr/cms/202404/11ef03b9498c019bb9bbf7025a7e1a8c.jpeg?width=500"
																		class="css-mqd1xo e1qv5i7p3">
																</div>
																<div class="css-10mzaug e1qv5i7p4">
																	<h1 class="css-1se6r14 e1qv5i7p6">72시간의 즐거운 이벤트</h1>
																	<p class="css-jg1sml e1qv5i7p7">등산, 하이킹, 캠핑, 수상
																		스포츠, 낚시, 심지어 가족 주말여행을 커버할 수 있는 야외용 제품을 만들어 나가는 포몬스터의
																		즐거운 72시간 할인 이벤트를 29CM에서 만나보세요.</p>
																</div></a>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/435074"><img
																	src="https://img.29cm.co.kr/next-product/2023/03/20/e3a0965b7c2243cea73dfeaca370f9b4_20230320161925.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">포몬스터</span><span>
																			[~5/10 단독할인]_24L 초경량 폴딩백팩 블랙</span><span
																			class="css-pu7sky e1b74qft5">30% 36,400<span
																			class="css-0 e1b74qft6">won</span></span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">699</span>
																	</button>
																</div>
															</div>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/683105"><img
																	src="https://img.29cm.co.kr/next-product/2023/03/20/e2e9e62014f94f3e886b860ff3d0b859_20230320163030.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">포몬스터</span><span>
																			[~5/10 단독할인]_24L 초경량 폴딩백팩 헌터그린</span><span
																			class="css-pu7sky e1b74qft5">30% 36,400<span
																			class="css-0 e1b74qft6">won</span></span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">1,368</span>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div role="gridcell"
														style="width: 319px; position: absolute; writing-mode: horizontal-tb; top: 0px; left: 638px;">
														<div class="css-veh7ha elhzesg0">
															<a class="css-1jypvcz e1qv5i7p8"
																href="https://content.29cm.co.kr/brand-news/21300"><span
																class="css-1c39dt4 e1qv5i7p0"></span>
																<div class="css-u58y5m e1qv5i7p1">
																	<img
																		src="https://img.29cm.co.kr/cms/202404/11ef0208abfc5798bb6ab5b391f02684.jpeg?width=500"
																		class="css-mqd1xo e1qv5i7p3">
																</div>
																<div class="css-10mzaug e1qv5i7p4">
																	<h1 class="css-1se6r14 e1qv5i7p6">조금 일찍 만나는 여름</h1>
																	<p class="css-jg1sml e1qv5i7p7">디스커버리 래쉬가드를 통해 조금 더
																		일찍 여름 휴가를 준비해 보세요. 이월 상품 황금 사이즈로 최대 40%할인 혜택과 15만원 이상
																		구매 시 디스커버리 드라이백을 증정합니다.</p>
																</div></a>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/1866033"><img
																	src="https://img.29cm.co.kr/next-product/2023/01/09/78c35b40275f463b8e0959bb69fa3742_20230109181738.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">디스커버리 익스페디션</span><span>
																			[단독 할인]_에센셜 로고 남성 래쉬가드 (BLACK)</span><span
																			class="css-pu7sky e1b74qft5">30% 55,300<span
																			class="css-0 e1b74qft6">won</span></span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">112</span>
																	</button>
																</div>
															</div>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/1866031"><img
																	src="https://img.29cm.co.kr/next-product/2023/02/03/8559621d893a4e988952bae87719e1a0_20230203161259.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">디스커버리 익스페디션</span><span>
																			[단독 할인]_베이직 풀밴드형 남성 보드숏 (TURQUOISE)</span><span
																			class="css-pu7sky e1b74qft5">30% 55,300<span
																			class="css-0 e1b74qft6">won</span>
																		</span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">214</span>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div role="gridcell"
														style="width: 319px; position: absolute; writing-mode: horizontal-tb; top: 0px; left: 0px;">
														<div class="css-veh7ha elhzesg0">
															<a class="css-1jypvcz e1qv5i7p8"
																href="https://content.29cm.co.kr/brand-news/21646"><span
																class="css-1c39dt4 e1qv5i7p0"></span>
																<div class="css-u58y5m e1qv5i7p1">
																	<img
																		src="https://img.29cm.co.kr/cms/202405/11ef0d990fe72ae3b9bb2bd84d40f15b.jpeg?width=500"
																		class="css-mqd1xo e1qv5i7p3">
																</div>
																<div class="css-10mzaug e1qv5i7p4">
																	<h1 class="css-1se6r14 e1qv5i7p6">탐험을 위한 첫걸음</h1>
																	<p class="css-jg1sml e1qv5i7p7">여행의 진정한 의미를 찾는
																		내셔널지오그래픽의 캐리어를 소개해요. 새로 나온 신상품부터 인기 상품까지, 사은품 이벤트와 함께
																		만나보세요.</p>
																</div></a>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/2608730"><img
																	src="https://img.29cm.co.kr/next-product/2024/04/24/7d128a0cf4de4016823f6586fef9de21_20240424154114.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">내셔널지오그래픽</span><span>내셔널지오그래픽
																			N245ASU350 하바나 캐리어 20형 IVORY</span><span
																			class="css-pu7sky e1b74qft5">10% 197,100<span
																			class="css-0 e1b74qft6">won</span></span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">2</span>
																	</button>
																</div>
															</div>
															<div class="css-15xwjg0 e1b74qft0">
																<a class="css-mn2zdd e1b74qft1"
																	href="https://product.29cm.co.kr/catalog/2608739"><img
																	src="https://img.29cm.co.kr/next-product/2024/04/24/bf5b0392df6a4fbc97796416628f32f0_20240424154048.jpg?width=150"
																	class="css-nt3lq3 e1b74qft2">
																	<div class="css-161seae e1b74qft3">
																		<span class="css-16b7yk2 e1b74qft4">내셔널지오그래픽</span><span>내셔널지오그래픽
																			N245ASU350 하바나 캐리어 20형 MINT</span><span
																			class="css-pu7sky e1b74qft5">10% 197,100<span
																			class="css-0 e1b74qft6">won</span></span>
																	</div></a>
																<div class="css-16j3p2r e1b74qft7">
																	<button class="css-1u7zeg9 e1b74qft8">
																		<svg xmlns="http://www.w3.org/2000/svg" width="16"
																			height="14" viewBox="0 0 20 20">
													<path
																				d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
																				fill="none" fill-rule="evenodd" stroke="#5d5d5d"
																				stroke-width="0.7"></path></svg>
																		<span class="css-1afbq5h e1b74qft9">1</span>
																	</button>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div></div>
											</ul>
										</div>
									</div>
								</div>
								<footer class="css-1lo70d e1l4oco10">
									<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
								</footer>
							</div>


						</div>

						<script>
								let slideIndex = 0;

								function showSlides(slideIndex) {

									$(".slideshow-container .mySlides").css(
											"display", "none"); // hide();

									$(".slideshow-container .mySlides").eq(
											slideIndex).css("display", "block"); // show();

									$(".dots span.dot").removeClass("active")
											.eq(slideIndex).addClass("active");
								}

								showSlides(slideIndex);

								function dotSlide(value) {
									slideIndex = value;
									showSlides(slideIndex);
								}
								// 0 1 2
								function changeSlide(value) {
									slideIndex += value;
									if (slideIndex == 5) {
										slideIndex = 0;
									} else if (slideIndex == value) {
										slideIndex = value;
									}
									showSlides(slideIndex);
								}
							</script>
</body>
</html>