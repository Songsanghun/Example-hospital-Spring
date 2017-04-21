package com.hospital.web.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.hospital.web.domain.Admin;
import com.hospital.web.domain.Chart;
import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.ChartService;
import com.hospital.web.service.PersonService;
@SessionAttributes("storage")
@RestController
public class ChartController {
   private static final Logger logger = LoggerFactory.getLogger(PersonController.class);
   @Autowired Mapper mapper;
   @Autowired Patient patient;
   @Autowired Doctor doctor;
   @Autowired Nurse nurse;
   @Autowired Admin admin;
   @Autowired ChartService chartService;
   @Autowired PersonService personService;
   @Autowired Chart chart;
   @RequestMapping(value ="/get/chart", method = RequestMethod.POST,consumes="application/json")
   public @ResponseBody Map<?,?> getChart(
         @RequestBody Patient p)

   throws Exception {
      logger.info("ChartController-getChart() {} ","enter");
      Map<String,Object>map =new HashMap<>();
      System.out.println("patient 값:"+p.toString());
      logger.info("pname {}" ,p.getId());
      map.put("id", p.getId());
      List<Chart> list=chartService.chartList(map);
      System.out.println("============================"+list+"===================");
      logger.info("---------------------{}------------------------",map.get("id"));
      if(list.isEmpty()){
         logger.info("리스트가 비었다!!! {}" ,"리스트가 없대");
         map.put("result","fail");
      }else{
         map.put("result","success");
         map.put("patient",list.get(0));
         map.put("list",list);
         logger.info("리스트의 들어간 값 보기" ,list);
      }
      return map;
   }
   @RequestMapping(value="/post/chart/id",
         method=RequestMethod.POST)
   public @ResponseBody Map<?,?> sessionChartId(
         @RequestBody Chart c, HttpSession session){
      Map<String,Object>map=new HashMap<>();
      if(!c.getId().equals("")){
         session.setAttribute("storage", c.getId());
         map.put("result","success");
      }else{
         map.put("result","fail");
      }
      return map;
      }
   
   @RequestMapping(value="/post/chart/image",
         method=RequestMethod.POST)
   public @ResponseBody Map<?,?> fileUpload(
         
         MultipartHttpServletRequest request,HttpSession session) throws Exception{
      Map<String,Object>map=new HashMap<>();
      Iterator<String> it=request.getFileNames();
      if(it.hasNext()){
         MultipartFile file=request.getFile(it.next());
         logger.info("file upload result:","success");
         logger.info("upload file:",file.getOriginalFilename());
            logger.info("file up load","success");
            logger.info("file up load name:",file.getName());
            logger.info("file up load size:",file.getSize());
            logger.info("file up load exist:",file.isEmpty());
            logger.info("file up load original name:",file.getOriginalFilename());
            logger.info("file up load file:",file.getOriginalFilename());
            String rootPath=request.getSession().getServletContext().getRealPath("/");
            String uploadPath="resources/img/";
            String filename=file.getOriginalFilename();
            chart.setChartContents(filename);
            chart.setId(session.getAttribute("storage").toString());
            session.invalidate();
            int rs=chartService.registerChartFile(chart);
            if(rs==1){
            File dest=new File(rootPath+uploadPath+filename);
            file.transferTo(dest);
            map.put("result", "success");
            }else{
               map.put("result", "fail");
            }
         }else{
            map.put("result", "fail");
         }
      return map;
   }
}