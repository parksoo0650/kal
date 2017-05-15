package com.kal.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping("/loginbox")
	public String loginBox(){
		logger.info("HayunController - loginBox() {}","Enter");
		return "common/login";
	}
		@RequestMapping("/userRegist")
	public String userRegist(){
		logger.info("HayunController - memberRegist() {}","Enter");
		return "member/userRegist";
	}
	@RequestMapping("/userReservation")
	public String userReservation(){
		logger.info("HayunController - userReservation() {}","Enter");
		return "member/userReservation";
	}
	@RequestMapping("/mypageUserInfo")
	public String mypageUserInfo(){
		logger.info("HayunController -mypageUserInfo ()  {}","Enter");
		return "member/mypageUserInfo";
	}
	@RequestMapping("/mypageUserUpdate")
	public String userInfoUpdate(){
		logger.info("HayunController -userInfoUpdate ()  {}","Enter");
		return "member/userInfoUpdate"; 
	}
	@RequestMapping("/userChangePass")
	public String userChangePass(){
		logger.info("HayunController -userChangePass ()  {}","Enter");
		return "member/userChangePass";
	}
	@RequestMapping("/userDeleteAccount")
	public String userDeleteAccount(){
		logger.info("HayunController -userDeleteAccount ()  {}","Enter");
		return "member/userDeleteAccount";
	}

}
