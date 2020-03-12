package com.karthik.Curing.model;

import java.time.LocalDate;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class WarningTable {
	private LocalDate operationDate;
	private int bonderId;
	private int shiftId;
	private int bonderOperatorId;
	private float maxTemp;
	private float maxPressure;
	private String issues;
	
}
