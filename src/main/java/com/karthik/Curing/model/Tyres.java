package com.karthik.Curing.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class Tyres {
	private int tyreNo;
	private int tyreModel;
	private int curingDuration;
	private int minCuringTemperature;
	private int maxCuringTemperature;
	private int minCuringPressure;
	private int maxCuringPressure;

}
