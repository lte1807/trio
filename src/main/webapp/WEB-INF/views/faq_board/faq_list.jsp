<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<div class="card m-2">
		<div class="flex02">
			<table class="menu">
				<tr>
				<caption>
					<h2>고객문의</h2>
				</caption>
				<tr>
				<tr>
					<th class="selected">FAQ</th>
					<th class="unselected"><a href="/auth/qna_board"
						style="color: lightgray;">1:1문의</a></th>
				</tr>
			</table>
			<ul class="faq_menubar">
				<li><a href="/auth/faq_board/">전체</a></li>
				<li value="1"><a href="#" id="categorySelect">상품조립</a></li>
				<li value="2"><a href="#" id="categorySelect">배송</a></li>
				<li value="3"><a href="#" id="categorySelect">교환/반품/취소</a></li>
				<li value="4"><a href="#" id="categorySelect">입금/기타</a></li>
			</ul>
		</div>

		<div class="flex03">
			<div class="div_text">
				<c:forEach var="faq_board" items="${faq_boards.content}">
					<details>
						<summary class="summary">
							<b>Q.</b> ${faq_board.title}
						</summary>
						<div class="div_a">${faq_board.content}</div>
						<c:if test="${faq_board.normalmemberinfo.nid==principal.normalmemberinfo.nid}">
							<button id="btn-delete" class="btn btn-danger" value="${faq_board.id}"><a href="/${faq_board.id}" id="id">삭제</a></button>
							<a href="/faq_board/${faq_board.id}/updateForm"	id="btn-update" class="btn btn-warning">수정</a>
						</c:if>
					</details>
				</c:forEach>
			</div>
			<div>
				<c:if test="${not empty principal}">
					<a href="/faq_board/form" class="btn btn-warning">글쓰기</a>
				</c:if>
			</div>
		</div>

		<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${faq_boards.first}">
					<li class="page-item disabled"><a class="page-link"
						href="?page=${faq_boards.number-1}">Previous</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="?page=${faq_boards.number-1}">Previous</a></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${faq_boards.last}">
					<li class="page-item disabled"><a class="page-link"
						href="?page=${faq_boards.number+1}">Next</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="?page=${faq_boards.number+1}">Next</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</div>

<br />
<%@ include file="../layout/footer.jsp"%>



