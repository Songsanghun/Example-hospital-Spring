package com.hospital.web.domain;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Lazy;

import lombok.Data;
@Data @Lazy @Qualifier("nurse") 
public class Nurse extends Info{
	private String major,position;

	@Override
	public String getGroup() {
		return "Nurse";
		
	}
}