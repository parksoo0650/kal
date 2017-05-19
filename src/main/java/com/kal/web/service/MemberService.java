package com.kal.web.service;

import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kal.web.controller.MemberController;
import com.kal.web.domain.Member;
import com.kal.web.mapper.MemberMapper;

@Service
public class MemberService {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired MemberMapper mapper;
	
	public Member login(Map<String,Object> paramMap) throws Exception{
		logger.info("MemberService-login() {}","ENTER");
		System.out.println("MemberService로 넘어온 value1:"+paramMap.get("value1"));
		System.out.println("MemberService로 넘어온 value2:"+paramMap.get("value2"));
		IGetService service = (map)->mapper.findMember(map);
		return (Member) service.execute(paramMap);
	}
}