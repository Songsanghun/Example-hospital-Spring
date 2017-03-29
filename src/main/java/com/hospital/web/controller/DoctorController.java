package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/doctor")
public class DoctorController {
	private static final Logger logger = LoggerFactory.getLogger(PatientController.class);
	
	@RequestMapping(value="/detail/{docID}")
	public String detail(@PathVariable String docID){
		logger.info("DoctorController - goLogin() {} !!","ENTER");
			return "public:common/logionForm";
	}
}
