<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
*{
	margin: 0; 
	padding: 0; 
	list-style: none; 
	text-decoration: none;
	}

.tab{
	flex: 110%;
	height: 150px; 
	width: 100%; 
	background-color: rgb(48, 48, 51); 
	position: relative; 
	top: 0; 
	left: 0;
	}
	
.flex{
	display: flex; 
	height: 50px; 
	width: 100%; 
	justify-content: space-around; 
	position: absolute; 
	left: 50%; 
	bottom: 0; 
	transform: translateX(-50%); 
	}

.btn{
	width: 50%; 
	height: 50px; 
	display: block; 
	background-color: white; 
	text-align: center; 
	line-height: 50px; 
	color: #cccccc;
	}
	
.active{
	background-color: black; 
	color:white;
	}
	
.content{
	display: none;
	}
	
.on{
	display: block;
	}

</style>

</head>
<body>

<header>
   <jsp:include page="/layout/top.jsp" flush="false" />
</header>

    <div class="tab">
        <ul class="flex">
            <button class="btn active">New arrivals</button>
            <button class="btn">Weekly best</button>
    	</ul>
	    <div class="content">
		    <div class="content first">
		    	<h2 class="sang">"New arrivals"
		    	  <a class="css-f1nnni epow2i34" href="https://www.29cm.co.kr/shop/category/list?category_large_code=294100100&amp;category_medium_code=new">전체보기</a>
		    	</h2>
		    </div>
		    <div class="content two">
		    	<h2 class="best">"Weekly best"
		    	  <a class="css-f1nnni epow2i34" href="https://www.29cm.co.kr/shop/category/list?category_large_code=294100100&amp;category_medium_code=new">전체보기</a>
		    	</h2>
		    </div>
		</div>    
    </div>
    
    <script>
        $('.flex .btn').click(function(){
            let index = $(this).index();
            index++;
            $('.flex .btn').removeClass('active');
            $(this).addClass('active');

            $('.content').removeClass('on');
            $('.contents'+index).addClass('on');
        })
    </script>
</body>
</html>