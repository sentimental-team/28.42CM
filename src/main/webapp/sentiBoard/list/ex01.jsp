<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	div {
	    display: block;
	    unicode-bidi: isolate;
	    margin: 0;
	    padding: 0;
	}
	
	.main_div1{
		position: sticky;
        z-index: 10;
        top: 0px;
        padding-top: 0;
        margin: 0 auto;
	}
	
	.main_header1{
		position: relative;
	    z-index: 10;
	    top: 0;
	    right: 0;
	    left: 0;
	    min-width: 1000px;
	    padding-bottom: 20px;
	    background: #ffffff;
	}
	
	.main_div2{
	    position: relative;
	}
	
	.main_div3{
	    position: relative;
    	padding-bottom: 8px;	
	}
	
	.main_div4{
		box-sizing: content-box;
	    margin: 0px 0px 8px;
	    float: left;
	    width: 56px;
	    height: 56px;
	    padding: 54px 68px 0px 50px;	
	}
	
	.main {
	    display: inline-block;
	    width: 90px;
	    height: 24px;
	    line-height: 100em;
	    vertical-align: top;
	    -webkit-background-size: 90px 24px;
	    background-size: 90px 24px;
	}
	ul {
		position: absolute;
	    top: 38px;
	    right: 50px;
	    vertical-align: top;
	}
</style>
<body>
<div class="main_div1">
	<header class="main_header1">	
		<div class="main_div2">
			<div class="main_div3">
				<div class="main_div4">
					<a class="main" href="ex02.jsp">28cm</a>
					<ul >
						<li>
							<a ></a>
							<i ></i>
							<strong ></strong>
						</li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
</div>
</body>
</html>