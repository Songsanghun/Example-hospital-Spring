package com.hospital.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Component @Data
public class ContextDTO {
	@Getter @Setter
	private String path, js, css, img;
	
}
