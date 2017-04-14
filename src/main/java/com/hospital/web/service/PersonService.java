package com.hospital.web.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospital.web.domain.Admin;
import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.mapper.Mapper;

@Service
public class PersonService {
	@Autowired
	Mapper mapper;
	 public Map<?,?> postPatient(Object target) throws Exception{
		   Map<String,String>map = new HashMap<>();
		   IPostService service = (patient)-> (mapper.registPatient(patient));
		   map.put("result", (service.execute(target)==0)?"fail":"success");
		   return map;
	   }
	public Map<?,?> postDoctor(Object target)throws Exception{
		   Map<String,String>map = new HashMap<>();
		   IPostService service = (doctor) -> mapper.registDoctor(doctor);
		   map.put("result", (service.execute(target)==0)?"fail":"success");
		   return map;
	   }
	public Map<?,?> postNurse(Object target)throws Exception{
		   Map<String,String>map = new HashMap<>();
		   IPostService service = (nurse) -> mapper.registNurse(nurse);
		   map.put("result", (service.execute(target)==0)?"fail":"success");
		   return map;
	   }
	public Map<?,?> postAdmin(Object target)throws Exception{
		   Map<String,String>map = new HashMap<>();
		   return map;
	   }
	public Patient getPatient(Map<?, ?> ParamMap) throws Exception {
		IGetService service = (map) -> mapper.findPatient(map);
		return (Patient) service.execute(ParamMap);
	}
	public Doctor getDoctor(Map<?, ?> ParamMap)throws Exception{
		IGetService service = (map) -> mapper.findDoctor(map);
		return (Doctor) service.execute(ParamMap);
	   }

	public Nurse getNurse(Map<?, ?> ParamMap)throws Exception{
		 IGetService service = (map) -> mapper.findNurse(map);
		   return (Nurse) service.execute(ParamMap);
	   }
	public Admin getAdmin()throws Exception{
		   Admin admin = new Admin();
		   return admin;
	   }
	public List<Doctor> getDoctors()throws Exception{
		   List<Doctor> list = new ArrayList<>();
		   return list;
	   }
	public List<Patient> getPatients()throws Exception{
		   List<Patient> list = new ArrayList<>();
		   return list;
	   }
	public List<Nurse> getNurses()throws Exception{
		   List<Nurse> list = new ArrayList<>();
		   return list;
	   }
	public List<Admin> getAdmins()throws Exception{
		   List<Admin> list = new ArrayList<>();
		   return list;
	   }
	public Map<?,?> putDoctor(Object target)throws Exception{
		 Map<String,String>map = new HashMap<>();
		 IPutService service = (Doctor) -> mapper.updateDoctor(Doctor);
		 map.put("result", (service.execute(target)==0)?"fail":"success");
		   return map;
	}
	public Map<?,?> putPatient(Object target)throws Exception{
		 Map<String,String>map = new HashMap<>();
		 IPutService service = (Patient) -> mapper.updatePatient(Patient);
		 map.put("result", (service.execute(target)==0)?"fail":"success");
		   return map;
	}
	public Map<?,?> putNurse(Object target)throws Exception{
		 Map<String,String>map = new HashMap<>();
		 IPutService service = (Nurse) -> mapper.updateNurse(Nurse);
		 map.put("result", (service.execute(target)==0)?"fail":"success");
		   return map;
	}
	public Map<?,?> putAdmin(Object target)throws Exception{
		 Map<String,String>map = new HashMap<>();
		   return map;
	}
	public Map<String,String> delete(Map<String, String> ParamMap)throws Exception{
		Map<String,String>map = new HashMap<>();
		IDeleteService service = (returnMap) -> mapper.delete(returnMap);
		map.put("result", (service.execute(ParamMap)==0)?"fail":"success");
		   return map;
	}
}
