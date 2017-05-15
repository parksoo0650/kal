package com.kal.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component @Data
public class Member {
	private String userId, userPass, familyName, firstName, korName, phoneNo, birthDate, userGen, userEmail, userAddr, userPostNum;
	
}