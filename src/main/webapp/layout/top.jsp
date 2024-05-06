<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< Updated upstream
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    .ma, .mb{
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
</style>
<header class="th">
    <p>29CM</p>
    <nav class="tm">
        <a href="#">검색</a>
        <a href="#">MY PAGE</a>
        <a href="#">MY LIKE</a>
        <a href="#">SHOPPING BAG</a>
        <a href="#">LOGOUT</a>
    </nav>
</header>

<ul class="ma">
    <li><a href="#"><h3>Special-Order</h3></a></li>
    <li><a href="#"><h3>Showcase</h3></a></li>
    <li><a href="#"><h3>PT</h3></a></li>
    <li><a href="#"><h3>Welove</h3></a></li>
</ul>

<ul class="mb">
    <li><a href="#">BEST</a></li>
    <li><a href="#">WOMEN</a></li>
    <li><a href="#">MEN</a></li>
    <li><a href="#">INTERIOR</a></li>
    <li><a href="#">KITCHEN</a></li>
    <li><a href="#">ELECTRONICS</a></li>
    <li><a href="#">DIGITAL</a></li>
    <li><a href="#">BEAUTY</a></li>
    <li><a href="#">FOOD</a></li>
    <li><a href="#">LEISURE</a></li>
    <li><a href="#">KIDS</a></li>
    <li><a href="#">CULTURE</a></li>
    <li><a href="#">Event</a></li>
    <li><a href="#">Lookbook</a></li>
</ul>
=======
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
</head>
<style>
*, *::before, *::after {
    box-sizing: border-box;
}

@supports (position:sticky) or (position:-webkit-sticky) {
    .toptop {
        position: -webkit-sticky;
        position: sticky;
        z-index: 10;
        top: 0px;
        padding-top: 0;
    }
}

.toptop {
    min-width: 540;
    margin: 0 auto;
    padding-top: 260px;
}

@supports (position:sticky) or (position:-webkit-sticky) {
    .top1 {
        position: relative;
    }
}

.top1 {
    position: fixed;
    z-index: 10;
    top: 0;
    right: 0;
    left: 0;
    min-width: 1000px;
    padding-bottom: 20px;
    background: #ffffff;
}

.top2 {
    position: relative;
}

.top3 {
    position: relative;
}

.top-29cm {
    box-sizing: content-box;
    width: 120px;
    height: 12px;
    margin: 0;
    margin-bottom: 8px;
    padding: 48px 50px 0;
}

.29cm {
    overflow: hidden;
    display: inline-block;
    width: 90px;
    height: 24px;
    line-height: 100em;
    vertical-align: top;
    background: url("https://img.29cm.co.kr/next-contents/2023/06/08/3f8131682d124d16b336774ba51c4a3e_20230608162823.png");
    -webkit-background-size: 90px 24px;
    background-size: 90px 24px;
}

a {
    -webkit-text-decoration: none;
    text-decoration: none;
    outline: none;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
</style>
<body>
	<div class="toptop">
		<header class="top1">
			<div class="top2">
				<div class="top3">
					<div class="top-29cm">
						<a class="29cm" href="http://www.29cm.co.kr">29CM</a>
					</div>
				</div>
			</div>
		</header>
	</div>
</body>
</html>
>>>>>>> Stashed changes
