<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
	
		var data = google.visualization.arrayToDataTable([
			['Task', 'Hours per Day'],
			         
			['10 대', 2],
			['20 대', 3],
			['30 대', 6],
			['40 대', 4],
			['50 대', 4],
			['60 대이상', 5],
			]);
		var options = {
			title: '연령별 분포도'
			};
		var chart = new google.visualization.PieChart(document.getElementById('piechart'));
			chart.draw(data, options);
			
			
		var data = google.visualization.arrayToDataTable([
			['Task', 'Hours per Day'],
			['MALE', 13],
			['FEMALE', 11]
			]);
		var options = {
			title: '성별 분포도'
			};
		var chart = new google.visualization.PieChart(document.getElementById('sexchart'));
			chart.draw(data, options);
	}
</script>
<div class="kal-gg-stat-con">
<div id="piechart" class="kal-gg-stat-chart"></div>
<div id="sexchart" class="kal-gg-stat-chart"></div>
</div>
</div>
	   