/*package com.hospital.web.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hospital.web.domain.Command;
import com.hospital.web.domain.Person;
import com.hospital.web.mapper.Mapper;

@Controller
public class PersonController {
	private static final Logger logger = LoggerFactory.getLogger(PatientController.class);
	@Autowired Mapper Mapper;
	@RequestMapping(value="/register/{type}",method=RequestMethod.POST)
	public String goRegister(
			Command command, //Command 를 주입한다.
			@RequestBody Map<String,Object>map,
			@PathVariable String type) throws Exception{
		logger.info("PersonController - register() {} !!","ENTER");
		if(type.equals("")){type = "patient";}
		map.put("type", type);
		Person<?> person = command.process(map).getPersonInfo();
		int result = 0;
		switch (type) {
		case "patient":
			result = Mapper.registPatient(person);
			break;
		case "doctor":
			result = Mapper.registDoctor(person);
			break;
		case "nurse":
			result = Mapper.registNurse(person);
			break;
		case "admin":
			result = Mapper.registPatient(person);
			break;	
		default:
			break;
		}
		if(result==1){
			return "public:common/logionForm";
		}else{
			return "redirect:/{type}/registerForm";
		}
	}
	
	
	
	@RequestMapping(value="/detail/{docID}")
	public String detail(@PathVariable String docID){
		logger.info("DoctorController - goLogin() {} !!","ENTER");
		if(docID.equals("")){return "redirect:/{permission}/login";}
			return "public:common/logionForm";
	}
}
*/
package com.hospital.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Info;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
import com.hospital.web.mapper.Mapper;

@Controller
public class PersonController {
   private static final Logger logger = LoggerFactory.getLogger(PersonController.class);
   @Autowired
   Mapper mapper;

   @RequestMapping(value = "/register/{type}", method = RequestMethod.POST)
   public String register(
      @RequestParam(value = "pageNo", defaultValue = "1") int pageNo, 
      @PathVariable String type,
    @RequestParam (value="id",defaultValue="none") String id,
    @RequestParam (value="pass",defaultValue="none") String pass,
    @RequestParam (value="name",defaultValue="none") String name,
    @RequestParam ("addr") String addr,
    @RequestParam (value="nurID",defaultValue="none") String nurID,
    @RequestParam (value="jumin",defaultValue="none") String jumin,
    @RequestParam (value="gen",defaultValue="none") String gen,
    @RequestParam (value="phone",defaultValue="none") String phone,
    @RequestParam (value="email",defaultValue="none") String email
   ) throws Exception {
      logger.info("PersonController() {}", "register진입" + type);
      String pageGo = "";
      Person<?> person=new Person<Info>(new Patient());
      Patient patient=(Patient) person.getInfo();
      patient.setId(id);
      patient.setPass(pass);
      patient.setGen(gen);
      patient.setEmail(email);
      patient.setJob("");
      patient.setJumin(jumin);
      patient.setPhone(phone);
      patient.setDocID("");
      patient.setNurID("");
      patient.setAddr(addr);
      patient.setName(name);
      logger.info("PersonController() {}", patient + "register진입");
      if ("".equals(type)) {
         type = "patient";
      }
      int result = 0;
      switch (type) {
      case "patient":
         logger.info("PersonController() {}", "=======patient회원가입진입======"+patient);
         result = mapper.registPatient(patient);
         logger.info("PersonController() {}", "=======patient회원가입진입======");
         break;
      }

      if (result == 1) {
         logger.info("PersonController() {}", "=======patient회원가입 진입======");
         pageGo = "public:common/loginForm";
      } else {
    	  pageGo ="public:patient/registerForm";
      }
      return pageGo;
   }
}
   
   
   
   
   
   
   
   
   
   
   /*@RequestMapping("/detail/{docID}")
   public String Detail(@PathVariable String docID) {
      logger.info("PersonController() {}", "진입");
      if (docID.equals("")) {
         return "redirect:/{permission}/login";
      }
      return "public:common/loginForm";

   }

}
*/



/*
 * case "doctor": result=mapper.registDoctor(doctor);break; case
 * "nurse": result=mapper.registNurse(nurse);break; case "admin":
 * 
 * break;
 */






   /*
    * @RequestMapping(value="update/{type}",method=RequestMethod.POST) public
    * String update(
    * 
    * @PathVariable String type,
    * 
    * @RequestBody Map<String,Object>map, Command command) throws Exception{
    * logger.info("PersonController() {}","update진입");
    * if(type.equals("")){type="patient";} int result=0; switch(type){ case
    * "patient": result=mapper.updatePatient(person); break; case "doctor":
    * result=mapper.updateDoctor(person); break; case "nurse":
    * result=mapper.updateNurse(person); break; case "admin": break; } return
    * null; }
    * 
    * @RequestMapping(value="delete/{type}",method=RequestMethod.POST) public
    * String delete(
    * 
    * @PathVariable String type){
    * logger.info("PersonContoller() {}","delete 진입");
    * if(type.equals("")){type="patient";} switch(type){ case "patient":
    * result=mapper.delete(person); break; } return ""; }
    */

   
