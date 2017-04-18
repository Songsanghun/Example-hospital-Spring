package com.hospital.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.text.html.HTMLDocument.HTMLReader.ParagraphAction;

import org.apache.ibatis.binding.MapperMethod.ParamMap;
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

   @RequestMapping(value = "/post/patient", method = RequestMethod.POST,
		   consumes = "application/json")
   public @ResponseBody Map<?,?> register(
      @RequestBody Patient p
   ) throws Exception {
      logger.info("PersonController() {}", "register진입");
      Map<String,String>map = new HashMap<>();
      logger.info("PersonController() {}", p + "register진입");
      map.put("name", p.getName());
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
   public @ResponseBody Map<?,?> login(
		   @RequestBody Map <String,String>paramMap) throws Exception{
	   Map<String,String>map = new HashMap<>();
	   logger.info("PersonController - login() {}!!","ENTER");
	   String id = paramMap.get("id");
	   String pass = paramMap.get("pass");
	   System.out.println("넘어온 id : "+id);
	   System.out.println("넘어온 pass : "+pass);
	   // exist
	   // SELECT COUNT(*) FROM ${group} WHERE ${idType} = #{id}
	   String[] groupArr = {"Patient/pat_id/"+id,"Doctor/doc_id/"+id,"Nurse/nurse_id/"+id};
	   String target = "";
	   for(int i=0;i<groupArr.length;i++){
		   String[] temp = groupArr[i].split("/");
		   paramMap.put("group", temp[0]);
		   paramMap.put("idType", temp[1]);
		   paramMap.put("id", temp[2]);
		   System.out.println("=======DB가기전 id======"+paramMap.get("id"));
		   int rs = personService.exist(paramMap);
		   System.out.println("rs값?????????????"+rs);
		   System.out.println("=======DB간후 id======"+paramMap.get("id"));
		   if(rs!=0){
			   target = groupArr[i];
			   System.out.println("==DB 다녀온 Target===" + target);
			   break;
		   }
	   }
	   if(target.equals("")){
		   System.out.println("======target nonononono======"+target);
		   map.put("result", "fail");
	   }else{
		   System.out.println("======target okokokokokok======"+target);
		   map.put("result", "success");
		   String[] arr = target.split("/");
		   String[] arrTemp = arr[0].split("/");
		   System.out.println("--------------"+arr[0]);
		   System.out.println("=============="+arrTemp[0]);
		   switch (arr[0]) {
		   case "Patient":
			System.out.println("========================"+arr[0]);
			System.out.println("========================"+arrTemp[0]);
			paramMap.clear();
			paramMap.put("group", arr[0]);
			paramMap.put("key", arr[1]);
			paramMap.put("value", arr[2]);
			Patient patient = personService.getPatient(paramMap);
			map.put("name", patient.getName());
			map.put("group", "고객");
			System.out.println("===name==="+map.get("name"));
			break;
		   case "Doctor":
			paramMap.clear();
			paramMap.put("group", arrTemp[0]);
			paramMap.put("key", arrTemp[1]);
			paramMap.put("value", id);
			Doctor doctor = personService.getDoctor(paramMap);
			map.put("name", doctor.getName());
			map.put("group", "의사");
			break;
		   case "Nurse":
			paramMap.clear();
			paramMap.put("group", arrTemp[0]);
			paramMap.put("key", arrTemp[1]);
			paramMap.put("value", id);   
			Nurse nurse = personService.getNurse(paramMap);
			map.put("name", nurse.getName());
			map.put("group", "간호사");
			break;	
		   default:
			break;
		}
	   }
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
   
   
   
   
   
   
   
   
 