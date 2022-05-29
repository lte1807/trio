<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<link href="/css/mypage.css" rel="stylesheet">


<section class="section">
	<h1>마이페이지</h1>
	<div id="container">
		<div id="div1">
			<img src="/img/user.png" width="100px" height="100px">
			<h1>
				***님의 등급은 <span>일반회원등급</span> 입니다.
			</h1>
		</div>
		<div id="div2">
			<h2>현재 진행중 주문</h2>
			<ul id="list">
				<li><h2>입금전</h2>
					<div class="list_count">0</div></li>
				<li><h2>배송준비중</h2>
					<div class="list_count">0</div></li>
				<li><h2>배송중</h2>
					<div class="list_count">0</div></li>
				<li><h2>배송완료</h2>
					<div class="list_count">0</div></li>
			</ul>
		</div>
		<div id="div3">
			<ul id="menu_list">
				<li><a href="">
						<h4>주문내역 조회</h4>
						<p>
							<small>고객님께서 주문하신 상품의 주문내역을 확인하실 수 있습니다. 비회원의 경우, 주문서의
								주문번호와 비밀번호로 주문조회가 가능합니다.</small>
						</p>
				</a></li>
				<li><a href="/user/Userupdate">
						<h4>회원정보</h4>
						<p>
							<small>회원이신 고객님의 개인정보를 관리하는 공간입니다. 개인정보를 최신 정보로 유지하시면 보다
								간편히 쇼핑을 즐기실 수 있습니다.</small>
						</p>
				</a></li>
				<li><a href="">
						<h4><a href="/cart/cart">장바구니</a></h4>
						<p>
							<small>관심상품으로 등록하신 상품의 목록을 보여드립니다.</small>
						</p>
				</a></li>

			</ul>
		</div>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>