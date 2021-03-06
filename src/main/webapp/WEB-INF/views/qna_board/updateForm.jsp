<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
    <script type="text/javascript" src="/js/summernote-ko-KR.js"></script>
    <script type="text/javascript" src="/js/summernote-lite.js"></script>
     <link rel="stylesheet" href="/css/summernote-lite.css">
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
		<input type="hidden" id="id" value="${qna_board.id}" />
		<div class="form-group">
			<input value="${qna_board.title}" type="text" 
			class="form-control" placeholder="Enter title" id="title">
		</div>
		
		<div class="form-group">
			<textarea class="form-control summernote" rows="5" id="content">${qna_board.content}</textarea>
		</div>
	</form>
	<button id="btn-update" class="btn btn-primary">수정</button>
</div>
<br />
<script>
      $('.summernote').summernote({
    	  lang : 'ko-KR',
    	  height: 300 
    	  });  
 	     </script>
<script type="text/javascript" src="/js/qna_board.js"></script>
<%@ include file="../layout/footer.jsp"%>