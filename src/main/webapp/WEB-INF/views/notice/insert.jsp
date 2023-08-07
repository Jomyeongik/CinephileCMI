<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
		<title>공지사항 작성</title>
		<link rel="stylesheet" href="/resources/css/noticeInsert.css">
		
	</head>
	<body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<h1>공지사항 작성</h1>
		<form action="/notice/insert.do" method="post">
			<fieldset>
				<legend>공지사항 작성</legend>
				<ul>
					<li>
						<label>제목</label> 
						<input type="text" id="noticeSubject" name="noticeSubject">
					</li>
					<li>
						<label>내용</label> 
						<textarea rows="30" cols="40" id="noticeContent"name="noticeContent"></textarea>
					</li>
				</ul>
			</fieldset>
			<div id="btn1">
				<input type="submit" class="btn" value="작성"> 
				<input type="reset" class="btn" value="초기화">
			</div>
		</form>
	</body>
</html>