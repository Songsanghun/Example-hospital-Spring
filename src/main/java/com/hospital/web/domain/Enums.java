package com.hospital.web.domain;

public enum Enums {
	PATIENT("pat_id"),DOCTOR("doc_id"),NURSE("nurse"),ADMIN("id"),
	PAGE_SIZE("5"),BLOCK_SIZE("5");
	private String val;
	Enums(String val){
		this.val=val;
	}
	public String val(){
		return val;
	}
}
