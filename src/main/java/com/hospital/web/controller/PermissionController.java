package com.hospital.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Info;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
import com.hospital.web.domain.Enums;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.DeleteService;
import com.hospital.web.service.ReadService;

@Controller
@SessionAttributes("permission")
public class PermissionController {
	private static final Logger logger = LoggerFactory.getLogger(PermissionController.class);
	@Autowired
	Mapper mapper;

	@RequestMapping("/login")
	public String login() {
		logger.info("PermissionController - goLogin() {}", "ENTER");
		return "public:common/loginForm";
	}

	@RequestMapping(value = "/{permission}/login", method = RequestMethod.POST)
	public String login(@RequestParam("id") String id, @RequestParam("password") String password,
			@PathVariable String permission, HttpSession session, Model model) throws Exception {
		logger.info("Permission - login() {}", "POST");
		logger.info("Permission - id, pw: {}", id + "," + password);
		String movePosition = "";

		switch (permission) {
		case "patient":
			Person<?> person = new Person<Info>(new Patient());
			Patient patient = (Patient) person.getInfo();
			patient.setId(id);
			patient.setPass(password);
			Map<String, Object> map = new HashMap<>();
			map.put("group", patient.getGroup());
			map.put("key", Enums.PATIENT.val());
			map.put("value", id);
			ReadService existPatient = (paramMap)-> mapper.exist(paramMap);
			Integer count = (Integer) existPatient.execute(map);
			logger.info("ID exist ? {}", count);

			if (count == 0) {
				logger.info("DB RESULT: {}", "ID not exist");
				movePosition = "public:common/loginForm";
			} else {
				ReadService findPatient = (paramMap)->mapper.findPatient(paramMap); 
				patient = (Patient) findPatient.execute(map);
				if (patient.getPass().equals(password)) {
					logger.info("DB RESULT: {}", "success");
					session.setAttribute("permission", patient);
					model.addAttribute("user", patient);
					movePosition = "patient:patient/containerDetail";
				} else {
					logger.info("DB RESULT: {}", "password not match");
					movePosition = "public:common/loginForm";
				}

			}
			break;
		case "doctor":
			person = new Person<Info>(new Doctor());
			Doctor doctor = (Doctor) person.getInfo();
			doctor.setId(id);
			doctor.setPass(password);
			map = new HashMap<>();
			map.put("group", doctor.getGroup());
			map.put("key", Enums.DOCTOR.val());
			map.put("value", id);
			ReadService existDoctor = (o)->mapper.exist(o);
			count = mapper.exist(map);
			logger.info("ID exist ? {}", count);

			if (count == 0) {
				logger.info("DB RESULT: {}", "ID not exist");
				movePosition = "public:common/loginForm";
			} else {
				ReadService findDoctor = (paramMap)-> mapper.findDoctor(paramMap);
				doctor = (Doctor) findDoctor.execute(map);
				if (doctor.getPass().equals(password)) {
					logger.info("DB RESULT: {}", "success");
					session.setAttribute("permission", doctor);
					model.addAttribute("doctor", doctor);
					movePosition = "patient:patient/containerDetail";
				} else {
					logger.info("DB RESULT: {}", "password not match");
					movePosition = "public:common/loginForm";
				}

			}
			break;
		case "nurse":
			person = new Person<Info>(new Nurse());
			Nurse nurse = (Nurse) person.getInfo();
			nurse.setId(id);
			nurse.setPass(password);
			map = new HashMap<>();
			map.put("group", nurse.getGroup());
			map.put("key", Enums.NURSE.val());
			map.put("value", id);
			ReadService existNurse = (paramMap)->mapper.exist(paramMap);
			count = (Integer) existNurse.execute(map);
			logger.info("ID exist ? {}", count);

			if (count == 0) {
				logger.info("DB RESULT: {}", "ID not exist");
				movePosition = "public:common/loginForm";
			} else {
				ReadService findNurse = (o)->mapper.findNurse(o);
				nurse = (Nurse) findNurse.execute(map);
				if (nurse.getPass().equals(password)) {
					logger.info("DB RESULT: {}", "success");
					session.setAttribute("permission", nurse);
					model.addAttribute("nurse", nurse);
					movePosition = "patient:patient/containerDetail";
				} else {
					logger.info("DB RESULT: {}", "password not match");
					movePosition = "public:common/loginForm";
				}

			}
			break;
		default:
			break;
		}
		return movePosition;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update( @RequestParam(value = "pageNo", defaultValue = "1") int pageNo, 
		      @RequestParam (value="id",defaultValue="none") String id,
		      @RequestParam (value="pass",defaultValue="none") String pass,
		      @RequestParam (value="name",defaultValue="none") String name,
		      @RequestParam (value="addr",defaultValue="none") String addr,
		      @RequestParam (value="nurID",defaultValue="none") String nurID,
		      @RequestParam (value="docID",defaultValue="none") String docID,
		      @RequestParam (value="jumin",defaultValue="none") String jumin,
		      @RequestParam (value="gen",defaultValue="none") String gen,
		      @RequestParam (value="phone",defaultValue="none") String phone,
		      @RequestParam (value="email",defaultValue="none") String email,
		      @RequestParam (value="job",defaultValue="none") String job,
		      HttpSession session, Model model
		     ) throws Exception {
			String resultPage = "";
		Person<?> person=new Person<Info>(new Patient());
	      Patient patient=(Patient) person.getInfo();
	      patient=(Patient) session.getAttribute("permission");
	      patient.getId();
	      logger.info("PermissionController() {}", patient.getId() + "===pat_id!!!!!!진입===");
	      patient.setPass(pass);
	      patient.getGen();
	      patient.setEmail(email);
	      patient.setJob("환자");
	      patient.getJumin();
	      patient.setPhone(phone);
	      patient.setDocID(docID);
	      patient.setNurID(nurID);
	      patient.setAddr(addr);
	      patient.getName();
	      logger.info("PermissionController() {}", patient + "===update진입===");
	      int result = mapper.updatePatient(patient);
	      
	      if(result==0){
	    	  resultPage = "patient:patient/updateForm";
	      }else{
	    	  resultPage = "patient:patient/containerDetail";
	    	  logger.info("PermissionController() {}", "=======patient디비수정완료======");
	      }
	    session.setAttribute("permission", patient);
		model.addAttribute("user", patient);
		return resultPage;
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String delete(HttpSession session,
			@RequestParam("id") String id, @RequestParam("password") String password
		) throws Exception{
		String goDeletePage = "";
		Person<?> person = new Person<Info>(new Patient());
		Patient patient = (Patient) person.getInfo();
		
		patient=(Patient) session.getAttribute("permission");
	    String temp = patient.getId();
	    logger.info("PermissionController() {}",  "===temp값 : "+temp+ "Delete진입===");
	    if(temp.equals(id)){
	    	patient.setId(id);
	    }else{
	    	goDeletePage = "patient:patient/deleteForm";
	    }
		patient.setPass(password);
		logger.info("PermissionController() {}", patient + "===delete DB가기 직전===");
		Map<String, Object> map = new HashMap<>();
		map.put("group", patient.getGroup());
		map.put("key", Enums.PATIENT.val());
		map.put("value", id);
		DeleteService deletePatient= (paramMap)->mapper.delete(paramMap); 
		int result = deletePatient.execute(map);
		if(result==0){
			goDeletePage = "patient:patient/deleteForm";
		}else{
			session.invalidate();
			goDeletePage = "public:common/byePage";
		}
		return goDeletePage;
	}
}