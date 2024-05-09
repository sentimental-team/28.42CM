<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shortcut icon"
	href="http://localhost/sentiProject/images/29.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


<style>
.css-immiqd {
	max-width: 400px;
	margin: 0 auto;
	padding: 43px 0 50px;
}

body, input, select, textarea, button, a {
	-webkit-text-size-adjust: none;
	font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic,
		'나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
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

*, *::before, *::after {
	box-sizing: border-box;
}

div {
	display: block;
	unicode-bidi: isolate;
}

li {
	text-align: -webkit-match-parent;
}

ul {
	list-style-type: disc;
}

.css-1lu3imi {
	padding-top: 18px;
	border-top: 4px solid #000000;
}

.css-fbjraf {
	margin-bottom: 20px;
	font-size: 44px;
	font-weight: 500;
	color: #000000;
	text-align: center;
}

h2 {
	display: block;
	font-size: 1.5em;
	margin-block-start: 0.83em;
	margin-block-end: 0.83em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
	unicode-bidi: isolate;
}

.btn_login {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	min-width: 40px;
	min-height: 25px;
	width: 100%;
	height: 56px;
	margin: 20px 0 0;
	font-size: 16px;
	font-weight: 600;
	line-height: 56px;
	color: #ffffff;
	background: #000000;
	border-radius: 2px;
}

input {
	font-style:;
	font-variant-ligatures:;
	font-variant-caps:;
	font-variant-numeric:;
	font-variant-east-asian:;
	font-variant-alternates:;
	font-variant-position:;
	font-weight:;
	font-stretch:;
	font-size:;
	font-family:;
	font-optical-sizing:;
	font-kerning:;
	font-feature-settings:;
	font-variation-settings:;
	text-rendering: auto;
	color: fieldtext;
	letter-spacing: normal;
	word-spacing: normal;
	line-height: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	appearance: auto;
	-webkit-rtl-ordering: logical;
	cursor: text;
	background-color: field;
	margin: 0em;
	padding: 1px 0px;
	border-width: 2px;
	border-style: inset;
	border-color: light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
	border-image: initial;
	padding-block: 1px;
	padding-inline: 2px;
}

.css-coe4td:active, .css-coe4td:focus {
	border-color: #000000;
}
</style>
<style>
input[type="text" i] {
	padding-block: 1px;
	padding-inline: 2px;
}

input[type="password" i] {
	-webkit-text-security: disc !important;
	padding-block: 1px;
	padding-inline: 2px;
}
</style>
<style data-emotion="css coe4td" data-s="">
.css-coe4td {
	display: block;
	width: 100%;
	height: 48px;
	padding: 0 14px;
	font-size: 14px;
	font-weight: 500;
	color: #1a1a1a;
	border: 1px solid #d4d4d4;
	border-radius: 2px;
	outline: none;
}
</style>

<!-- 
<style data-emotion="css 1d6ilgc" data-s="">
.css-1d6ilgc {
	position: relative;
	font-size: 12px;
	font-weight: 500;
	color: #5d5d5d;
}
</style>
 -->
<style>
.css-eik7hh {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	margin: 10px -20px;
	padding: 24px 0;
}

ol, ul, li {
	list-style: none;
}

li {
	text-align: -webkit-match-parent;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
	unicode-bidi: isolate;
}

.css-foao9h {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 0 12px;
}

.css-1d6ilgc {
	position: relative;
	font-size: 12px;
	font-weight: 500;
	color: #5d5d5d;
}

a {
	-webkit-text-decoration: none;
	text-decoration: none;
	outline: none;
}
</style>
<style data-emotion="css 1yvkpbb" data-s="">
.css-1yvkpbb{width:12px;height:12px;min-width:12px;min-height:12px;margin-left:2px;}
.css-1yvkpbb *{fill:var(--ruler-semantic-color-text-primary);}
</style>

</head>
<body>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
	<div class="css-immiqd e18sgbvw0">
		<h2 class="css-fbjraf e18sgbvw1">로그인</h2>
		<div class="css-1lu3imi e18sgbvw2">
			<form>
				<div class="css-1xlzx9v e8awftn0">
					<input class="css-coe4td e6yr7gu0" 
						   placeholder="아이디 (이메일)"
						   autocapitalize="none" 
						   autocomplete="username" 
						   type="text"
						   name="username">
				</div>
				<div class="css-1xlzx9v e8awftn0">
					<input class="css-coe4td e6yr7gu0" 
							placeholder="비밀번호"
							autocapitalize="none" 
							id="current-password"
							autocomplete="current-password" 
							type="password" 
							name="password">
				</div>
				<!-- 로그인버튼 클래스명 변경 -->
				<!-- 기존 클래스명 : button class="e8awftn1 css-otj6by e12h9sp60" -->
				<button class="btn_login" type="submit">로그인하기</button>
			</form>
			<!-- 
			<ul class="css-eik7hh eyny7ue0">
				<li class="css-foao9h eyny7ue1">
				<a class="css-1d6ilgc eyny7ue2" href="#">아이디 (이메일)찾기</a>
				</li>
				<li class="css-foao9h eyny7ue1">
				<a class="css-1d6ilgc eyny7ue2" href="#">비밀번호 찾기</a>
				</li>
				<li class="css-foao9h eyny7ue1">
				<span class="css-13m1uov e1q77p0w0" color="secondary">로그인/회원가입 1:1 문의하기</span> 
				<svg xmlns="http://www.w3.org/2000/svg" 
						width="12"
						height="12" viewBox="0 0 24 24" fill="none" color="primary"
						class="eyny7ue3 css-1yvkpbb e1q77p0w6">
	<path fill-rule="evenodd" clip-rule="evenodd"
							d="M16.7071 12L8.35354 20.3536L7.64643 19.6464L15.2929 12L7.64643 4.35355L8.35354 3.64645L16.7071 12Z"
							fill="black">
</path>
</svg>
</li>
 -->
			</ul>
		</div>
	</div>
	<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>

	<script>
</script>
</body>
</html>