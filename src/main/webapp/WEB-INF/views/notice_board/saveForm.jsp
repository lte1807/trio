<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
    <script type="text/javascript" src="/js/summernote-ko-KR.js"></script>
    <script type="text/javascript" src="/js/summernote-lite.js"></script>
    <link rel="stylesheet" href="/css/summernote-lite.css">

<div class="container">
	<form>
			<label for="notice_category">분류</label>&nbsp;
		<select name="notice_category" id="notice_category">
			<option value="공지">공지</option>
			<option value="이벤트">이벤트</option>
		</select>
		<div class="form-group">
			<label for="title">Title</label> <input type="text"
				class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<label for="content">Content</label>
			<textarea class="summernote form-control" rows="5" id="content"></textarea>
		</div>
	</form>
	<button id="btn-save" class="btn btn-primary">저장</button>
</div>
<br />   
      <script>
      $('.summernote').summernote({
    	  lang : 'ko-KR',
    	  tabsize:2,
    	  height: 300 
    	  });  
 	     </script>
<script type="text/javascript" src="/js/notice_board.js"></script>
<%@ include file="../layout/footer.jsp"%>