<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<link href="/css/find.css" rel="stylesheet">

<section class="section">
	<h1>아이디/비밀번호 찿기</h1>
	<div id="container">

		<article>
			<h3>아이디 찾기</h3>
			<form name="findIdPwForm"
					onsubmit="submitfindIdForm(this); return false;"
					action="/findId" method="POST">
			<hr class="id_pw_hr">
			<div class="article">
				<small>회원가입 시, 입력하신 이름 + 이메일로 아이디를 확인하실 수 있습니다.</small> <br>
				<br>
					<div id="findID">
						이름 <input type="text" id="Nname" required /> &nbsp;&nbsp;
						이메일 <input type="email" id="Nemail" required />
					</div>
			</div>
			<hr class="id_pw_hr">
			<input type="submit" class="find" value="아이디 찾기" />
			</form>

		</article>
		<article>
			<h3>비밀번호 찾기</h3>
			<hr class="id_pw_hr">
			<form>
			<div class="article">
				<small>가입하신 아이디 + 이메일 또는 휴대폰 번호를 입력, 비밀번호를 변경하시기 바랍니다.</small> <br>
				<br>
					<div id="findPW">
						아이디 <input type="text" id="Nid"> &nbsp;&nbsp; 이메일 <input
							type="email" id="Nemail">
					</div>
			</div>
			<hr class="id_pw_hr">
			<input type="submit" class="find" value="비밀번호 찾기" />
			</form>

		</article>
	</div>
</section>

<script src="/js/findIdPw.js"></script>
<%@ include file="../layout/footer.jsp"%>