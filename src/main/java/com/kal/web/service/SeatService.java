package com.kal.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import com.kal.web.domain.Seat;

@Component
public interface SeatService {
	public int findNumberOfSeats() throws Exception;
	public Seat findSeat(Map<String,Object> paramMap) throws Exception;
	public List<Seat> findSeats(Map<String,Object> paramMap) throws Exception;
}