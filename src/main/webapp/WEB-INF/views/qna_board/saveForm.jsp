<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<label for="qna_category">분류</label> <select name="qna_category"
			id="qna_category" onchange="qna_category()">
			<option value="0">전체</option>
			<option value="1">상품</option>
			<option value="2">배송</option>
			<option value="3">주문</option>
			<option value="4">A/S</option>
			<option value="5">기타</option>
		</select>
		<div class="form-group">
			<label for="title">Title</label> <input type="text"
				class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<label for="content">Content</label>
			<textarea class="form-control summernote" rows="5" id="content"></textarea>
		</div>
	</form>
	<button id="btn-save" class="btn btn-primary">저장</button>
</div>
<br />
<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>
<script type="text/javascript" src="/js/qna_board.js"></script>
<%@ include file="../layout/footer.jsp"%>