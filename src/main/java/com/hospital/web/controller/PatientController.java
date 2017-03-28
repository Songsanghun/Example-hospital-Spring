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

import com.hospital.web.domain.Patient;
import com.hospital.web.mapper.PatientMapper;
import com.hospital.web.service.CRUD;

@Controller
@RequestMapping(value="/patient")  // 디렉토리랑 아무 상관이 없다.
public class PatientController {
	private static final Logger logger = LoggerFactory.getLogger(PatientController.class);
	@Autowired Patient patient;
	@Autowired PatientMapper mapper;
	@RequestMapping(value="/join")
	public String goJoin(){
		logger.info("PatientController - goJoin() {} !!","ENTER");
		return "public:common/registerForm";
	}	
	@RequestMapping(value="/login")
	public String goLogin(){
		logger.info("PatientController - goLogin() {} !!","ENTER");
		return "public:common/loginForm";
	}
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String goLogin(@RequestParam("id") String id,
			@RequestParam("password") String password,
			Model model) throws Exception{
		logger.info("PatientController - goLogin() {} !!","POST");
		logger.info("PatientController - id,pw: {}",id+","+password);
		patient.setPatID(id);
		patient.setPatPass(password);
		CRUD.Service ex =new CRUD.Service() {
			@Override
			public Object execute(Object o) throws Exception {
				logger.info("=============ID============== ?  {}",o);
				return mapper.exist(id);
			}
		};
		Integer count= (Integer)ex.execute(id);
		logger.info("ID exist ?: {} ", count);
		String movePosition = "";
		if(count==0){
			logger.info("DB RESULT: {}", "ID not exist");
			movePosition =  "public:common/loginForm";
		}else{
			CRUD.Service service = new CRUD.Service() {
				
				@Override
				public Object execute(Object o) throws Exception {
					return mapper.selectById(id);
				}
			};
			patient = (Patient) service.execute(patient);
			logger.info("DB 다녀온 결과: {}", "ID가 존재함");
			logger.info("DB 다녀온 결과: {}", count);
			if(patient.getPatPass().equals(password)){
				logger.info("DB 다녀온 결과: {}","SUCCESS");
				model.addAttribute("name","홍길동");
				movePosition = "patient:patient/containerDetail";
			}else{
				logger.info("DB 다녀온 결과: {}","PASSWORD NOT MATCH");
				movePosition =  "public:common/loginForm";
			}
		}
		return movePosition;
	}
	@RequestMapping("/doctor/{docID}")
	public String goDoctorInfo(@PathVariable String docID){
		logger.info("PatientController - goLogin() {} !!","ENTER");
		logger.info("PatientController - docID = {} !!",docID);
		return "patient:patient/doctorInfo";
	}
}
