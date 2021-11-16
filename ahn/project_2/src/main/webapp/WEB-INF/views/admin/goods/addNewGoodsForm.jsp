<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />	
<!DOCTYPE html>

<meta charset="utf-8">
<head>
<script type="text/javascript">
  var cnt=0;
  function fn_addFile(){
	  if(cnt ==0){
		  $("#d_file").append("<br>"+"<input  type='file' name='main_image'  />");	  
	  }else{
		  $("#d_file").append("<br>"+"<input  type='file' name='detail_image"+cnt+"' />");
	  }
  	
  	cnt++;
  }
</script>    
</head>

<BODY>
<form action="${contextPath}/admin/goods/addNewGoods.do" method="post"  enctype="multipart/form-data">
		<h1>새상품 등록창</h1>
<div class="tab_container">
	<!-- 내용 들어 가는 곳 -->
	<div class="tab_container" id="container">
		<ul class="tabs">
			<li><a href="#tab1">상품정보</a></li>
			<li><a href="#tab2">회사소개</a></li>
			<li><a href="#tab3">상품이미지</a></li>
		</ul>
		<div class="tab_container">
			<div class="tab_content" id="tab1">
				<table >
			<tr >
				<td width=200 >상품분류</td>
				<td width=500><select name="goods_sort">
						<option value="볼링공/소프트볼" selected>볼링공/소프트볼
						<option value="볼링공/하드볼">볼링공/하드볼
					</select>
				</td>
			</tr>
			<tr >
				<td >상품이름</td>
				<td><input name="goods_title" type="text" size="40" /></td>
			</tr>
			
		
			<tr>
				<td >상품회사</td>
				<td><input name="goods_manufacturer" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >상품정가</td>
				<td><input name="goods_price" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >상품판매가격</td>
				<td><input name="goods_sales_price" type="text" size="40" /></td>
			</tr>
			
			
			<tr>
				<td >상품 구매 포인트</td>
				<td><input name="goods_point" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >상품제작일</td>
				<td><input  name="goods_manufactured_date"  type="date" size="40" /></td>
			</tr>
			
			
			
		
			<tr>
				<td >상품 배송비</td>
				<td><input name="goods_delivery_price" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >상품 도착 예정일</td>
				<td><input name="goods_delivery_date"  type="date" size="40" /></td>
			</tr>
			
			<tr>
				<td >상품분류</td>
				<td>
				<select name="goods_status">
				  <option value="bestseller"  >베스트상품</option>
				  <option value="steadyseller" >인기상품</option>
				  <option value="newgoods" selected >신상품</option>
				  <option value="on_sale" >판매중</option>
				  <option value="buy_out" >품절</option>
				</select>
				</td>
			</tr>
			<tr>
			 <td>
			   <br>
			 </td>
			</tr>
				</table>	
			</div>
			
			
		    <div class="tab_content" id="tab2">
            	<H4>회사소개</H4>
            	<table>
            		<tr>
            		    <td>회사소개</td>
            			<td><textarea  rows="100" cols="80" name="goods_manufacturer_intro"></textarea></td>
            		</tr>
            	</table>
            </div>
			
			<div class="tab_content" id="tab3">
				<h4>상품이미지</h4>
				<table >
					<tr>
						<td align="right">이미지파일 첨부</td>
			            
			            <td  align="left"> <input type="button"  value="파일 추가" onClick="fn_addFile()"/></td>
			            <td>
				            <div id="d_file">
				            </div>
			            </td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="clear"></div>
<center>	
	 <table>
	 <tr>
			  <td align=center>
				  <input  type="submit" value="상품 등록하기"> 
			  </td>
			</tr>
	 </table>
</center>	 
</div>
</form>	 