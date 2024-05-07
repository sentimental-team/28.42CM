<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>NAVER</title>
        <link rel="stylesheet" href="reset.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e9bc35e8e0.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <div class="wrapper">
            <header class="header">
                <div class="header-area">
                    <div class="area-flex">
                        <div class="area-logo"></div>
                        <div class="area-search">
                            <div class="search-box">
                                <form action="">
                                    <input type="text" class="search-text">
                                    <span class="search-keyboard"></span>
                                    <span class="search-arrow"></span>
                                </form>
                            </div>
                            <button class="search-btn"><div class="btn-img"></div></button>
                        </div>
                        <div class="header-link">
                            <div class="area-link">
                                <a href="#">네이버를 시작페이지로 ></a>
                                <a href="#">쥬니어네이버</a>
                                <a href="#">해피빈</a>
                            </div>
                        </div>
                    </div>
                </div>
                <nav class="header-navbar">
                    <div class="navbar-area">
                        <ul class="navbar-menu">
                            <li class="item"><div class="navbar-mail"></div></li>
                            <li class="item"><div class="navbar-cafe"></div></li>
                            <li class="item"><div class="navbar-blog"></div></li>
                            <li class="item"><div class="navbar-knowledge"></div></li>
                            <li class="item"><div class="navbar-shopping"></div></li>
                            <li class="item"><div class="navbar-pay"></div></li>
                            <li class="item"><div class="navbar-tv"></div></li>
                            <li class="item"><div class="navbar-dict"></div></li>
                            <li class="item"><div class="navbar-news"></div></li>
                            <li class="item"><div class="navbar-financial"></div></li>
                            <li class="item"><div class="navbar-estate"></div></li>
                            <li class="item"><div class="navbar-map"></div></li>
                            <li class="item"><div class="navbar-movie"></div></li>
                            <li class="item"><div class="navbar-music"></div></li>
                            <li class="item"><div class="navbar-book"></div></li>
                            <li class="item"><div class="navbar-webtoon"></div></li>
                            <li class="item"><div class="navbar-more"></div></li>
                        </ul>
                        <div class="navbar-rank">
                            <ul class="rank">
                                <li class="rank-item"><span>1</span> 필영</li>
                                <li class="rank-item"><span>2</span> 네이버</li>
                                <li class="rank-item"><span>3</span> 클론</li>
                                <li class="rank-item"><span>4</span> 페이지</li>
                                <li class="rank-item"><span>5</span> 입니다</li>
                                <li class="rank-item"><span>6</span> using</li>
                                <li class="rank-item"><span>7</span> HTML</li>
                                <li class="rank-item"><span>8</span> CSS</li>
                                <li class="rank-item"><span>9</span> JS</li>
                                <li class="rank-item"><span>10</span> WEB</li>
                            </ul>
                            <i class="fas fa-angle-down"></i>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="container">
                <ul class="row">
                    <li class="col">
                        <div class="item advertise"><img src="imgs/advertise.png" alt=""></div>
                    </li>
                    <li class="col">
                        <div class="item account">
                            <div class="account-user">
                                <div class="user-thumbnail"><img src="imgs/user_thumbnail.png" alt=""></div>
                                <div class="private"><span>필영 님</span><a href="" class="private-menu">내정보</a><i class="fas fa-lock"></i></div>
                                <div class="user-service">
                                    <span class="mail">메일 <span class="mailcount">999+</span></span>
                                    <span class="letter">쪽지 <span class="lettercount">120</span></span>
                                    <button class="user-logout">로그아웃</button>
                                </div>                                
                            </div>
                            <div class="account-service">
                                <ul class="service-menu">
                                    <li><div class="item">알림</div></li>
                                    <li><div class="item">MY구독</div></li>
                                    <li><div class="item">메일</div> </li>
                                    <li><div class="item">카페</div></li>
                                    <li><div class="item">블로그</div></li>
                                </ul>
                                <div class="service-more">
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="yeonhap">
                    <div class="yeonhap-news">
                        <h3><a href="">연합뉴스</a><i class="fas fa-angle-right"></i></h3>
                    </div>
                    <div class="newswrapper">
                        <ul class="yeonhap-contents">
                            <li class="news-item"><a href="">'손흥민, 고메스에 '사과' 문자…에버턴 감독 "고메스 복귀 가능'</a></li>
                            <li class="news-item"><a href="">흑사병, 중국서 2명 확진 '비상'… 감염 경로는 무엇?</a></li>
                            <li class="news-item"><a href="">[날씨] 요란한 비, 첫눈 가능성...서울·경기·영서 한파주의보</a></li>
                            <li class="news-item"><a href="">'무신사TV 10만' 랜덤 쿠폰 퀴즈 …정답 공개</a></li>
                            <li class="news-item"><a href="">무선 충전기, 충전할 때 오히려 전자파 덜 나온다</a></li>
                        </ul>
                    </div>
                    <ul class="yeonhap-category">
                        <li class="item"><a href="">네이버 뉴스</a></li>
                        <li class="item"><a href="">연예</a></li>
                        <li class="item"><a href="">스포츠</a></li>
                        <li class="item"><a href="">경제</a></li>
                    </ul>
                    
                </div>

                <div class="newsstand">
                    <div class="newsstand-menulist">
                        <div class="newsstand-title">
                            <h3><a href="">뉴스스탠드 </a><i class="fas fa-angle-right"></i></h3>
                        </div>
                        <div class="newsstand-all">
                            <h3><a href="">전체 언론사</a></h3>
                        </div>
                        <div class="newsstand-mynews">
                            <h3><a href="">MY 뉴스</a></h3>
                        </div>
                        <div class="newsstand-menu">
                            <div class="menu-style">
                                <div class="menu-album"></div>
                                <div class="menu-inline"></div>
                                <div class="menu-edit"></div>
                            </div>
                            <div class="menu-control">
                                <div class="prev-btn"></div>
                                <div class="next-btn"></div>
                            </div>
                        </div>
                    </div>
                    <ul class="newsstand-category">
                        <li class="item"><img src="imgs/매일경제.png" alt=""></li>
                        <li class="item"><img src="imgs/osen.png" alt=""></li>
                        <li class="item"><img src="imgs/파이낸셜뉴스.png" alt=""></li>
                        <li class="item"><img src="imgs/한국경제TV.png" alt=""></li>
                        <li class="item"><img src="imgs/한국일보.png" alt=""></li>
                        <li class="item"><img src="imgs/동아일보.png" alt=""></li>
                        <li class="item"><img src="imgs/연합뉴스.png" alt=""></li>
                        <li class="item"><img src="imgs/헤럴드경제.png" alt=""></li>
                        <li class="item"><img src="imgs/스포츠동아.png" alt=""></li>
                        <li class="item"><img src="imgs/아시아경제.png" alt=""></li>
                        <li class="item"><img src="imgs/뉴데일리.png" alt=""></li>
                        <li class="item"><img src="imgs/kbs월드.png" alt=""></li>
                        <li class="item"><img src="imgs/inven.png" alt=""></li>
                        <li class="item"><img src="imgs/경기일보.png" alt=""></li>
                        <li class="item"><img src="imgs/sbs.png" alt=""></li>
                        <li class="item"><img src="imgs/ytn.png" alt=""></li>
                        <li class="item"><img src="imgs/knn.png" alt=""></li>
                        <li class="item"><img src="imgs/국민일보.png" alt=""></li>
                    </ul>
                </div>
                <div class="weather">
                    <div class="weather-header">
                        <a href="" class="date">11.09.(토)</a>
                        <a href="" class="area">군포시 당정동 ></a>
                        <div class="ordering">
                            <b>1</b>/<span>4</span>
                        </div>
                        <ul class="weather-arrow">
                            <li>
                                <div class="arrow-box">
                                    <div class="prev-arrow"></div>
                                </div>
                            </li>        
                            <li>
                                <div class="arrow-box">
                                    <div class="next-arrow"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="weather-container">
                        <div class="weather-content">
                            <div class="weather-today">
                                <div class="weather-image">
                                    <img src="imgs/weather_image.png" alt="">
                                </div>
                                <div class="weather-temperature">
                                    <span class="current-temperature">13</span>°C
                                    <div class="low-high">
                                        <span class="lowest-temperature">4°</span><span style="color:#BABABA;">/</span>
                                        <span class="highest-temperature">15°</span>
                                    </div>
                                </div>
                                <div class="weather-message">
                                    <h3>어제보다 4° 낮아요</h3>
                                    <h4>미세먼지 <span class="dust-average">보통</span></h4>
                                </div>
                            </div>
                        </div>
                        <div class="weather-realtime">
                            <a href="" class="weather-page"><span>날씨</span></a>
                            <a href="" class="check-realtime">실시간 기상 정보 확인하기 </a>
                            <a href="" class="weather-weekend"><span>주간예보</span></a>
                        </div>
                    </div>
                </div>
                <div class="advertise-side">
                    <img src="imgs/advertise-side.png" alt="">
                </div>
                <div class="themecast">
                    <div class="themecast-header">
                        <div class="header-btn">
                            <img src="imgs/category-button.png" alt="">
                        </div>
                        <ul class="themecast-category">
                            <li class="item"><a href="">리빙</a></li>
                            <li class="item"><a href="">푸드</a></li>
                            <li class="item"><a href="">스포츠</a></li>
                            <li class="item"><a href="">자동차</a></li>
                            <li class="item"><a href="">패션뷰티</a></li>
                            <li class="item"><a href="">부모i</a></li>
                            <li class="item"><a href="">건강</a></li>
                            <li class="item"><a href="">웹툰</a></li>
                            <li class="item"><a href="">게임</a></li>
                            <li class="item"><a href="">TV연예</a></li>
                            <li class="item"><a href="">뮤직</a></li>
                        </ul>
                        <div class="left-arrow">
                            <img src="imgs/left-arrow.png" alt="">
                        </div>
                        <div class="right-arrow">
                            <img src="imgs/right-arrow.png" alt="">
                        </div>
                    </div>
                    <ul class="themecast-list">
                        <li class="item car">
                            <div class="background">
                                <h3>자동차</h3>
                                <div class="divide"></div>
                                <ul class="car-content">
                                    <li class="">자동차소식</li>
                                    <li class="">자동차영상</li>
                                    <li class="">국산차정보</li>
                                    <li class="">수입차정보</li>
                                    <li class="">모터사이클</li>
                                    <li class="">공식블로그</li>
                                    <li class="">내차설명서</li>
                                </ul>
                            </div>
                        </li>
                        <li class="item">
                            <img src="imgs/car1.png" alt="">
                            <h3 class="title">기아차, 전기차 기반 SUV 쿠페 콘셉트 '퓨처론'</h3>
                            <span>더 드라이브 </span>
                            <span class="bar">|</span>
                            <span>  테마</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car2.png" alt="">
                            <h3 class="title">89년생 vs. 19년생 BMW 3시리즈</h3>
                            <span>오토캐스트 </span>
                            <span class="bar">|</span>
                            <span> 영상</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car3.png" alt="">
                            <h3 class="title">국내 대표 레이싱 리그! 슈퍼레이스 결승전 현장</h3>
                            <span>영현대 </span>
                            <span class="bar">|</span>
                            <span>테마</span>
                        </li>

                        <li class="item">
                            <img src="imgs/car4.png" alt="">
                            <h3 class="title">차에 안지워지는 것들! 이거 하나로 끝?</h3>
                            <span>더클래스 </span>
                            <span class="bar">|</span>
                            <span>테마</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car5.png" alt="">
                            <h3 class="title">올해를 빛낸 라이더들의 열정</h3>
                            <span>대림오토바이 </span>
                            <span class="bar">|</span>
                            <span>테마</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car6.png" alt="">
                            <h3 class="title">요즘 나오는 차에는 절대 없는 물건들</h3>
                            <span>아우토 슈타트 </span>
                            <span class="bar">|</span>
                            <span>테마</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car7.png" alt="">
                            <h3 class="title">가을철 자동차의 치명적인 적은 '이것'?</h3>
                            <span>AXA손해보험 </span>
                            <span class="bar">|</span>
                            <span>상식</span>
                        </li>

                        <li class="item">
                            <img src="imgs/car8.png" alt="">
                            <h3 class="title">기상천외했던 폭스바겐의 역사 속 광고 모음</h3>
                            <span>오토그램 </span>
                            <span class="bar">|</span>
                            <span>테마</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car9.png" alt="">
                            <h3 class="title">페라리 최초의 PHEV 'SF90 스트라달레'</h3>
                            <span>오토헤럴드 </span>
                            <span class="bar">|</span>
                            <span>테마</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car10.png" alt="">
                            <h3 class="title">그랜저의 저력, 지난달 성별 연령별 성적표</h3>
                            <span>카이즈유 </span>
                            <span class="bar">|</span>
                            <span>통계</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car11.png" alt="">
                            <h3 class="title">'첨단 럭셔리 탱크'로 돌아온, '모하비 더 마스터'</h3>
                            <span>모터리언 </span>
                            <span class="bar">|</span>
                            <span>영상</span>
                        </li>

                        <li class="item">
                            <img src="imgs/car12.png" alt="">
                            <h3 class="title">자동변속기, 변속 시 갑작스러운 충격이?</h3>
                            <span>공임나라 </span>
                            <span class="bar">|</span>
                            <span>상식</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car15.png" alt="">
                            <h3 class="title">독일에서 경험한 현대 i30N 패스트백</h3>
                            <span>라스카도르 </span>
                            <span class="bar">|</span>
                            <span>영상</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car14.png" alt="">
                            <h3 class="title">팰리세이드 인스퍼레이션? 북미형 살펴보니</h3>
                            <span>탑라이더 </span>
                            <span class="bar">|</span>
                            <span>소식</span>
                        </li>
                        <li class="item">
                            <img src="imgs/car16.png" alt="">
                            <h3 class="title">2019년 11월 1주차 자동차업계 이슈 정리</h3>
                            <span>오토커넥트 </span>
                            <span class="bar">|</span>
                            <span>테마</span>
                        </li>
                    </ul>
                </div>
                <div class="shopping">
                    <div class="shopping-header">
                        <div class="shopping-title-box">
                            <div class="shopping-title">
                                <img src="imgs/shopping.png" alt="">
                            </div>
                        </div>
                        <div class="shopping-category">
                            <div>상품</div>
                            <div class="shoppingmall">쇼핑몰</div>
                            <div>MEN</div>
                        </div>
                    </div>
                    <div class="shopping-content">
                        <div class="content-page">
                            1/<span class="total-page">13</span>
                            <img src="imgs/shopping-arrow.png" alt="">
                        </div>
                        <div class="content-container">
                            <div class="logo">
                                <img src="imgs/11번가.png" alt="">
                                <div class="link-box">
                                    <div class="direct-link">바로가기</div>
                                    <img src="imgs/direct-link.png" alt="">
                                </div>
                            </div>
                            <ul class="shopping-item">
                                <li class="item"><img src="imgs/item1.png" alt=""><div>노트북도 역시~ </div><div>한성컴퓨터!</div></li>
                                <li class="item"><img src="imgs/item2.png" alt=""><div>연예인도 찾아</div><div>인기상품 모음!</div></li>
                                <li class="item"><img src="imgs/item3.png" alt=""><div>맛보는 순간</div><div>계속 먹게돼~</div></li>
                                <li class="item"><img src="imgs/item4.png" alt=""><div>네파 30%쿠폰</div><div>스폐셜한 혜택!</div></li>
                                <li class="item"><img src="imgs/item5.png" alt=""><div>삼성전자 십일절</div><div>역대급~할인혜택</div></li>
                                <li class="item"><img src="imgs/item6.png" alt=""><div>하나론부족해</div><div>사랑스러운맛</div></li>
                            </ul>
                            <div class="sale-message">
                                <img src="imgs/sale.png" alt="">
                                <span>11번가11주년 십일절페스티벌 매일매일할인</span>
                            </div>

                            <div class="logo">
                                <div class="mall-title">데일리룩</div>
                                <div class="link-box">
                                    <div class="direct-link">바로가기</div>
                                    <img src="imgs/direct-link.png" alt="">
                                </div>
                            </div>
                            <ul class="shopping-item">
                                <li class="item"><img src="imgs/2item1.png" alt=""><div>맞아요 </div><div>차원이 달라요</div></li>
                                <li class="item"><img src="imgs/2item2.png" alt=""><div>보장하는 퀄리티</div><div>우리의 교복패딩</div></li>
                                <li class="item"><img src="imgs/2item3.png" alt=""><div>우월한 명품핏</div><div>한정30% SALE</div></li>
                            </ul>
                            <div class="logo">
                                <div class="mall-title">레미떼</div>
                                <div class="link-box">
                                    <div class="direct-link">바로가기</div>
                                    <img src="imgs/direct-link.png" alt="">
                                </div>
                            </div>
                            <ul class="shopping-item">
                                <li class="item"><img src="imgs/3item1.png" alt=""><div>후끈두배 초경량</div><div>3만원대 L~2XL</div></li>
                                <li class="item"><img src="imgs/3item2.png" alt=""><div>매년 극찬후기~</div><div>자체제작 F~2XL</div></li>
                                <li class="item"><img src="imgs/3item3.png" alt=""><div>가볍고 예쁜핏!</div><div>F~L 제작패딩</div></li>
                            </ul>
                            <div class="logo">
                                <img src="imgs/wbskin.png" alt="">
                                <div class="link-box">
                                    <div class="direct-link">바로가기</div>
                                    <img src="imgs/direct-link.png" alt="">
                                </div>
                            </div>
                            <ul class="shopping-item">
                                <li class="item"><img src="imgs/4item1.png" alt=""><div>밤에 잠 안올때</div><div>이거하나로 해결</div></li>
                                <li class="item"><img src="imgs/4item2.png" alt=""><div>칼로리 불태워</div><div>신어보면 알아</div></li>
                                <li class="item"><img src="imgs/4item3.png" alt=""><div>종아리알 고민?</div><div>이거쓰면 속시원</div></li>
                            </ul>
                        </div>
                        
                    </div>
                </div>
                <ul class="row bottom-container">
                    <li class="item bottom-left">
                        <ul class="banner">
                            <li class="item">
                                <img src="imgs/banner1.png" alt="">
                                <div class="banner-message">
                                    <span>말모이 100년</span>
                                    <span>"빼다지를 아십니까?"</span>
                                    <span>당신만 아는 우리말 올리고</span>
                                    <span>상품권 받아가세요!</span>
                                </div>
                            </li>
                            <li class="item">
                                <img src="imgs/banner2.png" alt="">
                                <div class="banner-message">
                                    <span>D2SF 스타트업</span>
                                    <span>대입 면접 고득점 찬스</span>
                                    <span>직접 써 본 선배가 추천!</span>
                                    <span>인공지능 면접 뷰인터 에듀</span>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="item bottom-right">
                        <img src="imgs/banner3.png" alt="">
                    </li>
                </ul>
            </div>
            <footer>
                <div class="notice">
                    <div class="notice-area">
                        <a href="">공지사항</a>
                        <a href="" class="more-service">서비스 전체보기<img src="imgs/service-more.png" alt=""></a>
                    </div>
                </div>
                <div class="company">
                    <div class="company-area">
                        <div class="company-user">
                            <ul>
                                <li class="item">Creators <div>크리에이터<span class="bar">|</span>스몰비즈니스</div></li>
                                <li class="item">Partners <div>비즈니스 · 광고<span class="bar">|</span> 스토어 개설 <span class="bar">|</span>지역업체 등록</div></li>
                                <li class="item">Developers <div>네이버 개발자센터<span class="bar">|</span> 오픈 API<span class="bar">|</span> 오픈소스<span class="bar">|</span> 네이버D2<span class="bar">|</span> 네이버 랩스</div></li>
                            </ul>
                        </div>
                        <div class="company-download">
                            <ul>
                                <li class="item">
                                    <div>웨일 브라우저<div class="download">다운받기</div></div>
                                    <img src="imgs/whale.png" alt="">
                                </li>
                                <li class="item">
                                    <div>프로젝트 꽃 <div class="download">바로가기</div></div>
                                    <img src="imgs/flower.png" alt="">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <div class="footer-area">
                        <ul>
                            <li class="item">회사소개<span class="bar">|</span></li>
                            <li class="item">인재채용<span class="bar">|</span></li>
                            <li class="item">제휴제안<span class="bar">|</span></li>
                            <li class="item">이용약관<span class="bar">|</span></li>
                            <li class="item">개인정보처리방침<span class="bar">|</span></li>
                            <li class="item">청소년보호정책<span class="bar">|</span></li>
                            <li class="item">네이버정책<span class="bar">|</span></li>
                            <li class="item">고객센터<span class="bar">|</span></li>
                            <li class="item">ⓒ NAVER CORP.</li>
                        </ul>
                    </div>
                </div>
            </footer>
       <div class="rankbox" >
           <div class="rankbox-header">
                <div class="title">급상승 검색어</div>
                <div class="title-option"><span>전체연령<span>·</span></span><span>현재</span></div>
            </div>
            <div class="rank-tab">
                <div class="top10">
                    1-10위
                </div>
                <div class="top20">
                    11-20위
                </div>
            </div>
            <ul class="rankbox-list">
                <li class="item"><div>1</div>필영<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>2</div>네이버<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>3</div>클론<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>4</div>페이지<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>5</div>입니다<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>6</div>using<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>7</div>HTML<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>8</div>CSS<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>9</div>JS<img src="imgs/rankbox.png" alt=""></li>
                <li class="item"><div>10</div>WEB<img src="imgs/rankbox.png" alt=""></li>
            </ul>
            <div class="rank-time">
                <div class="time">2019.11.13 16:53 기준</div>
                <div class="question-img"><img src="imgs/rankquestion.png" alt=""></div>
                <div class="datalab"><img src="imgs/datalab.png" alt=""></div>
                <div class="tracking">급상승트래킹</div>
                <div class="rank-arrow"><img src="imgs/rankarrow.png" alt=""></div>
            </div>
       </div>    
        </div>
        <script src="main.js"></script>
    </body>
</html>