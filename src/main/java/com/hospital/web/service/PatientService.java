package com.hospital.web.service;

import org.springframework.stereotype.Component;

import com.hospital.web.domain.PatientDTO;
@Component
public interface PatientService {
	public int join(PatientDTO member) throws Exception;  //regist해라 PatientDTO 을
	public PatientDTO findById(String id) throws Exception; // PatientDTO 에서 find 해라 String id를 
	public PatientDTO login(PatientDTO member) throws Exception; // login해라 Member member을 참 거짓 구별.
	public boolean logout(PatientDTO member) throws Exception; 
	public int change(PatientDTO member) throws Exception; //change해라 PatientDTO을
	public int remove(PatientDTO member) throws Exception; //remove해라 PatientDTO을
	// 추가된 로직
	public String getBirth(String ssn);
	public PatientDTO getSession();
	public int count()throws Exception;
}
