package com.hospital.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.hospital.web.domain.Article;
import com.hospital.web.domain.Chart;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.BoardService;
import com.hospital.web.service.IListService;

@RestController
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired Mapper mapper;
	@Autowired Article article;
	@Autowired BoardService boardService;
	@RequestMapping(value="/list/bbs/{pageNo}")
	private @ResponseBody Map<?,?> getArticle(
			@PathVariable String pageNo) throws Exception{
        logger.info("BoardController-getArticle() {} !!", "ENTER");
        logger.info("넘어온 페이지넘버 =  {} !!", pageNo);
        Map<String,Object>map = new HashMap<>();
		List<Article> list = new ArrayList<>();
		map.put("start", "1");
		map.put("end", "5");
		list = boardService.articleList(map);
		System.out.println(list);
		logger.info("articleList is  {} !!", list);
		map.clear();
		map.put("list", list);
		map.put("count", list.size());
		return map;
	}
}
