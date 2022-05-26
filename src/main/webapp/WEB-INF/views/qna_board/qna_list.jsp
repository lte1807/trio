<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<div class="card m-2">
		<div class="flex02">
			<table class="menu">
				<caption>
					<h2>고객문의</h2>
				</caption>
				<tr>
					<th class="unselected"><a href="/auth/faq_board"
						style="color: lightgray;">FAQ</a></th>
					<th class="selected"><a>1:1문의</a></th>
				</tr>
			</table>

			<ul class="faq_menubar">
				<li><a href="/auth/qna_board/">전체</a></li>
				<li value="1"><a href="#" id="categorySelect">상품</a></li>
				<li value="2"><a href="#" id="categorySelect">배송</a></li>
				<li value="3"><a href="#" id="categorySelect">주문</a></li>
				<li value="4"><a href="#" id="categorySelect">A/S</a></li>
				<li value="5"><a href="#" id="categorySelect">기타</a></li>
			</ul>
		</div>

		<div class="flex03">
			<d class="div_text">
			<tr>
				<th><div class="card-body" id="card-title">
						<div class="card-title">
							<h5 class="content-item0">번호</h5>
							<h5 class="content-item0">분류</h5>
							<h5 class="content-item0">제목</h5>
							<h5 class="content-item0">작성자</h5>
							<h5 class="content-item0">조회수</h5>
						</div>
					</div></th>
			</tr>
			<c:forEach var="qna_board" items="${qna_boards.content}">
				<tr>
					<td><div class="card-body">
							<div class="card-content">
								<h6 class="content-item">${qna_board.id}</h6>
								<h6 class="content-item">
									<c:choose>
										<c:when test="${qna_board.qna_category== 1}">상품</c:when>
										<c:when test="${qna_board.qna_category== 2}">배송</c:when>
										<c:when test="${qna_board.qna_category== 3}">주문</c:when>
										<c:when test="${qna_board.qna_category== 4}">A/S</c:when>
										<c:when test="${qna_board.qna_category== 5}">기타</c:when>
										<c:otherwise>-</c:otherwise>
									</c:choose>
								</h6>
								<h6 class="content-item">
									<a href="/qna_board/${qna_board.id}"> <c:choose>
											<c:when test="${qna_board.replyCount !=0 }">
												<small>[답변완료]&nbsp;&nbsp;</small>
											</c:when>
											<c:otherwise>
												<small>[답변대기]&nbsp;&nbsp;</small>
											</c:otherwise>
										</c:choose>${qna_board.title}
									</a>
								</h6>
								<h6 class="content-item">${qna_board.normalmemberinfo.nname}</h6>
								<h6 class="content-item">${qna_board.count}</h6>
							</div>
						</div></td>
				</tr>
			</c:forEach>
			<div>
				<c:if test="${not empty principal}">
					<a href="/qna_board/form" class="btn btn-warning">글쓰기</a>
				</c:if>
			</div><!-- 글쓰기 -->
		</div><!-- flex03 -->

		<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${qna_boards.first}">
					<li class="page-item disabled"><a class="page-link"
						href="?page=${qna_boards.number-1}">Previous</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="?page=${qna_boards.number-1}">Previous</a></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${qna_boards.last}">
					<li class="page-item disabled"><a class="page-link"
						href="?page=${qna_boards.number+1}">Next</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="?page=${qna_boards.number+1}">Next</a></li>
				</c:otherwise>
			</c:choose>
		</ul>

	</div>
</div>
<br />
<%@ include file="../layout/footer.jsp"%>