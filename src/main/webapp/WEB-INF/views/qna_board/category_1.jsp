<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

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
			<c:if test="${qna_board.qna_category==1}">
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
				</c:if>
			</c:forEach>
			</div>




