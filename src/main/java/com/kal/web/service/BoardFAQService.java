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
public class BoardFAQService {
	private static final Logger logger = LoggerFactory.getLogger(BoardFAQService.class);
	
	@Autowired BoardFAQMapper mapper;
	public int addQna(Map<String,Object> paramMap) throws Exception {
		IPostService service = (qnaReq) ->mapper.addBoardFAQ(paramMap);
		return service.execute(paramMap);
	} 
	@SuppressWarnings("unchecked")
	public List<BoardFAQ> getFAQs(Map<String,Object> paramMap)throws Exception{
		IListService service = (map)->mapper.findBoardFAQs(paramMap);
		return (List<BoardFAQ>) service.execute(paramMap);
	}
	@SuppressWarnings("unchecked")
	public List<BoardFAQ> getAllfaqs(Map<String,Object> paramMap)throws Exception{
		IListService service = (map)->mapper.allFindBoardFAQs(paramMap);
		return (List<BoardFAQ>) service.execute(paramMap);
	}
	public int getNumberOfFAQs(Map<String,Object> paramMap)throws Exception{
		IGetService service = (map)->mapper.findNumberOfBoardFAQs(paramMap);
		return (int) service.execute(paramMap);
	}
	public int getallNumberOfFAQs(Map<String,Object> paramMap)throws Exception{
		IGetService service = (map)->mapper.allNumberOfBoardFAQs(paramMap);
		return (int) service.execute(paramMap);
	}
}