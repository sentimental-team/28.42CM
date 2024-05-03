<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- <script src="/jspPro/resources/cdn-main/example.js"></script> -->
<style>
body {
	min-height: 190vh;
}

#wrap {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	/* 위  display는  웹킷(Webkit) 엔진을 사용하는 브라우저에서 Flexbox 레이아웃을 지원하기 위한 속성입니다. 
        Flexbox를 사용하여 요소를 배치 및 정렬할 수 있게 해줍니다. 하지만 최신의 브라우저에서는 -webkit-box 대신에 
        display: flex;를 사용하는 것이 일반적입니다. */
	display: flex;
	min-width: 900px;
	padding: 40px 50px 90px
}
#best-left {
	width: 200px;
    padding-right: 80px;
    box-sizing: content-box;
}
.best_title_left{
    width: 200px;
    padding-bottom: 12px;
    border-bottom: 4px solid #000000;
    font-size: 23px;
    font-weight: 800;
    line-height: 1.25;
}
.left-menu{
    margin-top: 16px;
   list-style-type: none;
   padding: 0px;

}
.small-menu{
    display: block;
    width: 100%;
    line-height: 2.13;
    font-size: 16px;
    color: rgb(93, 93, 93);
    text-align: left;
    outline: none;
    font-weight: 200;
    text-decoration: none;
	
}
#best-right{
  flex:1;
}
.best_title_right{

	 margin-bottom: 36px;
    font-size: 34px;
    font-weight: 600;
    line-height: 41px;
}
.best_radio_box{
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    flex-wrap: wrap;
    width: 100%;
    border: 1px solid rgb(212, 212, 212);
    background-color: rgb(255, 255, 255);
    
    
}
.aa{
    display: flex;
    flex-wrap: wrap;
    list-style: none;
}
.aa > span {
  min-height: 10px;
  line-height: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  overflow: visible;
  height: 18px;
  margin-right: 10px; /* 간격 조절 */
  padding-right: 15px; /* 구분선 위치 조절 */
  border-right: 1px solid #ccc; /* 구분선 스타일 */
  font-size: 12px;
}

.aa > span:last-child {
  margin-right: 0;
  padding-right: 0;
  border-right: none;
}
input[type="radio"] {
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    -ms-appearance: none;
    width: 0;
    height: 0;
    position: absolute;
    opacity: 0;
}
label {
    cursor: pointer;
}
input[type="radio"]:checked + label {
    font-weight: bold; /* 체크된 상태일 때 텍스트의 굵기를 변경할 수 있다 */
}
.best_raido_box2{
	margin-top: 30px;
}
.best_raido_box2 > span{
	position: relative;
    overflow: hidden;
    display: inline-block;
    min-height: 20px;
    line-height: 20px;
    margin-right: 0px
}
.best_raido_box2 > span > input{
    position: absolute;
    z-index: -10;
    top: -100%;
    left: -100%;
    width: 13px;
    height: 13px;
    background: transparent;
}
. class="best_radio_box3":checked+.bb {
    font-weight: 600;
}

.best_radio_box3 {
   padding-left: 0px;
    font-size: 14px;
    font-weight: 300;
    color: rgb(93, 93, 93);
    margin: 0px 24px;
    cursor: pointer;
    position: relative;
    z-index: 1;
    display: inline-block;
    padding-left: 27px;
    line-height: 20px;
    color: #303033;
}
.bb{
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    height: 31px;
    padding: 0px;
    border-radius: 16.5px;
    border: solid 1px #e4e4e4;
    font-family: AppleSDGothicNeo;
    font-size: 13px;
    font-weight: 500;
    background-color: #ffffff;
    color: #5d5d5d;
    width: 60px
}
#photo_list{
	display: grid;
    grid-template-columns: repeat(12, 1fr);
    margin-top: 36px;
    counter-reset: list-number;
    grid-gap: 40px 20px;
    min-height: 800px

}

 @media (max-width: 540px) {
    .photo_list {
        grid-gap: 15px 0;
    }
}
 

.photo{
    position: relative;
    list-style: none;
    background-color: blue;
    height: 602.66px;
    width: 410.66;
}



@media (max-width: 540px) {
    .photo {
        grid-column: auto / span 6;
    }
}



</style>
</head>
<body>
	<div id="wrap">
		<div id="best-left">
			<button></button>
			<div>
				<!-- <button></button>  화면이 작아졌을 때 #best-left메뉴 나타나게 하는거 -->
				<h2 class="best_title_left">Best</h2>
				<!-- <ul class="left_bar_meue" > -->
				<ul class="left-menu">
					<li><a class="small-menu" href="">여성의류</a></li>
					<li><a class="small-menu"  href="">여성가방</a></li>
					<li><a class="small-menu"  href="">여성신발</a></li>
					<li><a class="small-menu"  href="">여성액세서리</a></li>
					<li><a class="small-menu" href="">남성의류</a></li>
					<li><a class="small-menu"  href="">남성가방</a></li>
					<li><a class="small-menu"  href="">남성신발</a></li>
					<li><a class="small-menu"  href="">남성액세서리</a></li>
					<li><a class="small-menu"  href="">주방,생활</a></li>
					<li><a class="small-menu"  href="">가구,인테리어</a></li>
					<li><a class="small-menu"  href="">뷰티</a></li>
					<li><a class="small-menu"  href="">컴퓨터,디지털</a></li>
					<li><a class="small-menu"  href="">가전</a></li>
					<li><a class="small-menu"  href="">컬처</a></li>
					<li><a class="small-menu"  href="">레저</a></li>
					<li><a class="small-menu"  href="">유아,아동</a></li>
					<li><a class="small-menu"  href="">푸드</a></li>
				</ul>
				<!-- </ul> -->
			</div>
		</div>

		<div id="best-right">
			<h2 class="best_title_right" >여성의류</h2>
			<div class="best_radio_box">
				<ul class="aa">
					<span class="right_radio"> <input type="radio" name="14"> <label for="14" class="right_label">전체</label>
					</span>
					<span class="right_radio"> <input type="radio" name="01"> <label for="01" class="right_label">상의</label>
					</span>
					<span class="right_radio"> <input type="radio" name="02"> <label for="02" class="right_label">원피스</label>
					</span>
					<span class="right_radio"> <input type="radio" name="03"> <label for="03" class="right_label">바지</label>
					</span>
					<span class="right_radio"> <input type="radio" name="04"> <label for="04" class="right_label">아우터</label>
					</span>
					<span class="right_radio"> <input type="radio" name="05"> <label for="05" class="right_label">스커트</label>
					</span>
					<span class="right_radio"> <input type="radio" name="06"> <label for="06" class="right_label">니트웨어</label>
					</span>
					<span class="right_radio"> <input type="radio" name="07"> <label for="07" class="right_label">액티브웨어</label>
					</span>
					<span class="right_radio"> <input type="radio" name="08"> <label for="08" class="right_label">홈웨어</label>
					</span>
					<span class="right_radio"> <input type="radio" name="09"> <label for="09" class="right_label">셋업</label>
					</span>
					<span class="right_radio"> <input type="radio" name="10"> <label for="10" class="right_label">이너웨어</label>
					</span>
					<span class="right_radio"> <input type="radio" name="11"> <label for="11" class="right_label">점프수트</label>
					</span>
					<span class="right_radio"> <input type="radio" name="12"> <label for="12" class="right_label">EXCLUSIVE</label>
					</span>
					<span class="right_radio"> <input type="radio" name="13"> <label for="13" class="right_label">해외브랜드</label>
					</span>
					<!--라디오 버튼을 없앴다. 레이블을 클릭하면 input이 동작 할 수 있도록 for을  사요했다.  -->
				</ul>
			</div>
			<div class="best_raido_box2">
				 <span> <input class="best_radio_box3" type="radio" > <label class="bb">실시간</label></span> 
				 <span> <input class="best_radio_box3" type="radio"> <label class="bb">일간</label></span>
				 <span> <input class="best_radio_box3" type="radio"> <label class="bb">주간</label></span>
				 <span> <input class="best_radio_box3" type="radio"> <label class="bb">월간</label></span>
			</div>
			<ul id="photo_list">
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>	
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
					
				<li class="photo">
					<div>
						<a href="">
							<div>
								<img alt="" src="">
							</div>
						</a>
						<div></div>
					</div>
				</li>
				
				
				
				
			</ul>


		</div>
	</div>


<script>
$(document).ready(function(){
    $('label.right_label).click(function(){
        var selectedValue = $(this).attr('for');
        // AJAX 호출
        $.ajax({
            url: 'your_backend_endpoint.php', // 백엔드 엔드포인트 URL
            type: 'POST',
            data: {value: selectedValue}, // 선택한 값 전달
            success: function(response){
                // AJAX 요청이 성공하면 이곳에서 응답을 처리
                console.log(response); // 콘솔에 응답 출력 (개발자 도구에서 확인 가능)
                // 여기에 데이터를 처리하고 화면에 표시하는 등의 로직을 추가할 수 있습니다.
            },
            error: function(xhr, status, error){
                // AJAX 요청이 실패한 경우 처리할 코드
                console.error(error); // 콘솔에 오류 출력
            }
        });
    });
});
</script>

</body>
</html>