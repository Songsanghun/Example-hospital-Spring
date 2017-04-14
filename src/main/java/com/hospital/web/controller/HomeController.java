package com.hospital.web.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.hospital.web.composite.Complex;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	//@Autowired ContextDTO context;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("Welcome {} !!","home");
		model.addAttribute("context", Complex.ContextFactory.create());
		return "index";
	}
	@RequestMapping(value="/home")
	public String home(){
		logger.info("진입: ","ok");
		return "public:common/container";
	}
	@RequestMapping(value="/login/form")
	public String login(){
		return "common/login.jsp";
	}
}
