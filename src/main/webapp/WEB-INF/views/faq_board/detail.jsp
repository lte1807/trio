<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<c:if test="${faq_board.normalmemberinfo.nid==principal.normalmemberinfo.nid}">
		<button id="btn-delete" class="btn btn-danger">삭제</button>
		<a href="/faq_board/${faq_board.id}/updateForm" class="btn btn-warning">수정</a>
	</c:if>
	<div>
		<br /> <br />
		<div class="content-detail">
			<b>글 번호</b> <span id="id">${faq_board.id}</span> &nbsp;&nbsp; <b>작성자</b>
			<span>${faq_board.normalmemberinfo.nname}</span> &nbsp;&nbsp; <b>조회수</b> <span>${faq_board.count}</span>
		</div>
		<div class="board-content">
			<h3>${faq_board.title}</h3>
			<hr />
			<div>${faq_board.content}</div>
		</div>
	</div>
</div>
<br />
<script type="text/javascript" src="/js/faq_board.js"></script>
<%@ include file="../layout/footer.jsp"%>