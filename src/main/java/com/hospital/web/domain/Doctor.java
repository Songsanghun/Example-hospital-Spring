package com.hospital.web.domain;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Data @Lazy @Component
public class Doctor extends Info {
	@Getter @Setter
	private String major,position;

	@Override
	public String getGroup() {
		return "Doctor";
	}

}