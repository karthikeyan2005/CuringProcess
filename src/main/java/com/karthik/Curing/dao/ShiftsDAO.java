package com.karthik.Curing.dao;

import java.util.ArrayList;

import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.model.shifts;

public interface ShiftsDAO {
	public void insertShift(int id,String start,String end) throws DbException;
	
	public ArrayList<shifts> list1() throws DbException;
}
