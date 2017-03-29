package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hospital.web.domain.Info;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.CRUD;

@Controller
public class PermissionController {
	private static final Logger logger = LoggerFactory.getLogger(PermissionController.class);
	@Autowired Mapper mapper;
	@RequestMapping("/login")
	public String login(){
		logger.info("PermissionController - goLogin() {}", "ENTER");
		return "public:common/loginForm";
	}
	
	@RequestMapping(value="/{permission}/login",method=RequestMethod.POST)
	public String login(@RequestParam("id") String id,
			@RequestParam("password") String password,
			@PathVariable String permission,
			Model model) throws Exception{
		logger.info("Permission - login() {}", "POST");
		logger.info("Permission - id, pw: {}", id+","+password);
		String movePosition="";
		Person<?> person=new Person<Info>(new Patient());
		Patient patient=(Patient) person.getInfo();
		patient.setId(id);
		patient.setPass(password);
		switch (permission) {
		case "patient":
			CRUD.Service ex=new CRUD.Service() {
				
				@Override
				public Object execute(Object o) throws Exception {
					logger.info("======ID ? {} ======", o);
					return mapper.exist(id);
				}
			};
			Integer count=(Integer)ex.execute(id);
			logger.info("ID exist ? {}", count);
			
			if(count==0){
				logger.info("DB RESULT: {}", "ID not exist");
				movePosition="public:common/loginForm";
			}else{
				CRUD.Service service=new CRUD.Service() {
					@Override
					public Object execute(Object o) throws Exception {
						return mapper.findPatient(id);
					}
				};
				patient=(Patient) service.execute(patient);
				
				if(patient.getPass().equals(password)){
					logger.info("DB RESULT: {}", "success");
					model.addAttribute("patient", patient);
					movePosition="patient:patient/containerDetail";
				}else{
					logger.info("DB RESULT: {}", "password not match");
					movePosition="public:common/loginForm";
				}
				
			}
			break;
			
			
		default:
			break;
		}
		return movePosition;
		
		
	}
}