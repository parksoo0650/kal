<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />

<div id="wrapper" class="kal-gg-route-con">
<div class="kal-gg-route-inner-con">
<div class="kal-gg-route-con-title">
	<h2>ROUTE</h2>
</div>
<div>
	
	<div class="kal-gg-route-con-subtitle">
	<h3 >CREATE ROUTE</h3> 
	</div>
	<table class="kal-gg-route-con-table">
		
		<tr >
			<th>FLIGHT NO</th>
			<th>DEPARTURE </th>
			<th>DESTINATION </th>
			
		</tr>
		<tr>
			<td><select name="" id="" class="kal-gg-route-con-select">
				<option value="1">1.boeing 777-200ER</option>
				<option value="2">2.boeing 777-200ER</option>
				<option value="3">3.boeing 777-200ER</option>
				<option value="4">4.boeing 777-200ER</option>
			</select></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
		
	</tr>
	</table>
	<button class="kal-gg-route-con-btn">CREATE</button>	
</div>
<div>
	<div>
		<div class="kal-gg-route-con-subtitle">
			<h3>SEARCH ROUTE</h3> 
		</div>	
		<div class="kal-gg-route-con-search">
			<div>
				FLIGHT NO:<input type="text" value=""/><input type="button" value="search"/>
			</div>
			
			<div>
				DEPARTURE:<input type="text" value=""/><input type="button" value="search"/>
			</div>
			<div>
				DESTINATION:<input type="text" value="" /><input type="button" value="search"/><br />	
			</div>
			
		</div>
		<div class="kal-gg-route-con-search-cal">
			DATE <%-- <img src="${context}/resources/img/admin/calendar.jpg" /> --%>
		</div>
	</div>
	
	<div>
		<table class="kal-gg-route-con-table2">
		
		<tr >
			<th>FLIGHT NO</th>	
			<th>DEPARTURE</th>
			<th>DESTINATION</th>	
		</tr>
		
		
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		 </table>
		 <div class="kal-gg-route-con-btn-add">
			  <button class="kal-gg-route-con-btn">delete</button>
			  <button class="kal-gg-route-con-btn">update</button>
		 </div>
		  <div class="kal-gg-route-con-btn-add">
			  <button class="kal-gg-route-con-btn">delete</button>
			  <button class="kal-gg-route-con-btn">update</button>
		 </div>
		 
	</div>
</div>
	  <div class="kal-gg-route-con-subtitle">
	  <h3 >UPDATE ROUTE</h3> 
	<table class="kal-gg-route-con-table">
		<tr >
			<th>FLIGHT NO</th>
			<th>DEPARTURE</th>
			<th>DESTINATION</th>
		</tr>
		<tr >
			<td>1</td>
			<td>KOREA</td>
			<td>japan</td>
		
		<tr>
			<td><select class="kal-gg-route-con-select">
				<option value="1">1.boeing 777-200ER</option>
				<option value="2">2.boeing 777-200ER</option>
				<option value="3">3.boeing 777-200ER</option>
				<option value="4">4.boeing 777-200ER</option>
			</select></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
		
		</tr>
	</table>
	<div>
		<button class="kal-gg-route-con-btn">update</button>
		
	</div>
	<div class="kal-gg-route-con-btm">
	</div>


</div>
</div>
</div>
</div>
	