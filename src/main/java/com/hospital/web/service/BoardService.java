package com.hospital.web.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hospital.web.domain.Article;
import com.hospital.web.mapper.Mapper;

@Service
public class BoardService {
	private static final Logger logger = (Logger) LoggerFactory.getLogger(BoardService.class);
@Autowired Mapper mapper;
	@Transactional
	public List<Article> articleList(Map<?,?>paramMap)throws Exception{
		logger.info("BoardService-articleList() {} !!","Enter");
		IListService service = (map)->mapper.articleList(map);
		@SuppressWarnings("unchecked")
		List<Article> list = (List<Article>) service.execute(paramMap);
		logger.info("BoardService-articleList() {} !!",list);
		return list;
	}
}
