package com.kal.web.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.text.html.HTMLDocument.HTMLReader.ParagraphAction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kal.web.domain.BoardFAQ;
import com.kal.web.service.BoardFAQSerivce;

@RestController
public class BoardFAQController {
	private static final Logger logger = LoggerFactory.getLogger(BoardFAQController.class);
	@Autowired BoardFAQSerivce service;
	@RequestMapping(value="/addFAQ",method=RequestMethod.POST,consumes="application/json")
	public @ResponseBody Map<?, ?> addBoardFAQ(@RequestBody Map<String, Object>paramMap) throws Exception{
		logger.info("BoardFAQController-addBoardFAQ() {}","ENTER");
		Map<String, Object>map = new HashMap<>();
		
		BoardFAQ faq = new BoardFAQ();
		String id=(String) paramMap.get("id");
		String qna=(String) paramMap.get("qna");
		String qnatype=(String) paramMap.get("qnatype");
		faq.setUserId(id);
		faq.setFaqReq(qna);
		faq.setFaqReqType(qnatype);
		int count=service.addQna(faq);
		logger.info("BoardFAQController-addBoardFAQ() {}","DB 갔다옴");
		if(count == 1){
			paramMap.put("result", "success");
		}else{
			paramMap.put("result", "fail");
		}
		
		return paramMap;
	}
	@RequestMapping("/listQNA")
	public @ResponseBody Map<?, ?> listQNAs(Map<String, Object>paramMap)throws Exception{
		logger.info("BoardFAQController-listQNA() {}","ENTER");
		Map<String, Object> map = new HashMap<>();
		List<BoardFAQ> list=service.getList(paramMap);
		map.put("list", list);
		System.out.println("가져온 리스트"+map.get("list"));
		return map;
	}
	@RequestMapping(value="/FAQanswer",method=RequestMethod.POST,consumes="application/json")
	public @ResponseBody Map<?, ?> addFAQanswer(@RequestBody Map<String, Object> paramMap) throws Exception{
		logger.info("BoardFAQController-FAQanswer() {}","ENTER");
		String seq =  String.valueOf(paramMap.get("seq"));
		logger.info("넘어온 시퀀스 값 {}",seq);
		Map<String, Object> map = new HashMap<>();
		BoardFAQ faq = new BoardFAQ();
		map.put("seq", seq);
		faq=service.getAnswer(map);
		paramMap.put("ans", faq);
		return paramMap;
	}
	
}
