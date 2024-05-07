<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
body {
    display: block;
    margin: 8px;
}

*, *::before, *::after {
    box-sizing: border-box;
}

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, 
a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, 
strike, strong, sub, sup, tt, var, b, u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, 
legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, 
embed, figure, figcaption, footer, header, menu, nav, output, ruby, section, summary, time, 
mark, audio, video, input, textarea, button, select {
    margin: 0;
    padding: 0;
}

html, body {
    min-height: 100vh;
}

@supports (position:sticky) or (position:-webkit-sticky) {
    .head {
        position: -webkit-sticky;
        position: sticky;
        z-index: 10;
        top: 0px;
        padding-top: 0;
    }
}

ol, ul, li {
    list-style: none;
}

.head {
    min-width: 540;
    margin: 0 auto;
    padding-top: 260px;
}

.head-main {
    position: fixed;
    z-index: 10;
    top: 0;
    right: 0;
    left: 0;
    min-width: 1000px;
    padding-bottom: 20px;
    background: #ffffff;
}

@supports (position:sticky) or (position:-webkit-sticky) {
    .css-ktg3h6 {
        position: relative;
    }
}

.head-main1 {
    position: relative;
}

.logo {
    box-sizing: content-box;
    width: 120px;
    height: 12px;
    margin: 0;
    margin-bottom: 8px;
    padding: 48px 50px 0;
}

.logo-main {
    overflow: hidden;
    display: inline-block;
    width: 90px;
    height: 24px;
    line-height: 100em;
    vertical-align: top;
    background: url('https://img.29cm.co.kr/next-contents/2023/06/08/3f8131682d124d16b336774ba51c4a3e_20230608162823.png');
    -webkit-background-size: 90px 24px;
    background-size: 90px 24px;
}

a {
    -webkit-text-decoration: none;
    text-decoration: none;
    outline: none;
}

.menu-box {
    position: absolute;
    top: 42px;
    right: 50px;
    vertical-align: top;
}

.my-page1 {
    display: inline-block;
    vertical-align: top;
}

.my-page2 {
    position: relative;
    height: 30px;
    margin-left: 17px;
    line-height: 30px;
    text-align: center;
    vertical-align: top;
    display: inline-block;
}

.my-icon {
    display: inline-block;
    overflow: hidden;
    width: 17px;
    height: 17px;
    margin-top: 6px;
    background: url(https://img.29cm.co.kr/next29cm/sp_29cm.png);
    -webkit-background-size: 200px 200px;
    background-size: 200px 200px;
    vertical-align: top;
    line-height: 100em;
    -webkit-background-position: 0 0;
    background-position: 0 0;
}

.my-page-text {
    display: inline-block;
    margin: 0 auto;
    font-size: 9px;
    font-weight: normal;
    line-height: 30px;
    color: #5d5d5d;
    vertical-align: top;
}

.my-like1 {
    display: inline-block;
    vertical-align: top;
}

.my-like2 {
    position: relative;
    height: 30px;
    margin-left: 17px;
    line-height: 30px;
    text-align: center;
    vertical-align: top;
    display: inline-block;
}

.like-icon {
    display: inline-block;
    overflow: hidden;
    width: 17px;
    height: 17px;
    margin-top: 6px;
    background: url(https://img.29cm.co.kr/next29cm/sp_29cm.png);
    -webkit-background-size: 200px 200px;
    background-size: 200px 200px;
    vertical-align: top;
    line-height: 100em;
    -webkit-background-position: -25px 1px;
    background-position: -25px 1px;
}

.my-like-text {
    display: inline-block;
    margin: 0 auto;
    font-size: 9px;
    font-weight: normal;
    line-height: 30px;
    color: #5d5d5d;
    vertical-align: top;
}

.shop-bag1 {
    display: inline-block;
    vertical-align: top;
}

.shop-bag2 {
    position: relative;
    height: 30px;
    margin-left: 17px;
    line-height: 30px;
    text-align: center;
    vertical-align: top;
    display: inline-block;
}

.bag-icon {
    display: inline-block;
    overflow: hidden;
    width: 17px;
    height: 17px;
    margin-top: 6px;
    background: url(https://img.29cm.co.kr/next29cm/sp_29cm.png);
    -webkit-background-size: 200px 200px;
    background-size: 200px 200px;
    vertical-align: top;
    line-height: 100em;
    -webkit-background-position: -50px 0;
    background-position: -50px 0;
}

.my-bag-text {
    display: inline-block;
    margin: 0 auto;
    font-size: 9px;
    font-weight: normal;
    line-height: 30px;
    color: #5d5d5d;
    vertical-align: top;
}

.logout1 {
    display: inline-block;
    vertical-align: top;
}

.logout2 {
    position: relative;
    height: 30px;
    margin-left: 17px;
    line-height: 30px;
    text-align: center;
    vertical-align: top;
    display: inline-block;
}

.logout-icon {
    display: inline-block;
    overflow: hidden;
    width: 17px;
    height: 17px;
    margin-top: 6px;
    background: url(https://img.29cm.co.kr/next29cm/sp_29cm.png);
    -webkit-background-size: 200px 200px;
    background-size: 200px 200px;
    vertical-align: top;
    line-height: 100em;
    -webkit-background-position: -75px 0;
    background-position: -75px 0;
}

.my-logout-text {
    display: inline-block;
    margin: 0 auto;
    font-size: 9px;
    font-weight: normal;
    line-height: 30px;
    color: #5d5d5d;
    vertical-align: top;
}

.head-mid {
    position: relative;
}

button {
    border: 0;
    background: transparent;
    cursor: pointer;
    outline: none;
}

.search-btn {
    width: 67px;
    height: 67px;
    padding: 10px;
    position: absolute;
    top: 15px;
    right: 40px;
}

.search-text {
    overflow: hidden;
    display: inline-block;
    width: 47px;
    height: 47px;
    line-height: 100em;
    vertical-align: top;
    background: url(https://img.29cm.co.kr/next29cm/sp_29cm.png);
    -webkit-background-position: -75px -25px;
    background-position: -75px -25px;
    -webkit-background-size: 200px 200px;
    background-size: 200px 200px;
}

.mid-nav {
    position: relative;
    z-index: 5;
    margin-right: 100px;
    margin-left: 46px;
    padding-top: 38px;
}

.mid-ul {
    padding: 0;
}

.mid-li {
    display: inline-block;
    margin: 0 20px 0 0;
    font-size: 40px;
}

.mid-a {
	cursor: pointer;
    position: relative;
    display: inline-block;
    font-weight: 600;
    color: #000000;
    border-bottom: 5px solid transparent;
}

.mid-a::after {
	cursor: pointer;
    content: '';
    position: absolute;
    top: 49px;
    left: 0;
    width: 0;
    height: 6px;
    background-color: #000000;
    border-bottom: 5px solid transparent;
}

.mid-a:hover{
	border-bottom-color: #000;
}

.bottom {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    margin: 12px 0 0;
    padding: 0 50px;
}

.bot-ul {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
}

.bot-li {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    padding-right: 20px;
}

.bot-a {
    cursor: pointer;
    padding: 6px 0;
    font-size: 16px;
    font-weight: 600;
    color: #000000;
    border-bottom: 4px solid transparent;
}

.bot-a:hover, .div-ctgr:hover{
	 border-bottom-color: #000;
}

.div-ctgr {
    cursor: pointer;
    padding: 6px 0;
    font-size: 16px;
    font-weight: 600;
    color: #000000;
    border-bottom: 4px solid transparent;
}
/* 메인 카테고리 마우스 올렸을 때 아래로 출력되게 만드는 부분 미완성
.bot-nav1 {
    position: absolute;
    top: 100%;
    right: 0;
    left: 0;
    display: none;
    min-height: 404px;
    padding: 17px 50px;
    background: #ffffff;
    border-top: 1px solid #f4f4f4;
    border-bottom: 1px solid #d4d4d4;
}

.bot-nav2 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    justify-content: space-between;
    width: 930px;
}

.bot-li:hover{
	position: absolute;
    top: 100%;
    right: 0px;
    left: 0px;
    display: block;
    min-height: 404px;
    padding: 17px 50px;
    background: rgb(255,255,255);
    border-top: 1px solid rgb(244,244,244);
    border-bottom: 1px solid rgb(212,212,212);
}
 */
</style>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="head">
		<header class="head-main">
			<div class="head-main1">
				<div class="head-main1">
					<div class="logo">
						<a class="logo-main" href="https://www.29cm.co.kr">29CM</a>
						<ul class="menu-box">
							<li class="my-page1">
								<a class="my-page2" href="https://www.29cm.co.kr/mypage/">
									<i class="my-icon"></i>
									<strong class="my-page-text">MY PAGE</strong>
								</a>
							</li>
							<li class="my-like1">
								<a class="my-like2" href="https://www.29cm.co.kr/mypage/heart">
									<i class="like-icon"></i>
									<strong class="my-like-text">MY LIKE</strong>
								</a>
							</li>
							<li class="shop-bag1">
								<a class="shop-bag2" href="https://www.29cm.co.kr/mypage/heart">
									<i class="bag-icon"></i>
									<strong class="my-bag-text">SHOPPING BAG</strong>
								</a>
							</li>
							<li class="logout1">
								<a class="logout2" href="https://www.29cm.co.kr/mypage/heart">
									<i class="logout-icon"></i>
									<strong class="my-logout-text">LOGOUT</strong>
								</a>
							</li>
						</ul>
					</div>
					<div class="head-mid">
						<button class="search-btn">
							<span class="search-text">검색</span>
						</button>
					</div>
				</div>
				<nav class="mid-nav">
					<ul class="mid-ul">
						<li class="mid-li">
							<a class="mid-a" href="https://shop.29cm.co.kr/special-order">Special-Order</a>
						</li>
						<li class="mid-li">
							<a class="mid-a" href="https://shop.29cm.co.kr/showcase">Showcase</a>
						</li>
						<li class="mid-li">
							<a class="mid-a" href="https://shop.29cm.co.kr/pt">PT</a>
						</li>
						<li class="mid-li">
							<a class="mid-a" href="https://shop.29cm.co.kr/welove">Welove</a>
						</li>
					</ul>
				</nav>
				<div class="bottom">
					<ul class="bot-ul">
						<li class="bot-li">
							<a class="bot-a" href="https://shop.29cm.co.kr/best-items">BEST</a>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">WOMEN</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">MEN</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">INTERIOR</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">KITCHEN</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">ELECTRONICS</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">DIGITAL</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">BEAUTY</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">FOOD</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">LEISURE</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">KIDS</div>
						</li>
						<li class="bot-li">
							<div class="div-ctgr">CULTURE</div>
						</li>
					</ul>
					<!-- 
					<div class="bot-nav1">
						<div class="bot-nav2">
							
						</div>
					</div>
					 -->
				</div>
			</div>
		</header>
	</div>

</body>
</html>