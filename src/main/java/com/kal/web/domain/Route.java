package com.kal.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component @Data
public class Route {
 private String routeSeq,flightSeq,routeFrom,routeTo;
}