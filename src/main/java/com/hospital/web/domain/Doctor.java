package com.hospital.web.domain;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Lazy;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Data @Lazy @Qualifier("doctor") 
public class Doctor extends Info {
	@Getter @Setter
	private String major,position;

	@Override
	public String getGroup() {
		return "Doctor";
	}

}