package com.kal.web.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import com.kal.web.domain.Seat;
import com.kal.web.mapper.SeatMapper;
import com.kal.web.service.SeatService;

@Service
public class SeatServiceImpl implements SeatService{
	@Autowired SeatMapper mapper;
	@Override
	public int findNumberOfSeats() throws Exception {
		return mapper.findNumberOfSeats();
	}

	@Override
	public Seat findSeat(Map<String, Object> paramMap) throws Exception {
		return mapper.findSeat(paramMap);
	}

	@Override
	public List<Seat> findSeats(Map<String, Object> paramMap) throws Exception {
		return mapper.findSeats(paramMap);
	}

}