<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<script language="javascript"
	src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function pagego(url) { // 페이지 로드 함수
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
	<div class="flex02">

		<div class="div_text" id="container">

			<c:forEach var="faq_board" items="${faq_boards.content}">
				<c:if test="${faq_board.faq_category==3}">
					<details>

						<summary class="summary">
							<b>Q.</b> ${faq_board.title}
						</summary>
						<div class="div_a">${faq_board.content}</div>
						<c:if
							test="${faq_board.normalmemberinfo.nid==principal.normalmemberinfo.nid}">
							<button onClick="index.boardDelete(${faq_board.id})" class="btn btn-danger">삭제</button>
							<a href="/faq_board/${faq_board.id}/updateForm" id="btn-update"
								class="btn btn-warning">수정</a>
						</c:if>

					</details>
				</c:if>
			</c:forEach>
		</div>
		<!-- id container -->
	</div>
</div>




