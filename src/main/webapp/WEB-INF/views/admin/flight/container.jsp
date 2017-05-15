<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />	

<div id="wrapper" class="kal-gg-flight-con">
<div class="kal-gg-flight-inner-con">
<div class="kal-gg-flight-con-title">
	<h2>FLIGHT</h2>
</div>
<div>
	
	<div class="kal-gg-flight-con-subtitle">
	<h3 >CREATE FLIGHT</h3> 
	</div>
	<table class="kal-gg-flight-con-table">
		<tr >
			<th>FLIGHT NAME</th>
			<th>FLIGHT TYPE</th>
			<th>SEAT COUNT</th>
		</tr>
		<tr>
			<td>KOREAN AIR</td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
	</tr>
	</table>
	<button class="kal-gg-flight-con-btn">CREATE</button>	
</div>
<div>
	<div>
		<div class="kal-gg-flight-con-subtitle">
			<h3>SEARCH FLIGHT</h3> 
		</div>	
		<div class="kal-gg-flight-con-search">
			
			
			<div>
				FLIGHT TYPE:<input type="text" value=""/><input type="button" value="search"/>
			</div>
			<div>
				SEAT COUNT:<input type="text" value="" /><input type="button" value="search"/><br />	
			</div>
			
		</div>
		<div class="kal-gg-flight-con-search-cal">
			DATE <%-- <img src="${context}/resources/img/admin/calendar.jpg" /> --%>
		</div>
	</div>
	<div>
		<div>
			<table class="kal-gg-flight-con-table2">
			
			<tr >
				<th>FLIGHT NAME</th>
				<th>FLIGHT TYPE</th>
				<th>SEAT COUNT</th>	
			</tr>
			<tr>
				<td> KOREAN AIR</td>
				<td>1</td>
				<td>2</td>
			</tr>
			<tr>
				<td> KOREAN AIR</td>
				<td>1</td>
				<td>2</td>
			</tr>
			<tr>
				<td> KOREAN AIR</td>
				<td>1</td>
				<td>2</td>
			</tr>
			<tr>
				<td> KOREAN AIR</td>
				<td>1</td>
				<td>2</td>
			</tr>
			 </table>
			 <div>
			 		<div class="kal-gg-flight-con-btn-add">
					  <button class="kal-gg-flight-con-btn">delete</button>
					  <button class="kal-gg-flight-con-btn">update</button>
				 	</div>
				 	<div class="kal-gg-flight-con-btn-add">
					  <button class="kal-gg-flight-con-btn">delete</button>
					  <button class="kal-gg-flight-con-btn">update</button>
				 	</div>
				 	<div class="kal-gg-flight-con-btn-add">
					  <button class="kal-gg-flight-con-btn">delete</button>
					  <button class="kal-gg-flight-con-btn">update</button>
				 	</div>
				 	<div class="kal-gg-flight-con-btn-add">
					  <button class="kal-gg-flight-con-btn">delete</button>
					  <button class="kal-gg-flight-con-btn">update</button>
				 	</div>
			 </div>
		</div>
</div>
	  <div class="kal-gg-flight-con-subtitle">
	  <h3 >UPDATE FLIGHT</h3> 
	<table class="kal-gg-flight-con-table">
		<tr >
			<th>FLIGHT NAME</th>
			<th>FLIGHT TYPE</th>
			<th>SEAT COUNT</th>	
		</tr>
		<tr >
			<td>KOREAN AIR</td>
			<td>boeing 777-200ER</td>
			<td>76</td>
	
		</tr>	
		<tr>
			<td>KOREAN AIR</td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			
		</tr>
	</table>
	<div>
		<button id="update" class="kal-gg-flight-con-btn">update</button>
		
	</div>
	<div class="kal-gg-flight-con-btm">
	</div>
<script>
$('#update').on('click',function(){
	window.open('${context}/web-inf/views/admin/flight/confirm.jsp','_black');
});
</script>

</div>
</div>
</div>
</div>
	