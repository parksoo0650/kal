package com.kal.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 @Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/grade")
	public String grade(){
		logger.info("HayunController -grade ()  {}","Enter");
		return "customerService/grade";
	}
	@RequestMapping("/review")
	public String review(){
		logger.info("HayunController -review ()  {}","Enter");
		return "customerService/review";
	}
	@RequestMapping("/faq")
	public String faq(){
		logger.info("SeoungsooController - faq() {}","Enter");
		return "/customerService/faq";
	}
	@RequestMapping("/faqList")
	public String faqList(){
		logger.info("SeoungsooController - faqList() {}","Enter");
		return "/customerService/faqList";
	}
}
