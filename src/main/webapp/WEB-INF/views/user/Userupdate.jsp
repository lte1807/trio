<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<link href="/css/join.css" rel="stylesheet">

<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
	<section class="section">
		<h1>회원수정</h1>
		<div id="container">
			<h3 style="text-align: left;">필수정보</h3>
			<form>
				<input type="hidden" id="id"
					value="${principal.normalmemberinfo.nid}" />
				<div class="div">
					<div class="text">이름</div>
					<div class="input">
						<input type="text" id="NNAME" placeholder="이름을 입력하세요"
							value="${principal.normalmemberinfo.nname}">
					</div>
				</div>
				<div class="div">
					<div class="text">아이디</div>
					<div class="input">
						<input type="text" id="NID" placeholder="아이디를 입력하세요"
							value="${principal.normalmemberinfo.nid}">
					</div>
				</div>
				<div class="div">
					<div class="text">비밀번호</div>
					<div class="input">
						<input type="password" placeholder="비밀번호를 입력하세요" id="NPW"
							autocomplete="password">
					</div>
				</div>
				<div class="div">
					<div class="text">생년월일</div>
					<div class="input">
						<input type="date" id="NBIR"
							value="${principal.normalmemberinfo.nbir}">
					</div>
				</div>
				<div class="div">
					<div class="text">이메일</div>
					<div class="input">
						<input type="email" placeholder="이메일을 입력하세요" id="NEMAIL"
							value="${principal.normalmemberinfo.nemail}"
							style="width: 200px; height: 25px;">
					</div>
				</div>
				<div class="div">
					<div class="text">전화번호</div>
					<div class="input">
						<input type="tel" placeholder="전화번호를 입력하세요" id="NTEL"
							value="${principal.normalmemberinfo.ntel}">
					</div>
				</div>
				<div class="div">
					<div class="text">주소</div>
					<div class="input">
						<input type="text" placeholder="주소를 입력하세요" id="NADDRESS"
							value="${principal.normalmemberinfo.naddress}">
					</div>
				</div>
				<div class="div">
					<div class="text">상세주소</div>
					<div class="input">
						<input type="text" placeholder="상세주소를 입력하세요" id="NDEADDRESS"
							value="${principal.normalmemberinfo.ndeaddress}">
					</div>
				</div>
				<div class="div">
					<div class="text">우편번호</div>
					<div class="input">
						<input type="text" placeholder="우편번호를 입력하세요" id="NPOST"
							value="${principal.normalmemberinfo.npost}">
					</div>
				</div>
			</form>
		</div>
		<br />
		<div id="section_footer">
			<button id="update-user">수정완료</button>
			<button type="button">다시 작성</button>
		</div>
	</section>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_SOCIAL')">
	<section class="section">
		<h1>회원수정</h1>
		<div id="container">
			<h3 style="text-align: left;">필수정보</h3>
			<form>
				<input type="hidden" id="id"
					value="${principal.socialmemberinfo.sid}" />
				<div class="div">
					<div class="text">이름</div>
					<div class="input">
						<input type="text" id="SNAME" placeholder="이름을 입력하세요"
							value="${principal.socialmemberinfo.sname}" readonly>
					</div>
				</div>
				<div class="div">
					<div class="text">아이디</div>
					<div class="input">
						<input type="text" id="SID" placeholder="아이디를 입력하세요"
							value="${principal.socialmemberinfo.sid}" readonly>
					</div>
				</div>
				<div class="div">
					<div class="text">생년월일</div>
					<div class="input">
						<input type="date" id="SBIR"
							value="${principal.socialmemberinfo.sbir}">
					</div>
				</div>
				<div class="div">
					<div class="text">이메일</div>
					<div class="input">
						<input type="email" placeholder="이메일을 입력하세요" id="SEMAIL"
							value="${principal.socialmemberinfo.semail}"
							style="width: 200px; height: 25px;" readonly>
					</div>
				</div>
				<div class="div">
					<div class="text">전화번호</div>
					<div class="input">
						<input type="tel" placeholder="전화번호를 입력하세요" id="STEL"
							value="${principal.socialmemberinfo.stel}">
					</div>
				</div>
				<div class="div">
					<div class="text">주소</div>
					<div class="input">
						<input type="text" placeholder="주소를 입력하세요" id="SADDRESS"
							value="${principal.socialmemberinfo.saddress}">
					</div>
				</div>
				<div class="div">
					<div class="text">상세주소</div>
					<div class="input">
						<input type="text" placeholder="상세주소를 입력하세요" id="SDEADDRESS"
							value="${principal.socialmemberinfo.sdeaddress}">
					</div>
				</div>
				<div class="div">
					<div class="text">우편번호</div>
					<div class="input">
						<input type="text" placeholder="우편번호를 입력하세요" id="SPOST"
							value="${principal.socialmemberinfo.spost}">
					</div>
				</div>
			</form>
		</div>
		<br />
		<div id="section_footer">
			<button id="update-social">수정완료</button>
			<button type="button">다시 작성</button>
		</div>
	</section>
</sec:authorize>

<script src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp"%>