package com.kal.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kal.web.domain.Flight;
import com.kal.web.domain.Route;
@Repository
public interface RouteMapper {
	public void addRoute(Flight flight);
	public int findNumberOfRoutes();
	public Route findRoute(Map<String,Object> paramMap);
	public List<Route> findRoutes(Map<String,Object> paramMap);
	public void updateRoute(Flight flight);
	public void deleteRoute(Map<String,Object> paramMap);

}