package com.hospital.web.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospital.web.dao.PatientDAO;
import com.hospital.web.domain.PatientDTO;
import com.hospital.web.service.PatientService;
@Service
public class PatientServiceImpl implements PatientService{
	@Autowired PatientDAO dao;
	@Override
	public int join(PatientDTO patient) throws Exception {
		return dao.insert(patient);
	}

	@Override
	public PatientDTO findById(String id) throws Exception {
		return dao.selectById(id);
	}

	@Override
	public PatientDTO login(PatientDTO patient) throws Exception{
		PatientDTO temp = new PatientDTO();
		return temp;
	}

	@Override
	public int change(PatientDTO patient) throws Exception{
		return dao.update(patient);
		
	}

	@Override
	public int remove(PatientDTO patient) throws Exception {
		return dao.delete(patient);
		
	}
	@Override
	public boolean logout(PatientDTO patient) throws Exception {
		return true;
	}
	@Override
	public String getBirth(String ssn) {
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
		// TODO Auto-generated method stub
		return null;
	}
}
