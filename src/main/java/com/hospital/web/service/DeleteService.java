package com.hospital.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;
@Service
@FunctionalInterface
public interface DeleteService {
	public int execute(Map<?,?>map)throws Exception;
}
