<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
    
    <link rel="stylesheet" href="/css/swiper.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/js/swiper.min.js"></script>
    <script type="text/javascript" src="/js/custom.js"></script>
    <script type="text/javascript" src="/js/count.js"></script>

    <div class="cartwrap">
        <p>CART</p>
    </div>
    <div>
        <table class="cart-content">
            <tr>
                <th><input type="checkbox" name="cart-content-select" value="selectall" onclick="selectAll(this)"/></th>
                <th>이미지</th>
                <th>상품정보</th>
                <th>판매가</th>
                <th>수량</th>
                <th>적립금</th>
                <th>배송비</th>
                <th>합계</th>
                <th>선택</th>
            </tr>
            <tr>
                <td><input type="checkbox" name="cart-content-select"></td>
                <td><img class="cart-img" src="/img/new1.jpg" alt="cart-product"></td>
                <td>
                    <p class="product-name">원형 테이블</p>[옵션: 화이트, 조립X]
                </td>
                <td>100,000원</td>
                <td>
                    <table class="product-count">
                        <tr>
                            <td rowspan="2">
                                <div id='result'>1</div>
                            </td>
                            <td>
                                <input class="count-btn" type='button' onclick='count("plus")' value='+' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input class="count-btn" type='button' onclick='count("minus")' value='-' />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    100원
                </td>
                <td>
                    0원
                </td>
                <td>100,000원</td>
                <td>
                    <input class="cart-order-btn" type="button" value="주문하기"><br>
                    <input class="cart-delete-btn" type="button" value="삭제" onclick="confirm('상품을 삭제하시겠습니까?')">
                </td>
            </tr>
            <tr>
                <td><input type="checkbox" name="cart-content-select"></td>
                <td><img class="cart-img" src="/img/new6.jpg" alt="cart-product"></td>
                <td>
                    <p class="product-name">원목 서랍</p>[옵션: 내추럴, 조립X]
                </td>
                <td>100,000원</td>
                <td>
                    <table class="product-count">
                        <tr>
                            <td rowspan="2">
                                <div>1</div>
                            </td>
                            <td>
                                <input class="count-btn" type='button' value='+' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input class="count-btn" type='button' value='-' />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    100원
                </td>
                <td>
                    0원
                </td>
                <td>100,000원</td>
                <td>
                    <input class="cart-order-btn" type="button" value="주문하기"><br>
                    <input class="cart-delete-btn" type="button" value="삭제" onclick="confirm('상품을 삭제하시겠습니까?')">
                </td>
            </tr>
            <tr class="count-total">
                <td colspan="9">
                    <p class="total-txt">상품금액 200,000원 + 배송비 0원 =&nbsp;합계&nbsp;&nbsp;<b>200,000원</b>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </td>
            </tr>
        </table>
        <div class="cart-x-btn"><button onclick="confirm('장바구니를 비우시겠습니까?')">장바구니 비우기</button><button>견적서 출력</button></div>
        <div class="order">
            <input type="button" onClick="location.href='/cart/order', alert('결제 페이지로 이동합니다.')" value="전체 상품 주문">
            <input type="button" onClick="location.href='/cart/order', alert('결제 페이지로 이동합니다.')" style="background-color: rgba(0, 0, 0, 0.7);"  value="선택 상품 주문">
        </div>
    </div>