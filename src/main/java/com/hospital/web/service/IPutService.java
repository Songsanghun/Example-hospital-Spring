package com.hospital.web.service;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface IPutService {
	public int execute(Object o)throws Exception;
}
