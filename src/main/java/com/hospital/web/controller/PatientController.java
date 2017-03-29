package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hospital.web.mapper.Mapper;

@Controller
@RequestMapping(value="/patient")
public class PatientController {
   
   private static final Logger logger = LoggerFactory.getLogger(PatientController.class);

   @Autowired Mapper mapper;
   @RequestMapping(value="/join")
   public String goJoin(){
      logger.info("PatientController - goJoin {}","ENTER");
      return "public:patient/registerForm";
   }
   
  
   
   @RequestMapping(value="/doctor/{docID}")
   public String getDoctorInfo(@PathVariable String docID){
      logger.info("PatientController - getDoctorInfo {}","BTN POST");
      logger.info("PatientController - docID={}",docID);
      return "patient:patient/doctorInfo";
   }
}