<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script type="text/javascript" src="/js/faq_board.js"></script>
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
					<th class="selected">FAQ</th>
					<th class="unselected"><a href="/auth/qna_board"
						style="color: lightgray;">1:1문의</a></th>
				</tr>
			</table>
			<ul class="faq_menubar">
				<li><a href="/auth/faq_board/">전체</a></li>
				<li value="1"><button class="category_btn" onclick="category_select('/faq_board/category_1')">상품조립</button></li>
				<li value="2"><button class="category_btn" onclick="category_select('/faq_board/category_2')">배송</button></li>
				<li value="3"><button class="category_btn" onclick="category_select('/faq_board/category_3')">교환/반품/취소</button></li>
				<li value="4"><button class="category_btn" onclick="category_select('/faq_board/category_4')">입금/기타</button></li>
			</ul>
		</div>

		<div class="flex03">
			<div class="div_text" id="container">
				
					<c:forEach var="faq_board" items="${faq_boards.content}">
					<div id="board-${faq_board.id}">
					<details>
						<summary class="summary">
							<b>Q.</b> ${faq_board.title}
						</summary>
						<div class="div_a">${faq_board.content}</div>
						<c:if test="${faq_board.normalmemberinfo.nid==principal.normalmemberinfo.nid}">
							<button onClick="index.boardDelete(${faq_board.id})" class="btn btn-danger">삭제</button>
							<a href="/faq_board/${faq_board.id}/updateForm"	id="btn-update" class="btn btn-warning">수정</a>
						</c:if>
					</details>
				</div>
				</c:forEach>
				
			</div><!-- id container -->
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

</body>

