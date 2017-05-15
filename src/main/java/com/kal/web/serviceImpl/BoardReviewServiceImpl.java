package com.kal.web.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kal.web.domain.BoardReview;
import com.kal.web.mapper.BoardReviewMapper;
import com.kal.web.service.BoardReviewService;
@Service
public class BoardReviewServiceImpl implements BoardReviewService{
	@Autowired BoardReviewMapper mapper;
	@Override
	public void addBoardReview(BoardReview boardreview) throws Exception {
		mapper.addBoardReview(boardreview);
		
	}

	@Override
	public int findNumberOfBoardReviews() throws Exception {
		return mapper.findNumberOfBoardReviews();
	}

	@Override
	public BoardReview findBoardReview(Map<String, Object> paramMap) throws Exception {
		return mapper.findBoardReview(paramMap);
	}

	@Override
	public List<BoardReview> findBoardReviews(Map<String, Object> paramMap) throws Exception {
		return mapper.findBoardReviews(paramMap);
	}

	@Override
	public void updateBoardReview(BoardReview boardreview) throws Exception {
		mapper.updateBoardReview(boardreview);
		
	}

	@Override
	public void deleteBoardReview(Map<String, Object> paramMap) throws Exception {
		mapper.deleteBoardReview(paramMap);
		
	}

}
