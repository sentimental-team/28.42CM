<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        background-color: #3366ff;
        color: white;
        border: none;
        cursor: pointer;
    }

    button:hover {
        background-color: #2a52cc;
    }
</style>
</head>
<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
<body>
    <div class="container">
        <h1>상품 등록 페이지</h1>
        <form action="/submit_product" method="POST" enctype="multipart/form-data">
            <label for="product_name">상품명:</label>
            <input type="text" id="product_name" name="product_name" required>

            <label for="price">가격:</label>
            <input type="number" id="price" name="price" required>

            <label for="discount">할인율:</label>
            <input type="number" id="discount" name="discount" min="0" max="100">

            <label for="image">이미지 업로드:</label>
            <input type="file" id="image" name="image" accept="image/*">

            <label for="description_image">상품 설명 이미지:</label> <!-- 추가된 라벨 -->
            <input type="file" id="description_image" name="description_image" accept="image/*"> <!-- 추가된 이미지 업로드 -->

            <label for="main_category">Main Category:</label>
            <select id="main_category" name="main_category">
                <option value="clothing">Main1</option>
                <option value="electronics">Main2</option>
                <option value="books">Main3</option>
            </select>

            <label for="large_category">Large Category:</label>
            <select id="large_category" name="large_category">
                <option value="t-shirts">Large1</option>
                <option value="pants">Large2</option>
                <option value="shirts">Large3</option>
            </select>

            <label for="medium_category">Medium Category:</label>
            <select id="medium_category" name="medium_category">
                <option value="short-sleeve">Medium1</option>
                <option value="long-sleeve">Medium2</option>
            </select>

            <label for="small_category">Small Category:</label>
            <select id="small_category" name="small_category">
                <option value="blue">small1</option>
                <option value="red">small2</option>
                <option value="green">small3</option>
            </select>

            <button type="submit">등록</button>
        </form>
    </div>
</body>
</html>
