package com.kal.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;


@Data @Component
public class BoardReview {
	private String revSeq,revRegDate, revTitle,revContent,revAttach,
				   gradeStaff, gradeEnvi, gradeClean;
}