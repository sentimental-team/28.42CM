<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
div {
    display: block;
    unicode-bidi: isolate;
}

section {
    display: block;
    unicode-bidi: isolate;
}

a, abbr, acronym, address, article, aside, audio, b, big, blockquote, body, button, canvas, caption, cite, code, dd, del, details, dfn, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form, h1, h2, h3, h4, h5, h6, header, html, i, iframe, img, input, ins, kbd, label, legend, li, mark, menu, nav, object, ol, output, p, pre, q, ruby, s, samp, section, select, small, span, strike, strong, sub, summary, sup, table, tbody, td, textarea, tfoot, th, thead, time, tr, tt, u, ul, var, video {
    margin: 0;
    padding: 0;
}

@media screen and (min-width: 541px) {
    .mypage-global {
        min-width: 1000px;
        padding-top: 220px;
    }
}

.mypage-global {
    -webkit-transition: padding-top .25s ease-out;
    transition: padding-top .25s ease-out;
}

.mypage-main, .my-main{
    position: relative;
    min-width: 900px;
    max-width: 1500px;
    margin: 40px auto 0;
    padding: 0 50px 100px;
}	

@media screen and (min-width: 541px) {
    .mypage-main {
        display: -webkit-box;
        display: flex;
    }
}

@media screen and (min-width: 541px) {
    .mypage-left {
        -webkit-box-flex: 0;
        flex: none;
        width: 230px;
        padding: 0 50px 0 0;
    }
}

.mypage-left {
    box-sizing: border-box;
}

.left-top {
    margin-bottom: 38px;
}

.left-top-top .name {
    font-size: 40px;
    font-weight: 700;
    color: #000;
    word-break: break-all;
}
</style>
</head>



<body>
<div class="my-main">
	<header>
	   <jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
	</header>
	<section class="mypage-global">
		<div class="mypage-main">
			<div class="mypage-left">
				<div class="left-list">
					<section class="left-top">
						<div class="left-top-top">
							<h3 class="name">유*</h3>
						</div>
					</section>
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>