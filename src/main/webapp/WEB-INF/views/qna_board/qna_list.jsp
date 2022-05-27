<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
    <script type="text/javascript" src="/js/summernote-ko-KR.js"></script>
    <script type="text/javascript" src="/js/summernote-lite.js"></script>
    <link rel="stylesheet" href="/css/summernote-lite.css">
    
    
<script language="javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function category_select(url) { // 페이지 로드 함수
		$.ajax({ // ajax 는 데이터를 전송/수신 시에 사용됩니다. ajax 를 이용하여 페이지를 불러올 것입니다.
			url : url, // 대상 URL 지정
			success : function() { // 페이지를 불러오는 데에 성공했다면
				$("#container").load(url); // 해당 페이지를 #container 영역에 불러오기
			},
			error : function(err) { // 페이지를 불러오는 데에 실패했다면 에러 출력
				alert("Server Error\n\n" + err); // 에러 출력
			}
		});
	}
</script>
<div class="container">
	<div class="card m-2">
		<div class="flex02">
		<h2>고객문의</h2>
			<table class="menu">
				<tr>
					<th class="unselected"><a href="/auth/faq_board"
						style="color: lightgray;">FAQ</a></th>
					<th class="selected"><a>1:1문의</a></th>
				</tr>
			</table>

			<ul class="faq_menubar">
				<li><a href="/auth/qna_board/">전체</a></li>
				<li value="1"><button class="category_btn" onclick="category_select('/qna_board/category_1')">상품</button></li>
				<li value="2"><button class="category_btn" onclick="category_select('/qna_board/category_2')">배송</button></li>
				<li value="3"><button class="category_btn" onclick="category_select('/qna_board/category_3')">주문</button></li>
				<li value="4"><button class="category_btn" onclick="category_select('/qna_board/category_4')">A/S</button></li>
				<li value="5"><button class="category_btn" onclick="category_select('/qna_board/category_5')">기타</button></li>
			</ul>
		</div>

		<div class="flex03">
			<div class="div_text" id="container">
			<tr>
				<th><div class="card-body" id="card-title">
						<div class="card-title">
							<h5 class="qna_content-item">번호</h5>
							<h5 class="qna_content-item">분류</h5>
							<h5 class="qna_content-item">제목</h5>
							<h5 class="qna_content-item">작성자</h5>
							<h5 class="qna_content-item">작성일</h5>
							<h5 class="qna_content-item">조회수</h5>
						</div>
					</div></th>
			</tr>
			<c:forEach var="qna_board" items="${qna_boards.content}">
				<tr>
					<td><div class="card-body">
							<div class="card-content">
								<h6 class="qna_content-item">${qna_board.id}</h6>
								<h6 class="qna_content-item">
									<c:choose>
										<c:when test="${qna_board.qna_category== 1}">상품</c:when>
										<c:when test="${qna_board.qna_category== 2}">배송</c:when>
										<c:when test="${qna_board.qna_category== 3}">주문</c:when>
										<c:when test="${qna_board.qna_category== 4}">A/S</c:when>
										<c:when test="${qna_board.qna_category== 5}">기타</c:when>
										<c:otherwise>-</c:otherwise>
									</c:choose>
								</h6>
								<h6 class="qna_content-item">
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
								<h6 class="qna_content-item">${qna_board.normalmemberinfo.nname}</h6>
								<h6 class="qna_content-item"><fmt:formatDate pattern = "yyyy-MM-dd" value="${qna_board.createDate}"/></h6>
								<h6 class="qna_content-item">&nbsp;&nbsp;&nbsp;&nbsp;${qna_board.count}</h6>
							</div>
						</div></td>
				</tr>
			</c:forEach>
			</div>
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