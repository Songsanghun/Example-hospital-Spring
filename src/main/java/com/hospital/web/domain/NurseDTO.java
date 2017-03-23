package com.hospital.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Data
public class NurseDTO {
	
	@Getter @Setter
	private String nurID,nurPass,majorJob,nurName,nurGen,nurPhone,nurEmail,nurPosition;
}
