package com.hospital.web.composite;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


public class Complex {
	public static class ContextFactory{
	public static String create(){
		return ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest().getContextPath();
	}
	}
}
