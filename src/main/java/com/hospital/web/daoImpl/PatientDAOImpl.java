package com.hospital.web.daoImpl;

import org.springframework.stereotype.Repository;

import com.hospital.web.dao.PatientDAO;
import com.hospital.web.domain.PatientDTO;
@Repository
public class PatientDAOImpl implements PatientDAO{
	@Override
	public int insert(PatientDTO member) throws Exception { // throws Exception
																// 에러 나면 메소드 꺼라
		return 0;
	}

	@Override
	public PatientDTO selectById(String id) throws Exception {
		PatientDTO member = new PatientDTO();
		
		return member;
	}

	

	@Override
	public int update(PatientDTO member) throws Exception {
		return 0;
		
	}

	@Override
	public int delete(PatientDTO member) throws Exception {
		return 0;
	}
}
