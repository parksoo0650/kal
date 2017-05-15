package com.kal.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kal.web.domain.Flight;
@Repository
public interface FlightMapper {
	public void addFlight(Flight flight);
	public int findNumberOfFlights();
	public Flight findFlight(Map<String,Flight> paramMap);
	public List<Flight> findFlights(Map<String,Flight> paramMap); 
	public void updateFlight(Flight flight);
	public void deleteFlight(Map<String,Flight> paramMap);


}