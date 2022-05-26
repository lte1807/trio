<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<link href="/css/find.css" rel="stylesheet">

<section class="section">
	<h1>아이디/비밀번호 찿기</h1>
	<div id="container">

		<article>
			<h3>아이디 찾기</h3>
			<hr class="id_pw_hr">
			<div class="article">
				<small>회원가입 시, 입력하신 이름 + 이메일 또는 휴대폰 번호로 아이디를 확인하실 수 있습니다.</small>
				<p>
				<form>
					<input type="radio" name="find" checked><span
						style="font-weight: bold; font-size: small;">이메일로 찾기</span> <input
						type="radio" name="find"><span
						style="font-weight: bold; font-size: small;">휴대폰 번호로 찾기</span>
					<div id="div1">
						이름 <input type="text"> 이메일 <input type="email">
					</div>
			</div>
			<hr class="id_pw_hr">
			<button type="button">아이디 찾기</button>
			</form>
			</p>

		</article>
		<article>
			<h3>비밀번호 찾기</h3>
			<hr class="id_pw_hr">
			<div class="article">
				<small>가입하신 아이디 + 이메일 또는 휴대폰 번호를 입력, 본인인증을 통해 이메일 또는 휴대폰 번호로
					임시 비밀번호를 보내드립니다. 확인 후 로그인하셔서 반드시 비밀번호를 변경하시기 바랍니다.</small>
				<p>
				<form>
					<input type="radio" name="find" checked><span
						style="font-weight: bold; font-size: small;">이메일로 찾기</span> <input
						type="radio" name="find"><span
						style="font-weight: bold; font-size: small;">휴대폰 번호로 찾기</span>
					<div id="div1">
						아이디 <input type="text"> 이메일 <input type="email">
					</div>
			</div>
			<hr class="id_pw_hr">
			<button type="button">비밀번호 찾기</button>
			</form>
			</p>

		</article>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>