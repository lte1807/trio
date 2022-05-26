<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<div class="card m-2">
	<table>
	<caption><h1>공지사항</h1></caption>
			<tr><th><div class="card-body" id="card-title">
						<div class="card-title">
							<h5 class="notice_content-item">번호</h5>
							<h5 class="notice_content-item">제목</h5>
							<h5 class="notice_content-item">작성자</h5>
							<h5 class="notice_content-item">조회수</h5>
						</div>
					</div></th></tr>
			<c:forEach var="notice_board" items="${notice_boards.content}">
				<tr><td><div class="card-body">
							<div class="card-content">
								<h6 class="notice_content-item">${notice_board.id}</h6>
								<h6 class="notice_content-item">
									<a href="/auth/notice_board/${notice_board.id}">[공지] ${notice_board.title}</a>
								</h6>
								<h6 class="notice_content-item">${notice_board.normalmemberinfo.nname}</h6>
								<h6 class="notice_content-item">${notice_board.count}</h6>
							</div>
						</div></td></tr>
			</c:forEach>
		</table>
		<div>
		<c:if test="${not empty principal}">
		<a href="/notice_board/form" class="btn btn-warning">글쓰기</a>
		</c:if> 
		</div>
	</div>
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${notice_boards.first}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${notice_boards.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${notice_boards.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${notice_boards.last}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${notice_boards.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${notice_boards.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>
<br />
<%@ include file="../layout/footer.jsp"%>

