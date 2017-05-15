package com.kal.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kal.web.domain.Flight;
import com.kal.web.domain.Schedule;

@Repository
public interface ScheduleMapper {
	public void addSchedule(Flight flight);
	public int findNumberOfSchedules();
	public Schedule findSchedule(Map<String,Object> paramMap);
	public List<ScheduleMapper> findSchedules(Map<String,Object> paramMap);
	public void updateSchedule(Flight flight);
	public void deleteSchedule(Map<String,Object> paramMap);
}