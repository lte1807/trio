<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link href="/css/product.css" rel="stylesheet">

<div class="productWrap">

	<div class="productLeft">
		<div class="productImg">${product.thumbnail}</div>
	</div>

	<div class="productRight">
		<div class="productInfoTitle">
			<h2>${product.title}</h2>
		</div>
		<div class="productInfoContent">
			<div class="price">
				<p class="originalPrice">${product.price}</p>
				<p class="salePrice">${product.price}[0%]</p>
			</div>
			<br>
			<p class="productSize">
				<b>사이즈</b>&nbsp;&nbsp;&nbsp;&nbsp;100×200×300
			</p>
			<p class="productSize">
				<b>적립금</b>&nbsp;&nbsp;&nbsp;&nbsp;1,000원
			</p>
			<p class="productSize">
				<b>배송비</b>&nbsp;&nbsp;&nbsp;&nbsp;무료
			</p>
		</div>
		<div class="productOptionSelect">
			<select name="productSelect" id="productSelect">
				<option>- 색상 선택 -</option>
				<option value="colorSelect1">내추럴</option>
				<option value="colorSelect2">화이트</option>
				<option value="colorSelect3">그레이</option>
				<option value="colorSelect4">블랙</option>
			</select> <select name="productSelect" id="productSelect">
				<option>- 조립서비스 선택 -</option>
				<option value="Select1">직접 조립</option>
				<option value="Select2">조립 서비스 (+5,000원)</option>
			</select>
		</div>
		<div class="totalPrice">
			<h4>총 구매가</h4>
			<h4>0원</h4>
		</div>
		<div class="payment">
			<button class="payment_btn">바로구매</button>
			<button class="cart_btn">장바구니</button>
		</div>
	</div>

</div>

<div>
	<div class="productInfoDetail">
		<p>상세정보</p>
		<hr>
		<p>${product.content }</p>
	</div>
	
		
	
	<br />

	<div class="productReview">
		<p>상품후기</p>
		<hr>
		<div class="card" id="reply-list-box">
		<div class="card-body">
		<form>
			<input type="hidden" id="userId"
				value="${principal.normalmemberinfo.id}" /> <input type="hidden"
				id="productId" value="${product.id}" />
			<c:if test="${product.normalmemberinfo.nid==principal.normalmemberinfo.nid}">
				
<!--				<form>
 					<select id="review_point" name="review_point">
						<option value="5">★★★★★</option>
						<option value="4">★★★★</option>
						<option value="3">★★★</option>
						<option value="2">★★</option>
						<option value="1">★</option>
					</select> 
					
						</form>-->		
				
		</form>
		<textarea id="review-content" class="form-control" rows="1"
						placeholder="리뷰 쓰기"></textarea>
						
						<button type="button" id="btn-review-save" class="btn btn-primary" 
						style="width: 60px; margin-left: 10px;">등록</button>
						</div>
			<div class="card-header">리뷰 목록</div>
			<ul id="reply-box" class="list-group">
				<c:forEach var="review" items="${product.reviews}">
					<li id="review-${review.id}"
						class="list-group-item d-flex justify-content-between">
						<div>
							<b>${review.normalmemberinfo.nname} </b>
<%-- 							&nbsp;&nbsp;<p><c:choose>
										<c:when test="${review.review_point== 1}">★</c:when>
										<c:when test="${review.review_point== 2}">★★</c:when>
										<c:when test="${review.review_point== 3}">★★★</c:when>
										<c:when test="${review.review_point== 4}">★★★★</c:when>
										<c:when test="${review.review_point== 5}">★★★★★</c:when>
									</c:choose></p>  --%>
							&nbsp;&nbsp;${review.content}
						</div> <c:if test="${review.normalmemberinfo.nname==principal.normalmemberinfo.nname}">
							<button onClick="index.reviewDelete(${product.id},${review.id })"
								class="badge">삭제</button>
						</c:if>
					</li>
				</c:forEach>

			</ul>
		</div>
		</c:if>

	</div>
</div>
<script type="text/javascript" src="/js/product.js"></script>
<%@ include file="../layout/footer.jsp"%>