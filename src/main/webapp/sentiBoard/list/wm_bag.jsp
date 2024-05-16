<%@page import="domain.Medium_CtgrVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.Large_CtgrVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%
    Connection conn = DBConn.getConnection();
    
 
    PreparedStatement pstmt = null;
    ResultSet rs = null;    
    String sql = " SELECT medium_ctgr_id, medium_ctgr_name, large_ctgr_id " 
    		+" FROM medium_ctgr"
    		+" where large_ctgr_id='2'";
    
    int medium_ctgr_id = 0;
    String medium_ctgr_name =  null; 
    int large_ctgr_id =0;
    
    Medium_CtgrVO mcvo = null;
    ArrayList<Medium_CtgrVO> mclist = null;
    
    try {
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        
        if( rs.next() ) {
            mclist = new ArrayList<>();
            do {
            	medium_ctgr_id = rs.getInt("medium_ctgr_id");
            	medium_ctgr_name = rs.getString("medium_ctgr_name");
            	large_ctgr_id = rs.getInt("large_ctgr_id");    
                
                mcvo = new Medium_CtgrVO(medium_ctgr_id, medium_ctgr_name, large_ctgr_id);    
                
                mclist.add(mcvo);
            } while (rs.next());                
        } // if 
        
        
    } catch (SQLException e) { 
        e.printStackTrace();
    } finally {
        try {
            pstmt.close();
            rs.close();
            // DBConn.close();
        } catch (SQLException e) { 
            e.printStackTrace();
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
<title>감도 깊은 취향 셀렉트샾 29CM</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<body>
	<div id="wrap">
		<div id="best-left">
			<button></button>
			<div>
				<!-- <button></button>  화면이 작아졌을 때 #best-left메뉴 나타나게 하는거 -->
				<h2 class="best_title_left">여성가방</h2>
				<!-- <ul class="left_bar_meue" > -->
				<ul class="left-menu">
					 	<%
              Iterator<Medium_CtgrVO> ir = mclist.iterator();
              while (ir.hasNext()) {
              mcvo = ir.next();
         %>
               <li value="<%= mcvo.getMedium_ctgr_id() %>" class="medium_ctgr_id111">
               		<a href="#" class="medium-ctgr"  <%=medium_ctgr_id == mcvo.getMedium_ctgr_id() ? "selected" : "" %>><%= mcvo.getMedium_ctgr_name() %></a>
               </li>
               
    
    <!-- 각 도메인의 url도 db에 있어야 할거 같음.  -->
		<%
		        } // while
		 %> 
				</ul>
				<!-- </ul> -->
			</div>
		</div>

		<div id="best-right">
			<!-- <h2 class="best_title_right" >여성의류</h2> -->
			<div class="widget">
				<div class="widget-gap">
					<div class="widget-top-btn">
						<div class="widget-top-btn-box">

						</div>
					</div>
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

				<br>
			</div>

			<ul class="photo_list">
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/item/202404/11ef003eac0dc326bb6a5f556c2e2f99.jpg"
									class="ff">
							</div>
						</a> 
						<div class="gg">
							<a class="hh" href="">마땡킴</a> <a
								title="[29CM 단독]_MINI BUCKLE BAG 7color">
								<div class="j">
									<h5 class="jj">[29CM 단독]_MINI BUCKLE BAG 7color</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk">5%</span> <strong class="qqq">90,250</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">14,715</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.8</div>
									<div class="review-count">(1183)</div>
								</a>
							</div>
						</div>
					</div>
				</li>

				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt=""
									src="https://img.29cm.co.kr/item/202404/11ef0396e9283a71bb142f9ca532c66b.png"
									class="ff">
							</div>
						</a> 
						<div class="gg">
							<a class="hh" href="">코오롱스포츠</a> <a
								title="KS X INAP 남녀공용 데일리 백팩 QEBXX24801BLK">
								<div class="j">
									<h5 class="jj">KS X INAP 남녀공용 데일리 백팩 QEBXX24801BLK</h5>
									<strong class="jjj"></strong>
									<div class="01">
										<span class="kkk">10%</span> <strong class="qqq">106,200</strong>
									</div>
									<ul class="eee">
										<li class="yyy"></li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">41,275</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.8</div>
									<div class="review-count">(15034)</div>
								</a>
							</div>
						</div>
					</div>
				</li>

			</ul>
		</div>
	</div>
<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
<script>
    $(".medium_ctgr_id111").on("click", function(){
  	  
        let selectedMedium_ctgr_id = $(this).val(); // 선택한 부서번호 가져오기
        $.ajax({
           url: "../json/small_ctgr_json.jsp", 
           dataType: "json",
           type: "GET", 
           data: { medium_ctgr_id: selectedMedium_ctgr_id }, // 선택한 부서번호를 전달
           cache: false,
           success: function(data){
               $(".widget-top-btn-box").empty(); // 테이블 내용 초기화
               
              
               $(data.small_ctgr).each(function(index, element){
                   // 직원 정보를 테이블에 추가
                   $(".widget-top-btn-box").append(`	
                  		 
                		   <button class="wm-top-btn">
							<span class="wm-top-btn-click" color="primary">\${element.small_ctgr_name}</span>
							</button>
                           
                                 `);
                   
               });
               
              //alert( data.small_ctgr );
           },
           error: function(){
               alert("error");
           }
           
           
        });
    });
 </script>
</html>
