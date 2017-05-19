package com.kal.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.kal.web.domain.BoardFAQ;

@Service
@FunctionalInterface
public interface IPostService {
	public int execute(BoardFAQ faq) throws Exception;
}
