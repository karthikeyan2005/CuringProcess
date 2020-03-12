package com.karthik.Curing.dao;

import com.karthik.Curing.exception.DbException;

public interface TemperatureViewDAO {
	public void updateTemp(float temp) throws DbException;
	
	public float viewTemp() throws DbException;
	
	public boolean insertTemp(float temp) throws DbException;
}
