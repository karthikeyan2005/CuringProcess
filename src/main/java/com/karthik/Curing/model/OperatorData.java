package com.karthik.Curing.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class OperatorData {
	private int employeeId;
	private String employeeName;
	private int age;
	private int experience;
	private int rating;

}
