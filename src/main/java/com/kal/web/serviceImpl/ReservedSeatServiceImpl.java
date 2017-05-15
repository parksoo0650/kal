package com.kal.web.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kal.web.domain.ReservedSeat;
import com.kal.web.mapper.ReservedSeatMapper;
import com.kal.web.service.ReservedSeatService;

@Service
public class ReservedSeatServiceImpl implements ReservedSeatService{
	@Autowired ReservedSeatMapper mapper;
	@Override
	public void addReservedSeat(ReservedSeat reservedSeat) {
		mapper.addReservedSeat(reservedSeat);
		
	}

	@Override
	public int findNumberOfReservedSeat() {
		return mapper.findNumberOfReservedSeat();
	}

	@Override
	public ReservedSeat findReservedSeat(Map<String, Object> paramMap) {
		return mapper.findReservedSeat(paramMap);
	}

	@Override
	public List<ReservedSeat> findReservedSeats(Map<String, Object> paramMap) {
		return mapper.findReservedSeats(paramMap);
	}

	@Override
	public void updateReservedSeat(ReservedSeat reservedSeat) {
		mapper.updateReservedSeat(reservedSeat);
		
	}

	@Override
	public void deleteReservedSeat(Map<String, Object> paramMap) {
		mapper.deleteReservedSeat(paramMap);
		
	}
	

}