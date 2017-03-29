package com.hospital.web.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;

@Repository
public interface Mapper {
	
	public int insert(Patient member) throws Exception;  
	public Patient findPatient(Map <?,?>map) throws Exception; 
	public Doctor findDoctor(Map <?,?>map) throws Exception; 
	public Nurse findNurse(Map <?,?>map) throws Exception; 
	/*public boolean login(PatientDTO member) throws Exception;*/
	public int update(Patient member) throws Exception; 
	public int delete(Patient member) throws Exception; 
	public int count() throws Exception;
	public int exist(String id) throws Exception; 
}
