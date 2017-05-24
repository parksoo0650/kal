package com.kal.web.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.text.html.HTMLDocument.HTMLReader.ParagraphAction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kal.web.domain.BoardFAQ;
import com.kal.web.service.BoardFAQService;

@RestController
public class BoardFAQController {
	private static final Logger logger = LoggerFactory.getLogger(BoardFAQController.class);
	@Autowired BoardFAQService service;
	@RequestMapping(value="/addFAQ",method=RequestMethod.POST,consumes="application/json")
	public @ResponseBody Map<String, Object> addBoardFAQ(@RequestBody Map<String, Object>paramMap) throws Exception{
		logger.info("BoardFAQController-addBoardFAQ() {}","ENTER");
		Map<String, Object>map = new HashMap<>();
		BoardFAQ faq = new BoardFAQ();
		String id=(String) paramMap.get("id");
		String qna=(String) paramMap.get("qna");
		String qnatype=(String) paramMap.get("qnatype");
		map.put("id", id);
		map.put("qna", qna);
		map.put("qnatype", qnatype);
		int count=service.addQna(map);
		logger.info("BoardFAQController-addBoardFAQ() {}","DB 갔다옴");
		if(count == 1){
			paramMap.put("result", "success");
		}else{
			paramMap.put("result", "fail");
		}
		
		return paramMap;
	}
	@RequestMapping(value="/findFAQ",method=RequestMethod.POST,consumes="application/json")
	public @ResponseBody Map<?, ?> findFAQ(@RequestBody Map<String, Object>paramMap)throws Exception{
		logger.info("BoardFAQController-findFAQ() {}","ENTER");
		String selectType = (String) paramMap.get("selectType");
		Map<String, Object> map = new HashMap<>();
		List<BoardFAQ> list = new ArrayList<>();
		BoardFAQ faq = new BoardFAQ();
		String count = "";
		if(selectType.equals("전체")){
			paramMap.put("group", "faq");
			list = service.getAllfaqs(paramMap);
			count=String.valueOf(service.getallNumberOfFAQs(paramMap));
		}else{
			paramMap.put("selectType", selectType);
			list=service.getFAQs(paramMap);
			count=String.valueOf(service.getNumberOfFAQs(paramMap));
		}
		logger.info("디비에서 가져온 값 {}",list);
		map.put("list", list);
		map.put("count", count);
		System.out.println("count :"+map.get("count") + ':' + map.get("list"));
		
		
		return map;
	}
	@RequestMapping("/listQNA")
	public @ResponseBody Map<?, ?> listQNAs(Map<String, Object>paramMap)throws Exception{
		logger.info("BoardFAQController-listQNA() {}","ENTER");
		Map<String, Object> map = new HashMap<>();
		BoardFAQ faq = new BoardFAQ();
		paramMap.put("group", "faq");
		List<BoardFAQ> list = service.getAllfaqs(paramMap);
		int count=service.getallNumberOfFAQs(paramMap);
		map.put("list",  list);
		map.put("count",  count);
		System.out.println("가져온 리스트"+map.get("list"));
		return map;
	}
	
}
