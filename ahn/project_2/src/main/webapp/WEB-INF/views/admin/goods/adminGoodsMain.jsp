<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="beginDate" value="${beginYear}-${beginMonth}-${beginDay}" />
<c:set var="endDate" value="${endYear}-${endMonth}-${endDay}" />
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<script>
function search_goods_list(fixedSearchPeriod){
    temp=calcPeriod(fixedSearchPeriod);
    var date=temp.split(",");
    beginDate=date[0];
    endDate=date[1];

	var formObj=document.createElement("form");
	var i_beginDate = document.createElement("input");
    var i_endDate = document.createElement("input");
	var i_fixedSearch_period = document.createElement("input");

	i_beginDate.name="beginDate";
    i_beginDate.value=beginDate;
    i_endDate.name="endDate";
    i_endDate.value=endDate;
	i_fixedSearch_period.name="fixedSearchPeriod";
	i_fixedSearch_period.value=fixedSearchPeriod;
    formObj.appendChild(i_beginDate);
    formObj.appendChild(i_endDate);
    formObj.appendChild(i_fixedSearch_period);
    document.body.appendChild(formObj); 
    formObj.method="get";
    formObj.action="${contextPath}/admin/goods/adminGoodsMain.do";
    formObj.submit();
}


function  calcPeriod(search_period){
    // 선택한 날짜를 받기 위해 다음 4줄을 추가한다.
    var frm_goods_list = document.frm_goods_list;
    var curYear = frm_goods_list.curYear.value;
    var curMonth = frm_goods_list.curMonth.value;
    var curDay = frm_goods_list.curDay.value;

	var dt = new Date();
	var beginYear,endYear;
	var beginMonth,endMonth;
	var beginDay,endDay;
	var beginDate,endDate;

	endYear = parseInt(curYear);
    endMonth = parseInt(curMonth);
    endDay = parseInt(curDay);

	if(search_period=='today'){
		beginYear=endYear;
		beginMonth=endMonth;
		beginDay=endDay;
	}else if(search_period=='one_week'){
		beginYear = parseInt(curYear);
		if(endDay-7<1){
			beginMonth=parseInt(curMonth) - 1;
		}else{
			beginMonth=parseInt(curMonth);
		}

		dt.setDate(endDay-7);
		beginDay=dt.getDate();

	}else if(search_period=='two_week'){
		beginYear = parseInt(curYear);
		if(endDay-14<1){
			beginMonth=parseInt(curMonth) - 1;
		}else{
			beginMonth=parseInt(curMonth);
		}
		dt.setDate(endDay-14);
		beginDay=dt.getDate();
	}else if(search_period=='one_month'){
		beginYear = parseInt(curYear);
		dt.setMonth(endMonth-1);
		beginMonth = dt.getMonth();
		beginDay = parseInt(curDay);
	}else if(search_period=='two_month'){
		beginYear = parseInt(curYear);
		dt.setMonth(endMonth-2);
		beginMonth = dt.getMonth();
		beginDay = parseInt(curDay);
	}else if(search_period=='three_month'){
		beginYear = parseInt(curYear);
		dt.setMonth(endMonth-3);
		beginMonth = dt.getMonth();
		beginDay = parseInt(curDay);
	}else if(search_period=='four_month'){
		beginYear = parseInt(curYear);
		dt.setMonth(endMonth-4);
		beginMonth = dt.getMonth();
		beginDay = parseInt(curDay);
	}

	if(beginMonth <10){
		beginMonth='0' + beginMonth;
	}
	if(beginDay<10){
    	beginDay='0' + beginDay;
    }
	if(endMonth <10){
		endMonth='0'+endMonth;
	}
	if(endDay<10){
    	endDay='0'+endDay;
    }
	endDate=endYear+'-'+endMonth +'-'+endDay;
	beginDate=beginYear+'-'+beginMonth +'-'+beginDay;
	//alert(beginDate+","+endDate);
	return beginDate+","+endDate;
}

function fn_enable_detail_search(r_search){
	var frm_goods_list=document.frm_goods_list;
	t_beginYear=frm_goods_list.beginYear;
	t_beginMonth=frm_goods_list.beginMonth;
	t_beginDay=frm_goods_list.beginDay;
	t_endYear=frm_goods_list.endYear;
	t_endMonth=frm_goods_list.endMonth;
	t_endDay=frm_goods_list.endDay;
	s_search_type=frm_goods_list.s_search_type;
	t_search_word=frm_goods_list.t_search_word;
	btn_search=frm_goods_list.btn_search;

	if(r_search.value=='detail_search'){
		//alert(r_search.value);
		t_beginYear.disabled=false;
		t_beginMonth.disabled=false;
		t_beginDay.disabled=false;
		t_endYear.disabled=false;
		t_endMonth.disabled=false;
		t_endDay.disabled=false;

		s_search_type.disabled=false;
		t_search_word.disabled=false;
		btn_search.disabled=false;
	}else{
		t_beginYear.disabled=true;
		t_beginMonth.disabled=true;
		t_beginDay.disabled=true;
		t_endYear.disabled=true;
		t_endMonth.disabled=true;
		t_endDay.disabled=true;

		s_search_type.disabled=true;
		t_search_word.disabled=true;
		btn_search.disabled=true;
	}

}

//상세조회 버튼 클릭 시 수행
function fn_detail_search(){
	var frm_goods_list=document.frm_goods_list;

	beginYear=frm_goods_list.beginYear.value;
	beginMonth=frm_goods_list.beginMonth.value;
	beginDay=frm_goods_list.beginDay.value;
	endYear=frm_goods_list.endYear.value;
	endMonth=frm_goods_list.endMonth.value;
	endDay=frm_goods_list.endDay.value;
	search_type=frm_goods_list.s_search_type.value;
	search_word=frm_goods_list.t_search_word.value;

	var formObj=document.createElement("form");
	var i_command = document.createElement("input");
	var i_beginDate = document.createElement("input");
	var i_endDate = document.createElement("input");
	var i_search_type = document.createElement("input");
	var i_search_word = document.createElement("input");


    i_command.name="command";
    i_beginDate.name="beginDate";
    i_endDate.name="endDate";
    i_search_type.name="search_type";
    i_search_word.name="search_word";

    i_command.value="list_detail_order_goods";
	i_beginDate.value=beginYear+"-"+beginMonth+"-"+beginDay;
    i_endDate.value=endYear+"-"+endMonth+"-"+endDay;
    i_search_type.value=search_type;
    i_search_word.value=search_word;

    formObj.appendChild(i_command);
    formObj.appendChild(i_beginDate);
    formObj.appendChild(i_endDate);
    formObj.appendChild(i_search_type);
    formObj.appendChild(i_search_word);
    document.body.appendChild(formObj);
    formObj.method="get";
    formObj.action="${contextPath}/admin/goods/adminGoodsMain.do";
    formObj.submit();

}
</script>
</head>
<body>
	<H3>상품 조회</H3>
	<form name="frm_goods_list" method="post">
		<TABLE cellpadding="10" cellspacing="10"  >
			<TBODY>
				<TR >
					<TD>
						<input type="radio" name="r_search" value="simple_search" checked onClick="fn_enable_detail_search(this)" /> 등록일로조회 &nbsp;&nbsp;&nbsp;
						<input type="radio" name="r_search" value="detail_search" onClick="fn_enable_detail_search(this)" />상세조회 &nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
				<TR >
					<TD>
					  <select name="curYear">
					    <c:forEach   var="i" begin="0" end="5">
					      <c:choose>
					        <c:when test="${endYear==endYear-i}">
					          <option value="${endYear}" selected>${endYear}</option>
					        </c:when>
					        <c:otherwise>
					          <option value="${endYear-i }">${endYear-i }</option>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>
					</select>년 <select name="curMonth" >
						 <c:forEach   var="i" begin="1" end="12">
					      <c:choose>
					        <c:when test="${endMonth==i }">
					          <option value="${i }"  selected>${i }</option>
					        </c:when>
					        <c:otherwise>
					          <option value="${i }">${i }</option>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>					
					</select>월
					
					 <select name="curDay">
					  <c:forEach   var="i" begin="1" end="31">
					      <c:choose>
					        <c:when test="${endDay==i}">
					          <option value="${i }"  selected>${i }</option>
					        </c:when>
					        <c:otherwise>
					          <option value="${i }">${i }</option>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>	
					</select>일  &nbsp;이전&nbsp;&nbsp;&nbsp;&nbsp; 
					<a href="javascript:search_goods_list('today')">
					   <img   src="${contextPath}/resources/image/btn_search_one_day.jpg">
					</a>
					<a href="javascript:search_goods_list('one_week')">
					   <img   src="${contextPath}/resources/image/btn_search_1_week.jpg">
					</a>
					<a href="javascript:search_goods_list('two_week')">
					   <img   src="${contextPath}/resources/image/btn_search_2_week.jpg">
					</a>
					<a href="javascript:search_goods_list('one_month')">
					   <img   src="${contextPath}/resources/image/btn_search_1_month.jpg">
					</a>
					<a href="javascript:search_goods_list('two_month')">
					   <img   src="${contextPath}/resources/image/btn_search_2_month.jpg">
					</a>
					<a href="javascript:search_goods_list('three_month')">
					   <img   src="${contextPath}/resources/image/btn_search_3_month.jpg">
					</a>
					<a href="javascript:search_goods_list('four_month')">
					   <img   src="${contextPath}/resources/image/btn_search_4_month.jpg">
					</a>
					&nbsp;까지 조회
					</TD>
				</TR>
				<tr>
				  <td>
					조회 기간:
					<select name="beginYear" disabled>
					 <c:forEach   var="i" begin="0" end="5">
					      <c:choose>
					        <c:when test="${beginYear==beginYear-i }">
					          <option value="${beginYear-i }" selected>${beginYear-i  }</option>
					        </c:when>
					        <c:otherwise>
					          <option value="${beginYear-i }">${beginYear-i }</option>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>
					</select>년
					<select name="beginMonth" disabled >
						 <c:forEach   var="i" begin="1" end="12">
					      <c:choose>
					        <c:when test="${beginMonth==i }">
                              <c:choose>
					            <c:when test="${i <10 }">
					              <option value="0${i }" selected>0${i }</option>
					            </c:when>
					            <c:otherwise>
					            <option value="${i }" selected>${i }</option>
					            </c:otherwise>
					          </c:choose>
					        </c:when>
					        <c:otherwise>
					          <c:choose>
					            <c:when test="${i <10 }">
					              <option value="0${i }">0${i }</option>
					            </c:when>
					            <c:otherwise>
					            <option value="${i }">${i }</option>
					            </c:otherwise>
					          </c:choose>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>
					</select>월
					 <select name="beginDay" disabled >
					  <c:forEach   var="i" begin="1" end="31">
					      <c:choose>
					        <c:when test="${beginDay==i }">
                              <c:choose>
					            <c:when test="${i <10 }">
					              <option value="0${i }" selected>0${i }</option>
					            </c:when>
					            <c:otherwise>
					            <option value="${i }" selected>${i }</option>
					            </c:otherwise>
					          </c:choose>
					        </c:when>
					        <c:otherwise>
					          <c:choose>
					            <c:when test="${i <10 }">
					              <option value="0${i }">0${i }</option>
					            </c:when>
					            <c:otherwise>
					            <option value="${i }">${i }</option>
					            </c:otherwise>
					          </c:choose>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>
					</select>일  &nbsp; ~

					<select name="endYear" disabled >
					 <c:forEach   var="i" begin="0" end="5">
					      <c:choose>
					        <c:when test="${endYear==endYear-i }">
					          <option value="${endYear-i }" selected>${endYear-i  }</option>
					        </c:when>
					        <c:otherwise>
					          <option value="${endYear-i }">${endYear-i }</option>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>
					</select>년
					<select name="endMonth" disabled >
						 <c:forEach   var="i" begin="1" end="12">
					      <c:choose>
					        <c:when test="${endMonth==i }">
                              <c:choose>
					            <c:when test="${i <10 }">
					              <option value="0${i }" selected>0${i }</option>
					            </c:when>
					            <c:otherwise>
					            <option value="${i }" selected>${i }</option>
					            </c:otherwise>
					          </c:choose>
					        </c:when>
					        <c:otherwise>
					          <c:choose>
					            <c:when test="${i <10 }">
					              <option value="0${i }">0${i }</option>
					            </c:when>
					            <c:otherwise>
					            <option value="${i }">${i }</option>
					            </c:otherwise>
					          </c:choose>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>
					</select>월
					 <select name="endDay" disabled >
					  <c:forEach   var="i" begin="1" end="31">
					      <c:choose>
					        <c:when test="${endDay==i }">
                              <c:choose>
					            <c:when test="${i <10 }">
					              <option value="0${i }" selected>0${i }</option>
					            </c:when>
					            <c:otherwise>
					            <option value="${i }" selected>${i }</option>
					            </c:otherwise>
					          </c:choose>
					        </c:when>
					        <c:otherwise>
					          <c:choose>
					            <c:when test="${i<10}">
					              <option value="0${i}">0${i }</option>
					            </c:when>
					            <c:otherwise>
					            <option value="${i}">${i }</option>
					            </c:otherwise>
					          </c:choose>
					        </c:otherwise>
					      </c:choose>
					    </c:forEach>
					</select>
				  </td>
				</tr>
				<tr>
				  <td>
				    <select name="s_search_type" disabled >
						<option value="all" checked>전체</option>
						<option value="goods_id">상품번호</option>
						<option value="goods_title">상품이름</option>
						<option value="goods_manufacturer">제조사</option>
					</select>
					<input  type="text"  size="30" name="t_search_word" disabled/>
					<input   type="button"  value="조회" name="btn_search" onClick="fn_detail_search()" disabled/>
				  </td>
				</tr>
			</TBODY>
		</TABLE>
		<DIV class="clear">
	</DIV>
</form>	
<DIV class="clear"></DIV>
<TABLE class="list_view">
		<TBODY align=center >
			<tr style="background:#33ff00" >
				<td>상품번호</td>
				<td>상품이름</td>
				<td>상품회사</td>
				<td>상품가격</td>
				<td>입고일자</td>
				
			</tr>
   <c:choose>
     <c:when test="${empty newGoodsList }">			
			<TR>
		       <TD colspan=8 class="fixed">
				  <strong>조회된 상품이 없습니다.</strong>
			   </TD>
		     </TR>
	 </c:when>
	 <c:otherwise>
     <c:forEach var="item" items="${newGoodsList }">
			 <TR>       
				<TD>
				  <strong>${item.goods_id }</strong>
				</TD>
				<TD >
				 <a href="${pageContext.request.contextPath}/admin/goods/modifyGoodsForm.do?goods_id=${item.goods_id}">
				    <strong>${item.goods_title } </strong>
				 </a> 
				</TD>
				
				<TD >
				   <strong>${item.goods_manufacturer }</strong>
				</TD>
				<td>
				  <strong>${item.goods_sales_price }</strong>
				</td>
				<td>
				 <strong>${item.goods_credate }</strong> 
				</td>
				<td>
				    <c:set var="man_date" value="${item.goods_manufactured_date}" />
					   <c:set var="arr" value="${fn:split(man_date,' ')}" />
					
				</td>
				
			</TR>
	</c:forEach>
	</c:otherwise>
  </c:choose>
           <tr>
             <td colspan=8 class="fixed">
                 <c:forEach   var="page" begin="1" end="10" step="1" >
		         <c:if test="${section >1 && page==1 }">
		          <a href="${contextPath}/admin/goods/adminGoodsMain.do?command=${command}&beginDate=${beginDate}&endDate=${endDate}&search_type=${search_type}&search_word=${search_word}&section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; &nbsp;</a>
		         </c:if>
		          <a href="${contextPath}/admin/goods/adminGoodsMain.do?command=${command}&beginDate=${beginDate}&endDate=${endDate}&search_type=${search_type}&search_word=${search_word}&section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
		         <c:if test="${page ==10 }">
		          <a href="${contextPath}/admin/goods/adminGoodsMain.do?command=${command}&beginDate=${beginDate}&endDate=${endDate}&search_type=${search_type}&search_word=${search_word}&section=${section+1}&pageNum=${section*10+1}">&nbsp; next</a>
		         </c:if> 
	      		</c:forEach> 
     
		</TBODY>
		
	</TABLE>
	<DIV class="clear"></DIV>
	<br><br><br>
<H3>상품등록하기</H3>
<DIV id="search">
	<form action="${contextPath}/admin/goods/addNewGoodsForm.do">
		<input   type="submit" value="상품 등록하기">
	</form>
</DIV>
</body>
</html>