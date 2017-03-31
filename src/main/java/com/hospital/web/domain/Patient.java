package com.hospital.web.domain;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data @Lazy @Component
public class Patient extends Info{
	private String job,jumin,addr,docID,nurID;
	private Doctor doctor;
	private Nurse nurse;
	@Override
	public String getGroup() {
		return "Patient";
	}
}