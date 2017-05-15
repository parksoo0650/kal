package com.kal.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
public class ReservationController {
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@RequestMapping("/reservation1")
	public String reservation1(){
		logger.info("JihooController - reservation1() {}","Enter");
		return "reservation/reservation1";
	}
	@RequestMapping(value = "/reservation2") // fare은 운임이라는 뜻
   public String reservation2(){
      logger.info("JihooController - reservation2() {}","ENTER");
      return "/reservation/reservation2";
   }
   @RequestMapping(value = "/reservation3")
   public String reservation3(){
      logger.info("JihooController - reservation3() {}","ENTER");
      return "/reservation/reservation3";
   }
   @RequestMapping(value = "/reservation4")
   public String reservation4(){
      logger.info("JihooController - reservation4() {}","ENTER");
      return "/reservation/reservation4";
   }
   @RequestMapping(value = "/reservation5")
   public String reservation5(){
      logger.info("JihooController - reservation5() {}","ENTER");
      return "/reservation/reservation5";
   }
   @RequestMapping("/reserSeat")
	public String reserSeat(){
		logger.info("JihooController - reserSeat()  {}","Enter");
		return "/reservation/seat/seat";
	}
  	@RequestMapping("/reservation_seat")
		public String reservationSeat(){
	   		logger.info("SongsangController - reservationSeat() {}","Enter");
			return "/reservation/seat";
	}
}
