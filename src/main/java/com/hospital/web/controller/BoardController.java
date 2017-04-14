package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	public String goList(){
		return "";
	}
	@RequestMapping("/find")
	public String find(
			@RequestParam(value="search",required=false)String search,
			@RequestParam(value="pageNO",defaultValue="1")String pageNO){
		
		logger.info("BoardController-goList()  {} !!","ENTER");
		return "public:board/containerList";	
	}
}
