<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<link href="/css/product.css" rel="stylesheet">
	
<script language="javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function p_category_select(url) { // 페이지 로드 함수
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

<div class="container" id="container">
	<section class="section">
	<h3>거실</h3>
		<table class="all product-table">			
			<c:forEach var="product" items="${product.content}">
			<c:if test="${product.product_category==3}">
			<tr><td class="thumbnail"><a href="/product/${product.id}"}>${product.thumbnail}</a><td>
				<td class="thumbnail_price">
				<p class="thumbnail_title">${product.title}</p><br>				
				<p class="thumbnail_originalPrice">${product.price}</p>
				<p class="thumbnail_salePrice">${product.price}원</p>
				<p class="thumbnail_review">리뷰 ${product.reviewCount}개</p>
				</td></tr>
			</c:if>
			</c:forEach>	
		</table>
	</section>
	
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