package com.karthik.Curing.dao;

import java.util.ArrayList;

import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.model.Bonders;

public interface BonderDAO {
	public boolean register(int id,String name,int capacity,int maxTemp,int maxPressure,int status) throws DbException;

	ArrayList<Bonders> bonderList() throws DbException;
}
