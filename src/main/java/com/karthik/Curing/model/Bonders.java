package com.karthik.Curing.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class Bonders {
	private int bonderId;
	private String bonderName;
	private int bonderCapacity;
	private int maxTemp;
	private int maxPressure;
	private int status;
	
}
