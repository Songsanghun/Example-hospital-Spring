package com.hospital.web.domain;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Component @Data @Lazy
public class Chart {
   @Getter
   @Setter
   private String id, patientId, nurseId, doctorId, pass,name,gen, jumin,
            addr,phone,email,job,treatmentId,chartContents,doctorMajor,doctorName,doctorPosition,nurseName
            ,nurPosition,treatContents,treatDate;
}