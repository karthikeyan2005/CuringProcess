package com.karthik.Curing.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class shifts {
	private int shiftId;
	private String shiftStartTime;
	private String shiftEndTime;

}
