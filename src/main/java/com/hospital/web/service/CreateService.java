package com.hospital.web.service;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface CreateService {
	public int execute(Object o)throws Exception;
}
