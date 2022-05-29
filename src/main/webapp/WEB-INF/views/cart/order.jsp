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
        <p>ORDER</p>
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
            </tr>
            <tr>
                <td><input type="checkbox" name="cart-content-select"></td>
                <td><img class="cart-img" src="/img/new1.jpg" alt="cart-product"></td>
                <td>
                    <p class="product-name">원형 테이블</p>[옵션: 화이트, 조립X]
                </td>
                <td>100,000원</td>
                <td>

                    <div id='result'>1</div>

                </td>
                <td>
                    100원
                </td>
                <td>
                    0원
                </td>
                <td>100,000원</td>

            </tr>
            <tr>
                <td><input type="checkbox" name="cart-content-select"></td>
                <td><img class="cart-img" src="/img/new6.jpg" alt="cart-product"></td>
                <td>
                    <p class="product-name">원목 서랍</p>[옵션: 내추럴, 조립X]
                </td>
                <td>100,000원</td>
                <td>
                    <div>1</div>

                </td>
                <td>
                    100원
                </td>
                <td>
                    0원
                </td>
                <td>100,000원</td>

            <tr class="count-total">
                <td colspan="9">
                    <p class="total-txt">상품금액 200,000원 + 배송비 0원
                        =&nbsp;합계&nbsp;&nbsp;<b>200,000원</b>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </td>
            </tr>
        </table>
        <div class="cart-x-btn">
            <button onclick="confirm('상품을 삭제하시겠습니까?')">선택한 상품 삭제</button>
            <button onClick="location.href='/cart/cart', confirm('장바구니로 이동합니다.')">이전 페이지</button></div>

        <hr class="hr1">

        <div class="order-delivery-wrap">
            <table class="order-info">
                <caption>주문정보</caption>
                <tr>
                    <th>주문하시는 분<p class="red">*</p>
                    </th>
                    <td><input type="text" name="order-name" id="order-name" value="${principal.normalmemberinfo.nname}"></td>
                </tr>
                <tr>
                    <th>주소<p class="red">*</p>
                    </th>
                    <td><input type="text" name="order-name" id="order-name" class="post-num" value="${principal.normalmemberinfo.npost}"><button>우편번호</button><br>
                        <input type="text" name="order-address" id="order-address" value="${principal.normalmemberinfo.naddress}">&nbsp;<p class="order-address">&nbsp;기본 주소</p><br>
                        <input type="text" name="order-address-detail" id="order-address-detail" value="${principal.normalmemberinfo.ndeaddress}">&nbsp;<p class="order-address">&nbsp;나머지 주소</p>
                    </td>
                </tr>
                <tr>
                    <th>일반전화<p class="red">*</p>
                    </th>
                    <td>
                        <select>
                            <option>02</option>
                            <option>031</option>
                            <option>032</option>
                            <option>033</option>
                            <option>041</option>
                            <option>042</option>
                            <option>043</option>
                            <option>044</option>
                            <option>051</option>
                            <option>052</option>
                            <option>053</option>
                            <option>054</option>
                            <option>061</option>
                            <option>062</option>
                            <option>063</option>
                            <option>064</option>
                            <option>070</option>
                            <option>010</option>
                            <option>011</option>
                            <option>016</option>
                            <option>017</option>
                            <option>018</option>
                            <option>019</option>
                        </select>-<input type="tel">-<input type="tel">
                    </td>
                </tr>
                <tr>
                    <th>휴대전화</th>
                    <td>
                        <select>
                            <option>010</option>
                            <option>011</option>
                            <option>016</option>
                            <option>017</option>
                            <option>018</option>
                            <option>019</option>
                        </select>-<input type="tel">-<input type="tel">
                    </td>
                </tr>
                <tr>
                    <th>이메일<p class="red">*</p>
                    </th>
                    <td>
                        <input type="text">@<select>
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                        </select>
                    </td>
                </tr>
            </table>

            <table class="delivery-info">
                <caption>배송 정보</caption>
                <tr>
                    <th>배송지 선택</th>
                    <td>
                        <label><input type="radio" name="delivery-order">주문자 정보와 동일</label>&nbsp;&nbsp;
                        <label><input type="radio" name="delivery-order" checked>새로운 배송지</label>
                    </td>
                </tr>
               
                <tr>
                    <th>받으시는 분<p class="red">*</p>
                    </th>
                    <td><input type="text" name="order-name" id="order-name"></td>
                </tr>
                <tr>
                    <th>주소<p class="red">*</p>
                    </th>
                    <td><input type="text" name="order-name" id="order-name" class="post-num"><button>우편번호</button><br>
                        <input type="text" name="order-address" id="order-address">&nbsp;<p class="order-address">&nbsp;기본 주소</p><br>
                        <input type="text" name="order-address-detail" id="order-address-detail">&nbsp;<p class="order-address">&nbsp;나머지 주소</p>
                    </td>
                </tr>
                <tr>
                    <th>일반전화<p class="red">*</p>
                    </th>
                    <td>
                        <select>
                            <option>02</option>
                            <option>031</option>
                            <option>032</option>
                            <option>033</option>
                            <option>041</option>
                            <option>042</option>
                            <option>043</option>
                            <option>044</option>
                            <option>051</option>
                            <option>052</option>
                            <option>053</option>
                            <option>054</option>
                            <option>061</option>
                            <option>062</option>
                            <option>063</option>
                            <option>064</option>
                            <option>070</option>
                            <option>010</option>
                            <option>011</option>
                            <option>016</option>
                            <option>017</option>
                            <option>018</option>
                            <option>019</option>
                        </select>-<input type="tel">-<input type="tel">
                    </td>
                </tr>
                <tr>
                    <th>휴대전화</th>
                    <td>
                        <select>
                            <option>010</option>
                            <option>011</option>
                            <option>016</option>
                            <option>017</option>
                            <option>018</option>
                            <option>019</option>
                        </select>-<input type="tel">-<input type="tel">
                    </td>
                </tr>
                <tr>
                    <th>배송메시지</th>
                    <td><textarea cols="30" rows="3"></textarea></td>
                </tr>
            </table>
            <div>
                <p class="order-check-title">쇼핑몰 이용 약관</p>
                <textarea name="order-check" id="order-check" rows="5" readonly>제1조 (목적)
이 약관은 OO 회사(전자상거래 사업자)가 운영하는 OO 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의권리․의무 및 책임사항을 규정함을 목적으로 합니다.
※ PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.
제2조 (정의)
① “몰”이란 OO 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
③ “회원”이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.
④ “비회원”이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.
제3조 (약관 등의 명시와 설명 및 개정)
① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 OO 사이버몰의 초기서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
② “몰”은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」,
「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다.
이 경우 “몰”은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록표시합니다.
⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이적용됩니다.
⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 공정거래위원회가 정하는 전자상거래등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.
                </textarea>
                <label><input type="checkbox" name="" id="">이용 약관에 동의합니다.</label>
            </div><!-- 쇼핑몰 이용 약관 -->
            <table class="pay-totalprice">
                <caption>결제 예정 금액</caption>
                <tr>
                    <th>총 주문 금액</th>
                    <th>총 할인 + 부가 결제 금액</th>
                    <th style="border-right:0">총 결제 예정 금액</th>
                </tr>
                <tr>
                    <td>200,000원</td>
                    <td>- 0원</td>
                    <td style="color: crimson">= 200,000원</td>
                </tr>
            </table>
            <table>
                <table class="pay-info">
                    <caption>결제 수단</caption>
                    <tr>
                        <td>
                            <label><input type="radio" name="pay" checked>카드 결제</label>&nbsp;&nbsp;
                            <label><input type="radio" name="pay">에스크로(실시간 계좌이체)</label>&nbsp;&nbsp;
                            <label><input type="radio" name="pay">무통장 입금</label>&nbsp;&nbsp;
                            <label><input type="radio" name="pay">에스크로(가상계좌)</label>&nbsp;&nbsp;
                            <label><input type="radio" name="pay">카카오페이(간편결제)</label>
                        </td>
                        <td class="final-pay-price" rowspan="2" style="border-left: 1px solid lightgray;">최종 결제 금액 <p style="color:black; font-size: 20px; ">200,000원</p><button class="pay-btn" onclick="alert('결제가 완료되었습니다.'), location.href='/'">결제하기</button></td>
                    </tr>
                    <tr>
                        <td>
                            <p style="line-height: 20px;">최소 결제 가능 금액은 결제 금액에서 배송비를 제외한 금액입니다.<br>
                                소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.
                            </p>
                        </td>
                    </tr>
                </table>
        </div><!-- order-delivery-wrap -->
    </div>
