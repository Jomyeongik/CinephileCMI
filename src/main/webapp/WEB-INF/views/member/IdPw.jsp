<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
    	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>아이디/비밀번호 찾기</title>
        <link rel="stylesheet" href="/resources/css/IDPW.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <h1>아이디/비밀번호 찾기</h1>
        <hr>
        <div class="mypage">
            <div id="info">
                <h2>아이디 찾기</h2>
                <form action="">
                    <fieldset>
                        <p>이메일로 찾기</p><hr>
                        <label for="email">이메일:</label>
                        <input type="email" id="email" name="email" required><br><br>
                        <input type="submit" value="아이디 찾기" class="btn">
                    </fieldset>
                    <br><br><br><br>
                    <fieldset>
                        <p>전화번호로 찾기</p><hr>
                        <label for="phone">전화번호:</label>
                        <input type="tel" id="phone" name="phone" required><br><br>
                        <input type="submit" value="아이디 찾기" class="btn">
                    </fieldset>
                </form>


            </div>
            <div id="detailInfo">
                <h2>비밀번호 찾기</h2>
                <form action="">
                    <fieldset>
                        <p>이메일로 찾기</p><hr>
                        <label for="username">아이디:</label>
                        <input type="text" id="username" name="username" required><br><br>
                        <label for="email">이메일:</label>
                        <input type="email" id="email" name="email" required><br><br>
                        <input type="submit" value="비밀번호 재설정" class="btn">
                    </fieldset>
                    <br><br><br><br>
                    <fieldset>
                        <p>전화번호로 찾기</p><hr>
                        <label for="username">아이디:</label>
                        <input type="text" id="username" name="username" required><br><br>
                        <label for="phone">전화번호:</label>
                        <input type="tel" id="phone" name="phone" required><br><br>
                        <input type="submit" value="비밀번호 재설정" class="btn">
                    </fieldset>
                </form>
                </div>
            </div>
        </div>
    </body>
</html>
