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
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
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
    color: rgb(228, 228, 228);
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
    color: rgb(0, 0, 0);
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

.order-mid-main {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
}

.order-left {
    position: relative;
    width: 55%;
    min-width: 530px;
}

.left-section1 {
    position: relative;
}

.section1-header {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    height: 74px;
    border-top: 2px solid var(--ruler-semantic-color-border-divider-strong);
}

.sec1-header-box {
    font-family: var(--ruler-semantic-typography-title-xs-bold-font-family);
    font-weight: var(--ruler-semantic-typography-title-xs-bold-font-weight);
    line-height: var(--ruler-semantic-typography-title-xs-bold-line-height);
    font-size: var(--ruler-semantic-typography-title-xs-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
    position: relative;
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
}

.sec1-header-box-btn {
    flex-shrink: 0;
    width: 17px;
    height: 17px;
    margin-left: 6px;
    font-size: 12px;
    color: rgb(93, 93, 93);
    border: 1px solid rgb(228, 228, 228);
    border-radius: 100%;
}

.must-text {
    font-size: 12px;
    color: rgb(93, 93, 93);
}

.css-6cb3bj {
    font-size: 12px;
    color: rgb(255, 72, 0);
}

.input-box {
    margin-bottom: 20px;
}

.input-box-ul {
    display: flex;
    width: 100%;
    border-bottom: 1px solid rgb(228, 228, 228);
}

.exist-deli-addr {
    cursor: pointer;
    position: relative;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 167px;
    height: 53px;
    font-size: 13px;
    color: rgb(186, 186, 186);
    background: rgb(238, 238, 238);
    border: 1px solid rgb(238, 238, 238);
}

.exist-deli-addr::after {
    content: "";
    position: absolute;
    bottom: -2px;
    left: 0px;
    display: block;
    width: 100%;
    height: 2px;
    background: rgb(255, 255, 255);
}

.new-deli-addr {
    cursor: pointer;
    position: relative;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 167px;
    height: 53px;
    font-size: 13px;
    border: 1px solid rgb(228, 228, 228);
    color: rgb(0, 0, 0);
    background: rgb(255, 255, 255);
}

.new-deli-addr::after {
    content: "";
    position: absolute;
    bottom: -2px;
    left: 0px;
    display: block;
    width: 100%;
    height: 2px;
    background: rgb(255, 255, 255);
}

.input-addr-all {
    padding: 0px 0px 30px;
}

.input-addr-detail {
    display: flex;
    padding-bottom: 10px;
}

.addr-title {
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
    align-self: flex-start;
    width: 130px;
    padding-top: 11px;
    font-size: 14px;
    font-weight: normal;
    color: rgb(48, 48, 51);
}

.addr-title-textbox {
    display: flex;
    flex: 1 1 0%;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    max-width: 550px;
    padding-right: 0px;
}

.addr-title-text {
    display: block;
    width: 100%;
    height: 40px;
    padding: 0px 14px;
    font-size: 15px;
    color: rgb(26, 26, 26);
    border: 1px solid rgb(228, 228, 228);
    outline: none;
    max-width: 370px;
}

.recipient {
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
    align-self: flex-start;
    width: 130px;
    padding-top: 11px;
    font-size: 14px;
    font-weight: normal;
    color: rgb(48, 48, 51);
}

.recipient::after {
    content: "*";
    display: inline;
    padding-left: 3px;
    font-size: 12px;
    color: rgb(255, 72, 0);
    vertical-align: -2px;
}

.recipient-textbox {
    display: flex;
    flex: 1 1 0%;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    max-width: 370px;
    padding-right: 0px;
}

.recipient-text {
    display: block;
    width: 100%;
    height: 40px;
    padding: 0px 14px;
    font-size: 15px;
    color: rgb(26, 26, 26);
    border: 1px solid rgb(228, 228, 228);
    outline: none;
}

.deli-location {
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
    align-self: flex-start;
    width: 130px;
    padding-top: 11px;
    font-size: 14px;
    font-weight: normal;
    color: rgb(48, 48, 51);
}

.deli-location::after {
    content: "*";
    display: inline;
    padding-left: 3px;
    font-size: 12px;
    color: rgb(255, 72, 0);
    vertical-align: -2px;
}

.location-box {
    display: flex;
    flex: 1 1 0%;
    flex-direction: column;
    -webkit-box-align: stretch;
    align-items: stretch;
    max-width: 550px;
    padding-right: 0px;
}

.location-box-text {
    display: flex;
    padding-bottom: 10px;
}

.location-box-text1 {
    display: flex;
    flex: 1 1 0%;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    max-width: 370px;
    padding-right: 0px;
}

.location-text-content {
    display: flex;
    flex: 1 1 0%;
    -webkit-box-align: center;
    align-items: center;
    height: 40px;
    padding: 0px 14px;
    font-size: 15px;
    font-weight: 500;
    color: rgb(48, 48, 51);
    border: 1px solid rgb(228, 228, 228);
}

.post-code {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-width: 40px;
    min-height: 25px;
    flex-shrink: 0;
    width: 102px;
    height: 40px;
    margin-left: 8px;
    font-size: 12px;
    color: rgb(48, 48, 51);
    text-align: center;
    background: rgb(244, 244, 244);
}

.post-code-addr {
    display: flex;
    flex: 1 1 0%;
    -webkit-box-align: center;
    align-items: center;
    height: 40px;
    padding: 0px 14px;
    font-size: 15px;
    font-weight: 500;
    color: rgb(48, 48, 51);
    border: 1px solid rgb(228, 228, 228);
}

.detail-location-addr {
    display: block;
    width: 100%;
    height: 40px;
    padding: 0px 14px;
    font-size: 15px;
    color: rgb(26, 26, 26);
    border: 1px solid rgb(228, 228, 228);
    outline: none;
}

.first-tel {
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
    align-self: flex-start;
    width: 130px;
    padding-top: 11px;
    font-size: 14px;
    font-weight: normal;
    color: rgb(48, 48, 51);
}

.first-tel::after {
    content: "*";
    display: inline;
    padding-left: 3px;
    font-size: 12px;
    color: rgb(255, 72, 0);
    vertical-align: -2px;
}

.first-tel-box {
    display: flex;
    flex: 1 1 0%;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    max-width: 550px;
    padding-right: 0px;
}

.first-tel-text {
    display: block;
    height: 40px;
    padding: 0px 14px;
    font-size: 15px;
    color: rgb(26, 26, 26);
    border: 1px solid rgb(228, 228, 228);
    outline: none;
    width: 70px;
}

.dive-first-tel-text {
    flex-shrink: 0;
    width: 22px;
    color: rgb(228, 228, 228);
    text-align: center;
}

.second-tel {
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
    align-self: flex-start;
    width: 130px;
    padding-top: 11px;
    font-size: 14px;
    font-weight: normal;
    color: rgb(48, 48, 51);
}

.second-tel-box {
    display: flex;
    flex: 1 1 0%;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    max-width: 550px;
    padding-right: 0px;
}

.second-tel-text {
    display: block;
    height: 40px;
    padding: 0px 14px;
    font-size: 15px;
    color: rgb(26, 26, 26);
    border: 1px solid rgb(228, 228, 228);
    outline: none;
    width: 70px;
}

.dive-second-tel-text {
    flex-shrink: 0;
    width: 22px;
    color: rgb(228, 228, 228);
    text-align: center;
}

.padding-for-checkbox {
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
    align-self: flex-start;
    width: 130px;
    padding-top: 11px;
    font-size: 14px;
    font-weight: normal;
    color: rgb(48, 48, 51);
}

.regi-exist-addr-box {
    display: flex;
    flex: 1 1 0%;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    max-width: 550px;
    padding-right: 0px;
}

.exist-addr-text-box {
    position: relative;
    overflow: hidden;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
    padding-top: 10px;
    padding-bottom: 10px;
}

.for-exist-addr-checkbox {
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

.regi-exist-addr::before {
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

.regi-exist-addr::after {
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

.regi-exist-addr {
    cursor: pointer;
    position: relative;
    z-index: 1;
    display: inline-block;
    padding-left: 29px;
    font-size: 14px;
    color: rgb(48, 48, 51);
    vertical-align: top;
}

.request-for-padding {
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
    align-self: flex-start;
    width: 130px;
    padding-top: 11px;
    font-size: 14px;
    font-weight: normal;
    color: rgb(48, 48, 51);
}

.request-table {
    display: flex;
    flex: 1 1 0%;
    flex-direction: column;
    -webkit-box-align: stretch;
    align-items: stretch;
    max-width: 550px;
    padding-right: 0px;
}

.request-table2 {
    position: relative;
    width: 100%;
}

.request-select-box {
    position: relative;
}

.request-select {
    display: block;
    width: 100%;
    border: 1px solid rgb(228, 228, 228);
    outline: none;
    cursor: pointer;
    height: 42px;
    padding: 0px 30px 0px 14px;
    font-size: 13px;
    color: rgb(48, 48, 51);
    background: transparent;
}

.left-section2 {
    position: relative;
    padding: 0px 0px 30px;
    border-top: 2px solid var(--ruler-semantic-color-fill-primary);
}

.second-header {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    height: 74px;
    border-top: 2px solid var(--ruler-semantic-color-border-divider-strong);
    border-bottom: 1px solid var(--ruler-semantic-color-border-line);
}

.coupon-item-info {
    font-family: var(--ruler-semantic-typography-title-xs-bold-font-family);
    font-weight: var(--ruler-semantic-typography-title-xs-bold-font-weight);
    line-height: var(--ruler-semantic-typography-title-xs-bold-line-height);
    font-size: var(--ruler-semantic-typography-title-xs-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
    position: relative;
    display: flex;
    flex-shrink: 0;
    -webkit-box-align: center;
    align-items: center;
}
/* 
.deli-info-modal {
    position: absolute;
    top: 50%;
    left: 50%;
    min-width: 300px;
    padding: 50px 40px 40px;
    text-align: center;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    transform: translate(-50%, -50%) scale(1);
    opacity: 1;
    transition: all 100ms ease-in 0s;
}

.modal-close {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    min-width: 40px;
    min-height: 25px;
    position: absolute;
    top: 0px;
    right: 0px;
    width: 56px;
    height: 56px;
    padding: 20px;
}

.css-1e20pup {
    width: 16px;
    height: 16px;
}

.css-1e20pup g {
    stroke-width: 3px;
}

.modal-inside {
    font-size: 18px;
    line-height: 1.4em;
    color: rgb(0, 0, 0);
    text-align: center;
    word-break: keep-all;
    white-space: pre-wrap;
}

.inside-box {
    margin: 10px -16px -2px;
    max-width: 254px;
    text-align: left;
}

.deli-info-head {
    font-size: 16px;
    font-weight: 500;
    text-align: center;
}

.deli-info-modal-ul {
    margin-top: 12px;
}

.for-modal {
    position: fixed;
    z-index: 3000;
    inset: 0px;
    overflow: hidden;
    overscroll-behavior: contain;
    display: flex;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    visibility: visible;
    opacity: 1;
    background-color: transparent;
}
 */
</style>

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
		<div class="order-mid-main">
			<div class="order-left">
				<section class="left-section1">
					<header class="section1-header">
						<h2 class="sec1-header-box">
						배송정보
						<button class="sec1-header-box-btn">?</button>
						</h2>
						<p class="must-text">
							<i class="css-6cb3bj e1mkvd1x4">*</i>
							 표시는 필수입력 항목
						</p>
					</header>	
					<div class="input-box">
						<ul class="input-box-ul">
							<li role="button" class="exist-deli-addr">기존 배송지</li>
							<li role="button" class="new-deli-addr">신규입력</li>
						</ul>
					</div>
					<div class="input-addr-all">
						<div class="input-addr-detail">
							<h2 class="addr-title">배송지명</h2>
							<div class="addr-title-textbox">
								<input class="addr-title-text" type="text" autocapitalize="none" name="new-addr"/>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="recipient">수령인</h2>
							<div class="recipient-textbox">
								<input required="required" class="recipient-text" type="text" autocapitalize="none" name="new-recipient"/>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="deli-location">배송지</h2>
							<div class="location-box">
								<div class="location-box-text">
									<div class="location-box-text1">
										<div class="location-text-content"></div>
										<button class="post-code" type="button">우편번호 검색</button>
									</div>
								</div>
								
								<div class="location-box-text">
								<div class="post-code-addr"></div>
								</div>
								<div class="location-box-text">
									<input required="required" class="detail-location-addr" placeholder="상세주소 입력" type="text" />
								</div>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="first-tel">연락처1</h2>
							<div class="first-tel-box">
								<input class="first-tel-text" autocapitalize="none" type="text" name="tel1" required="required" inputmode="numeric" maxlength="4" value=""/>
								<span class="dive-first-tel-text">-</span>
								<input class="first-tel-text" autocapitalize="none" type="text" name="tel2" required="required" inputmode="numeric" maxlength="4" value=""/>
								<span class="dive-first-tel-text">-</span>
								<input class="first-tel-text" autocapitalize="none" type="text" name="tel3" required="required" inputmode="numeric" maxlength="4" value=""/>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="second-tel">연락처2</h2>
							<div class="second-tel-box">
								<input class="second-tel-text" autocapitalize="none" type="text" name="tel1" inputmode="numeric" maxlength="4" value=""/>
								<span class="dive-second-tel-text">-</span>
								<input class="second-tel-text" autocapitalize="none" type="text" name="tel2" inputmode="numeric" maxlength="4" value=""/>
								<span class="dive-second-tel-text">-</span>
								<input class="second-tel-text" autocapitalize="none" type="text" name="tel3" inputmode="numeric" maxlength="4" value=""/>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="padding-for-checkbox"></h2>
							<div class="regi-exist-addr-box">
								<span class="exist-addr-text-box">
									<input class="for-exist-addr-checkbox" type="checkbox" />
									<label class="regi-exist-addr">기존배송지로 등록</label>
								</span>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="request-for-padding"></h2>
							<div class="request-table">
								<div class="request-table2">
									<div class="request-select-box">
										<select class="request-select">
											<option>배송시 요청사항을 선택해 주세요</option>
											<option>부재시 문앞에 놓아주세요</option>
											<option>부재시 경비실에 맡겨 주세요</option>
											<option>부재시 전화 또는 문자 주세요</option>
											<option>택배함에 넣어 주세요</option>
											<option>파손위험상품입니다. 배송시 주의해주세요</option>
											<option>배송전 연락주세요</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="left-section2">
					<header class="second-header">
						<h2 class="coupon-item-info">쿠폰 사용 및 상품 정보 / 총 1개</h2>
					</header>
				</section>
				<section class="left-section3"></section>
				<section class="left-section4"></section>
			</div>
		</div>
	</div>
	<!-- 
	<div class="for-modal">
		<div class="deli-info-modal" open="">
			<button class="modal-close" type="button">
				<svg class="e1mkvd1x2 css-1e20pup etrxoz0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 84 82">
					<g fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="2" stroke-linecap="square">
						<path d="M82.655.345L1.156 81.844M82.655 81.655L1.156.156"></path>
					</g>
				</svg>
			</button>
			<div class="modal-inside">
				<div class="inside-box">
					<h2 class="deli-info-head">배송안내</h2>
						<ul class="deli-info-modal-ul">
							<li class="css-1tzaxnm esx5ojl3">도서산간 지역의 경우 추후 수령 시 추가 배송비가 발생할 수 있으며, 해외배송은 불가합니다.</li>
							<li class="css-1tzaxnm esx5ojl3">배송지 불분명 및 수신불가 연락처 기입으로 반송되는 왕복 택배 비용은 구매자 부담으로 정확한 주소 및 통화 가능한 연락처 필수 기입.</li>
							<li class="css-1tzaxnm esx5ojl3">대리 주문으로 해외 주소로 발송 전, 주문품 꼭 확인해주세요. 오배송 및 불량 교환에 따른 배송비는 국내 택배 비용만 지원됩니다.</li>
						</ul>
				</div>
			</div>
		</div>
	</div>
 -->
<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
<!-- 
<script>
	$(".sec1-header-box-btn").on("click", function(){
		$(".deli-info-modal").show();
		if ($(".modal-close")) {
			$(".deli-info-modal").hide()
		}
	})
</script>
 -->
</body>
</html>