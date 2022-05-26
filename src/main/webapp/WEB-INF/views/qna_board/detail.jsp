<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<c:if
		test="${qna_board.normalmemberinfo.nid==principal.normalmemberinfo.nid}">
		<button id="btn-delete" class="btn btn-danger">삭제</button>
		<a href="/qna_board/${qna_board.id}/updateForm"	class="btn btn-warning">수정</a>
	</c:if>
	<div>
		<br /> <br />
		<div class="content-detail">
			<b>글 번호</b> <span id="id">${qna_board.id}</span> &nbsp;&nbsp; <b>작성자</b>
			<span>${qna_board.normalmemberinfo.nname}</span> &nbsp;&nbsp; <b>조회수</b>
			<span>${qna_board.count}</span>
		</div>
		<div class="board-content">
			<h3>${qna_board.title}</h3>
			<hr />

			<div>
				<c:choose>
					<c:when
						test="${qna_board.normalmemberinfo.nid==principal.normalmemberinfo.nid}">${qna_board.content}</c:when>
					<c:otherwise>작성자만 확인할 수 있는 글입니다.</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="card">
			<form>
				<input type="hidden" id="userId"
					value="${principal.normalmemberinfo.id}" /> <input type="hidden"
					id="boardId" value="${qna_board.id}" />
				<c:if test="${qna_board.normalmemberinfo.nid==principal.normalmemberinfo.nid}">
					<div class="card-body">
						<textarea id="reply-content" class="form-control" rows="1"
							placeholder="답변 쓰기"></textarea>
						<button type="button" id="btn-reply-save" class="btn btn-primary">등록</button>
					</div>
			</form>
		</div>
		<br />

		<div class="card" id="reply-list-box">
			<div class="card-header">답변</div>
			<ul id="reply-box" class="list-group">
				<c:forEach var="reply" items="${qna_board.replys}">

					<li id="reply-${reply.id}"
						class="list-group-item d-flex justify-content-between">
						<div>
							<b>${reply.normalmemberinfo.nname} </b> &nbsp;&nbsp;
							${reply.content}
						</div> <c:if
							test="${reply.normalmemberinfo.nname==principal.normalmemberinfo.nname}">
							<button onClick="index.replyDelete(${qna_board.id},${reply.id })"
								class="badge">삭제</button>
						</c:if>
					</li>
				</c:forEach>
			</ul>
		</div>
		</c:if>
	</div>
</div><!-- container -->
<br />
<script type="text/javascript" src="/js/qna_board.js"></script>
<%@ include file="../layout/footer.jsp"%>