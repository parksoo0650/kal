var reservation=admin || {};
reservation.test=(function(){
	var reservation=function(){
		$('.kal-main-right-menu-reservation-btn').on('click',function(){
			alert('항공권 예약하기');
		});
	};
	return{
		reservation : reservation
	}
})();