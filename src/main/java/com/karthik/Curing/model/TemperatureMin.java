package com.karthik.Curing.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class TemperatureMin {
	private int minuteNo;
	private float maxTemp;
	private float minTemp;
	private float avgTemp;
}
