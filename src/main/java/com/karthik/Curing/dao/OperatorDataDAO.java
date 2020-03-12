package com.karthik.Curing.dao;

import java.util.ArrayList;

import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.model.OperatorData;

public interface OperatorDataDAO {
	public boolean empCheck(int id) throws DbException;

	public boolean register(int empId, String name, int age,int experience,int rating)
			throws DbException;

	ArrayList<OperatorData> operatorList() throws DbException;
}
