package com.karthik.Curing.dao;

import com.karthik.Curing.exception.DbException;

public interface TempSecDAO {
	public void insertSec(int sec,float temp) throws DbException;

}
