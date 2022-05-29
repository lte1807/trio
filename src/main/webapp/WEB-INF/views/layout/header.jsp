<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Trio</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/external.css">
<link rel="stylesheet" href="/css/board_list.css">
<link href="/css/header.css" rel="stylesheet">
<link href="/css/footer.css" rel="stylesheet">

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
</head>

<body>
	<header>
		<div class="header">
			<h1 id="logo">
				<a href="/">Trio</a>
			</h1>
			<sec:authorize access="isAnonymous()">
				<ul class="headermenu">
					<li><a href="/auth/loginForm">LOGIN</a></li>
					<li><a href="/user/mypage.jsp">MY PAGE</a></li>
					<li><a href="/auth/faq_board">고객센터</a></li>
					<li><a href="/auth/notice_board/">공지사항</a></li>
					<li>
						<div id="search">
							<input type="text" id="search_txt">
							<button type="button" id="search_btn">
								<img src="/img/돋보기.png" style="width: 15px; height: 15px;">
							</button>
						</div>
					</li>
				</ul>
			</sec:authorize>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<ul class="headermenu">
					<li><a href="/logout">LOGOUT</a></li>
					<li><a href="/user/mypage">MY PAGE(임시)</a></li>
					<li><a href="/admin/adminPage">회원 관리</a></li>
					<li><a href="/">상품 관리</a></li>
					<li><a href="/">주문관리</a></li>
					<li><a href="/">고객센터 관리</a></li>
					<li><a href="/">게시판 관리</a></li>
					<li>
						<div id="search">
							<input type="text" id="search_txt">
							<button type="button" id="search_btn">
								<img src="/img/돋보기.png" style="width: 15px; height: 15px;">
							</button>
						</div>
					</li>
				</ul>
			</sec:authorize>
			<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_SOCIAL')">
				<ul class="headermenu">
					<li><a href="/logout">LOGOUT</a></li>
					<li><a href="/user/Userupdate">회원정보</a></li>
					<li><a href="/user/mypage">MY PAGE</a></li>
					<li><a href="/auth/faq_board">고객센터</a></li>
					<li><a href="/auth/notice_board/">공지사항</a></li>
					<li><a href="/product/">상품관리</a></li>
					<li>
						<div id="search">
							<input type="text" id="search_txt">
							<button type="button" id="search_btn">
								<img src="/img/돋보기.png" style="width: 15px; height: 15px;">
							</button>
						</div>
					</li>
				</ul>
			</sec:authorize>
		</div>
		<div>
			<hr id="header_hr">
			<ul class="menubar">
				<li><a href="/auth/product/">BEST</a></li>
				<li value="1"><button class="category_btn" onclick="p_category_select('/product/category_1')">주방</button></li>
				<li value="2"><button class="category_btn" onclick="p_category_select('/product/category_2')">침실</button></li>
				<li value="3"><button class="category_btn" onclick="p_category_select('/product/category_3')">거실</button></li>
				<li value="4"><button class="category_btn" onclick="p_category_select('/product/category_4')">소품</button></li>
			</ul>
		</div>
	</header>
	<br />
	
	<div id="container">
	</div>
