<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<link href="/css/QNA.css" rel="stylesheet">

<section class="section">
	<div>
		<table class="menu">
			<caption>
				<h2>고객문의</h2>
			</caption>
			<tr>
				<th class="unselected">
				<a href="/user/FAQ" style="color: lightgray;">FAQ</a></th>
				<th class="selected">1:1문의</th>
			</tr>
		</table>
		<ul class="faq_menubar">
			<li>전체</li>
			<li>상품</li>
			<li>배송</li>
			<li>주문</li>
			<li>A/S</li>
			<li>기타</li>
		</ul>
	</div>
	<div class="flex03">
		<table class="table">
			<tr>
				<th>번호</th>
				<th>구분</th>
				<th style="width: 46%;">제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<tr>

				<td>2</td>
				<td>의자</td>
				<td><a href="PAGE_QNA_content.html">상품문의</a></td>
				<td>작성자</td>
				<td>2022-02-18</td>
			</tr>
		</table>
	</div>

	<div class="flex05">
		<form>
			<select name="select" style="cursor: pointer;">
				<option value="0">전체</option>
				<option value="1">제목</option>
				<option value="2">작성자</option>
			</select> <input type="text"><input type="button" value="검색"
				style="margin-left: 6px;">
		</form>
		<form>
			<a href="/user/QNA_write"><input type="button" value="글쓰기"></a>
		</form>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>