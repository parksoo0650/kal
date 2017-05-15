package com.kal.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.kal.web.domain.Flight;
@Component
public interface FlightService {
	public void addFlight(Flight flight);
	public int findNumberOfFlights();
	public Flight findFlight(Map<String,Flight> paramMap);
	public List<Flight> findFlights(Map<String,Flight> paramMap); 
	public void updateFlight(Flight flight);
	public void deleteFlight(Map<String,Flight> paramMap);

}