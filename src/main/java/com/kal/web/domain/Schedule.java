package com.kal.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component @Data
public class Schedule {
private String scheSeq,routeSeq,scheDepartureTime,scheArrivalTime,scheDate;
}