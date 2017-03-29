package com.hospital.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component @Data
public abstract class Info {
	protected String id, pass, name, gen, phone, email;
	public abstract String getGroup();
}
