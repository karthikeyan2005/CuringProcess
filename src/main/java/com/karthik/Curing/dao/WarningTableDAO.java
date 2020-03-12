package com.karthik.Curing.dao;

import java.util.ArrayList;

import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.model.WarningTable;

public interface WarningTableDAO {
	public void insertWarningDetails(int bonderId,int shiftId,int bonderOperatorId,float maxTemp,float maxpressure) throws DbException;
	
	public void insertIssue(String issues) throws DbException;
	
	public ArrayList<WarningTable> list1() throws DbException;
}
