package com.karthik.Curing.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class AdminData {
	private int employeeId;
	private String employeeName;
	private String designation;
	private String emailId;
	private String password;
	private long mobileNo;

}
