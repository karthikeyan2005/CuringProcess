package com.karthik.Curing.dao;

import java.util.ArrayList;

import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.model.Tyres;

public interface TyresDAO {
	public void insertTyre(Tyres tyre) throws DbException;
	
	public ArrayList<Tyres> list1() throws DbException;

}
