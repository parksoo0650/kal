var admin=admin || {};
/*
 =======admin component======
 */
admin.access=(function(){
	var login=function(){
		$('#admin').on('click',function(){
			alert('777');
			$.magnificPopup.open({
				closeBtnInside:true,
				closeOnContentClick:false,
				alignTop: true,
				fixedBgPos:true,
				fixedContentPos:false,
				items:{src:
					'<form class="white-popup">'
					+	'<div class="form-group">'
					+       '<label for="text">Access Code:</label>'
			    	+		'<input type="text" class="form-control" id="code">'
		    		+	'</div>'
				    +   '<div class="form-group">'
					+		'<label for="pwd">Password:</label>'
					+		'<input type="password" class="form-control" id="pass">'
				    +   '</div>'
				    +	'<button type="submit" class="btn btn-default">Submit</button>'
					+'</form>'
				},
				midClick:true,
				overflowY:'auto',
				removalDelay:'0',
				type:'inline'}); 
			$('.btn').on('click',function(){
				alert($('#code').val());
			});
			return false;
		});
	};
	return{login:login}
})();

admin.context=(function(){
	return {init : function(context){
				alert("init");
				$.getScript(context+'/resources/js/domain.session.js',function(){
						$.extend(new Session(context));
						admin.navBtn.createBtn();
						admin.container.flightContainer();
				})
			}};
})();

/*=====admin button======*/

admin.navBtn=(function(){
	
	var createBtn=function(){
	$("#kal-gg-nav-stat").on('click',function() {
        if($(".kal-gg-nav-drop").is(":visible")){
        $(".kal-gg-nav-drop").slideUp("fast");
        } else {
            $(".kal-gg-nav-drop").slideUp("fast");
            $(".kal-gg-nav-drop").slideToggle("fast");
        }
    });
	$('#kal-gg-nav-drop-con').on('click',function(){
			alert('stat 입장');
			location.href="${context}/adminStatCon";
			}); 
	$('#kal-gg-nav-user').on('click',function(){
		alert('user 입장');
		location.href="${context}/adminUser";
		});
	$('#kal-gg-nav-res').on('click',function(){
		alert('res 입장');
		location.href="${context}/adminRes";
		});
	$('#kal-gg-nav-sche').on('click',function(){
		alert('sche 입장햇숩니당');
		admin.container.scheContainer();
		});
	$('#kal-gg-nav-board').on('click',function(){
		alert('board 입장');
		location.href="${context}/adminBoard";
		});
	$('#kal-gg-nav-flight').on('click',function(){
		alert('flight 입쨩쨩쨩!');
		admin.container.flightContainer();
		});
	$('#kal-gg-nav-route').on('click',function(){
		alert('루뚜컨테이너 입장');
		admin.container.routeContainer();
		});
	};
	return {createBtn:createBtn};
})();



admin.container=(function(){
	
	
	/*==schdule container== */
	
	
	var scheContainer=function(){
		var wrapper=$('#admin-wrapper');
		alert("스케쥴컨테이너들어옴");
		wrapper.empty();
		wrapper.append(admin.ui.scheCon);
		
		$('#kal-gg-sche-createBtn').on('click',function(){
			alert("스케줄 생성");
			var _route=$('#kal-gg-sch-createSelect option:selected').val();
			var _date=$('#kal-gg-sch-date').val();
			var _deparTime=$('#kal-gg-sch-departureTime').val();
			var _desTime=$('#kal-gg-sch-destinationTime').val();
			
			var json={
					routeSeq:_route,scheDate:_date,scheDepartureTime:_deparTime,scheArrivalTime:_desTime};
			
			$.ajax({
				url:$.context()+'/post/Schedule',
				method:'post',
				data:JSON.stringify(json),
				dataType:'json',
				contentType:'application/json',
				success:function(data){
					alert('스케줄이 등록되었습니다.')
				},
				error:function(xhr,status,msg){alert('스캐줄 등록을 실패 했습니다.'+msg);}
			});
		});
		
		$('#kal-gg-serchBtn').on('click',function(){
			var _date=$('#gg-searchDate').val();
			var _departure=$('#gg-departure').val();
			var _destination=$('#gg-destination').val();
			
			var json={
					date:_date,
					departure:_departure,
					destination:_destination
					};
			
			$.ajax({
				url:$.context()+'/get/Schedule',
				method:'post',
				data:JSON.stringify(json),
				dataType:'json',
				contentType:'application/json',
				success:function(data){alert('스케줄확인 성공')},
				error:function(xhr,status,msg){alert('스케줄확인실패'+msg)}
			});
	});
		
		
		$('#scheUpdateBtn').on('click',function(){
		$('#updateWrapper').append(admin.ui.scheConUpdate);
		});
	};
	
	/*==route container== */
	var routeContainer=function(){
		$('#admin-wrapper').empty();
		$('#admin-wrapper').append(admin.ui.routeCon);
		$('#routeUpdateBtn').on('click',function(){
			$('#routeWrapper').append(admin.ui.routeConUpdate);
		})
		
	};
	/*==main container== */
	var mainContainer=function(){
		$('#admin-wrapper').empty();
		
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
			
		$('#admin-wrapper').append(admin.ui.homeCon);
	};
	/*==flight container== */
	var flightContainer=function(){
		$('#admin-wrapper').empty();
		$('#admin-wrapper').append(admin.ui.flightCon);
	};
	return {scheContainer:scheContainer,routeContainer:routeContainer,mainContainer:mainContainer,flightContainer:flightContainer};
})();


admin.ui={
				scheCon:function(){
					return '<div id="kal-gg-sche-con-wrapper" class="kal-gg-sche-con">'
			+		'<div class="kal-gg-sche-inner-con">'
			+		'<div class="kal-gg-sche-con-title">'
			+		'<h2>SCHEDULE</h2>'
			+		'</div>'
			+		'<div>'
			+			'<div class="kal-gg-sche-con-subtitle">'
			+			'<h3 >CREATE SCHEDULE</h3> '
			+			'</div>'
			+			'<table class="kal-gg-sche-con-table">'
			+				'<tr >'
			+					'<th>ROUTE NO</th>'
			+					'<th>DATE</th>'
			+					'<th>DEPARTURE TIME</th>'
			+					'<th>DESTINATION TIME</th>'
			+				'</tr>'
			+				'<tr>'
			+					'<td>'
			+						'<select class="kal-gg-sch-con-select" id="kal-gg-sch-createSelect">' 
			+						'<option value="1">1.ICN-HND</option>'
			+						'<option value="3">3.JFK-ICN</option>'
			+						'<option value="4">4.ICN-JFK</option></select>'
			+					'</td>'
			+					'<td><input type="text" id="kal-gg-sch-date"/></td>'
			+					'<td><input type="text" id="kal-gg-sch-departureTime"/></td>'
			+					'<td><input type="text" id="kal-gg-sch-destinationTime"/></td>'
			+				'</tr>'
			+			'</table>'
			+				'<button class="kal-gg-sche-con-btn" id="kal-gg-sche-createBtn">CREATE</button>	'
			+		'</div>'
			+		'<div>'
			+			'<div>'
			+				'<div class="kal-gg-sche-con-subtitle">'
			+					'<h3>SEARCH SCHEDULE</h3> '
			+				'</div>'
			+				'<div class="kal-gg-sche-con-search">'
			+					'<div>'
			+						'DATE:<input type="text" value="" id="gg-searchDate"/>'
			+					'</div>'
			+					'<div>'
			+						'DEPARTURE:<input type="text" value="" id="gg-departure"/>'
			+					'</div>'
			+					'<div>'
			+						'DESTINATION:<input type="text" value="" id="gg-destination" /><br />'	
			+					'</div>'
			+				'</div>'
			+				'<div><input type="button" value="search" class="kal-gg-sche-searchBtn" id="kal-gg-serchBtn"/></div>'
			+				'<div class="kal-gg-sche-con-search-cal">'
			+				'</div>'
			+			'</div>'
			+			'<div class="kal-gg-sche-con-wrapper">'
			+			'<div class="kal-gg-sche-con-table-wrapper">'
			+					'<table class="kal-gg-sche-con-table2">'
			+					   '<tr >'
			+							'<th>ROUTE NO</th>'	
			+							'<th>DEPARTURE</th>	'
			+							'<th>DESTINATION</th>	'
			+							'<th>DATE</th>'
			+							'<th>DEPARTURE TIME</th>'
			+							'<th>DESTINATION TIME</th>'
			+						'</tr>'
			+						'<tr>'
			+						    '<td>1</td>'
			+							'<td>2</td>'
			+							'<td>3</td>'
			+							'<td>4</td>'
			+							'<td>5</td>'
			+							'<td>6</td>'
			+						'</tr>'
			+						'<tr>'
			+						    '<td>1</td>'
			+							'<td>2</td>'
			+							'<td>3</td>'
			+							'<td>4</td>'
			+							'<td>5</td>'
			+							'<td>6</td>'
			+						'</tr>'
			+					' </table>'
			+					 '<div>'
			+						'<div class="kal-gg-sche-con-btn-add">'
			+							  '<button class="kal-gg-sche-con-btn">delete</button>'
			+							  '<button class="kal-gg-sche-con-btn" id="scheUpdateBtn">update</button>'
			+						'</div>'
			+						'<div class="kal-gg-sche-con-btn-add">'
			+							  '<button class="kal-gg-sche-con-btn">delete</button>'
			+							  '<button class="kal-gg-sche-con-btn">update</button>'
			+						'</div>'
			+					'</div>'
			+				 '</div>'
			+				 '</div>'
			+			'</div>'
			+		'<div id="updateWrapper">'
			+		'</div>'
			+	    '</div>'
			+		'</div>';
				},
				scheConUpdate:function(){
					return '<div class="kal-gg-sche-con-subtitle">'
					+			  '<h3 >UPDATE SCHEDULE</h3>' 
					+			'<table class="kal-gg-sche-con-table">'
					+				'<tr >'
					+					'<th>ROUTE NO</th>'
					+					'<th>DATE</th>'
					+					'<th>DEPARTURE TIME</th>'
					+					'<th>DESTINATION TIME</th>'
					+				'</tr>'
					+				'<tr >'
					+					'<td>1</td>'
					+					'<td>2017-05-02</td>'
					+					'<td>21:30</td>'
					+					'<td>00:50</td>'
					+				'</tr>	'
					+				'<tr>'
					+					'<td>'
					+						'<select name="" id="" class="kal-gg-sch-con-select">'
					+							'<option value="1">1.ICN-HND</option>'
					+							'<option value="2">2.HND-ICN</option>'
					+							'<option value="3">3.JFK-ICN</option>'
					+							'<option value="4">4.ICN-JFK</option>'
					+						'</select>'
					+					'</td>'
					+					'<td><input type="text" /></td>'
					+					'<td><input type="text" /></td>'
					+					'<td><input type="text" /></td>'
					+				'</tr>'
					+			'</table>'
					+			'<div>'
					+				'<button class="kal-gg-sche-con-btn">update</button>'
					+			'</div>'
					+			'<div class="kal-gg-sche-con-btm">'
					+			'</div>'
					+		'</div>';
				},
				
				routeCon:function(){
					return '<div id="wrapper" class="kal-gg-route-con">'
			+		'<div class="kal-gg-route-inner-con">'
			+		'<div class="kal-gg-route-con-title">'
			+			'<h2>ROUTE</h2>'
			+		'</div>'
			+		'<div>'
			+			'<div class="kal-gg-route-con-subtitle">'
			+			'<h3 >CREATE ROUTE</h3> '
			+			'</div>'
			+			'<table class="kal-gg-route-con-table">'
			+				'<tr >'
			+					'<th>FLIGHT NO</th>'
			+					'<th>DEPARTURE </th>'
			+					'<th>DESTINATION </th>'
			+				'</tr>'
			+				'<tr>'
			+					'<td><select name="" id="" class="kal-gg-route-con-select">'
			+						'<option value="1">1.boeing 777-200ER</option>'
			+						'<option value="2">2.boeing 777-200ER</option>'
			+						'<option value="3">3.boeing 777-200ER</option>'
			+						'<option value="4">4.boeing 777-200ER</option>'
			+					'</select></td>'
			+					'<td><input type="text" /></td>'
			+					'<td><input type="text" /></td>'
			+			'</tr>'
			+			'</table>'
			+			'<button class="kal-gg-route-con-createBtn">CREATE</button>'
			+		'</div>'
			+		'<div>'
			+			'<div>'
			+				'<div class="kal-gg-route-con-subtitle">'
			+					'<h3>SEARCH ROUTE</h3> '
			+				'</div>	'
			+				'<div class="kal-gg-route-con-search">'
			+					'<div>'
			+						'FLIGHT NO:<input type="text" value=""/><input type="button" value="search"/>'
			+					'</div>'
			+					'<div>'
			+						'DEPARTURE:<input type="text" value=""/><input type="button" value="search"/>'
			+					'</div>'
			+					'<div>'
			+						'DESTINATION:<input type="text" value="" /><input type="button" value="search"/><br />'	
			+					'</div>'
			+				'</div>'
			+				'<div class="kal-gg-route-con-search-cal">'
			+				'</div>'
			+			'</div>'
			+			'<div>'
			+				'<table class="kal-gg-route-con-table2">'
			+				'<tr >'
			+					'<th>FLIGHT NO</th>'
			+					'<th>DEPARTURE</th>'
			+					'<th>DESTINATION</th>'
			+				'</tr>'
			+				'<tr>'
			+					'<td>1</td>'
			+					'<td>2</td>'
			+					'<td>3</td>'
			+				'</tr>'
			+				'<tr>'
			+					'<td>1</td>'
			+					'<td>2</td>'
			+					'<td>3</td>'
			+				'</tr>'
			+				 '</table>'
			+				' <div class="kal-gg-route-con-btn-add">'
			+					 ' <button class="kal-gg-route-con-btn">delete</button>'
			+					 ' <button class="kal-gg-route-con-btn" id="routeUpdateBtn">update</button>'
			+				' </div>'
			+				 ' <div class="kal-gg-route-con-btn-add">'
			+					  '<button class="kal-gg-route-con-btn">delete</button>'
			+					  '<button class="kal-gg-route-con-btn">update</button>'
			+				' </div>'
			+			'</div>'
			+		'</div>'
			+		'<div id="routeWrapper"></div>'
			+		'</div>'
			+		'</div>'
			+		'</div>'
			+		'</div>';
				},
				routeConUpdate:function(){
					return '<div class="kal-gg-route-con-subtitle">'
					+			  '<h3 >UPDATE ROUTE</h3> '
					+			'<table class="kal-gg-route-con-table">'
					+				'<tr >'
					+					'<th>FLIGHT NO</th>'
					+					'<th>DEPARTURE</th>'
					+					'<th>DESTINATION</th>'
					+				'</tr>'
					+				'<tr >'
					+					'<td>1</td>'
					+					'<td>KOREA</td>'
					+					'<td>japan</td>'
					+				'<tr>'
					+					'<td><select class="kal-gg-route-con-select">'
					+						'<option value="1">1.boeing 777-200ER</option>'
					+						' <option value="2">2.boeing 777-200ER</option>'
					+						'<option value="3">3.boeing 777-200ER</option>'
					+						'<option value="4">4.boeing 777-200ER</option>'
					+					'</select></td>'
					+					'<td><input type="text" /></td>'
					+					'<td><input type="text" /></td>'
					+				'</tr>'
					+			'</table>'
					+			'<div>'
					+				'<button class="kal-gg-route-con-btn">update</button>'
					+			'</div>'
					+			'<div class="kal-gg-route-con-btm">'
					+			'</div>'
				},
			 homeCon:function(){
				 return 
				 '<div class="kal-gg-stat-con">'
			+ '<div id="piechart" class="kal-gg-stat-chart"></div>'
			+ '<div id="sexchart" class="kal-gg-stat-chart"></div>'
			+ '</div>'
			+ '</div>';
			 },
			 
			 flightCon:function(){
				 return '<div id="wrapper" class="kal-gg-flight-con">'
			+	' <div class="kal-gg-flight-inner-con">'
			+	' <div class="kal-gg-flight-con-title">'
			+	 	'<h2>FLIGHT</h2>'
			+	 '</div>'
			+	 '<div>'
			+	 	'<div class="kal-gg-flight-con-subtitle">'
			+	 	'<h3 >CREATE FLIGHT</h3>' 
			+	 	'</div>'
			+	 	'<table class="kal-gg-flight-con-table">'
			+	 		'<tr >'
			+	 			'<th>FLIGHT NAME</th>'
			+	 			'<th>FLIGHT TYPE</th>'
			+	 			'<th>SEAT COUNT</th>'
			+	 		'</tr>'
			+	 		'<tr>'
			+	 			'<td>KOREAN AIR</td>'
			+	 			'<td><input type="text"/></td>'
			+	 			'<td><input type="text"/></td>'
			+	 	'</tr>'
			+	 	'</table>'
			+	 	'<button class="kal-gg-flight-con-btn">CREATE</button>'
			+	 '</div>'
			+	 '<div>'
			+	 	'<div>'
			+	 		'<div class="kal-gg-flight-con-subtitle">'
			+	 			'<h3>SEARCH FLIGHT</h3> '
			+	 		'</div>'	
			+	 		'<div class="kal-gg-flight-con-search">'
			+	 			'<div>'
			+	 				'FLIGHT TYPE:<input type="text" value=""/><input type="button" value="search"/>'
			+	 			'</div>'
			+	 			'<div>'
			+	 				'SEAT COUNT:<input type="text" value="" /><input type="button" value="search"/><br />'	
			+	 			'</div>'
			+	 		'</div>'
			+	 		'<div class="kal-gg-flight-con-search-cal">'
			+	 		'</div>'
			+	 	'</div>'
			+	 	'<div>'
			+	 		'<div>'
			+	 			'<table class="kal-gg-flight-con-table2">'
			+	 			'<tr >'
			+	 				'<th>FLIGHT NAME</th>'
			+	 				'<th>FLIGHT TYPE</th>'
			+	 				'<th>SEAT COUNT</th>'	
			+	 			'</tr>'
			+	 			'<tr>'
			+	 				'<td> KOREAN AIR</td>'
			+	 				'<td>1</td>'
			+	 				'<td>2</td>'
			+	 			'</tr>'
			+	 			'<tr>'
			+	 				'<td> KOREAN AIR</td>'
			+	 				'<td>1</td>'
			+	 				'<td>2</td>'
			+	 			'</tr>'
			+	 			'<tr>'
			+	 				'<td> KOREAN AIR</td>'
			+	 				'<td>1</td>'
			+	 				'<td>2</td>'
			+	 			'</tr>'
			+	 			'<tr>'
			+	 				'<td> KOREAN AIR</td>'
			+	 				'<td>1</td>'
			+	 				'<td>2</td>'
			+	 			'</tr>'
			+	 			 '</table>'
			+	 			' <div>'
			+	 			 		'<div class="kal-gg-flight-con-btn-add">'
			+	 					  '<button class="kal-gg-flight-con-btn">delete</button>'
			+	 					  '<button class="kal-gg-flight-con-btn">update</button>'
			+	 				 	'</div>'
			+	 				 	'<div class="kal-gg-flight-con-btn-add">'
			+	 					 ' <button class="kal-gg-flight-con-btn">delete</button>'
			+	 					  '<button class="kal-gg-flight-con-btn">update</button>'
			+	 				 	'</div>'
			+	 				 	'<div class="kal-gg-flight-con-btn-add">'
			+	 					 ' <button class="kal-gg-flight-con-btn">delete</button>'
			+	 					 ' <button class="kal-gg-flight-con-btn">update</button>'
			+	 				 	'</div>'
			+	 				 '	<div class="kal-gg-flight-con-btn-add">'
			+	 					  '<button class="kal-gg-flight-con-btn">delete</button>'
			+	 					  '<button class="kal-gg-flight-con-btn">update</button>'
			+	 				 	'</div>'
			+	 			' </div>'
			+	 		'</div>'
			+	 '</div>'
			+	 	 ' <div class="kal-gg-flight-con-subtitle">'
			+	 	 ' <h3 >UPDATE FLIGHT</h3> '
			+	 	'<table class="kal-gg-flight-con-table">'
			+	 		'<tr >'
			+	 			'<th>FLIGHT NAME</th>'
			+	 			'<th>FLIGHT TYPE</th>'
			+	 			'<th>SEAT COUNT</th>'	
			+	 		'</tr>'
			+	 		'<tr >'
			+	 			'<td>KOREAN AIR</td>'
			+	 			'<td>boeing 777-200ER</td>'
			+	 			'<td>76</td>'
			+	 		'</tr>	'
			+	 	   '<tr>'
			+	 			'<td>KOREAN AIR</td>'
			+	 			'<td><input type="text" /></td>'
			+	 			'<td><input type="text" /></td>'
			+	 		'</tr>'
			+	 	'</table>'
			+	    '<div>'
			+	 		'<button id="update" class="kal-gg-flight-con-btn">update</button>'
			+	 	'</div>'
			+	 	'<div class="kal-gg-flight-con-btm">'
			+	 	'</div>'
			+	 '</div>'
			+	 '</div>'
		 	+	 '</div>'
			+	 '</div>';
			 }
				};