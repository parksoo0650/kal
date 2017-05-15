package com.kal.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kal.web.domain.BoardFAQ;
@Component
public interface BoardFAQSerivce {
	public void addBoardFAQ(BoardFAQ boardfaq) throws Exception;
	public int findNumberOfBoardFAQs()throws Exception;
	public BoardFAQ findBoardFAQ(Map<String,Object> paramMap)throws Exception;
	public List<BoardFAQ> findBoardFAQs(Map<String,Object> paramMap)throws Exception;
	public void updateBoardFAQ(BoardFAQ boardfaq)throws Exception;
	public void deleteBoardFAQ(Map<String,Object> paramMap)throws Exception;
}