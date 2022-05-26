<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<link href="/css/FAQ.css" rel="stylesheet">

<section class="section">
	<div>
		<table class="menu">
			<caption>
				<h2>고객문의</h2>
			</caption>
			<tr>
				<th class="selected">FAQ</th>
				<th class="unselected"><a href="/user/QNA" style="color: lightgray;">1:1문의</a>
				</th>
			</tr>
		</table>
		<ul class="faq_menubar">
			<li>전체</li>
			<li>상품/조립</li>
			<li>배송</li>
			<li>교환/반품/취소</li>
			<li>입금/기타</li>
		</ul>
	</div>
	<div class="flex03">
		<div class="div_text">
			<details>
				<summary class="summary">Q. 고객센터는 언제 통화 가능한가요?</summary>
				<div class="div_a">
					고객센터 전화번호 : 031 - 000 - 0000 <br> 운영시간: 평일 10:00 - 18:00 (점심시간
					12:00 - 13:00)
				</div>
			</details>

			Q. 교환 및 반품 배송비는 얼마인가요?<br> Q. 배송 전에 상품을 취소하고 싶어요.
		</div>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>