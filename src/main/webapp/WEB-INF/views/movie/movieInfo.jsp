<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>국내영화리워드</title>
        <link rel="stylesheet" href="/resources/css/movieInfo.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <div class="container">
            <div class="movieInfo">
                <h2>영화 제목</h2>
                <div id="sampleImg">
                    <img src="/resources/images/기생충.jpg" alt="" width="400px" height="600px">
                </div>
                <div id="movieDetail">
                    <p>
                        영화 상세 정보 <br><br>
                        기회 의도 <br><br>
                        예상 예산 <br><br>
                        목표 수익 <br><br>
                    </p>
                </div>
            </div>
            <div class="contentSet">
                <h2>리워드 소개</h2>
                <br><br><br><br><br><br><br>
                <div id="content1">
                    <p>
                        리워드 1 : <br><br>
                        리워드 2 : <br><br>
                        리워드 3 : <br><br>
                        리워드 4 : <br><br>
                        리워드 5 : <br><br>
                    </p>
                    
                </div>
                <div class="gage">
                    <span class="text">목표 수치</span>
                    <progress value="100" max="100"></progress>
                </div>
                <div class="gage">
                    <span class="text">진행 상태</span>
                    <progress value="50" max="100"></progress>
                </div>
                <div id="btnMargin" class="detail">
                    <button class="btn">결제하기</button>
                </div>
            </div>
        </div>


    </body>
</html>