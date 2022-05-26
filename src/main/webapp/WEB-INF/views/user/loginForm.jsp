<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<link href="/css/login.css" rel="stylesheet">

<!--section-->
<section class="section">
	<div id="container">
		<h2>
			<a href="/">Trio</a>
		</h2>
		<hr>
		<div id="wrap-content">
			<h2>로그인</h2>
			<p>
				아이디와 비밀번호 입력하기 귀찮으시죠?<br>카카오로 1초 만에 로그인 하세요
			</p>
			<br>
			<a href="/oauth2/authorization/kakao" id="auth_kakao"
				style="font-weight: bold;">
				<img src="/img/kakaotalk.png" width="30px" height="30px">&nbsp;&nbsp;
				<span>카카오 1초 로그인/회원가입</span>
			</a>
			<div class="hr-sect">또는</div>
			<div id="user-none">
				<button id="user">기존 회원이세요?</button>
				<button id="none">비회원 배송 조회</button>
			</div>

			<div id="input">
				<form action="/auth/loginProc" method="POST" onsubmit="logincheck();">
					<input type="text" placeholder="아이디" id="Nid" name="username"
						style="border-radius: 5px 5px 0px 0px;"> <input
						type="password" placeholder="비밀번호" id="Npw" name="password"
						style="border-radius: 0px 0px 5px 5px;">
					<button type="submit" id="login-btn">기존 회원 로그인</button>
				</form>
			</div>

			<div id="sub_btn">
				<div>
					<a href="/auth/findIdPw">아이디/비밀번호 찾기</a>
				</div>
				<div>
					<a href="/auth/joinForm">회원가입</a>
				</div>

			</div>
			<div class="hr-sect">또는</div>
			<div id="auth">
				<a href="/oauth2/authorization/naver" id="auth_naver">
					<img src="/img/naver.png" width="30px" height="30px"><span>NAVER로
						로그인</span>
				</a>
				<a href="/oauth2/authorization/google" id="auth_google">
					<img src="/img/google.png" width="30px" height="30px"><span>Google로
						로그인</span>
				</a>
			</div>
		</div>
	</div>
</section>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>