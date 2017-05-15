package com.kal.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kal.web.domain.Flight;
import com.kal.web.domain.Schedule;
import com.kal.web.mapper.ScheduleMapper;
@Component
public interface ScheduleService {
	public void addSchedule(Flight flight);
	public int findNumberOfSchedules();
	public Schedule findSchedule(Map<String,Object> paramMap);
	public List<ScheduleMapper> findSchedules(Map<String,Object> paramMap);
	public void updateSchedule(Flight flight);
	public void deleteSchedule(Map<String,Object> paramMap);
}