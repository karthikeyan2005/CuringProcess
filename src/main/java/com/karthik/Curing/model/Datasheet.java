package com.karthik.Curing.model;

import java.time.LocalDate;
import java.time.LocalTime;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class Datasheet {
	private LocalDate operationDate;
	private int batchId;
	private int shiftId;
	private String tyreUniqueId;
	private int bonderId;
	private float maxTempReached;
	private LocalTime maxTempTime;
	private float maxPressureReached;
	private LocalTime maxPressureTime;
	private float avgTemp;
	private float avgPressure;
	private LocalTime operationStart;
	private LocalTime operationEndTime;
	private LocalTime operationDuration;
	private int bonderOperatorId;
	private String issues;

}
