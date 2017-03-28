package com.hospital.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Data
public class Patient {

	@Getter @Setter
	private String patID,nurID,docID,patPass,patName,patGen,patJumin,patAddr,patPhone,patEmail,patJob;
	
}
