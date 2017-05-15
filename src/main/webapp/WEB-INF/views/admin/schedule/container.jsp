<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />

<div id="wrapper" class="kal-gg-sche-con">
<div class="kal-gg-sche-inner-con">
<div class="kal-gg-sche-con-title">
	<h2>SCHEDULE</h2>
</div>
<div>
	
	<div class="kal-gg-sche-con-subtitle">
	<h3 >CREATE SCHEDULE</h3> 
	</div>
	<table class="kal-gg-sche-con-table">
		
		<tr >
			<th>ROUTE NO</th>
			<th>DATE</th>
			<th>DEPARTURE TIME</th>
			<th>DESTINATION TIME</th>
		</tr>
		<tr>
			<td>
				<select name="" class="kal-gg-sch-con-select">
				<option value="1">1.ICN-HND</option>
				<option value="2">2.HND-ICN</option>
				<option value="3">3.JFK-ICN</option>
				<option value="4">4.ICN-JFK</option></select>
			</td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
	</tr>
	</table>
	<button class="kal-gg-sche-con-btn">CREATE</button>	
</div>
<div>
	<div>
		<div class="kal-gg-sche-con-subtitle">
			<h3>SEARCH SCHEDULE</h3> 
		</div>	
		<div class="kal-gg-sche-con-search">
			<div>
				ROUTE:<input type="text" value=""/><input type="button" value="search"/>
			</div>
			
			<div>
				DEPARTURE:<input type="text" value=""/><input type="button" value="search"/>
			</div>
			<div>
				DESTINATION:<input type="text" value="" /><input type="button" value="search"/><br />	
			</div>
			
		</div>
		<div class="kal-gg-sche-con-search-cal">
			DATE <%-- <img src="${context}/resources/img/admin/calendar.jpg" /> --%>
		</div>
	</div>
	<div class="kal-gg-sche-con-wrapper">
		<div class="kal-gg-sche-con-table-wrapper">
			<table class="kal-gg-sche-con-table2">
			
			<tr >
				<th>ROUTE NO</th>	
				<th>DEPARTURE</th>	
				<th>DESTINATION</th>	
				<th>DATE</th>
				<th>DEPARTURE TIME</th>
				<th>DESTINATION TIME</th>
				
			</tr>
			
			
			
			<tr>
			    <td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
			    <td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
			    <td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
			    <td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
			    <td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
			    <td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
			    <td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
			    <td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			
			
				
				
			 </table>
			 <div>
				 <div class="kal-gg-sche-con-btn-add">
					  <button class="kal-gg-sche-con-btn">delete</button>
					  <button class="kal-gg-sche-con-btn">update</button>
				 </div>
				  <div class="kal-gg-sche-con-btn-add">
					  <button class="kal-gg-sche-con-btn">delete</button>
					  <button class="kal-gg-sche-con-btn">update</button>
				 </div>
				 <div class="kal-gg-sche-con-btn-add">
					  <button class="kal-gg-sche-con-btn">delete</button>
					  <button class="kal-gg-sche-con-btn">update</button>
				 </div>
				 <div class="kal-gg-sche-con-btn-add">
					  <button class="kal-gg-sche-con-btn">delete</button>
					  <button class="kal-gg-sche-con-btn">update</button>
				 </div>
				  <div class="kal-gg-sche-con-btn-add">
					  <button class="kal-gg-sche-con-btn">delete</button>
					  <button class="kal-gg-sche-con-btn">update</button>
				 </div>
				  <div class="kal-gg-sche-con-btn-add">
					  <button class="kal-gg-sche-con-btn">delete</button>
					  <button class="kal-gg-sche-con-btn">update</button>
				 </div>
				  <div class="kal-gg-sche-con-btn-add">
					  <button class="kal-gg-sche-con-btn">delete</button>
					  <button class="kal-gg-sche-con-btn">update</button>
				 </div>
				  <div class="kal-gg-sche-con-btn-add">
					  <button class="kal-gg-sche-con-btn">delete</button>
					  <button class="kal-gg-sche-con-btn">update</button>
				 </div>
				
			 </div>
		 </div>
		
		 </div>
	</div>

	  <div class="kal-gg-sche-con-subtitle">
	  <h3 >UPDATE SCHEDULE</h3> 
	<table class="kal-gg-sche-con-table">
		<tr >
			<th>ROUTE NO</th>
			<th>DATE</th>
			<th>DEPARTURE TIME</th>
			<th>DESTINATION TIME</th>
		</tr>
		<tr >
			<td>1</td>
			<td>2017-05-02</td>
			<td>21:30</td>
			<td>00:50</td>
		</tr>	
		<tr>
			<td>
			<select name="" id="" class="kal-gg-sch-con-select">
				<option value="1">1.ICN-HND</option>
				<option value="2">2.HND-ICN</option>
				<option value="3">3.JFK-ICN</option>
				<option value="4">4.ICN-JFK</option>
			</select></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
		</tr>
	</table>
	<div>
		<button class="kal-gg-sche-con-btn">update</button>
		
	</div>
	<div class="kal-gg-sche-con-btm">
	</div>


</div>
</div>
</div>
</div>

	