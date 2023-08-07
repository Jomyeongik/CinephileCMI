<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>공지사항</title>
        <link rel="stylesheet" href="/resources/css/mypage.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <h1>마이페이지</h1>
        <hr><hr>
        <div class="mypage">
            <div id="info">
                <img src="/resources/images/mypage.png" alt="마이페이지이미지">
                <br><br><br><br><br>
                <ul>
                    <li><a href="#">회원정보</a></li>
                    <li><a href="#">결제정보</a></li>
                    <li><a href="#">참여이력</a></li>
                </ul>
            </div>
            <div id="detailInfo">
                <h1>회원정보</h1>
                <div>
                    <table>
                    	<colgroup>
							<col width="20%">
							<col width="80%">
						</colgroup>	
                        <tr>
                            <td>이름</td>
                            <td>"${member.memberName }"</td>
                        </tr>
                        <tr>
                            <td>아이디</td>
                            <td>"${member.memberId }"</td>
                        </tr>
                        <tr>
                            <td>비밀번호</td>
                            <td>"${member.memberPw }"</td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td>"${member.memberEmail }"</td>
                        </tr>
                        <tr>
                            <td>전화번호</td>
                            <td>"${member.memberPhone }"</td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td>"${member.memberAddress }"</td>
                        </tr>
                        <tr>
                            <td>가입일</td>
                            <td>"${member.memberDate }"</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>