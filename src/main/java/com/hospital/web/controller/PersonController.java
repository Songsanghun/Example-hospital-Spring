package com.hospital.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.hospital.web.domain.Admin;
import com.hospital.web.domain.Command;
import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Enums;
import com.hospital.web.domain.Info;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.IGetService;
import com.hospital.web.service.IPostService;
import com.hospital.web.service.PersonService;

@RestController
public class PersonController {
   private static final Logger logger = LoggerFactory.getLogger(PersonController.class);
   @Autowired Mapper mapper;
   @Autowired Doctor doctor;
   @Autowired Patient patient;
   @Autowired Nurse nurse;
   @Autowired PersonService personService;

   @RequestMapping(value = "/post/{group}", method = RequestMethod.POST,
		   consumes = "application/json")
   public @ResponseBody Map<?,?> register(
      @RequestParam(value = "pageNo", defaultValue = "1") int pageNo, 
      @PathVariable String group,
      @SuppressWarnings("rawtypes") @RequestBody Person target,
      Command command
   ) throws Exception {
      logger.info("PersonController() {}", "register진입");
      Map<?,?>map = new HashMap<>();
      logger.info("PersonController() {}", patient + "register진입");
      switch(group){
      case "patient": map = personService.postPatient(target); break;
      case "doctor": map = personService.postDoctor(target); break;
      case "nurse": map = personService.postNurse(target); break;
      case "admin": map = personService.postAdmin(target); break;
      default: break;
      }
      return map;
   }
   @RequestMapping("/get/{group}/{target}")
   // get/patient/pkim
   public @ResponseBody Object get(
		   @PathVariable("group") String group,
		   @PathVariable("target") String target) throws Exception{
	   logger.info("personController - get() {}",group);
		Map<String, Object> map = new HashMap<>();
	   Object o= null;
	   switch(group){
	   case "patient":
		   logger.info("group.equals({})",group);
			map.put("group", patient.getGroup());
			map.put("key", Enums.PATIENT.val());
			map.put("value", target);
			logger.info("=========아이디 값!!!!!!!({})",target);
		   o = personService.getPatient(map);
		   logger.info("환자 조회 결과 이름({})",o.getClass().getName());
		   break;
	   case "doctor": 
		   logger.info("group.equals({})",group);
		   map.put("group", doctor.getGroup());
		   map.put("key", Enums.DOCTOR.val());
		   map.put("value", target);
		   o = personService.getDoctor(map);
		   break; 
	   case "nurse": 
		   logger.info("group.equals({})",group);
		   map.put("group", nurse.getGroup());
		   map.put("key", Enums.NURSE.val());
		   map.put("value", target);
		   o = personService.getNurse(map);
		   break; 
	   case "admin": 
		   logger.info("group.equals({})",group);
		   o = personService.getAdmin();
		   break; 
	   }
	   return o;
   }
   @RequestMapping(value = "/login", method = RequestMethod.POST,
		   consumes = "application/json")
   public @ResponseBody Map<?,?> login(){
	   Map<String,String>map = new HashMap<>();
	   logger.info("PersonController - login() {}!!","ENTER");
	   map.put("name", "홍길동");
	   map.put("login", "success");
	   return map;
   }
   
   @RequestMapping("/list/{group}")
   public @ResponseBody List<?> list(
		   @PathVariable String group,
		   @RequestBody Command command) throws Exception{
	   List<?> list = new ArrayList<>();
	   switch(group){
	   case "patient":
		   logger.info("group.equals({})",group);
		   list = personService.getPatients();
		   break; 
	   case "doctor": 
		   logger.info("group.equals({})",group);
		   list = personService.getDoctors();
		   break; 
	   case "nurse": 
		   logger.info("group.equals({})",group);
		   list = personService.getNurses();
		   break; 
	   case "admin": 
		   logger.info("group.equals({})",group);
		   list= personService.getAdmins();
		   break; 
	   }
	   return list;
   }
   
   @RequestMapping(value = "/put/{group}/",
		   method = RequestMethod.POST,
		   consumes = "application/json")
   public @ResponseBody Map<?,?> put(
		   @PathVariable String group,
		   @SuppressWarnings("rawtypes") @ RequestBody Person target
		   )throws Exception {
	   Map<?,?>map = new HashMap<>();
	   switch(group){
	   case "patinet" : map = personService.putPatient(target); break;
	   case "doctor" : map = personService.putDoctor(target); break;
	   case "nurse" : map = personService.putNurse(target); break;
	   case "admin" : map = personService.putAdmin(target); break;
	   }
	   return map;
   }
   @RequestMapping(value = "/put/{group}/{target}",
		   method = RequestMethod.POST,
		   consumes = "application/json")
   public @ResponseBody Map<?,?> delete(
		   @PathVariable("group") String group,
		   @PathVariable("target") String target,
		   @RequestBody Map<?,?> param)throws Exception {
	   Map<String,String>map = new HashMap<>();
	   switch(group){
	   case "patinet" : 
		   map.put("group", patient.getGroup());
		   map.put("key", Enums.PATIENT.val());
		   map.put("value", target);
		   map = personService.delete(map); break;
	   case "doctor" :
		   map.put("group", doctor.getGroup());
		   map.put("key", Enums.DOCTOR.val());
		   map.put("value", target);
		   map = personService.delete(map); break;
	   case "nurse" :
		   map.put("group", nurse.getGroup());
		   map.put("key", Enums.NURSE.val());
		   map.put("value", target);
		   map = personService.delete(map); break;
	   case "admin" : 
		   map = personService.delete(map); break;
	   }
	   return map;
   }

}
   
   
   
   
   
   
   
   
 