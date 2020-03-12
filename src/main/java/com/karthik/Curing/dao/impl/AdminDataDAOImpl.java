package com.karthik.Curing.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.karthik.Curing.dao.AdminDataDAO;
import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.exception.InfoMessages;
import com.karthik.Curing.model.AdminData;
import com.karthik.Curing.testConnection.TestConnection;
import com.karthik.Curing.util.Logger;

public class AdminDataDAOImpl implements AdminDataDAO {
	static Logger logger = Logger.getInstance();

	@Override
	public boolean mailCheck(String email) throws DbException {
		String sql = "Select passwords from admindata where mail_id = ?";
		try (Connection con = TestConnection.getConnection(); PreparedStatement pst = con.prepareStatement(sql);) {
			pst.setString(1, email);
			try (ResultSet rs = pst.executeQuery();) {
				if (rs.next()) {
					return true;
				} else {
					logger.info("Incorrect Email ID or DoesNot Exist");
					return false;
				}
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
			throw new DbException(InfoMessages.mailcheck);
		} catch (Exception e1) {
			e1.printStackTrace();
			throw new DbException(InfoMessages.CONNECTION);
		}
	}

	@Override
	public String password(String email) throws DbException {
		String sql = "Select passwords from admindata where mail_id = ?";
		try(Connection con = TestConnection.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);){
		pst.setString(1, email);
		try(ResultSet rs = pst.executeQuery();){
		rs.next();		
		return rs.getString(1);		
		}
		}
		catch (SQLException e1) {
			throw new DbException(InfoMessages.passwordcheck);
		} 
		 catch (Exception e1) {
				throw new DbException(InfoMessages.CONNECTION);
			}
	}
		
	

	@Override
	public boolean register(int empId, String name, String des, String email, String password, Long mobileNo)
			throws DbException {
		String sql1 = "insert into admindata (employee_id,employee_name,designation,mail_id,passwords,mobile_number) values (?,?,?,?,?,?)";
		try(Connection con1 = TestConnection.getConnection();
		PreparedStatement pst1 = con1.prepareStatement(sql1);){
		pst1.setInt(1, empId);
		pst1.setString(2, name);
		pst1.setString(3, des);
		pst1.setString(4, email);
		pst1.setString(5, password);
		pst1.setLong(6, mobileNo);
		pst1.executeUpdate();
		return true;
		
		}
		catch (SQLException e1) {
			throw new DbException(InfoMessages.adminregister);
		} 
		 catch (Exception e1) {
				throw new DbException(InfoMessages.CONNECTION);
			}
}

	

	@Override
	public ArrayList<AdminData> adminList() throws DbException {
		String sql = "select * from admindata";
		try(Connection con1 = TestConnection.getConnection();
				PreparedStatement pst1 = con1.prepareStatement(sql);){				
				try(ResultSet row1 = pst1.executeQuery();){
				ArrayList<AdminData> ll = new ArrayList<>();
				while(row1.next())
				{
					AdminData aes = valAdminData(row1);
				ll.add(aes);
				}
				return ll;
				}
		}
				
		catch (SQLException e1) {
			throw new DbException(InfoMessages.viewadmin);
		} 
		 catch (Exception e1) {
				throw new DbException(InfoMessages.CONNECTION);
			}
	}
	
	private AdminData valAdminData(ResultSet row1) throws SQLException {
		int a = row1.getInt(1);
		String b = row1.getString(2);
		String c = row1.getString(3);		
		String d = row1.getString(4);
		//String e = "***********";
		String e = row1.getString(5);
		Long f = row1.getLong(6);
		AdminData aes = new AdminData();
		aes.setEmployeeId(a);
		aes.setEmployeeName(b);
		aes.setDesignation(c);
		aes.setEmailId(d);
		aes.setPassword(e);
		aes.setMobileNo(f);
		return aes;
	}
}
