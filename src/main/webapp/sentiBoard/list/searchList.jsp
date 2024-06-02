<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Search Results</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/men_cloth.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<header>
    <jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<div id="wrap">

		<div id="best-right">			
			<div class="widget">
				<div class="best_radio_box">
					<ul class="aa">						
					</ul>
			</div>
				<div class="controlgroup">
					<select id="sort-type" class="styled-select">
						<option>추천순</option>
						<option>신상품순</option>
						<option>리뷰많은순</option>
						<option>낮은가격순</option>
						<option>높은가격순</option>
						<option>높은할인순</option>
						<option>좋아요많은순</option>
						<option>판매순</option>
					</select>
				</div>

				
			</div>

			<ul class="photo_list">								
			</ul>
		</div>
	</div>
<footer>
    <jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>

<script>
$(document).ready(function() {
    var searchQuery = decodeURIComponent(new URLSearchParams(window.location.search).get('searchQuery'));

    if (searchQuery) {
        $.ajax({
            url: "product_search_json.jsp",
            type: "GET",
            dataType: "json",
            data: { pd_name: searchQuery },
            success: function(data) {
                $(".photo_list").empty();
                if (data.Product.length > 0) {
                    $(data.Product).each(function(index, element) {
                        $(".photo_list").append(`
                            <li class="photo1">
                                <div class="cc">
                                    <a href="#">
                                        <div class="dd">
                                            <img alt="" src="${element.pd_image_url}" class="ff">
                                        </div>
                                    </a> 
                                    <div class="gg">
                                        <a class="hh" href="#">${element.brand_name}</a>
                                        <a title="${element.pd_name}">
                                            <div class="j">
                                                <h5 class="jj">${element.pd_name} (10 Color)</h5>
                                                <strong class="jjj"></strong>
                                                <div class="01">
                                                    <span class="kkk"></span>
                                                    <strong class="qqq">${element.pd_price}</strong>
                                                </div>
                                                <ul class="eee">
                                                    <li class="yyy"></li>
                                                    <li></li>
                                                </ul>
                                            </div>
                                        </a>
                                        <div class="ppp">
                                            <button class="heart">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="18" viewBox="0 0 20 20">
                                                    <path d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z" fill="none" fill-rule="evenodd" stroke="#5d5d5d" stroke-width="1.5" />
                                                </svg>
                                                <h5 class="jj">좋아요 갯수 카운팅하는 쿼리문 작성해야함</h5>
                                            </button>
                                            <a href="#" class="review">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
                                                    <path d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z" fill="none" fill-rule="evenodd" stroke="#5d5d5d" stroke-width="1.5"></path>
                                                </svg>
                                                <div class="review-point">${element.pd_grade}</div>
                                                <div class="review-count">평점 준 사람들 카운팅 하는 쿼리문 필요함</div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        `);
                    });
                } else {
                    $(".photo_list").append("<li>No products found.</li>");
                }
            },
            error: function() {
                alert("Error occurred while fetching search results.");
            }
        });
    }
});
</script>
</body>
</html>
