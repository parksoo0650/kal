package com.kal.web.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kal.web.composite.Complex;

/**
 * Handles requests for the application home page.
 */
@SessionAttributes("context")
@Controller

public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/*
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) {
		logger.info("HomeController - home() {}","Enter");
		
		session.setAttribute("context",Complex.ContextFactory.create());
		logger.info("===context===  : {}",Complex.ContextFactory.create());
		return "home";
	}
	
	/*김하윤*/
	/*HayunController로 이동시킴*/
	
   /*홍지후*/
   /*   JihooController로 이동시킴   */
   /*김기근*/
   /*  GigunController로 이동시킴   */

}
