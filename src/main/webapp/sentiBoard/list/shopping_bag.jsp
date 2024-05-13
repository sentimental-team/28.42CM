<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
   span.material-symbols-outlined{
   vertical-align: text-bottom;
   }
   
  .shop_1{
    min-width: 900px;
    max-width: 1600px;
    margin: 0px auto;
    padding: 0px 50px 200px;
  }
  .shop_2{
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    padding: 70px 0px 78px;
  }
  .shop_2_1{
      padding-top: 20px;
      display: block;
  
  
  }
  .shop_2_2{
      margin: 117px auto 137px;
      display: block;
  }
  .shop_2_3{
  
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    margin: 0px -4px;
  }
  .shop_3{
  
    display: flex;
    list-style: none;
  
  }
  .shop_4{
     display: flex;
    -webkit-box-align: center;
    align-items: center;
    font-size: 15px;
    font-weight: 500;
    line-height: 20px;
    color: rgb(228, 228, 228);
  }
  
  .shop_5_1{
  padding-top: 20px
  }
  .shop_5_2{
      font-size: 12px;
    color: rgb(76, 76, 76);
    border-bottom: 1px solid rgb(0, 0, 0);	
  }
  .shop_5_3{
     display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    margin-top: 30px;
  }
  .shop_6_1{
      position: relative;
    overflow: hidden;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
  }
  
  @media (min-width: 541px) {
    ..shop_6_1 {
        min-width: 24px;
        min-height: 24px;
        line-height: 24px;
    }
}
  
  
  .shop_6_2{  
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
  .shop_7_1{
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
    .shop_7_1 {
        padding-left: 24px;
    }
}
 .shop_7_1{
      font-weight: 600;
  }
  .shop_8_1{
     display: table;
    table-layout: fixed;
    width: 100%;
    border-top: 4px solid rgb(0, 0, 0);
  }
  .shop_8_2{
      position: relative;
  }
  .shop_9_1{
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
  .shop_9_2{
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
  .shop_9_3{
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
  .shop_9_4{
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
  .shop_9_5{
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
  @media (min-width: 541px) {
<style>
    .shop_10_1 {
        min-width: 24px;
        min-height: 24px;
        line-height: 24px;
    }
}
.shop_10_1{
    position: relative;
    overflow: hidden;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
}
.shop_11_1{
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
.shop_11_2{
    font-weight: 600;
     cursor: pointer;
    position: relative;
    z-index: 1;
    display: inline-block;
    padding-left: 29px;
    font-size: 14px;
    color: rgb(48, 48, 51);
    vertical-align: top;
}
@media (min-width: 541px) {

    .shop_11_2 {
        padding-left: 24px;
    }
}
.shop_11_1:checked + .shop_11_1::before {
    background: rgb(55, 95, 255);
    border-color: rgb(55, 95, 255);
}
@media (min-width: 541px) {
    .shop_11_2::before {
        width: 24px;
        height: 24px;
    }
}
.shop11_2 ::before{
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
  *, *::before, *::after {
    box-sizing: border-box;
}

.shop_11_1:checked + .shop_11_1::after, .shop_11_1:disabled + .shop_11_1::after {
    border-color: rgb(255, 255, 255);
}

@media (min-width: 541px) {
    .shop_11_2::after {
        top: 4px;
        left: 8px;
        width: 6px;
        height: 12px;
    }
}

.shop_11_2::after {
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
.shop_9_6{

    display: none;
    }
.shop_9_7{
    position: relative;
    display: table;
    table-layout: fixed;
    width: 100%;
}
.shop_10_2{
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
.shop_10_3{
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
.shop_10_4{
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
.shop_10_5{
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
.shop_10_6{
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
.shop_11_3{

    position: relative;
    overflow: hidden;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
}
@media (min-width: 541px) {
    .shop_11_3 {
        min-width: 24px;
        min-height: 24px;
        line-height: 24px;
    }
}

.shop_11_3{
    position: relative;
    overflow: hidden;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
}
.shop_12_1{
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
    .shop_12_1:checked + .shop_12_1 {
    font-weight: 600;
    
}

.shop_12_1:checked + .shop_12_1::before {
    background: rgb(55, 95, 255);
    border-color: rgb(55, 95, 255);
}

@media (min-width: 541px) {
    .shop_12_1::before {
        width: 24px;
        height: 24px;
    }
}
.shop_12_1 :: before{
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

.shop_12_1:checked + .shop_12_1::after, .shop_12_1:disabled + .shop_12_1::after {
    border-color: rgb(255, 255, 255);
}
@media (min-width: 541px) {
    .shop_12_1::after {
        top: 4px;
        left: 8px;
        width: 6px;
        height: 12px;
    }
}

.shop_12_1::after{
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
.shop_11_3{
    display: flex;

}
.shop_12_1{
    width: 100%;
}
.shop_13_1{
    display: block;
    margin-top: 5px;
    font-size: 16px;
    font-weight: 600;
    line-height: 22px;
    color: rgb(0, 0, 0);
    word-break: break-all;
}
.shop_12_2{
    margin-top: 6px;
    font-size: 13px;
    line-height: 22px;
    color: rgb(48, 48, 51);
}
.shop_13_1{
	display: block;
}
.shop_13_2{
    display: block;
    margin-top: 2px;
    color: rgb(255, 72, 0);
}
.shop_14_1{
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
    background: url(https://img.29cm.co.kr/next29cm/order/icon-remove.png) 0px 0px / 24px 24px no-repeat;

}
.shop_16_1{
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
.shop_16_2{
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
.shop_16_3{
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
.shop_17_1{
    font-size: 22px;
    color: rgb(0, 0, 0);
    word-break: break-all;
}
.shop_17_2{
    display: flex;
    column-gap: 8px;
}
.shop_17_3{
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
.shop_10_7{
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
.shop_10_8{
    margin-top: 12px;
    font-size: 13px;
    font-weight: 400;
    line-height: 19px;
    color: rgb(48, 48, 52);
    text-align: center;
}
.shop_10_9{
    color: rgb(55, 95, 255);
}
.shop_10_10{
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;

}
.shop_10_11{
    font-size: 15px;
    color: rgb(0, 0, 0);
}
.shop_10_12{
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
.shop_10_13{
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
    margin-right: 0px;
}
</style>
</head>
<body>
<header>
  <jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>


<div class="shop_1">
	<div class="shop_2">
		<ol class="shop_3">
			<li class="shop_4" style="color: black">
				"01"
				"SHOPPING BAG"
				<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
					<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
					<path d="M1 0l40 40.083L1.166 80"></path>
				</g>
				</svg>
			</li>
			<li class="shop_4">
				"02"
				"ORDER"
				<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
					<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
					<path d="M1 0l40 40.083L1.166 80"></path>
				</g>
				</svg>
			</li>
			<li class="shop_4">
				"03"
				"ORDER CONFIRMED"
				<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
					<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
					<path d="M1 0l40 40.083L1.166 80"></path>
				</g>
				</svg>
			</li>
		</ol>	
	</div>
	<section class="">
			<div class="shop_5_1">
				<span class="shop_6_1" id="all_select_btn">
					<input class="shop_7_1" type="checkbox">
					<label class="shop_7_2">
					
					"전체선택 ("
					"1"
					"/"
					"1"
					")"
					
					</label>
				</span>
				<button class="shop_6_2" type="button">선택삭제</button>
			</div>
			<div class="shop_5_2">
				<div class="shop_8_1">
					<div class="shop_9_1">
					<span class="shop_10_1">
						<input class="shop_11_1" type="checkbox">
						<label class="shop_11_2"></label>
					</span>
					</div>
					<div class="shop_9_2">상품 정보</div>
					<div class="shop_9_3">수량</div>
					<div class="shop_9_4">주문금액</div>
					<div class="shop_9_5">배송비</div>
				</div>
				<div class="shop_8_2">
					<h3 translate="no" class="shop_9_6">로우로우</h3>
					<div class="shop_9_7">
						<div class="shop_10_2">
							<span class="shop_11_3">
								<input class="shop_12_1" type="checkbox">
								<label class="shop_12_2"></label>
							</span>
						</div>
						<div class="shop_10_3">
							<div class="shop_11_3">
								<a href="https://product.29cm.co.kr/catalog/1056337">
								<img src="https://img.29cm.co.kr/next-product/2023/03/17/7fa23081b50747409bfeb23237637017_20230317194723.jpg?width=150" alt="로우로우 스트링 크로스백 750 ep.2 Charcoal" loading="lazy" class="css-o1wb4r e1pwpbld9"></a>
								<div class="shop_12_1">
								<div translate="no">
									<a class="" href="https://shop.29cm.co.kr/brand/215">로우로우</a>
								</div>
									<a id="product_title_1056337" class="shop_13_1" href="https://product.29cm.co.kr/catalog/1056337">로우로우 스트링 크로스백 750 ep.2 Charcoal</a>
								<div class="shop_12_2">
									<span class="shop_13_1">59,000원</span>
									 <span class="shop_13_2">[5%] 56,050원</span>
								  </div>
						    </div>
						 </div>
							  <button id="product_delete_btn_1056337" class="shop_14_1" type="button">삭제</button>
					   </div>
						<div class="shop_10_4">
							  <div class="shop_15_1">
							  <div class="shop_15_2">
								  <button class="shop_16_1" type="button">-</button>
								  <input class="shop_16_2" autocapitalize="none" id="number_of_products_1056337" type="text" inputmode="numeric" value="1">
								  <button id="add_product_btn_1056337" class="shop_16_3" type="button">+</button>
							</div>
							  </div>
						  </div>
						<div class="shop_10_5">
							  <div>
							 	 <span id="product_amount_1056337" class="shop_17_1">56,050</span>
							  원</div>
							  <div class="shop_17_2">
							 	 <button class="shop_17_3" type="button">BUY NOW</button>
							  </div>
						  </div>
					    <div class="shop_10_6"></div>
					  </div>
					  <div class="shop_10_7">
					 	 조건무료 업체배송
						  <p class="shop_10_8">
					 		 <a class="shop_10_9" href="https://shop.29cm.co.kr/brand/215">[RAWROW]</a> 
					 			 제품 으로만 30,000원 이상 구매시 무료배송됩니다.
						  <br>(배송비 3,000원)
					 	 </p>
					  </div>
				  </div>
			  </div>
			  <div class="shop_5_3">
				  <div class="shop_10_10">
				 	 <button class="shop_10_12" type="button">선택상품 삭제</button>
				 	 <button class="shop_10_13" type="button">품절상품 삭제</button>
				  </div>
					  <p class="shop_10_11">장바구니는 최대 100개의 상품을 담을 수 있습니다.</p>
			  </div>
	  </section>
	
	<section class="shop_2_2"></section>
	<div class="shop_3_3"></div>
</div>







</body>
<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</html>