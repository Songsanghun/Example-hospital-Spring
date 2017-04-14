package com.hospital.web.service;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface IPostService {
	public int execute(Object o)throws Exception;
}
