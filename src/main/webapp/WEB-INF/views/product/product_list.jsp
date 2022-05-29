<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link href="/css/product.css" rel="stylesheet">


<div class="container">
	<div class="section" id="container">
	<h3>BEST</h3>
		<table class="all product-table">			
					
			<c:forEach var="product" items="${product.content}">
			<tr><td class="thumbnail"><a href="/auth/product/${product.id}"}>${product.thumbnail}</a><td>
				<td class="thumbnail_price">
				<p class="thumbnail_title">${product.title}</p><br>				
				<p class="thumbnail_originalPrice">${product.price}</p>
				<p class="thumbnail_salePrice">${product.price}원</p>
				<p class="thumbnail_review">리뷰 ${product.reviewCount}개</p>
				</td></tr>
			</c:forEach>
						
				</table>
				<div>
		<c:if test="${not empty principal}">
		<a href="/product/form" class="btn btn-warning">글쓰기</a>
		</c:if> 
		</div>
	</div>
	
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${product.first}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${product.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${product.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${product.last}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${product.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${product.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
	</div>


<%@ include file="../layout/footer.jsp"%>