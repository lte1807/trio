<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<label for="faq_category">분류</label> <select name="faq_category"
			id="faq_category" onchange="faq_category()">
			<option value="0">전체</option>
			<option value="1">상품/조립</option>
			<option value="2">배송</option>
			<option value="3">교환/반품/취소</option>
			<option value="4">입금/기타</option>
		</select> <input type="hidden" id="id" value="${faq_board.id}" />
		<div class="form-group">
			<input value="${faq_board.title}" type="text" class="form-control"
				placeholder="Enter title" id="title">
		</div>
		<div class="form-group">
			<textarea class="form-control summernote" rows="5" id="content">${faq_board.content}</textarea>
		</div>
	</form>
	<button id="btn-update" class="btn btn-primary">수정</button>
</div>
<br />
<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>
<script type="text/javascript" src="/js/faq_board.js"></script>
<%@ include file="../layout/footer.jsp"%>