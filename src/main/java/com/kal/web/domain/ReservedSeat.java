package com.kal.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component @Data
public class ReservedSeat {
	private String resSeatSeq, seatCode, scheSeq, userId, resPrice;
}