<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/join.css">
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<div class="sign">
		<form action="/member/register.do" method="post"
			onsubmit="return validPassword()">
			<fieldset>
				<legend>회원가입</legend>
				<label for="userName">이름</label> 
				<input type="text" id="member-name" name="member-name" required><br><br> 
				<label for="userId">아이디</label> 
				<input type="text" id="member-id" name="member-id" required><br><br> 
				<label for="password">비밀번호</label>
				<input type="password"id="member-pw" name="member-pw" required><br><br> 
				<label for="password">비밀번호확인</label> 
				<input type="password" id="passwordCheck" name="passwordCheck" required><br><br>
				<label for="email">이메일</label> 
				<input type="email" id="member-email" name="member-email" required><br><br> 
				<label for="phone">전화번호</label> 
				<input type="tel"id="member-phone" name="member-phone" required><br><br> 
				
				<input type="submit" value="가입하기" class="btn">
			</fieldset>
		</form>
	</div>
	<div id="welcome">
		<img src="/resources/images/welcome.png" alt="welcome" height="200px">;
	</div>
	<script>
		function validPassword() {
			const inputPassword = document.querySelector("#password").value;
			const inputPasswordCheck = document.querySelector("#passwordCheck").value;
			if (inputPassword !== inputPasswordCheck) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
		}
	</script>
</body>
</html>
