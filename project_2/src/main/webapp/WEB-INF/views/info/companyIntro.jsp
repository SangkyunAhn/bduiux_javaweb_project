<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
    request.setCharacterEncoding("UTF-8");
%>

<style>
    .support_info_top h2 {
        text-align: center;
        font-size: 20pt;
    }
    .support_info_top p {
        text-align: center;
    }
    .title {
        text-align: center;
        font-size: 18pt;
        font-weight: bold;
    }
    .content {
        text-align: center;
    }
    .content_red {
        text-align: center;
        color: red;
    }
</style>

<h3>회사소개</h3><br>
<div class="support_info_top">
    <h2 class="support_title">볼링의, 볼링에 의한, 볼링을 위한 이젠볼링</h2><br>
    <p class="support_text">이젠볼링은 볼링을 좋아하는 사람들을 위해 다양한 볼링 용품을 제공하는 공간입니다.<br></p>
    <p class="support_text">매장 방문 구매 시 온라인 대비 더 할인된 가격에 판매하여, 본인의 스타일에 맞는 최적의
    지공을 찾아드리고 레이아웃도 무료로 점검해드립니다.</p>
</div><br>
<div class="open_time">
    <h2 class="title">오프라인 매장 운영 시간</h2><br>
    <p class="content">평일: 오전 9시 ~ 오후 9시</p>
    <p class="content">토요일: 오전 9시 ~ 오후 7시</p>
    <p class="content_red">일요일: 오전 11시 ~ 오후 7시</p>
</div><br>
<div class="client_center">
    <h2 class="title">고객센터 전화번호</h2><br>
    <p class="content_red">010-7171-1212 (배송/결제 문의)</p>
    <p class="content">010-4920-4019 (볼링공/지공 문의)</p>
    <p class="content">010-2210-4221 (기타 문의)</p>
</div><br>
<div class="reservation">
    <h2 class="title">지공 예약 안내</h2><br>
    <p class="content_red">지공 요청 시 필히 사전 예약 해주세요</p>
    <p class="content">예약 전용 번호: 010-1212-2219</p><br>
    <p class="content"><strong style="font-size: 15pt;">- 지공샵 운영 시간 -</strong></p>
    <p class="content">평일: 오전 10시 ~ 오후 9시</p>
    <p class="content_red">토, 일요일: 오전 10시 ~ 오후 8시</p>
    <p class="content_red">수요일은 휴무입니다.</p>
</div><br>
<div class="location">
    <h2 class="title">찾아 오시는 길</h2><br>
    <p class="content"><strong style="font-size: 15pt;">- 쇼핑몰 -</strong></p>
    <p class="content">경기도 안산시 상록구 이동 715-3 / 이젠볼링</p>
    <p class="content"><strong style="font-size: 15pt;">- 지공샵 -</strong></p>
    <p class="content">경기도 안산시 상록구 이동 715-3 / 이젠볼링</p>
    <p class="content"><strong style="font-size: 15pt;">- 대중교통 이용 시 -</strong></p>
    <p class="content">한대앞역 2번 출구 -> 직진 후 횡단보도 건넌 후 이젠컴퓨터아카데이 안산캠퍼스에서
    우회전 -> 김밥천국에서 좌회전</p>
</div>