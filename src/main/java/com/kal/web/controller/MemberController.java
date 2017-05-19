package com.kal.web.controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kal.web.domain.Member;
import com.kal.web.mapper.MemberMapper;
import com.kal.web.service.MemberService;

@RestController
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired MemberMapper mapper;
	@Autowired Member member;
	@Autowired MemberService memberService;
	
	@RequestMapping(value="/login",
					method=RequestMethod.POST,
					consumes="application/json")
	public @ResponseBody Map<?,?> login(@RequestBody Map<String,Object> paramMap) throws Exception {
		logger.info("MemberController-login() {}","ENTER");
		Map<String,Object> map = new HashMap<>();
		String id = (String) paramMap.get("id");
		String pw = (String) paramMap.get("pw");
		System.out.println("넘어온 id :" + id);
		System.out.println("넘어온 pw :" + pw);
		paramMap.put("value1", id);
		paramMap.put("value2", pw);
		Member member=memberService.login(paramMap);
		if(member.getUserId().equals(id) && member.getUserPass().equals(pw)){
			System.out.println("=========맵퍼를 거치고 들어왔음=========");
			map.put("result", "success");
			map.put("name", member.getKorName());
			map.put("id", member.getUserId());
		}else{
			map.put("result", "fail");
		}
		return map;
	}
}