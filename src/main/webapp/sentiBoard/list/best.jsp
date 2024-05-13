<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.util.Iterator"%>
<%@page import="domain.Large_CtgrVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    Connection conn = ConnectionProvider.getConnection();
    
    PreparedStatement pstmt = null;
    ResultSet rs = null;    
    String sql = " SELECT large_ctgr_id, main_ctgr_name, main_ctgr_id"
    		+" FROM LARGE_CTGR";
        
    
    int large_ctgr_id = 0;
    String main_ctgr_name =  null; 
    int main_ctgr_id =   0;
    
    Large_CtgrVO lcvo = null;
    ArrayList<Large_CtgrVO> lclist = null;
    
    try {
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        
        if( rs.next() ) {
            lclist = new ArrayList<>();
            do {
            	large_ctgr_id = rs.getInt("large_ctgr_id");
            	main_ctgr_name = rs.getString("main_ctgr_name");
            	main_ctgr_id = rs.getInt("main_ctgr_id");    
                
                lcvo = new Large_CtgrVO(large_ctgr_id, main_ctgr_name, main_ctgr_id);    
                
                lclist.add(lcvo);
            } while (rs.next());                
        } // if 
        
        
    } catch (SQLException e) { 
        e.printStackTrace();
    } finally {
        try {
        	 JdbcUtil.close(rs);
             JdbcUtil.close(pstmt);
             JdbcUtil.close(conn);
        } catch (Exception e) { 
            e.printStackTrace();
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="../css/best.css">
<header>  <jsp:include page="/layout/top.jsp" flush="false"></jsp:include>  </header>
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
			
	   	<%
              Iterator<Large_CtgrVO> ir = lclist.iterator();
              while (ir.hasNext()) {
              lcvo = ir.next();
         %>
              
                <li value="<%= lcvo.getLarge_ctgr_id() %>" class="large-menu2">
               		<a href="#" class="small-menu"  <%=large_ctgr_id == lcvo.getLarge_ctgr_id() ? "selected" : "" %>><%= lcvo.getMain_ctgr_name() %></a>
               </li>  
               <!-- 스타일 시트에서 칼라를 black 으로 줘도 화면상에서 보라색으로 표시된 해결이 안됨...  -->
 
		<%
		        } // while
		 %> 
		
				</ul>
				<!-- </ul> -->
			</div>
		</div>

		<div id="best-right">
			 <h2 class="best_title_right" ></h2>
			<div class="best_radio_box">
				<ul class="aa">
					
				</ul>
			</div>
			<div class="best_raido_box2">
				 <span> <input class="best_radio_box3" type="radio" > <label class="bb">실시간</label></span> 
				 <span> <input class="best_radio_box3" type="radio"> <label class="bb">일간</label></span>
				 <span> <input class="best_radio_box3" type="radio"> <label class="bb">주간</label></span>
				 <span> <input class="best_radio_box3" type="radio"> <label class="bb">월간</label></span>
			</div>
			<!-- 실시간, 일간, 주간, 월간  별로  정렬되는 쿼리 필요할 거 같다.  -->
			
			
			<ul id="photo_list">
				
				
				
			</ul>


		</div>
	</div>


<script>
/*  왼쪽 메뉴바를 선택하면 가운데 small 카테고리가 비동기적으로 처리되는 스크립트. */

$(".large-menu2").on("click", function(){
	 /* medium 카테고리를 클릭했을 때 small 카테고리를 표시하는 코드. */
	 
    let selectedLarge_ctgr_id = $(this).val(); 
    $.ajax({
       url: "../json/medium_ctgr_json.jsp", 
       dataType: "json",
       type: "GET", 
       data: { large_ctgr_id : selectedLarge_ctgr_id }, 
       cache: false,
       success: function(data){
           $(".aa").empty();                    
           $(data.medium_ctgr).each(function(index, element){                   
               $(".aa").append(`	                		 
            		   <span class="right_radio"><a href="#">\${element.medium_ctgr_name}</a>
   					</span>                 
                             `);                 
           });
           
   
       },
       error: function(){
           alert("error");
       }                     
    });
});
</script>


<script>
/* 할인율은 소수점 버리고 정수로만 표현하기. */

$(".large-menu2").on("click", function(){
 	 
    let selectedLarge_ctgr_id = $(this).val(); 
    $.ajax({
       url: "../json/product_main_json.jsp", 
       dataType: "json",
       type: "GET", 
       data: { large_ctgr_id : selectedLarge_ctgr_id }, 
       cache: false,
       success: function(data){
 			$(".best_title_right").empty();                     
           $(data.jsonProduct_main).each(function(index, element){                   
               $(".best_title_right").append(`	                		 
            		   \${element.main_ctgr_name} 
                             `);                    
           });
    	   
           
           
           $("#photo_list").empty();           
           $(data.jsonProduct_main).each(function(index, element){                   
               $("#photo_list").append(`	                		 
                      
            		   
            		   <li class="photo1">
   					<div class="cc">
   						<a href="">
   							<div class="dd">
   								<img alt="" src="\${element.pd_image_url}" class="ff">
   							</div>
   						</a>
   						<div class="gg">
   							<a class="hh" href="">\${element.brand_name}</a>	
   							<a title="\${element.pd_name}">
   								<div class="j">
   									<h5 class="jj">\${element.pd_name}</h5>
   										<strong class="jjj">\${element.pd_price}</strong>							
   									<div class="01" >
   										<span class="kkk">\${element.pd_discount_rate}%</span>
   										<strong class="qqq">\${element.pd_price}/(1-\${element.pd_discount_rate})</strong>
   										
   									</div>
   									<ul class="eee">
   										<li class="yyy">쿠폰</li>
   										<li>무료배송</li>
   									</ul>
   								</div>
   							</a>
   							<div class="ppp">
   								<button>2000</button><!-- 하트 마크표시 필요함  -->
   								<a>
   									<span>2000</span><!--  댓글 마크 표시 필요함 -->
   								</a>
   							</div>
   						</div>
   					</div>
   				</li>
            		   
            		   
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

</body>
<footer>
   <jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</html>
