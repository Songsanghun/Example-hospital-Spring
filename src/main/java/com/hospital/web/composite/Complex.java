package com.hospital.web.composite;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.hospital.web.domain.ContextDTO;

public class Complex {
	public static class ContextFactory{
	public static ContextDTO create(){
		ContextDTO dto = new ContextDTO();
		String context =  ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest().getContextPath();
		dto.setPath(context);
		dto.setCss(context+"/resources/css");
		dto.setImg(context+"/resources/img");
		dto.setJs(context+"/resources/js");
		return dto;
	}
	}
}
