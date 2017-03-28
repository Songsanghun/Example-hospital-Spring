package com.hospital.web.serviceImpl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.hospital.web.domain.PatientDTO;
import com.hospital.web.mapper.PatientMapper;
import com.hospital.web.service.PatientService;
@Service
public class PatientServiceImpl implements PatientService{
	private static final Logger logger = LoggerFactory.getLogger(PatientServiceImpl.class);
	@Autowired PatientMapper mapper;
	
	@Override
	public int join(PatientDTO patient) throws Exception {
		logger.info("PatientServiceImpl - join() {} !!","ENTER");
		return mapper.insert(patient);
	}

	@Override
	public PatientDTO findById(String id) throws Exception {
		logger.info("PatientServiceImpl - findById() {} !!","ENTER");
		return mapper.selectById(id);
	}

	@Override
	public PatientDTO login(PatientDTO member) throws Exception{
		logger.info("PatientServiceImpl - login() {} !!","ENTER");
		
		
		return mapper.selectById(member.getPatID());
	}

	@Override
	public int change(PatientDTO patient) throws Exception{
		logger.info("PatientServiceImpl - change() {} !!","ENTER");
		return mapper.update(patient);
		
	}

	@Override
	public int remove(PatientDTO patient) throws Exception {
		logger.info("PatientServiceImpl - remove() {} !!","ENTER");
		return mapper.delete(patient);
		
	}
	@Override
	public boolean logout(PatientDTO patient) throws Exception {
		logger.info("PatientServiceImpl - jlogoutoin() {} !!","ENTER");
		return true;
	}
	@Override
	public String getBirth(String ssn) {
		logger.info("PatientServiceImpl - getBirth() {} !!","ENTER");
		System.out.println("###getBirth() 진입###\n SSN="+ssn);
		String brith ="";
		if(ssn.equals("")){
			System.out.println("널입니다.===");
		}else{
			System.out.println("널 아닙니다.===");
		}
		brith="19"+ssn.substring(0,2)+"년 "
		+ssn.substring(2,4)+
		"월 "+ssn.substring(4,6)+
		"일 ";
		return brith;
	}

	@Override
	public PatientDTO getSession() {
		logger.info("PatientServiceImpl - getSession() {} !!","ENTER");
		return null;
	}

	@Override
	public int count() throws Exception {
		logger.info("PatientServiceImpl - count() {} !!");
		return mapper.count();
	}
}
