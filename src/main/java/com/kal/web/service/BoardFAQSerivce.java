package com.kal.web.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kal.web.controller.MemberController;
import com.kal.web.domain.BoardFAQ;
import com.kal.web.mapper.BoardFAQMapper;
@Service
public class BoardFAQSerivce {
	private static final Logger logger = LoggerFactory.getLogger(BoardFAQSerivce.class);
	
	@Autowired BoardFAQMapper mapper;
	public int addQna(BoardFAQ faq) throws Exception {
		IPostService service = (qnaReq) ->mapper.addBoardFAQ(faq);
		return service.execute(faq);
	} 
	@SuppressWarnings("unchecked")
	public List<BoardFAQ> getList(Map<String,Object> paramMap)throws Exception{
		IListService service = (map)->mapper.findBoardFAQs(paramMap);
		return (List<BoardFAQ>) service.execute(paramMap);
	}
	public BoardFAQ getAnswer(Map<String,Object> paramMap)throws Exception{
		IGetService service = (map)->mapper.findBoardFAQ(paramMap);
		return (BoardFAQ) service.execute(paramMap);
	}
}