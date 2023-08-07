<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>국내영화목록</title>
        <link rel="stylesheet" href="/resources/css/korMoive.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <div class="container">
            <div id="sampleImg">
                <img id= "image" src="/resources/images/지구최후의밤.jpg" alt="" width="600px" height="900px">
            </div>
            <div class="contentSet">
                <h2>스릴러 장르</h2>
                <div id="content1">
                    <div class="moivePoster">
                        <img src="/resources/images/복수는 나의 것.jpg" alt="국내영화1" width="200px" height="300px">
                    </div>
                    <div class="moivePoster">
                        <img src="/resources/images/살인의 추억.jpg" alt="국내영화2" width="200px" height="300px">
                    </div>
                    <div class="moivePoster">
                        <img src="/resources/images/황해.jpg" alt="국내영화3" width="200px" height="300px">
                    </div>
                </div>
                <div id="btnMargin" class="detail">
                    <button class="btn">자세히 보기</button>
                </div>
                <h2>드라마 장르</h2>
                <div id="content2">
                    <div class="moivePoster">
                        <img src="/resources/images/당신의 부탁.jpg" alt="국내영화4" width="200px" height="300px">
                    </div>
                    <div class="moivePoster">
                        <img src="/resources/images/파수꾼.jpg" alt="국내영화5" width="200px" height="300px">
                    </div>
                    <div class="moivePoster">
                        <a href="/movie/detail.do"><img src="/resources/images/기생충.jpg" alt="국내영화6" width="200px" height="300px"></a>
                    </div>
                </div>
                <div class="detail">
                    <button class="btn">자세히 보기</button>
                </div>
            </div>
            
        </div> 
    <script>
        var image = document.getElementById("image");
        var images = [
        "/resources/images/지구최후의밤.jpg",
        "/resources/images/황해.jpg",
        "/resources/images/헤어질결심.jpg",
        "/resources/images/당신의 부탁.jpg",
        "/resources/images/파수꾼.jpg",
        "/resources/images/기생충.jpg"
        ];
        var currentIndex = 0;
        var isAnimating = false;
        image.onclick = function() {
            if (isAnimating) return;
            isAnimating = true;

            image.classList.add("crossfade"); // Apply fade-out animation

            setTimeout(function() {
                currentIndex = (currentIndex + 1) % images.length;
                image.src = images[currentIndex];

                // Allow some time for the new image to load
                setTimeout(function() {
                    image.classList.remove("crossfade"); // Apply fade-in animation
                    isAnimating = false;
                }, 50);
            }, 800); 
        }
    </script>
    </body>
</html>