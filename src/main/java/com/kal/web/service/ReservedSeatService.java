package com.kal.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.kal.web.domain.ReservedSeat;

@Component
public interface ReservedSeatService {
	public void addReservedSeat(ReservedSeat reservedSeat);
	public int findNumberOfReservedSeat();
	public ReservedSeat findReservedSeat(Map<String,Object> paramMap);
	public List<ReservedSeat> findReservedSeats(Map<String,Object> paramMap);
	public void updateReservedSeat(ReservedSeat reservedSeat);
	public void deleteReservedSeat(Map<String,Object> paramMap);
}