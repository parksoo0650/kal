package com.kal.web.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kal.web.domain.Flight;
import com.kal.web.mapper.FlightMapper;
import com.kal.web.service.FlightService;
@Service
public class FlightServiceImpl implements FlightService{
	@Autowired FlightMapper mapper;
	@Override
	public void addFlight(Flight flight) {
		mapper.addFlight(flight);
		
	}

	@Override
	public int findNumberOfFlights() {
		return mapper.findNumberOfFlights();
	}

	@Override
	public Flight findFlight(Map<String, Flight> paramMap) {
		return mapper.findFlight(paramMap);
	}

	@Override
	public List<Flight> findFlights(Map<String, Flight> paramMap) {
		return mapper.findFlights(paramMap);
	}

	@Override
	public void updateFlight(Flight flight) {
		mapper.updateFlight(flight);
		
	}

	@Override
	public void deleteFlight(Map<String, Flight> paramMap) {
		mapper.deleteFlight(paramMap);
		
	}
	


}