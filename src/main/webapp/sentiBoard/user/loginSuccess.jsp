<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 성공</title>
    <link rel="shortcut icon" href="http://localhost/sentiProject/images/29.ico">
</head>
<body>
    <c:if test="${not empty originalURL}">
        <script>
            // 원래 있던 페이지로 리디렉션합니다.
            var originalURL = '${originalURL}';
            window.location.href = originalURL;
        </script>
    </c:if>
    <c:if test="${empty originalURL}">
        <p>로그인에 성공했습니다. <a href="<c:url value='/'/>">메인 페이지로 이동</a></p>
    </c:if>
</body>
</html>