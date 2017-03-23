package com.hospital.web.dao;

import org.springframework.stereotype.Component;

import com.hospital.web.domain.PatientDTO;
@Component
public interface PatientDAO {
	public int insert(PatientDTO member) throws Exception;  //이름은 Quary 문으로 해줘라.
	public PatientDTO selectById(String id) throws Exception; 
	/*public boolean login(PatientDTO member) throws Exception;*/
	public int update(PatientDTO member) throws Exception; 
	public int delete(PatientDTO member) throws Exception; 
}
