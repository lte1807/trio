<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<c:if test="${notice_board.normalmemberinfo.nid==principal.normalmemberinfo.nid}">
		<button id="btn-delete" class="btn btn-danger">삭제</button>
		<a href="/notice_board/${notice_board.id}/updateForm" class="btn btn-warning">수정</a>
	</c:if>
	<div>
		<br /> <br />
		<div class="content-detail">
			<b>글 번호</b> <span id="id">${notice_board.id}</span> &nbsp;&nbsp; 
			<b>작성자</b>	<span>${notice_board.normalmemberinfo.nname}</span> &nbsp;&nbsp; 
			<b>작성일</b> <span><fmt:formatDate pattern = "yyyy-MM-dd" value="${notice_board.createDate}"/></span> &nbsp;&nbsp; 
			<b>조회수</b> <span>${notice_board.count}</span>
		
		</div>
		<div class="board-content">
			<h3>[${notice_board.notice_category}] ${notice_board.title}</h3>
			<hr />
			<div>${notice_board.content}</div>
		</div>
	</div>
</div>
<br />
<script type="text/javascript" src="/js/notice_board.js"></script>
<%@ include file="../layout/footer.jsp"%>