<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="headArea">
    <div><a href="/mainPage.jsp"><img src="/resources/images/로고-removebg-preview.png" alt="로고" width="200px" height="200px"></a></div>
    <div><input type="text" id="search" placeholder="검색어를 입력하세요."></div>
    <div>
        <ul>
            <li><a href="/movie/korea.do">국내영화투자</a></li>
            <li><a href="/movie/international.do">해외영화수입</a></li>
            <li><a href="/notice/list.do">공지사항</a></li>
            <li><a href="/member/mypage.do">마이페이지</a></li>
        </ul>
    </div>
    <div id="login">
    <c:if test="${sessionScope.memberId ne null}">
    	<button onclick="window.location.href='/member/logout.do'">로그아웃</button>
    	<button onclick="window.location.href='/member/mypage.do'">마이페이지</button>
    </c:if>
    <c:if test="${memberId eq null}">
    	<button onclick="window.location.href='/member/login.do'">로그인</button>            
        <button onclick="window.location.href='/member/register.do'">회원가입</button>
       </c:if>
    </div>
</header>