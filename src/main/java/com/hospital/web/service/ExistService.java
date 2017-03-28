package com.hospital.web.service;

import org.springframework.stereotype.Component;

@Component
public interface ExistService {
	public int exist(Object o)throws Exception;
}
