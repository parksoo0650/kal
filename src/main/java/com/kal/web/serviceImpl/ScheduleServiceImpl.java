package com.kal.web.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kal.web.domain.Flight;
import com.kal.web.domain.Schedule;
import com.kal.web.mapper.ScheduleMapper;
import com.kal.web.service.ScheduleService;
@Service
public class ScheduleServiceImpl implements ScheduleService{
	@Autowired ScheduleMapper mapper;
	@Override
	public void addSchedule(Flight flight) {
		mapper.addSchedule(flight);
		
	}

	@Override
	public int findNumberOfSchedules() {
		return mapper.findNumberOfSchedules();
	}

	@Override
	public Schedule findSchedule(Map<String, Object> paramMap) {
		return mapper.findSchedule(paramMap);
	}

	@Override
	public List<ScheduleMapper> findSchedules(Map<String, Object> paramMap) {
		return mapper.findSchedules(paramMap);
	}

	@Override
	public void updateSchedule(Flight flight) {
		mapper.updateSchedule(flight);
	}

	@Override
	public void deleteSchedule(Map<String, Object> paramMap) {
		mapper.deleteSchedule(paramMap);
		
	}
	
	
}