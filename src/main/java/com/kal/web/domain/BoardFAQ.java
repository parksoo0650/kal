package com.kal.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component @Data
public class BoardFAQ {
	private String faqSeq,userId,faqReq,faqAnswer,faqReqType;
}