package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hospital.web.mapper.Mapper;

@RestController
@RequestMapping(value="/patient")
public class PatientController {
   
   private static final Logger logger = LoggerFactory.getLogger(PatientController.class);

   @Autowired Mapper mapper;
   @RequestMapping(value="/join")
   public String goJoin(){
      logger.info("PatientController - goJoin {}","ENTER");
      return "public:patient/registerForm";
   }
   @RequestMapping(value="/goUpdate")
   public String goUpdate(){
      logger.info("PatientController - goUpdate {}","ENTER");
      return "public:patient/updateForm";
   }
   @RequestMapping(value="/goDelete")
   public String goDelete(){
      logger.info("PatientController - goDelete {}","ENTER");
      return "public:patient/deleteForm";
   }
  
   
   @RequestMapping(value="/doctor/{docID}")
   public String getDoctorInfo(@PathVariable String docID){
      logger.info("PatientController - getDoctorInfo {}","BTN POST");
      logger.info("PatientController - docID={}",docID);
      return "patient:patient/doctorInfo";
   }
}