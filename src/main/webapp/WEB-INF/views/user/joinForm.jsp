<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<link href="/css/join.css" rel="stylesheet">

<section class="section">
	<h1>회원가입</h1>

	<div id="container">
		<h3 style="text-align: left;">필수정보</h3>
		<form>
			<div class="div">
				<div class="text">이름</div>
				<div class="input">
					<input type="text" placeholder="이름을 입력하세요" id="NNAME">
				</div>
			</div>
			<div class="div">
				<div class="text">아이디</div>
				<div class="input">
					<input type="text" placeholder="아이디를 입력하세요" id="NID">
				</div>
			</div>
			<div class="div">
				<div class="text">비밀번호</div>
				<div class="input">
					<input type="password" placeholder="비밀번호를 입력하세요" id="NPW" autocomplete="password">
				</div>
			</div>
			<div class="div">
				<div class="text">생년월일</div>
				<div class="input">
					<input type="date" id="NBIR">
				</div>
			</div>
			<div class="div">
				<div class="text">이메일</div>
				<div class="input">
					<input type="email" placeholder="이메일을 입력하세요"  id="user_email" style="width: 130px; height: 25px;">
					<span id="middle_email">@</span> 
					<select style="width: 100px;"  id="user_email_address">
						<option>naver.com</option>
						<option>daum.com</option>
						<option>gmail.com</option>
					</select>
					<input type="hidden" id="NEMAIL" value="">
				</div>
			</div>
			<div class="div">
				<div class="text">전화번호</div>
				<div class="input">
					<input type="tel" placeholder="전화번호를 입력하세요" id="NTEL">
				</div>
			</div>
			<div class="div">
				<div class="text">주소</div>
				<div class="input">
					<input type="text" placeholder="주소를 입력하세요" id="NADDRESS">
				</div>
			</div>
			<div class="div">
				<div class="text">상세주소</div>
				<div class="input">
					<input type="text" placeholder="상세주소를 입력하세요" id="NDEADDRESS">
				</div>
			</div>
			<div class="div">
				<div class="text">우편번호</div>
				<div class="input">
					<input type="text" placeholder="우편번호를 입력하세요" id="NPOST">
				</div>
			</div>
		</form>
	</div>
	<br />
	<div id="section_footer">
		<button id="join-btn">회원가입</button>
		<button type="button">다시 작성</button>
	</div>
</section>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>