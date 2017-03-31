package com.hospital.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface ReadService {
	public Object execute(Map<?,?>map)throws Exception;
}
