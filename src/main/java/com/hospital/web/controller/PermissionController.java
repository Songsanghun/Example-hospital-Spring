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
					model.addAttribute("doctor", nurse);
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

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}