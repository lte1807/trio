<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<link href="/css/QNA_write.css" rel="stylesheet">

<section>
	<div class="flex02">
		<table class="menu">
			<caption>
				<h2>고객문의</h2>
			</caption>
			<tr>
				<th class="unselected">
				<a href="/user/FAQ" style="color: lightgray;">FAQ</a></th>
				<th class="selected">1:1문의</th>
			</tr>

			<table class="table_write">
				<tr>
					<th>문의 유형</th>
					<td><select name="select"
						style="border: 1px solid lightgray; padding: 3px;">
							<option value="1" selected>상품 문의</option>
							<option value="2">배송 문의</option>
							<option value="3">주문 문의</option>
							<option value="4">A/S 문의</option>
							<option value="5">기타 문의</option>
					</select></td>
				</tr>
				<tr>
					<th>문의 제목</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>문의 내용</th>
					<td><textarea cols="30" rows="5"
							style="border: 1px solid lightgray;"></textarea></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>이메일 주소</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>휴대폰 번호</th>
					<td><input type="text"></td>
				</tr>
			</table>

			<input type="button" value="취소">
			<input type="button" value="등록">
	</div>
</section>


			<%@ include file="../layout/footer.jsp"%>