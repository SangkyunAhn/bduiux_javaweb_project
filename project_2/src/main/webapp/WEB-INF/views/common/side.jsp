<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
	
<nav>
<ul>
<c:choose>
<c:when test="${side_menu=='admin_mode' }">
   <li>
		<H3>주요기능</H3>
		<ul>
			<li><a href="${contextPath}/admin/goods/adminGoodsMain.do">상품관리</a></li>
			<li><a href="${contextPath}/admin/order/adminOrderMain.do">주문관리</a></li>
			<li><a href="${contextPath}/admin/member/adminMemberMain.do">회원관리</a></li>
			<li><a href="#">배송관리</a></li>
			<li><a href="${contextPath}/board/listArticles.do">공지사항관리</a></li>
		</ul>
	</li>
</c:when>
<c:when test="${side_menu=='my_page' }">
	<li>
		<h3>주문내역</h3>
		<ul>
			<li><a href="${contextPath}/mypage/listMyOrderHistory.do">주문내역/배송 조회</a></li>
			<li><a href="#">반품/교환 신청 및 조회</a></li>
			<li><a href="#">취소 주문 내역</a></li>
			<li><a href="#">세금 계산서</a></li>
		</ul>
	</li>
	<li>
		<h3>정보내역</h3>
		<ul>
			<li><a href="${contextPath}/mypage/myDetailInfo.do">회원정보관리</a></li>
			<li><a href="#">나의 주소록</a></li>
			<li><a href="#">개인정보 동의내역</a></li>
			<li><a href="#">회원탈퇴</a></li>
		</ul>
	</li>
</c:when>
<c:otherwise>
	<li>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;볼링공/소프트볼</h3>
		<ul>
			<li><a href="#">[1]등급/헤비오일전용</a></li>
			<li><a href="#">[2]등급/미디엄헤비전용</a></li>
			<li><a href="#">[3]등급/미디엄전용</a></li>
			<li><a href="#">[4]등급/미디엄라이트전용</a></li>
			<li><a href="#">초보자/라이트전용 </a></li>
			<li><a href="#">하드볼/스페어처리용</a></li>
		</ul>
	</li>
	<li>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;볼링용품</h3>
		<ul>
			<li><a href="#">볼링아대</a></li>
			<li><a href="#">볼링가방</a></li>
			<li><a href="#">볼링화</a></li>
			<li><a href="#">테이프</a></li>
			<li><a href="#">볼 클리너/볼타월</a></li>
			<li><a href="#">퍼프볼/로진백</a></li>
		</ul>
	</li>
 </c:otherwise>
</c:choose>	
</ul>
</nav>
<div class="clear"></div>
<div id="banner">
	<a href="#"><img width="190" height="163" src="${contextPath}/resources/image/event.jpg"> </a>
</div>


<div id="banner">
	<a href="#"><img width="190" height="362" src="${contextPath}/resources/image/side_banner.jpg"></a>
</div>
<div id="banner">
	<a href="#"><img width="200" height="104" src="${contextPath}/resources/image/side_banner2.jpg"></a>
</div>
<div id="banner">
	<a href="#"><img width="200" height="69" src="${contextPath}/resources/image/QnA_logo.jpg"></a>
</div>
</html>