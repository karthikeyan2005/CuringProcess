package com.karthik.Curing.dao;

import java.util.ArrayList;

import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.model.Datasheet;

public interface DataSheetDAO {
	public void insertDataSheet(Datasheet data) throws DbException;

	public ArrayList<Datasheet> list1() throws DbException;
}
