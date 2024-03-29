<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>

<script>
    alert('이 사이트는 2021년 11월 29일 수료한 이젠아카데미 안산캠퍼스 빅데이터반 2조(안상균, 김현섭, 윤동혁)의 작품으로, 실제로 사용되는 사이트가 아님을 알려드립니다.');
</script>

<div id="ad_main_banner">
	<ul class="bjqs">
	  <li><img width="775" height="145" src="${contextPath}/resources/image/main_banner1.PNG"></li>
		<li><img width="775" height="145" src="${contextPath}/resources/image/main_banner2.PNG"></li>
		<li><img width="775" height="145" src="${contextPath}/resources/image/main_banner3.PNG"></li>
	</ul>
</div>
<div class="main_book">
    <h3>공지사항
        <c:forEach var="i" begin="0" end="168">&nbsp;</c:forEach>
        <a style="font-size: 11px" href="${contextPath}/board/listArticles.do">더보기</a>
    </h3>
    <table width="945">
    	<c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
    	<tr>
    	    <c:if test="${articleNum.index < 5}">
    	        <td style="font-size: 12px" width="15">${articleNum.count}.</td>
    		    <td style="font-size: 12px;"><a href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a></td>
    		    <td style="font-size: 12px;">${article.writeDate}</td>
    		</c:if>
        </tr>
    	</c:forEach>
    </table>
   <c:set  var="goods_count" value="0" />
	<h3>이젠볼링 추천상품</h3>
	<c:forEach var="item" items="${goodsMap.bestseller }">
	   <c:set  var="goods_count" value="${goods_count+1 }" />
		<div class="book">
			<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
			<img class="link"  src="${contextPath}/resources/image/1px.gif"> 
			</a>
				<img width="121" height="154" 
				     src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">

			<div class="title">${item.goods_title }</div>
			<div class="price">
		  	   <fmt:formatNumber  value="${item.goods_price}" type="number" var="goods_price" />
		          ${goods_price}원
			</div>
		</div>
	   <c:if test="${goods_count==15   }">
         <div class="book">
           <font size=20> <a href="#">more</a></font>
         </div>
     </c:if>
  </c:forEach>
</div>
<div class="clear"></div>
<div id="ad_sub_banner">
	<img width="770" height="117" src="${contextPath}/resources/image/sub_banner1.jpg">
</div>
<div class="main_book" >
<c:set  var="goods_count" value="0" />
	<h3>NEW 상품</h3>
	<c:forEach var="item" items="${goodsMap.newgoods }" >
	   <c:set  var="goods_count" value="${goods_count+1 }" />
		<div class="book">
		  <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
	       <img class="link"  src="${contextPath}/resources/image/1px.gif"> 
	      </a>
		 <img width="121" height="154" 
				src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
		<div class="title">${item.goods_title }</div>
		<div class="price">
		    <fmt:formatNumber  value="${item.goods_price}" type="number" var="goods_price" />
		       ${goods_price}원
		  </div>
	</div>
	 <c:if test="${goods_count==15   }">
     <div class="book">
       <font size=20> <a href="#">more</a></font>
     </div>
   </c:if>
	</c:forEach>
</div>

<div class="clear"></div>
<div id="ad_sub_banner">
	<img width="770" height="117" src="${contextPath}/resources/image/sub_banner02.PNG">
</div>


<div class="main_book" >
<c:set  var="goods_count" value="0" />
	<h3>BEST 상품</h3>
	<c:forEach var="item" items="${goodsMap.steadyseller }" >
	   <c:set  var="goods_count" value="${goods_count+1 }" />
		<div class="book">
		  <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
	       <img class="link"  src="${contextPath}/resources/image/1px.gif"> 
	      </a>
		 <img width="121" height="154" 
				src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
		<div class="title">${item.goods_title }</div>
		<div class="price">
		    <fmt:formatNumber  value="${item.goods_price}" type="number" var="goods_price" />
		       ${goods_price}원
		  </div>
	</div>
	 <c:if test="${goods_count==15   }">
     <div class="book">
       <font size=20> <a href="#">more</a></font>
     </div>
   </c:if>
	</c:forEach>
</div>

   
   