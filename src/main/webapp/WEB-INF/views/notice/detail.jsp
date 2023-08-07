<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
		<title>공지사항 상세조회</title>
		<link rel="stylesheet" href="/resources/css/noticeDetail.css">
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<h1>공지사항 상세</h1>
		<br><br><br><br><br><br>
		<div id="detail">
			<ul>
				<li>
					<label>글번호:  </label>
					<span>${notice.noticeNo }</span>
				</li>
				<br><br>
				<li>
					<label>작성일:  </label>
					<span>${notice.noticeDate }</span>
				</li>
				<br><br>
				<li>
					<label>글쓴이:  </label>
					<span>${notice.noticeWriter }</span>
				</li>
				<br><br>
				<li>
					<label>제목:  </label>
					<span>${notice.noticeSubject }</span>
				</li>
				<br><br>
				<li>
					<label>내용:  </label>
					<p>${notice.noticeContent }</p>
				</li>
			</ul>
		</div>
	</body>
</html>