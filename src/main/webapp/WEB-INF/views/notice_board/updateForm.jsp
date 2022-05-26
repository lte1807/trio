<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
    <script type="text/javascript" src="/js/summernote-ko-KR.js"></script>
    <script type="text/javascript" src="/js/summernote-lite.js"></script>
    <link rel="stylesheet" href="/css/summernote-lite.css">
    
<div class="container">
	<form>
		<input type="hidden" id="id" value="${notice_board.id}"/>
		<div class="form-group">
			<input value="${notice_board.title}" type="text" class="form-control"
			placeholder="Enter title" id="title">
		</div>
		<div class="form-group">
			<textarea class="form-control summernote" rows="5" id="content">${notice_board.content}</textarea>
		</div>
	</form>
	<button id = "btn-update" class="btn btn-primary">수정</button>
</div>
<br/>
      <script>
      $('.summernote').summernote({
    	  lang : 'ko-KR',
    	  tabsize:2,
    	  height: 300 
    	  });  
 	     </script>
<script type="text/javascript" src="/js/notice_board.js"></script>
<%@ include file="../layout/footer.jsp"%>