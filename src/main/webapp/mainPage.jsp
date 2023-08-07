<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>메인페이지</title>
        <link rel="stylesheet" href="/resources/css/mainPage.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <div class="adImg"><img src="/resources/images/wp1945909.jpg" alt="" height="500px" width="1900px"></div>
        <div class="container">
            <div class="movieArea">
                <h1>국내영화</h1>
                <div class="moivePoster">
                    <img src="/resources/images/끝까지간다.jpg" alt="국내영화1" width="200px" height="300px">
                </div>
                <div class="moivePoster">
                    <img src="/resources/images/곡성.jpg" alt="국내영화2" width="200px" height="300px">
                </div>
                <div class="moivePoster">
                    <img src="/resources/images/헤어질결심.jpg" alt="국내영화3" width="200px" height="300px">
                </div>
                <h2><b>랭킹</b></h2>
                <p>
                    1. 영화 1<br><br><br>
                    2. 영화 2<br><br><br>
                    3. 영화 3<br><br><br>
                    4. 영화 4<br><br><br>
                    5. 영화 5<br><br><br>
                </p>
            </div>
            <div class="movieArea">
                <h1>해외영화</h1>
                <div class="moivePoster">
                    <img src="/resources/images/그린나이트.jpg" alt="해외영화1" width="200px" height="300px">
                </div>
                <div class="moivePoster">
                    <img src="/resources/images/멜랑콜리아.jpg" alt="해외영화2" width="200px" height="300px">
                </div>
                <div class="moivePoster">
                    <img src="/resources/images/지구최후의밤.jpg" alt="해외영화3" width="200px" height="300px">
                </div>
                <h2><b>랭킹</b></h2>
                <p>
                    1. 영화 1<br><br><br>
                    2. 영화 2<br><br><br>
                    3. 영화 3<br><br><br>
                    4. 영화 4<br><br><br>
                    5. 영화 5<br><br><br>
                </p>
            </div>
        </div>
        
    </body>
</html>