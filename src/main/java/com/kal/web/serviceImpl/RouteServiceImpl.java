package com.kal.web.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kal.web.domain.Flight;
import com.kal.web.domain.Route;
import com.kal.web.mapper.RouteMapper;
import com.kal.web.service.RouteService;
@Service
public class RouteServiceImpl implements RouteService{
	@Autowired RouteMapper mapper;
	@Override
	public void addRoute(Flight flight) {
		mapper.addRoute(flight);
		
	}

	@Override
	public int findNumberOfRoutes() {
		return mapper.findNumberOfRoutes();
	}

	@Override
	public Route findRoute(Map<String, Object> paramMap) {
		return mapper.findRoute(paramMap);
	}

	@Override
	public List<Route> findRoutes(Map<String, Object> paramMap) {
		return mapper.findRoutes(paramMap);
	}

	@Override
	public void updateRoute(Flight flight) {
		mapper.updateRoute(flight);
		
	}

	@Override
	public void deleteRoute(Map<String, Object> paramMap) {
		mapper.deleteRoute(paramMap);
		
	}
	


}