<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<link href="/css/main.css" rel="stylesheet">
<link rel="stylesheet" href="./css/swiper.min.css">
<script type="text/javascript" src="./js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="./js/swiper.min.js"></script>
<script type="text/javascript" src="./js/custom.js"></script>
<body>
	<section class="section">
		<div class="sslide-wrap">
			<div class="swiper mySwiper sslide">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/slide_1.jpg" alt="slide_1">
					</div>
					<div class="swiper-slide">
						<img src="/img/slide_2.jpg" alt="slide_2">
					</div>
					<div class="swiper-slide">
						<img src="/img/slide_3.jpg" alt="slide_3">
					</div>
					<div class="swiper-slide">
						<img src="/img/slide_4.jpg" alt="slide_4">
					</div>
					<div class="swiper-slide">
						<img src="/img/slide_5.jpg" alt="slide_5">
					</div>

				</div>
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
		</div>

		<table class="new">
			<caption>
				<h3>NEW PRODUCT</h3>
			</caption>
			<tr>
				<td><img src="/img/new1.jpg" alt="신제품1"></td>
				<td><img src="/img/new2.jpg" alt="신제품2"></td>
				<td><a href="/auth/product/detail"><img src="/img/new3.jpg" alt="신제품3"></a></td>
				<td><img src="/img/new4.jpg" alt="신제품4"></td>
				<td><img src="/img/new5.jpg" alt="신제품5"></td>
				<td><img src="/img/new6.jpg" alt="신제품6"></td>
			</tr>
			<tr>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price"><a href="/auth/product/detail">[선택]test상품<br>10,000원<br></a>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
			</tr>
		</table>
		<table class="banner">
			<tr>
				<td><img src="/img/중간1.jpg" alt="중간1"></td>
				<td><img src="/img/중간2.jpg" alt="중간2"></td>
			</tr>
		</table>


		<div class="best-wrap">
			<h2>BEST</h2>
			<div class="best-left">
				<div class="swiper mySwiper best-slide">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="./img/best_1.jpg" alt="">
						</div>
						<div class="swiper-slide">
							<img src="./img/best_2.jpg" alt="">
						</div>
						<div class="swiper-slide">
							<img src="./img/best_3.jpg" alt="">
						</div>
					</div>

					<div class="swiper-pagination"></div>
				</div>
			</div>
			<div class="best-right">
				<div class="best-box2">
					<div class="best-img">
						<img src="img/best1.jpg" alt="">
					</div>
					<p>[선택] 상품명</p>
					<b>10,000<span>원</span></b>
				</div>
				<div class="best-box2">
					<div class="best-img">
						<img src="img/best2.jpg" alt="">
					</div>
					<p>[선택] 상품명</p>
					<b>10,000<span>원</span></b>
				</div>
				<div class="best-box2">
					<div class="best-img">
						<img src="img/best3.jpg" alt="">
					</div>
					<p>[선택] 상품명</p>
					<b>10,000<span>원</span></b>
				</div>
				<div class="best-box2">
					<div class="best-img">
						<img src="img/best4.jpg" alt="">
					</div>
					<p>[선택] 상품명</p>
					<b>10,000 <span>원</span></b>
				</div>
			</div>
		</div>
		<table class="all">
			<caption>
				<h3>전체 상품</h3>
			</caption>
			<tr>
				<td><img src="/img/전체1.jpg" alt="전체1"></td>
				<td><img src="/img/전체2.jpg" alt="전체2"></td>
				<td><img src="/img/전체3.jpg" alt="전체3"></td>
				<td><img src="/img/전체4.jpg" alt="전체4"></td>
			</tr>
			<tr>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
			</tr>
			<tr>
				<td><img src="/img/전체5.jpg" alt="전체5"></td>
				<td><img src="/img/전체6.jpg" alt="전체6"></td>
				<td><img src="/img/전체7.jpg" alt="전체7"></td>
				<td><img src="/img/전체8.jpg" alt="전체8"></td>
			</tr>
			<tr>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
			</tr>
			<tr>
				<td><img src="/img/전체9.jpg" alt="전체9"></td>
				<td><img src="/img/전체10.jpg" alt="전체10"></td>
				<td><img src="/img/전체11.jpg" alt="전체11"></td>
				<td><img src="/img/전체12.jpg" alt="전체12"></td>
			</tr>
			<tr>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
				<td id="price">[선택]상품명<br>10,000원<br>
					<p id="review_txt">리뷰 : 0</p>
				</td>
			</tr>
		</table>
		</div>
	</section>
</body>
<br />
<br />
<br />
<br />

<%@ include file="layout/footer.jsp"%>