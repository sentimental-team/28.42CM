<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>감도 깊은 취향 셀렉트샾 29CM</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<style>
.middle {
    min-width: 900px;
    max-width: 1600px;
    margin: 0px auto;
    padding: 0px 50px 200px;
}

.mid-shopping-state {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    padding: 70px 0px 78px;
}

.state-text {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
}

.shopping-bag {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    font-size: 15px;
    font-weight: 500;
    line-height: 20px;
    color: rgb(0, 0, 0);
}

.css-1eloq9d {
    width: 8px;
    height: 16px;
    margin: 0px 15px;
}

.order {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    font-size: 15px;
    font-weight: 500;
    line-height: 20px;
    color: rgb(228, 228, 228);
}

.order-confirmed {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    font-size: 15px;
    font-weight: 500;
    line-height: 20px;
    color: rgb(228, 228, 228);
}

.cart-info {
    width: 100%;
    padding: 100px 0px;
    font-size: 32px;
    font-weight: 500;
    color: rgb(0, 0, 0);
    text-align: center;
    border-top: 4px solid rgb(0, 0, 0);
    border-bottom: 1px solid rgb(0, 0, 0);
}

.cart-text {
    line-height: 1;
}

.shop-btn {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    margin: 45px 0px 0px;
}

.go-29cm {
    margin: 0px 4px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    border: 1px solid rgb(160, 160, 160);
    color: rgb(48, 48, 51);
    background-color: rgb(255, 255, 255);
    flex: 1 1 0%;
    max-width: 400px;
    height: 72px;
    border-radius: 0px;
    font-size: 26px;
    font-weight: 600;
}
</style>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<body>
	<div class="middle">
		<div class="mid-shopping-state">
			<ol class="state-text">
				<li class="shopping-bag">01 SHOPPING BAG
					<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
						<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
							<path d="M1 0l40 40.083L1.166 80"></path>
						</g>
					</svg>
				</li>
				<li class="order">02 ORDER
					<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
						<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
							<path d="M1 0l40 40.083L1.166 80"></path>
						</g>
					</svg>
				</li>
				<li class="order-confirmed">03 ORDER CONFIRMED</li>
			</ol>
		</div>
		<div class="cart-info">
			<span class="cart-text">장바구니에 담은 상품이 없습니다.</span>
			<div class="shop-btn">
				<a class="go-29cm" href="https://www.29cm.co.kr">CONTINUE SHOPPING</a>
			</div>
		</div>
	</div>


<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
</html>