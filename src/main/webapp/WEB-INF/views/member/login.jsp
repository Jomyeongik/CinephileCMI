<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/login.css">
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<div class="sign">
		<form action="/member/login.do" method="post">
			<fieldset>
				<legend>로그인</legend>
				<label for="username">아이디:</label> <input type="text" id="member-id"
					name="member-id" required><br>
				<br> <label for="password">비밀번호:</label> <input type="password"
					id="member-pw" name="member-pw" required><br>
				<br> <input type="submit" value="로그인하기" class="btn">
				<button onclick="window.open('/member/find.do', '_blank')">아이디/비번
					찾기</button>
			</fieldset>
		</form>
	</div>
	<div id="welcome">
		<img src="/resources/images/movie-poster-credits-178.jpg"
			alt="welcome" height="500px">;
	</div>
</body>
</html>
