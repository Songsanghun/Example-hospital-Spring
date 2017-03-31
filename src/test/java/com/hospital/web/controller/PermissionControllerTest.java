package com.hospital.web.controller;

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

import java.util.HashMap;
import java.util.Map;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.hospital.web.domain.Enums;
import com.hospital.web.domain.Patient;
import com.hospital.web.mapper.Mapper;
@RunWith(MockitoJUnitRunner.class)
@ContextConfiguration(locations = "classpath:META-INF/application-context.xml")
@WebAppConfiguration
public class PermissionControllerTest {
	@InjectMocks private PermissionController controller;
	@Autowired WebAppConfiguration wac;
	@Mock private Mapper mapper;
	@Mock Patient patient;
	private MockMvc mvc;
	
	@Before
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);
		mvc=MockMvcBuilders.standaloneSetup(controller).build();
	}
	@Test
	public void nullCheck(){
		MockitoAnnotations.initMocks(this);
		assertTrue(patient != null);
	}
	/*@Test
	public void testLogin() throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("group", patient.getGroup());
		map.put("key", Enums.PATIENT.val());
		map.put("value", "pkim");
		when(mapper.findPatient(map)).thenReturn(patient);
		assertTrue("김성룡".equals(patient.getName()));
		
	}*/
	
	

}
