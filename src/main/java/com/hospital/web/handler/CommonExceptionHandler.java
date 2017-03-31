package com.hospital.web.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice("com.hospital.web.controller")
public class CommonExceptionHandler {
	@ExceptionHandler(RuntimeException.class)
	public String handleRuntimeException(){
		return "public:common/error404";
	}
}
