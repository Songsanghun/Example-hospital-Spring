package com.hospital.web.service;

import java.util.List;
import java.util.Map;

import com.hospital.web.domain.Chart;

public interface IListService {
	public List<?> execute(Map<?,?>map) throws Exception;
}
