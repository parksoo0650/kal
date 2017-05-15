package com.kal.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.kal.web.domain.BoardFAQ;
import com.kal.web.domain.BoardReview;
@Component
public interface BoardReviewService {
	public void addBoardReview(BoardReview boardreview) throws Exception;
	public int findNumberOfBoardReviews() throws Exception;
	public BoardReview findBoardReview(Map<String,Object> paramMap) throws Exception;
	public List<BoardReview> findBoardReviews(Map<String,Object> paramMap) throws Exception;
	public void updateBoardReview(BoardReview boardreview) throws Exception;
	public void deleteBoardReview(Map<String,Object> paramMap) throws Exception;

}