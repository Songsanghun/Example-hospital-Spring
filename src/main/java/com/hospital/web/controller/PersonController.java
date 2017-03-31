package com.hospital.web.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hospital.web.domain.Admin;
import com.hospital.web.domain.Command;
import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Info;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.CRUD;

@Controller
public class PersonController {
	private static final Logger logger = LoggerFactory.getLogger(PatientController.class);
	@Autowired Mapper Mapper;
	@RequestMapping(value="/register/{type}",method=RequestMethod.POST)
	public String goRegister(
			Command command, //Command 를 주입한다.
			@RequestBody Map<String,Object>map,
			@PathVariable String type) throws Exception{
		command.process(map);
		logger.info("PersonController - register() {} !!","ENTER");
		if(type.equals("")){type = "patient";}
		map.put("type", type);
		Person<?> person = command.process(map).getPersonInfo();
		int result = 0;
		switch (type) {
		case "patient":
			result = Mapper.registPatient(person);
			break;
		case "doctor":
			result = Mapper.registDoctor(person);
			break;
		case "nurse":
			result = Mapper.registNurse(person);
			break;
		case "admin":
			result = Mapper.registPatient(person);
			break;	
		default:
			break;
		}
		if(result==1){
			return "public:common/logionForm";
		}else{
			return "redirect:/{type}/registerForm";
		}
	}
	
	
	
	@RequestMapping(value="/detail/{docID}")
	public String detail(@PathVariable String docID){
		logger.info("DoctorController - goLogin() {} !!","ENTER");
		if(docID.equals("")){return "redirect:/{permission}/login";}
			return "public:common/logionForm";
	}
}
