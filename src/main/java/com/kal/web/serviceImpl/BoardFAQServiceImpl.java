package com.kal.web.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kal.web.domain.BoardFAQ;
import com.kal.web.mapper.BoardFAQMapper;
import com.kal.web.service.BoardFAQSerivce;
@Service
public class BoardFAQServiceImpl implements BoardFAQSerivce{
	@Autowired BoardFAQMapper mapper;
	@Override
	public void addBoardFAQ(BoardFAQ boardfaq) throws Exception {
		mapper.addBoardFAQ(boardfaq);
		
	}

	@Override
	public int findNumberOfBoardFAQs() throws Exception {
		return mapper.findNumberOfBoardFAQs();
	}

	@Override
	public BoardFAQ findBoardFAQ(Map<String, Object> paramMap) throws Exception {
		return mapper.findBoardFAQ(paramMap);
	}

	@Override
	public List<BoardFAQ> findBoardFAQs(Map<String, Object> paramMap) throws Exception {
		return mapper.findBoardFAQs(paramMap);
	}

	@Override
	public void updateBoardFAQ(BoardFAQ boardfaq) throws Exception {
		mapper.updateBoardFAQ(boardfaq);
	}

	@Override
	public void deleteBoardFAQ(Map<String, Object> paramMap) throws Exception {
		mapper.deleteBoardFAQ(paramMap);
	}

}
