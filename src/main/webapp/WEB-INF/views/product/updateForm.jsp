<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script type="text/javascript" src="/js/summernote-ko-KR.js"></script>
<script type="text/javascript" src="/js/summernote-lite.js"></script>
<link rel="stylesheet" href="/css/summernote-lite.css">
<div class="container">
	<form>
		<label for="product_category">분류</label>&nbsp;<select
			name="product_category" id="product_category"
			onchange="product_category()">
			<option value="0">BEST</option>
			<option value="1">주방</option>
			<option value="2">침실</option>
			<option value="3">거실</option>
			<option value="4">소품</option>
		</select>
		<input type="hidden" id="id" value="${product.id}" />
		<div class="form-group">
			<label for="thumbnail">이미지</label>
			<textarea class="form-control summernote" rows="20" id="thumbnail">
			${product.thumbnail}
			</textarea>
		</div>

		<div class="form-group">
			<label for="title">Title(상품명)</label> <input type="text"
			value="${product.title}"
				class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<label for="content">Content(상품설명)</label>
			<textarea class="form-control summernote" rows="20" id="content">${product.content}</textarea>
		</div>
		
		<div class="form-group">
			<label for="price">가격</label> 
			<input type="text" 
			value="${product.price}"
			class="form-control" placeholder="가격" id="price">
		</div>
	</form>
	<button id="btn-save" class="btn btn-primary">저장</button>
</div>
<br />
<script>
      $('.summernote').summernote({
    	  lang : 'ko-KR',
    	  height: 300
    	  });   
 	     </script>
<script type="text/javascript" src="/js/product.js"></script>
<%@ include file="../layout/footer.jsp"%>