package com.karthik.Curing.dao;

import com.karthik.Curing.exception.DbException;

public interface TemperatureMinDAO {
	public void insertMin(int no,float max,float min,float avg) throws DbException;

}
