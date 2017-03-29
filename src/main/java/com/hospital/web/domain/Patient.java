package com.hospital.web.domain;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Lazy;

import lombok.Data;

@Data @Lazy @Qualifier("patient") 
public class Patient extends Info{
	private String job,jumin,addr,docID,nurID;
	private Doctor doctor;
	private Nurse nurse;
	@Override
	public String getGroup() {
		return "Patient";
	}
}