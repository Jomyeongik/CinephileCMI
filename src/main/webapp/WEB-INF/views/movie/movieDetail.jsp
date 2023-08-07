<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
   		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>영화 상세정보</title>
        <link rel="stylesheet" href="/resources/css/movieDetail.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <div class="container">
            <div id="sampleImg">
                <img src="/resources/images/기생충.jpg" alt="" width="600px" height="900px">
            </div>
            <div class="contentSet">
                <h1>영화 상세정보</h1>
                <br><br><br><br><br>
                <ul>
                    <li>제목 : 기생충 (Parasite)<br><br></li>
                    <li>감독 : 봉준호<br><br></li>
                    <li>장르 : 드라마, 스릴러, 블랙코미디, 범죄 등<br><br></li>
                    <li>출연 : 송강호, 이선균, 조여정, 최우식 외<br><br></li>
                    <li>촬영 : 홍경표<br><br></li>
                    <li>음악 : 정재일<br><br></li>
                    <li>상영시간 : 132분<br><br></li>
                    <li>제작비 : 1,100만 달러<br><br></li>
                    <li>상영등급 : 15세 이상 관람가<br><br></li>
                    <button class="btn" onclick="window.location.href='/movie/info.do'">리워드</button>
                </ul>
            </div>
        </div>



    </body>
</html>