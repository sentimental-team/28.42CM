<%@page import="domain.Large_CtgrVO"%>
<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.util.Iterator"%>
<%@page import="domain.Main_CtgrVO"%>
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
    String sql = " SELECT main_ctgr_id, main_ctgr_name " 
    			+ " FROM main_ctgr ";
    
    int main_ctgr_id = 0;
    String main_ctgr_name =  null; 
    
    Main_CtgrVO mainCvo = null;
    ArrayList<Main_CtgrVO> mainList = null;
    
    try {
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        
        if( rs.next() ) {
            mainList = new ArrayList<>();
            do {
            	main_ctgr_id = rs.getInt("main_ctgr_id");
            	main_ctgr_name = rs.getString("main_ctgr_name");
                
                mainCvo = new Main_CtgrVO(main_ctgr_id, main_ctgr_name);
                
                mainList.add(mainCvo);
            } while (rs.next());                
        } // if 
        
        
    } catch (SQLException e) { 
        e.printStackTrace();
    } finally {
        
       	JdbcUtil.close(rs);
        JdbcUtil.close(pstmt);       
		JdbcUtil.close(conn);
       
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 등록 페이지</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 600px;
        margin: 50px auto;
        background-color: #ececec;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="number"],
    input[type="file"],
    select,
    button {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
        font-size: 16px;
    }

    button {
    	width : 30%;
        background-color: blue;
        color: black;
        border: none;
        cursor: pointer;
    }

    
    .container button {
        width: 30%;
        margin-right: 10px; /* 버튼 사이 간격 */
        padding: 10px;
        border-radius: 3px;
        font-size: 16px;
    }

    /* 등록 버튼 스타일 */
    button[type="submit"]:nth-of-type(1) {
        background-color: #4CAF50; /* 초록색 */
        color: white;
    }

    /* 수정 버튼 스타일 */
    button[type="submit"]:nth-of-type(2) {
        background-color: #ff9800; /* 주황색 */
        color: white;
    }

    /* 취소 버튼 스타일 */
    button[type="submit"]:nth-of-type(3) {
        background-color: #f44336; /* 빨간색 */
        color: white;
    }
    
    button[type="submit"]:hover {
    opacity: 0.8; /* 마우스를 올렸을 때 투명도를 줄여서 투명도가 높아지는 효과 */
    transition: opacity 0.3s ease; /* 부드럽게 변경되도록 애니메이션 효과 추가 */
}
    
</style>
</head>
<header>
	<jsp:include page="/layout/top3.jsp" flush="false"></jsp:include>
</header>
<body>
    <div class="container">
        <h1>상품 등록 페이지</h1>
        <form action="/submit_product" method="POST" enctype="multipart/form-data">
            <label for="product_name">상품명:</label>
            <input type="text" id="product_name" name="product_name" required>
			
			<label for="product_info">상품설명:</label>
            <input type="text" id="product_name" name="product_name" required>
			
            <label for="price">가격:</label>
            <input type="number" id="price" name="price" required>

            <label for="discount">할인율:</label>
            <input type="number" id="discount" name="discount" min="0" max="100">

            <label for="image">이미지 업로드:</label>
            <input type="file" id="image" name="image" accept="image/*">

            <label for="description_image">상품 설명 이미지:</label> <!-- 추가된 라벨 -->
            <input type="file" id="description_image" name="description_image" accept="image/*"> <!-- 추가된 이미지 업로드 -->

            <label class="main_category" for="main_category">Main Category:</label>
            <select class="main_category" id="main_category" name="main_category">
			<option value="" disabled selected>카테고리를 선택해주세요</option>
			<%
			    Iterator<Main_CtgrVO> ir = mainList.iterator();
			    while(ir.hasNext()) {
			        mainCvo = ir.next();
			%>	
			    <option value="<%=mainCvo.getMain_ctgr_id() %>" class= "main_ctgr">
			        <%= mainCvo.getMain_ctgr_name() %>
			    </option>
			<%
			    }
			%>
			</select>

            <label class="" for="large_category">Large Category:</label>
            <select class="large_category" id="large_category" name="large_category">
            	<option value="" disabled selected>카테고리를 선택해주세요</option>
            </select>

            <label class="" for="medium_category">Medium Category:</label>
            <select class="medium_category" id="medium_category" name="medium_category">
            	<option value="" disabled selected>카테고리를 선택해주세요</option>
            </select>

            <label class="" for="small_category">Small Category:</label>
            <select class="small_category" id="small_category" name="small_category">
            	<option value="" disabled selected>카테고리를 선택해주세요</option>
            </select>
			<br>
			<br>
            <button type="submit">등록</button>
            <button type="submit">수정</button>
            <button type="submit">취소</button>
        </form>
    </div>
</body>
 <footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
<script>
    $(document).ready(function() {
        $(".main_category").on("change", function() {
            // 선택된 옵션의 값을 가져옴
            let selectedMainCategoryId = $(this).val();
            // alert("선택된 Main Category ID: " + selectedMainCategoryId);
            $.ajax({
            	url: "../json/large_ctgr_json.jsp",
            	dataType: "json",
            	type: "GET",
            	data: {main_ctgr_id: selectedMainCategoryId},
            	cache: false,
            	success: function(data){
            		$(".large_category").empty();
            		$(data.large_ctgr).each(function(index, element){
            			$(".large_category").append(`
            				<option class="large_ctgr_option" value=\${element.large_ctgr_id}>
            					\${element.large_ctgr_name}
            				</option>
            			`);
            		});
            		
            	},
            	error: function(){
            		alert("error");
            	}
            }); // ajax
        });
    });
</script>
<script>
    $(document).ready(function() {
        $(".large_category").on("click", function() {
            // 선택된 옵션의 값을 가져옴
            let selectedLargeCategoryId = $(this).val();
            $.ajax({
            	url: "../json/medium_ctgr_json.jsp",
            	dataType: "json",
            	type: "GET",
            	data: {large_ctgr_id: selectedLargeCategoryId},
            	cache: false,
            	success: function(data){
            		$(".medium_category").empty();
            		$(data.medium_ctgr).each(function(index, element){
            			$(".medium_category").append(`
            				<option class="medium_ctgr_option" value=\${element.medium_ctgr_id}>
            					\${element.medium_ctgr_name}
            				</option>	
            					`);
            		});
            		
            	},
            	error: function(){
            		alert("error");
            	}
            }); // ajax
        });
    });
</script>
<script>
    $(document).ready(function() {
        $(".medium_category").on("click", function() {
            // 선택된 옵션의 값을 가져옴
            let selectedMediumCategoryId = $(this).val();
            $.ajax({
            	url: "../json/small_ctgr_json.jsp",
            	dataType: "json",
            	type: "GET",
            	data: {medium_ctgr_id: selectedMediumCategoryId},
            	cache: false,
            	success: function(data){
            		$(".small_category").empty();
            		$(data.small_ctgr).each(function(index, element){
            			$(".small_category").append(`
            				<option class="small_ctgr_option">\${element.small_ctgr_name}</option>	
            					`);
            		});
            		
            	},
            	error: function(){
            		alert("error");
            	}
            }); // ajax
        });
    });
</script>
</html>
