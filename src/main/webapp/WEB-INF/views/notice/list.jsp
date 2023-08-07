<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/notice.css">
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>공지사항</h3>
			</div>
		</div>

		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form action="">
						<div class="search-wrap">
							<label for="search" class="blind">내용 검색</label> <input
								id="search" type="search" name="" placeholder="검색어를 입력해주세요."
								value="">
							<button type="submit" class="btn btn-dark">검색</button>
							<a href='/notice/insert.do'>글쓰기</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<br><br><br><br>
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-date">작성자</th>
							<th scope="col" class="th-date">작성일시</th>
							<th scope="col" class="th-date">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${requestScope.nList}" var="notice">
							<tr>
								<td>${notice.noticeNo}</td>
								<th><a href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject}</a></th>
								<td>${notice.noticeWriter}</td>
								<td>${notice.noticeDate}</td>
								<td>${notice.viewCount}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</section>
</body>
</html>