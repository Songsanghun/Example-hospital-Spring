package com.hospital.web.service;


import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hospital.web.domain.Chart;
import com.hospital.web.mapper.Mapper;
@Service
public class ChartService {
	private static final Logger logger = (Logger) LoggerFactory.getLogger(ChartService.class);
	@Autowired Mapper mapper;
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Chart> chartList(Map<?,?>paramMap)throws Exception{
		IListService service = (map)->mapper.chartList(map);
		List<Chart> list = (List<Chart>) service.execute(paramMap);
		logger.info("ChartService-chartlist() {} !!",list);
		return list;
	}
	public int registerChartFile(Chart c) throws Exception{
		IPostService service = (param)->mapper.registerChartFile(param);
		return service.execute(c);
	}
	
	
}
