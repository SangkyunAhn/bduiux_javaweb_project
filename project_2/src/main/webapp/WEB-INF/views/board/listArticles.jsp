<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html>
<head>
 <style>
   .cls1 {text-decoration:none;}
   .cls2{text-align:center; font-size:30px;}
  </style>
  <meta charset="UTF-8">
  <title>글목록창</title>
</head>
<script>
	function fn_articleForm(isLogOn,articleForm,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href=articleForm;
	  }else{
	    alert("로그인 후 글쓰기가 가능합니다.")
	    location.href=loginForm+'?action=/board/articleForm.do';
	  }
	}
</script>
<body>
<h3>공지사항</h3>
<table class="list_view" align="center" width="100%"  >
  <tr height="10" align="center"  bgcolor="#00ffff">
     <td >글번호</td>
     <td >제목</td>
     <td >작성일</td>
  </tr>
<c:choose>
  <c:when test="${articlesList ==null }" >
    <tr  height="10">
      <td colspan="4">
         <p align="center">
            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        </p>
      </td>  
    </tr>
  </c:when>
  <c:when test="${articlesList !=null }" >
    <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
     <tr align="center">
	<td width="5%"><strong>${articleNum.count + 10 * (pageNum - 1) + 100 * (section - 1)}</strong></td>
	<td align='left'  width="35%">
	  <span style="padding-right:30px"></span>
	      <strong><a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a></strong>
	  </td>
	  <td  width="10%"><strong>${article.writeDate}</strong></td>
	</tr>
    </c:forEach>
     </c:when>
    </c:choose>
    <tr>
        <td colspan=8 class="fixed" align="center">
                         <c:forEach   var="page" begin="1" end="10" step="1" >
                         <c:if test="${section >1 && page==1 }">
                          <a href="${contextPath}/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; &nbsp;</a>
                         </c:if>
                          <a href="${contextPath}/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
                         <c:if test="${page ==10 }">
                          <a href="${contextPath}/board/listArticles.do?section=${section+1}&pageNum=1">&nbsp; next</a>
                         </c:if>
                        </c:forEach>
        </td>
    </tr>
</table>
<c:if test="${isLogOn==true and memberInfo.member_id =='admin'}">
    <input type="button" value="글쓰기" onClick="fn_articleForm('${isLogOn}','${contextPath}/board/articleForm.do',
                                                                                                       '${contextPath}/member/loginForm.do')">
</c:if>
</body>
</html>