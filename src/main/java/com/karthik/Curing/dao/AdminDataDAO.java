package com.karthik.Curing.dao;

import java.util.ArrayList;

import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.model.AdminData;

public interface AdminDataDAO {
	
	public boolean mailCheck(String email) throws DbException;
	
	public String password(String email) throws DbException;
	
	public boolean register(int empId,String name,String des,String email,String password,Long mobileNo) throws DbException;

	ArrayList<AdminData> adminList() throws DbException;
}
