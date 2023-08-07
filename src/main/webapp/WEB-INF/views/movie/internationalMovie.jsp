<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
    	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>해외영화목록</title>
        <link rel="stylesheet" href="/resources/css/korMoive.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <div class="container">
            <div id="sampleImg">
                <img id= "image" src="/resources/images/추락의해부학.jpeg" alt="" width="600px" height="900px">
            </div>
            <div class="contentSet">
                <h2>스릴러 장르</h2>
                <div id="content1">
                    <div class="moivePoster">
                        <img src="/resources/images/추락의해부학.jpeg" alt="해외영화1" width="200px" height="300px">
                    </div>
                    <div class="moivePoster">
                        <img src="/resources/images/Crimes of the Future.jpg" alt="해외영화2" width="200px" height="300px">
                    </div>
                    <div class="moivePoster">
                        <img src="/resources/images/pacifiction.jpg" alt="해외영화3" width="200px" height="300px">
                    </div>
                </div>
                <div id="btnMargin" class="detail">
                    <button class="btn">자세히 보기</button>
                </div>
                <h2>드라마 장르</h2>
                <div id="content2">
                    <div class="moivePoster">
                        <img src="/resources/images/voxlux.jpg" alt="해외영화4" width="200px" height="300px">
                    </div>
                    <div class="moivePoster">
                        <img src="/resources/images/The Zone of interest.jpg" alt="해외영화5" width="200px" height="300px">
                    </div>
                    <div class="moivePoster">
                        <a href="./movieDetail.jsp"></a><img src="/resources/images/rapito.jpg" alt="해외영화6" width="200px" height="300px">
                    </div>
                </div>
                <div class="detail">
                    <button class="btn">자세히 보기</button>
                </div>
            </div>
            
        </div>
    </body>
    <script>
        var image = document.getElementById("image");
        var images = [
        "/resources/images/추락의해부학.jpeg",
        "/resources/images/voxlux.jpg",
        "/resources/images/The Zone of interest.jpg",
        "/resources/images/Crimes of the Future.jpg",
        "/resources/images/pacifiction.jpg",
        "/resources/images/rapito.jpg"
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
</html>