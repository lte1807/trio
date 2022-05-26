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
			<h2 style="text-align:center">관리자 로그인</h2>
			<br>
			<div id="input">
				<form action="/auth/loginProc" method="POST">
					<input type="text" placeholder="아이디" id="Nid" name="username"
						style="border-radius: 5px 5px 0px 0px;"> <input
						type="password" placeholder="비밀번호" id="Npw" name="password"
						style="border-radius: 0px 0px 5px 5px;">
					<button type="submit" id="login-btn">관리자 로그인</button>
				</form>
			</div>
		</div>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>