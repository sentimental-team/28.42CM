<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- main 기본스타일 -->
<style>

span.material-symbols-outlined {
	vertical-align: text-bottom;
}

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

div {
    display: block;
    unicode-bidi: isolate;
}

ol, ul, li {
	list-style: none;
}

body, input, select, textarea, button, a {
	-webkit-text-size-adjust: none;
	font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic,
		'나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}

body {
	width: 100%;
}

ul {
	list-style-type: disc;
}

img {
	border: 0;
	vertical-align: top;
}

path[Attributes Style] {
	d: path("M 1 0 l 40 40.083 L 1.166 80");
	fill: none;
	fill-rule: evenodd;
	stroke: rgb(0, 0, 0);
	stroke-width: 5;
}

user agent stylesheet
:not(svg) {
	transform-origin: 0px 0px;
}
</style>

<!-- 카테고리 메인 css -->
<style>

.css-ud09pe {
    position: fixed;
    bottom: calc(var(--ruler-scale-dimension-225) + constant(safe-area-inset-bottom));
    bottom: calc(var(--ruler-scale-dimension-225) + env(safe-area-inset-bottom));
    left: var(--ruler-scale-dimension-225);
    right: var(--ruler-scale-dimension-225);
    z-index: 2147483647;
}

@supports (position:sticky) or (position:-webkit-sticky) {
    .css-1opn7tv {
        position: -webkit-sticky;
        position: sticky;
        z-index: 10;
        top: 0px;
        padding-top: 0;
    }
}

.css-1opn7tv {
    min-width: 540;
    margin: 0 auto;
    padding-top: 260px;
}

@supports (position:sticky) or (position:-webkit-sticky) {
    .css-599st9 {
        padding-bottom: 120px;
    }
}

.css-1gqrtg9 {
    position: relative;
    margin-top: 59px;
}

.css-79elbk {
    position: relative;
}

.css-ccftqy {
    height: 680px;
    width: 100%;
    position: relative;
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

@media (min-width: 541px) {
    .css-ccftqy .swiper-pagination-bullet {
        margin: 0px 5px;
        border-radius: 50%;
    }
}

.css-ccftqy .swiper-pagination-bullet {
    width: 16px;
    height: 16px;
    background: rgba(255, 255, 255, 0.3);
    vertical-align: top;
    display: inline-block;
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

.swiper-slide {
    flex-shrink: 0;
    width: 100%;
    height: 100%;
    position: relative;
    transition-property: transform;
}

.css-12ngsuq {
    position: relative;
    background-color: rgb(244, 244, 244);
    width: 100%;
    height: 100%;
}

.css-1rdq2xw {
    width: 100%;
    height: 100%;
    background-repeat: no-repeat;
    object-fit: cover;
    object-position: 50% center;
}

@media (min-width: 541px) {
    .css-ftsck8 {
        height: 680px;
        margin: 0px 100px 0px 380px;
    }
}

.css-ftsck8 {
    overflow: hidden;
    text-align: left;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    position: absolute;
    top: 0px;
}

@media (min-width: 541px) {
    .css-1a9mgan {
        width: 440px;
        margin-left: 60px;
    }
}

.css-1a9mgan {
    color: rgb(0, 0, 0);
}

.css-rrjwli {
    white-space: pre-wrap;
    font-size: 48px;
    font-weight: 500;
    line-height: 58px;
}

.css-1pnjbcd {
    margin-top: 19px;
    font-size: 28px;
    line-height: 35px;
    white-space: pre-wrap;
}

.css-145q29u {
    position: absolute;
    top: 50%;
    margin-top: -60px;
    padding: 30px;
    z-index: 10;
    cursor: pointer;
    left: 275px;
    right: auto;
}

.css-8k8h7u {
    width: 30px;
    height: 60px;
    transform: rotate(180deg);
}

.css-8k8h7u path {
    stroke: rgb(48, 48, 51);
    stroke-width: 3;
}

.css-a9wn2v {
    position: absolute;
    top: 50%;
    margin-top: -60px;
    padding: 30px;
    z-index: 10;
    cursor: pointer;
    right: 0px;
    left: auto;
}

.css-1s3uxh2 {
    width: 30px;
    height: 60px;
}

.css-1s3uxh2 path {
    stroke: rgb(48, 48, 51);
    stroke-width: 3;
}

@media (min-width: 541px) {
    .css-1onoukq {
        position: absolute;
        z-index: 2;
        top: 0px;
        left: 25px;
    }
}

.css-1onoukq {
    width: 250px;
    margin: 25px 0px 0px;
    padding: 25px 25px 15px;
    background: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 30px 0px;
}

.css-8t2d70 {
    padding: 3px 0px;
}

.css-kkqm0g {
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

.css-eannyr {
    list-style: none;
}

.css-1iv23n0 {
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

@media (min-width: 541px) {
    .css-4e43p {
        max-width: 1920px;
        margin: 0px auto;
        padding: 0px 50px 0px 300px;
    }
}

@media (min-width: 541px) {
    .css-zl0y5r {
        padding: 58px 0px 80px;
    }
}

@media (min-width: 541px) {
    .css-19p5dbs {
        padding-bottom: 100px;
    }
}

@media (min-width: 541px) and (max-width: 1400px) {
    .css-3dx3su {
    }
}

@media (min-width: 541px) {
    .css-3dx3su {
        display: flex;
        flex-wrap: wrap;
        margin-left: -40px;
    }
}

@media (min-width: 541px) and (max-width: 1400px) {
    .css-1dmc8sd {
        padding-left: 30px;
    }
}

@media (min-width: 541px) {
    .css-1dmc8sd {
        flex: 0 0 auto;
        width: 50%;
        padding: 0px 0px 30px 40px;
        box-sizing: border-box;
    }
}

.css-y6diwn {
    display: block;
    position: relative;
    text-decoration: none;
}

.css-1324aqc {
    width: 100%;
}

.css-9zetyy {
    display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    color: rgb(0, 0, 0);
}

@media (min-width: 541px) {
    .css-dtuif0 {
        margin-top: 12px;
        font-size: 23px;
        line-height: 30px;
        font-weight: 600;
    }
}

.css-1w6vxok {
    margin-top: 6px;
    font-size: 15px;
    line-height: 24px;
}

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

@media (min-width: 541px) {
    .css-9qgiem {
        padding: 50px 100px 40px;
        text-align: center;
        background: rgb(48, 48, 51);
    }
}


@media (min-width: 541px) {
    .css-fnx4f5 {
        display: none;
    }
}


@media (min-width: 541px) {
    .css-f1nnni {
        display: none;
    }
}

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

.css-1dv0xyg path {
    stroke: rgb(255, 255, 255);
    stroke-width: 2;
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

.css-1tulk9i path {
    stroke: rgb(255, 255, 255);
    stroke-width: 2;
}

@media (min-width: 541px) {
    .css-13alrll {
        padding-bottom: 54px;
    }
}


@media (min-width: 541px) {
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

@media (min-width: 541px) {
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

.css-s06ru1 {
    display: flex;
    flex-wrap: wrap;
    flex-shrink: 0;
    position: relative;
    width: 100%;
    height: 100%;
}


@media (max-width: 1400px) {
    .css-1htel8m {
        padding: 0px 10px;
    }
}

.css-1htel8m {
    position: relative;
    box-sizing: border-box;
    width: 20%;
    padding: 0px 20px;
    color: rgb(255, 255, 255);
    text-align: center;
}

.css-13o7eu2 {
    display: block;
}

.css-15ri281 {
    position: relative;
    overflow: hidden;
    width: 100%;
    padding-top: 100%;
    background: rgb(244, 244, 244);
}

.css-1efnu1n {
    position: absolute;
    inset: 0px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
}

.css-uwwqev {
    width: 100%;
    height: 100%;
}

.css-1pejrgr {
    margin-top: 15px;
}

@media (min-width: 541px) {
    .css-us5d4h {
        margin-bottom: 7px;
        font-size: 13px;
        text-decoration: underline;
    }
}

.css-us5d4h {
    display: block;
    font-weight: 700;
    line-height: 1.2;
    color: rgb(255, 255, 255);
}

@media (min-width: 541px) {
    .css-5bfev {
        padding: 0px 1%;
        color: rgb(255, 255, 255);
    }
}

.css-5bfev {
    margin-bottom: 14px;
    font-size: 12px;
    line-height: 16px;
    color: rgb(93, 93, 93);
    word-break: break-all;
}

.css-mojyhg {
    font-size: 14px;
    font-weight: 600;
    line-height: 16px;
    color: rgb(255, 255, 255);
}

.css-1cs9oh7 {
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

</style>
<style>
@media ( max-width : 1340px) {
	.css-xxabrc {
		padding: 0px 50px;
	}
}

.css-xxabrc {
	position: relative;
	box-sizing: border-box;
	min-width: 1000px;
	max-width: 1920px;
	margin: 100px auto 10px;
	padding: 0px 220px;
	box-sizing: border-box;
}

.css-iwxnhl {
	position: relative;
	display: flex;
	padding: 30px 0px 100px;
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

.css-kdcvh2>div {
	box-sizing: content-box;
	transition: opacity 0.2s ease-in-out 0s;
}

.css-veh7ha {
	padding: 0px 20%;
}

.css-1jypvcz {
	position: relative;
	display: block;
	margin-top: 120px;
	text-align: left;
}

@media screen and (width <= 1000px) {
	.css-1c39dt4 {
		width: 70%;
		max-width: 200px;
	}
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

@media ( min-width : 541px) and (max-width: 1200px) {
	.css-mn2zdd {
		flex-direction: column-reverse;
	}
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

.css-1afbq5h {
	display: block;
	margin: 5px 0px 0px;
	text-align: center;
	font-size: 11px;
	font-family: campton;
	color: rgb(93, 93, 93);
}

@media ( min-width : 541px) and (max-width: 1200px) {
	.css-161seae {
		margin-left: 0px;
		margin-bottom: 10px;
	}
}

.css-161seae {
	margin-left: 18px;
	font-size: 11px;
	line-height: 16px;
	color: rgb(0, 0, 0);
	text-align: left;
	padding-right: 10px;
}

svg[Attributes Style] {
	width: 16;
	height: 14;
}

user agent stylesheet
svg:not(:root) {
	overflow-clip-margin: content-box;
	overflow: hidden;
}

.css-gwmxrk {
	position: relative;
	padding: 0px 8%;
}

.css-14o6xpt {
	color: rgb(0, 0, 0);
	word-break: keep-all;
}

.css-1w4ylzh {
	margin-top: 30px;
	padding-bottom: 30px;
}

.css-1f9ss6h {
	position: relative;
	overflow: hidden;
	width: 55%;
	margin: 0px auto;
	padding-top: 55%;
	background: rgb(245, 247, 246);
}

.css-1sxsjv7 {
	position: absolute;
	top: 0px;
	right: 0px;
	left: 0px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	height: 100%;
}

.css-ducv57 {
	width: 100%;
	height: auto;
}

.css-u00t1k {
	margin-top: 15px;
	padding: 17px 80px 0px 2px;
	border-top: 1px solid rgb(160, 160, 160);
}

.css-dmr9ea {
	margin-bottom: 7px;
	font-size: 13px;
	font-weight: 700;
	line-height: 1.2;
	color: rgb(0, 0, 0);
	text-decoration: underline;
}

.css-1kqdjtb {
	margin-bottom: 14px;
	padding-right: 10%;
	font-size: 12px;
	line-height: 16px;
	color: rgb(93, 93, 93);
	word-break: break-all;
}

.css-1ml2lf9 {
	display: block;
	font-size: 13px;
	font-weight: 600;
	line-height: 16px;
	color: rgb(255, 72, 0);
}

.css-1qxtz39 {
	font-size: 12px;
}

.css-1bwkv0 {
	position: absolute;
	top: 30%;
	margin-top: -40px;
	z-index: 10;
	cursor: pointer;
	padding: 20px 20px 20px 0px;
	left: 0px;
}

.css-939qlc {
	width: 12px;
	height: 20px;
	transform: rotate(180deg);
}

.css-939qlc path {
	stroke: rgb(48, 48, 51);
	stroke-width: 3;
}

.css-atr7u2 {
	position: absolute;
	top: 30%;
	margin-top: -40px;
	z-index: 10;
	cursor: pointer;
	right: 0px;
	padding: 20px 0px 20px 20px;
}

.css-1m5kce {
	width: 12px;
	height: 20px;
}

.css-1m5kce path {
	stroke: rgb(48, 48, 51);
	stroke-width: 3;
}

.css-r9lblg {
	bottom: 35px;
	width: 30%;
	font-size: 30px;
	font-style: italic;
	color: rgb(160, 160, 160);
	font-weight: 200;
	position: absolute;
	text-align: center;
	right: 0px;
}

.css-nxo31t {
	display: block;
	margin: 0px 35px -15px 0px;
	padding-right: 4px;
	font-size: 45px;
	color: rgb(0, 0, 0);
}
</style>

<!-- 카테고리별 css -->
<style>

.css-djkdj4 {
    padding: 60px 50px 200px;
}

.css-yb8y9j {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-title-s-bold-font-family);
    font-weight: var(--ruler-semantic-typography-title-s-bold-font-weight);
    line-height: var(--ruler-semantic-typography-title-s-bold-line-height);
    font-size: var(--ruler-semantic-typography-title-s-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-18qls73 {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding-top: 14px;
}

.css-mpxvda {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
    flex-shrink: 0;
    width: 220px;
}

.css-1i7cscv {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding-top: 25px;
    border-top: 4px solid var(--ruler-semantic-color-fill-primary);
}

.css-13brihr {
    text-align: left;
}

body, input, select, textarea, button, a {
    -webkit-text-size-adjust: none;
    font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic, '나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}

button {
    border: 0;
    background: transparent;
    cursor: pointer;
    outline: none;
}

.css-1kf5pac {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xxl-font-family);
    font-weight: var(--ruler-semantic-typography-text-xxl-font-weight);
    line-height: var(--ruler-semantic-typography-text-xxl-line-height);
    font-size: var(--ruler-semantic-typography-text-xxl-font-size);
    color: var(--ruler-semantic-color-text-secondary);
}

.css-1i7cscv > :not(style) ~ :not(style) {
    margin-top: 16px;
}

.css-1vqrq36 {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xxl-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-xxl-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-xxl-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-xxl-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-3o8pio {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xxl-medium-font-family);
    font-weight: var(--ruler-semantic-typography-text-xxl-medium-font-weight);
    line-height: var(--ruler-semantic-typography-text-xxl-medium-line-height);
    font-size: var(--ruler-semantic-typography-text-xxl-medium-font-size);
    color: var(--ruler-semantic-color-text-secondary);
}

.css-ji86f3 {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
    position: relative;
    flex-shrink: 0;
    width: 220px;
    padding-top: 14px;
    border-top: 4px solid var(--ruler-semantic-color-fill-primary);
    margin-top: 60px;
}

.css-n2i0sz {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-n2i0sz > :not(style) ~ :not(style) {
    margin-top: 24px;
}

.css-1x09jzi {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-1uvje1m {
    overflow-y: scroll;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    row-gap: 16px;
    max-height: 345px;
    margin-right: 4px;
    padding-top: 16px;
    padding-right: 4px;
}

@media (min-width: 541px) {
    .css-16swvqp {
        padding: 0px;
        border-bottom: none;
    }
}

.css-16swvqp {
    padding: 12px 0px;
    border-bottom: 1px solid var(--ruler-semantic-color-border-divider);
}

.css-s51fmo {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    cursor: pointer;
}

.css-s51fmo {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
    width: 28px;
    height: 28px;
    border: none;
    border-radius: 50%;
}

.css-84s20f {
    width: 22px;
    height: 22px;
    background-color: rgb(0, 0, 0);
    border-radius: 50%;
    box-shadow: none;
}

.css-10iqra1 > :not(style) ~ :not(style) {
    margin-left: 6px;
}

.css-10iqra1 {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    cursor: pointer;
}

.css-1k1p1k1 {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-m-font-family);
    font-weight: var(--ruler-semantic-typography-text-m-font-weight);
    line-height: var(--ruler-semantic-typography-text-m-line-height);
    font-size: var(--ruler-semantic-typography-text-m-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-wd9bws {
    width: 22px;
    height: 22px;
    background-color: rgb(33, 186, 33);
    border-radius: 50%;
    box-shadow: none;
}

.css-v6pf3e {
    width: 22px;
    height: 22px;
    background-color: rgb(113, 132, 47);
    border-radius: 50%;
    box-shadow: none;
}

.css-zfxkzo {
    width: 22px;
    height: 22px;
    background-color: rgb(53, 133, 194);
    border-radius: 50%;
    box-shadow: none;
}

.css-1v3caum {
    padding-top: 16px;
}

.css-j7qwjs {
    display: flex;
    flex-direction: column;
}

.css-rbgw40 {
    display: flex;
    flex-direction: row-reverse;
    -webkit-box-pack: justify;
    justify-content: space-between;
    gap: var(--ruler-scale-dimension-100);
    cursor: pointer;
    padding: 17px 0px;
    border-bottom: 1px solid var(--ruler-semantic-color-border-divider);
}

.css-ox746a {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    box-sizing: border-box;
    border-radius: var(--ruler-scale-corner-radius-full);
    width: 18px;
    height: 18px;
    min-width: 18px;
    min-height: 18px;
    max-width: 18px;
    max-height: 18px;
    border: 2px solid var(--ruler-semantic-color-border-line);
    background: var(--ruler-semantic-color-fill-silent);
}

.css-1kjeyij {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding-top: 16px;
}

.css-r8yr5t {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-medium-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-medium-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-medium-line-height);
    font-size: var(--ruler-semantic-typography-text-l-medium-font-size);
    color: var(--ruler-semantic-color-text-primary);
    margin-bottom: 4px;
}

.css-r8yr5t span {
    color: var(--ruler-semantic-color-common-accent);
    margin-left: 2px;
}

.css-14n7qyk {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    padding: var(--ruler-scale-dimension-150) var(--ruler-scale-dimension-125) var(--ruler-scale-dimension-150) var(--ruler-scale-dimension-150);
    border-width: 1px;
    border-style: solid;
    border-image: initial;
    height: 44px;
    box-sizing: border-box;
    border-radius: 4px;
    background-color: var(--ruler-semantic-color-fill-disabled);
    border-color: var(--ruler-semantic-color-border-line-disabled);
}

.css-1cyeafc:disabled {
    color: var(--ruler-semantic-color-text-disabled);
}

.css-1cyeafc:read-only {
    color: var(--ruler-semantic-color-text-secondary);
}

.css-1cyeafc {
    border: none;
    background-color: transparent;
    outline: none;
    flex: 1 1 0%;
    font-family: var(--ruler-semantic-typography-text-l-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-line-height);
    font-size: var(--ruler-semantic-typography-text-l-font-size);
    padding: 0px;
    margin-left: 4px;
    text-overflow: ellipsis;
}

.css-1lh7cs7 {
    width: 28px;
    height: 28px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    background-color: transparent;
    border: none;
    outline: none;
}

.css-1qaynhp {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-m-font-family);
    font-weight: var(--ruler-semantic-typography-text-m-font-weight);
    line-height: var(--ruler-semantic-typography-text-m-line-height);
    font-size: var(--ruler-semantic-typography-text-m-font-size);
    color: var(--ruler-semantic-color-text-disabled);
}

.css-1kjeyij > :not(style) ~ :not(style) {
    margin-top: 16px;
}

.css-1cyeafc:disabled {
    color: var(--ruler-semantic-color-text-disabled);
}

.css-1x09jzi > :not(style) ~ :not(style) {
    margin-top: 48px;
}

.css-bhw5do {
    padding: var(--ruler-scale-dimension-225) 0;
    border-bottom: 1px solid var(--ruler-semantic-color-border-divider);
}

.css-x5vkgf {
    display: flex;
    flex-direction: row-reverse;
    -webkit-box-pack: justify;
    justify-content: space-between;
    gap: var(--ruler-scale-dimension-100);
    cursor: pointer;
}

.css-1midve5 {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    box-sizing: border-box;
    border-radius: 2px;
    width: 18px;
    height: 18px;
    min-width: 18px;
    min-height: 18px;
    max-width: 18px;
    max-height: 18px;
    border: 1px solid var(--ruler-semantic-color-border-line);
    background: var(--ruler-semantic-color-fill-silent);
}

.css-1midve5 path, .css-1midve5 rect {
    fill: var(--ruler-semantic-color-text-tertiary);
}

.css-zn9jx2 {
    overflow: hidden scroll;
    max-height: 345px;
    padding-top: 16px;
    padding-right: 4px;
}

@media (min-width: 541px) {
    .css-1fjmfvp {
        padding: 14px 0px;
    }
}

.css-1fjmfvp {
    position: relative;
    padding: var(--ruler-scale-dimension-150) 0;
    border-bottom: 1px solid var(--ruler-semantic-color-border-divider);
}

.css-jrjk04 {
    align-items: flex-start;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-jrjk04 > :not(style) ~ :not(style) {
    margin-top: 6px;
}

.css-qz1c7d {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xs-font-family);
    font-weight: var(--ruler-semantic-typography-text-xs-font-weight);
    line-height: var(--ruler-semantic-typography-text-xs-line-height);
    font-size: var(--ruler-semantic-typography-text-xs-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-ji86f3 > :not(style) ~ :not(style) {
    margin-top: 24px;
}

.css-p40hl8 {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    width: 220px;
    padding: 40px 0px;
    background: linear-gradient(rgba(255, 255, 255, 0) 0%, rgb(255, 255, 255) 51.56%, rgb(255, 255, 255) 100%);
}

.css-18qls73 > :not(style) ~ :not(style) {
    margin-left: 60px;
}

.css-8atqhb {
    width: 100%;
}

.css-7f211h {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    min-height: 42px;
    border: 1px solid var(--ruler-semantic-color-border-line);
}

.css-bjuzxk {
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    flex: 1 1 0%;
    -webkit-box-align: center;
    align-items: center;
    height: 100%;
    min-height: 42px;
    border-right: 1px solid var(--ruler-semantic-color-border-line);
}

.css-qkyj89 {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-flow: wrap;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-8f3egq {
    position: relative;
    padding: 11px 20px;
}

.css-izpnhq {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-l-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-17x39sj {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-line-height);
    font-size: var(--ruler-semantic-typography-text-l-font-size);
    color: var(--ruler-semantic-color-text-secondary);
}

.css-1ohriwx {
    align-self: flex-start;
    max-width: 120px;
}

.css-1xg2rii {
    position: relative;
    width: 100%;
}

@media (max-width: 1024px) {
    .css-1hjflnh {
        grid-template-columns: repeat(3, 1fr);
    }
}

@media (max-width: 1640px) {
    .css-1hjflnh {
        grid-template-columns: repeat(4, 1fr);
    }
}
@media (max-width: 1920px) {
    .css-1hjflnh {
        grid-template-columns: repeat(5, 1fr);
    }
}

.css-1hjflnh {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 60px 20px;
    padding: 24px 0px 60px;
}

.css-1teigi4 {
    position: relative;
    overflow: hidden;
    font-size: 13px;
    line-height: 1.4;
}

.css-5cm1aq {
    color: rgb(0, 0, 0);
}

.css-17mq37v {
    position: relative;
    overflow: hidden;
    padding-top: 100%;
    background-color: rgb(244, 244, 244);
}

.css-17mq37v img {
    position: absolute;
    top: 0px;
    left: 0px;
    aspect-ratio: 1 / 1;
    width: 100%;
    font-size: 0px;
    object-fit: cover;
}

.css-1drk60u {
    position: relative;
    padding-top: 14px;
}

.css-1ktbrl2 {
    overflow: hidden;
    display: block;
    margin: 2px 0px 6px;
    padding-right: 32px;
    font-size: 11px;
    font-weight: 700;
    line-height: 13px;
    color: rgb(0, 0, 0);
    text-overflow: ellipsis;
    white-space: nowrap;
}

.css-qoj3dd h5 {
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

.css-qthr7l {
    margin-top: 6px;
    font-size: 14px;
    font-weight: 500;
    line-height: 14px;
}

.css-19cy31c {
    margin-top: 1px;
    line-height: 19px;
}

.css-1nr17il {
    margin-right: 5px;
    color: rgb(255, 72, 0);
}

.css-s9qxfl {
    font-weight: inherit;
    line-height: 19px;
    color: unset;
}

.css-h1wwjr {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 15px;
    margin-top: 16px;
    font-size: 11px;
    color: rgb(93, 93, 93);
}

.css-5q6llm {
    display: flex;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    font-size: inherit;
    color: inherit;
}

.css-5q6llm > svg + div {
    margin-left: 4px;
}

.css-h1wwjr > button + a {
    margin-left: 27px;
}

.css-1o3cxb9 {
    color: inherit;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    line-height: 1;
}

.css-ik4rmz {
    margin-right: 4px;
}

.css-ik4rmz path {
    fill: none;
    stroke: rgb(93, 93, 93);
}

.css-1p5c1f6 {
    margin-right: 2px;
    color: rgb(255, 72, 0);
}

@media (min-width: 541px) {
    .css-n2r913 {
        display: none;
    }
}

.css-n2r913 {
    width: 32px;
    height: 28px;
    font-size: inherit;
    color: inherit;
    display: flex;
    align-items: flex-end;
    justify-content: left;
    position: absolute;
    top: 6px;
    right: 0px;
    line-height: 1;
}

.css-kkyj92 {
    display: flex;
    margin-top: 6px;
}

.css-1x5pky6 {
    padding: 0px 6px;
    font-size: 10px;
    font-weight: 500;
    line-height: 18px;
    color: rgb(29, 29, 29);
    background-color: rgb(244, 244, 244);
    border-radius: 1px;
}

.css-1rsgy8u {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
}

.css-134sqpg {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
}

.css-qty8jo {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-1oo08bm {
    width: 24px;
    height: 24px;
    min-width: 24px;
    min-height: 24px;
}

.css-1oo08bm * {
    fill: var(--ruler-semantic-color-text-disabled);
}

.css-134sqpg > :not(style) ~ :not(style) {
    margin-left: 24px;
}

.css-b8i4ra {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-19xy1bb {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-title-xxl-bold-font-family);
    font-weight: var(--ruler-semantic-typography-title-xxl-bold-font-weight);
    line-height: var(--ruler-semantic-typography-title-xxl-bold-line-height);
    font-size: var(--ruler-semantic-typography-title-xxl-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-b8i4ra > :not(style) ~ :not(style) {
    margin-left: 24px;
}

.css-1rrsl2y {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-title-xxl-medium-font-family);
    font-weight: var(--ruler-semantic-typography-title-xxl-medium-font-weight);
    line-height: var(--ruler-semantic-typography-title-xxl-medium-line-height);
    font-size: var(--ruler-semantic-typography-title-xxl-medium-font-size);
    color: var(--ruler-semantic-color-text-disabled);
}

.css-2hmgrn {
    width: 24px;
    height: 24px;
    min-width: 24px;
    min-height: 24px;
}

.css-2hmgrn * {
    fill: var(--ruler-semantic-color-text-primary);
}


</style>

</head>
<body>

</body>
</html>