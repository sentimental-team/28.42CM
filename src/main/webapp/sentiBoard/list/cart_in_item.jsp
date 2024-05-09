<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

.cart-box {
    padding-top: 20px;
}

.checkbox1 {
    display: none;
}

@media (min-width: 541px) {
    .checkbox-span {
        min-width: 24px;
        min-height: 24px;
        line-height: 24px;
    }
}

.checkbox-span {
    position: relative;
    overflow: hidden;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
}

.checkbox-btn {
    position: absolute;
    z-index: -1;
    top: 2px;
    left: 2px;
    overflow: hidden;
    width: 1px;
    height: 1px;
    appearance: none;
    visibility: hidden;
    background: transparent;
    border: 0px;
}

@media (min-width: 541px) {
    .check-info {
        padding-left: 24px;
    }
}

.check-info {
    cursor: pointer;
    position: relative;
    z-index: 1;
    display: inline-block;
    padding-left: 29px;
    font-size: 14px;
    color: rgb(48, 48, 51);
    vertical-align: top;
}

.delete {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-width: 40px;
    min-height: auto;
    font-size: 14px;
    color: rgb(153, 153, 153);
}

.cart-box-info {
    font-size: 12px;
    color: rgb(76, 76, 76);
    border-bottom: 1px solid rgb(0, 0, 0);
}

.box-info-top {
    display: table;
    table-layout: fixed;
    width: 100%;
    border-top: 4px solid rgb(0, 0, 0);
}

.box-info-bottom {
    position: relative;
}

.top-info1 {
    display: table-cell;
    height: 74px;
    padding: 0px;
    font-size: 18px;
    font-weight: 700;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border: 0px;
    width: 4.3%;
}

@media (min-width: 541px) {
    .check-info::before {
        width: 24px;
        height: 24px;
    }
}

.check-info::before {
    content: "";
    position: absolute;
    top: 0px;
    left: 0px;
    width: 20px;
    height: 20px;
    text-align: center;
    background: rgb(255, 255, 255);
    border: 1px solid rgb(212, 212, 212);
    border-radius: 2px;
    transition: background-color 0.2s ease 0s;
}

@media (min-width: 541px) {
    .check-info::after {
        top: 4px;
        left: 8px;
        width: 6px;
        height: 12px;
    }
}

.check-info::after {
    content: "";
    position: absolute;
    top: 3px;
    left: 7px;
    transform: rotate(45deg);
    box-sizing: content-box;
    width: 5px;
    height: 10px;
    border-style: solid;
    border-color: rgb(212, 212, 212);
    border-image: initial;
    border-width: 0px 1px 1px 0px;
}

.top-info2 {
    display: table-cell;
    height: 74px;
    padding: 0px;
    font-size: 18px;
    font-weight: 700;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border: 0px;
}

.top-info3 {
    display: table-cell;
    height: 74px;
    padding: 0px;
    font-size: 18px;
    font-weight: 700;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border: 0px;
    width: 200px;
}

.top-info4 {
    display: table-cell;
    height: 74px;
    padding: 0px;
    font-size: 18px;
    font-weight: 700;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border: 0px;
    width: 15%;
}

.item-name {
    display: none;
}

.box-bottom-main {
    position: relative;
    display: table;
    table-layout: fixed;
    width: 100%;
}

.bot-checkbox {
    display: table-cell;
    padding: 30px 0px;
    font-size: 18px;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border-top: 1px solid rgb(228, 228, 228);
    width: 4.3%;
}

.bot-info1 {
    display: table-cell;
    font-size: 18px;
    line-height: 24px;
    color: rgb(0, 0, 0);
    vertical-align: middle;
    border-top: 1px solid rgb(228, 228, 228);
    position: relative;
    padding: 27px 60px 30px 0px;
    text-align: left;
}

.bot-item-info {
    display: flex;
}

.item-img {
    width: 110px;
    height: 110px;
    margin: 3px 25px 0px 0px;
    object-fit: cover;
}

img {
    border: 0;
    vertical-align: top;
}

.item-img-info {
    width: 100%;
}

.item-brand {
    display: block;
    font-size: 12px;
    font-weight: 600;
    line-height: 15px;
    color: rgb(0, 0, 0);
    text-decoration: underline;
}

.item-title {
    display: block;
    margin-top: 5px;
    font-size: 16px;
    font-weight: 600;
    line-height: 22px;
    color: rgb(0, 0, 0);
    word-break: break-all;
}

.item-price {
    margin-top: 6px;
    font-size: 13px;
    line-height: 22px;
    color: rgb(48, 48, 51);
}

.price {
    display: block;
}

.item-delete {
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-height: 25px;
    position: absolute;
    top: 24px;
    right: 24px;
    overflow: hidden;
    display: block;
    width: 24px;
    min-width: initial;
    height: 24px;
    line-height: 100em;
    background: url('https://img.29cm.co.kr/next29cm/order/icon-remove.png') 0px 0px / 24px 24px no-repeat;
}

.item-bot-info {
    margin-top: 6px;
    font-size: 12px;
    line-height: 20px;
    color: rgb(48, 48, 51);
}

.bot-info2 {
    display: table-cell;
    padding: 30px 0px;
    font-size: 18px;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    width: 200px;
    border-style: solid;
    border-color: rgb(228, 228, 228);
    border-image: initial;
    border-width: 1px 1px 0px;
}

.item-cnt {
    display: inline-block;
    width: 108px;
}

.item-cnt-box {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
}

.minus {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-height: 25px;
    width: 36px;
    min-width: initial;
    height: 36px;
    font-size: 20px;
    font-weight: 400;
    color: rgb(160, 160, 160);
    background: rgb(255, 255, 255);
    border-width: 1px 0px 1px 1px;
    border-top-style: solid;
    border-bottom-style: solid;
    border-left-style: solid;
    border-top-color: rgb(228, 228, 228);
    border-bottom-color: rgb(228, 228, 228);
    border-left-color: rgb(228, 228, 228);
    border-image: initial;
    border-radius: 0px;
    border-right-style: initial;
    border-right-color: initial;
}

.cnt {
    display: block;
    color: rgb(26, 26, 26);
    outline: none;
    width: 37px;
    height: 36px;
    margin: 0px;
    padding: 0px;
    font-size: 14px;
    font-weight: 500;
    text-align: center;
    border: 1px solid rgb(228, 228, 228);
}

.plus {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-height: 25px;
    width: 36px;
    min-width: initial;
    height: 36px;
    font-size: 20px;
    font-weight: 400;
    color: rgb(160, 160, 160);
    background: rgb(255, 255, 255);
    border-width: 1px 1px 1px 0px;
    border-top-style: solid;
    border-right-style: solid;
    border-bottom-style: solid;
    border-top-color: rgb(228, 228, 228);
    border-right-color: rgb(228, 228, 228);
    border-bottom-color: rgb(228, 228, 228);
    border-image: initial;
    border-radius: 0px;
    border-left-style: initial;
    border-left-color: initial;
}

.bot-info3 {
    display: table-cell;
    padding: 30px 0px;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border-top: 1px solid rgb(228, 228, 228);
    width: 200px;
    font-size: 18px;
    font-weight: 600;
}

.sell-price {
    font-size: 22px;
    color: rgb(0, 0, 0);
    word-break: break-all;
}

.buy-now {
    display: flex;
    column-gap: 8px;
}

.buy-now-btn {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-width: 40px;
    min-height: 25px;
    width: 100px;
    height: 38px;
    margin: 17px auto 0px;
    font-size: 14px;
    font-weight: 700;
    line-height: 38px;
    color: rgb(255, 255, 255);
    background: rgb(0, 0, 0);
    border: 1px solid rgb(0, 0, 0);
}

.bot-info4 {
    display: table-cell;
    padding: 30px 0px;
    font-size: 18px;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border-top: 1px solid rgb(228, 228, 228);
    width: 15%;
}

.bot-deli-pay {
    position: absolute;
    z-index: 5;
    top: 1px;
    right: 1px;
    bottom: 0px;
    display: flex;
    flex-wrap: wrap;
    place-content: center;
    width: 15%;
    padding: 0px 10px;
    font-size: 15px;
    font-weight: 600;
    color: rgb(0, 0, 0);
    background: rgb(255, 255, 255);
    border-left: 1px solid rgb(228, 228, 228);
}

.bot-bot {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    margin-top: 30px;
}

.bot-bot-btn {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
}

.click-btn {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-width: 40px;
    min-height: 25px;
    width: 130px;
    height: 42px;
    margin-right: 10px;
    font-size: 15px;
    color: rgb(48, 48, 51);
    border: 1px solid rgb(160, 160, 160);
}

.click-btn:last-of-type {
    margin-right: 0px;
}

.max-cart-text {
    font-size: 15px;
    color: rgb(0, 0, 0);
}

.total-pay {
    margin: 117px auto 137px;
}

.total-pay-box {
    font-size: 12px;
    border-bottom: 1px solid rgb(0, 0, 0);
}

.total-pay-top {
    display: table;
    table-layout: fixed;
    width: 100%;
    border-top: 4px solid rgb(0, 0, 0);
    border-bottom: 1px solid rgb(228, 228, 228);
}

.total-pay-bottom {
    display: table;
    table-layout: fixed;
    width: 100%;
}

.total-pay-text1, .total-pay-text3 {
    display: table-cell;
    width: 36%;
    height: 74px;
    padding: 0px;
    font-size: 18px;
    font-weight: 700;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border: 0px;
}

.total-pay-text2 {
    display: table-cell;
    height: 74px;
    padding: 0px;
    font-size: 18px;
    font-weight: 700;
    line-height: 24px;
    color: rgb(0, 0, 0);
    text-align: center;
    vertical-align: middle;
    border: 0px;
    width: 28%;
}

.total-pay-bottom-box1, .total-pay-bottom-box3 {
    position: relative;
    display: table-cell;
    box-sizing: border-box;
    width: 36%;
    height: 149px;
    padding: 55px 2% 0px;
    text-align: center;
    vertical-align: top;
}

.total-pay-bottom-box2 {
    position: relative;
    display: table-cell;
    box-sizing: border-box;
    height: 149px;
    padding: 55px 2% 0px;
    text-align: center;
    vertical-align: top;
    width: 28%;
}

.total-pay-price, .total-pay-price2 {
    display: block;
    font-size: 17px;
    font-weight: 500;
    line-height: 40px;
}

.total-pay-price-text, .total-pay-price-text2 {
    font-size: 32px;
    font-weight: 600;
    vertical-align: -4px;
}

.total-pay-item-cnt {
    display: block;
    margin-top: 10px;
    font-size: 0.875rem;
    font-weight: 500;
}

.css-15wexqq {
    position: absolute;
    top: 40%;
    left: -15px;
    display: block;
    width: 30px;
    height: 30px;
    background: url('https://img.29cm.co.kr/next29cm/order/icon_cout.gif') 0px 0px / 60px 30px no-repeat;
}

.total-pay-deli-charge {
    display: block;
    font-size: 17px;
    font-weight: 500;
    line-height: 40px;
}

.total-charge {
    font-size: 32px;
    font-weight: 600;
    vertical-align: -4px;
}

.css-z92i1e {
    position: absolute;
    top: 40%;
    left: -15px;
    display: block;
    width: 30px;
    height: 30px;
    background: url('https://img.29cm.co.kr/next29cm/order/icon_cout.gif') -30px 0px / 60px 30px no-repeat;
}

.main-bottom {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    margin: 0px -4px;
}

.continue {
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

.check-out {
    min-width: 40px;
    min-height: 25px;
    display: flex;
    flex: 1 1 0%;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    max-width: 400px;
    height: 72px;
    margin: 0px 4px;
    font-size: 26px;
    font-weight: 600;
    color: rgb(255, 255, 255);
    background-color: rgb(0, 0, 0);
    border: 1px solid rgb(0, 0, 0);
    border-radius: 0px;
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
				<li class="order-confirmed">03 ORDER CONFIRMED
					<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
						<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
							<path d="M1 0l40 40.083L1.166 80"></path>
						</g>
					</svg>
				</li>
			</ol>
		</div>
		<section class="cart-box">
			<div class="checkbox1">
				<span class="checkbox-span" id="select-btn">
					<input type="checkbox" class="checkbox-btn" />
					<label class="check-info">
					선택(0/1)
					</label>
				</span>
				<button class="delete" id="delete-btn" type="button">선택삭제</button>
			</div>
			<div class="cart-box-info">
				<div class="box-info-top">
					<div class="top-info1">
						<span class="checkbox-span">
							<input type="checkbox" class="checkbox-btn" />
							<label class="check-info"></label>
						</span>
					</div>
					<div class="top-info2">상품 정보</div>
					<div class="top-info3">수량</div>
					<div class="top-info3">주문금액</div>
					<div class="top-info4">배송비</div>
				</div>
				<div class="box-info-bottom">
					<h3 class="item-name" translate="no">LG전자</h3>
					<div class="box-bottom-main">
						<div class="bot-checkbox">
							<span class="checkbox-span">
								<input type="checkbox" class="checkbox-btn" />
								<label class="check-info"></label>
							</span>
						</div>
						<div class="bot-info1">
							<div class="bot-item-info">
								<a href="https://product.29cm.co.kr/catalog/2523110">
									<img class="item-img" src="https://img.29cm.co.kr/item/202403/11eee58ea43027dc82f2a3e7a32e56e5.jpg?width=150" alt="LG전자 시네빔 큐브 Qube HU710PB" loading="lazy"/>
								</a>
								<div class="item-img-info">
									<div translate="no">
										<a class="item-brand" href="https://shop.29cm.co.kr/brand/13646">LG전자</a>
									</div>
									<a id="item-title" class="item-title" href="https://product.29cm.co.kr/catalog/2523110">LG전자 시네빔 큐브 Qube HU710PB</a>
									<div class="item-price">
										<span class="price">1,390,000원</span>
										<span>옵션 추가했을때 추가비용</span>
									</div>
									<div class="item-bot-info">옵션 추가되었을때 추가</div>
								</div>
							</div>
							<button id="item-delete" class="item-delete"></button>
						</div>
						
						<div class="bot-info2">
							<div class="item-cnt">
								<div class="item-cnt-box">
									<button id="minus-btn" class="minus" type="button">-</button>
									<input type="text" class="cnt" autocapitalize="none" id="num-of-item" inputmode="numeric" value="1"/>
									<button id="plus-btn" class="plus" type="button" >+</button>
								</div>
							</div>
						</div>
						<div class="bot-info3">
							<div>
								<span class="sell-price" id="sell-price">1,667,000</span>
								원
							</div>
							<div class="buy-now">
								<button class="buy-now-btn" type="button">BUY NOW</button>
							</div>
						</div>
						<div class="bot-info4"></div>
					</div>
					<div class="bot-deli-pay">
						브랜드마다, 상품마다 각각 다름
					</div>
				</div>
			</div>
			<div class="bot-bot">
				<div class="bot-bot-btn">
					<button class="click-btn">선택상품 삭제</button>
					<button class="click-btn">품절상품 삭제</button>
				</div>
				<p class="max-cart-text">장바구니는 최대 100개의 상품을 담을 수 있습니다.</p>
			</div>
		</section>
		<section class="total-pay">
			<div class="total-pay-box">
				<div class="total-pay-top">
					<div class="total-pay-text1">총 주문금액</div>
					<div class="total-pay-text2">총 배송비</div>
					<div class="total-pay-text3">총 결제금액</div>
				</div>
				<div class="total-pay-bottom">
					<div class="total-pay-bottom-box1">
						<span class="total-pay-price">
							<strong class="total-pay-price-text">0</strong>
							원
						</span>
						<span class="total-pay-item-cnt">총 0개</span>
					</div>
					<div class="total-pay-bottom-box2">
						<i class="css-15wexqq e17g5zv810"></i>
						<span class="total-pay-deli-charge">
							<strong class="total-charge">0</strong>
							원
						</span>
					</div>
					<div class="total-pay-bottom-box3">
						<i class="css-z92i1e e17g5zv811"></i>
						<span class="total-pay-price2">
							<strong class="total-pay-price-text2">0</strong>
							원
						</span>
					</div>
				</div>
			</div>
		</section>
		<div class="main-bottom">
			<a class="continue" href="https://www.29cm.co.kr">CONTINUE SHOPPING</a>
			<button id="check-out-btn" class="check-out" type="button">CHECK OUT</button>
		</div>
	</div>


<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
</html>