package com.hospital.web.domain;
import org.springframework.stereotype.Component;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Data
public class Admin {

	@Getter @Setter
	private String admID,admPass,admName,admGen,admPhone,admEmail,admPermission;
}
