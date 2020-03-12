package com.karthik.Curing.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.karthik.Curing.dao.OperatorDataDAO;
import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.exception.InfoMessages;
import com.karthik.Curing.model.OperatorData;
import com.karthik.Curing.testConnection.TestConnection;

public class OperatorDataDAOImpl implements OperatorDataDAO{

	@Override
	public boolean empCheck(int id) throws DbException {
		return false;
	}

	@Override
	public boolean register(int empId, String name, int age, int experience, int rating) throws DbException {
		String sql1 = "insert into operatordata (employee_id,employee_name,age,experience,status) values (?,?,?,?,?)";
		try(Connection con1 = TestConnection.getConnection();
		PreparedStatement pst1 = con1.prepareStatement(sql1);){
		pst1.setInt(1, empId);
		pst1.setString(2, name);
		pst1.setInt(3, age);
		pst1.setInt(4, experience);
		pst1.setInt(5, rating);
	
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
	public ArrayList<OperatorData> operatorList() throws DbException {
			String sql = "select * from operatordata";
			try(Connection con1 = TestConnection.getConnection();
					PreparedStatement pst1 = con1.prepareStatement(sql);){				
					try(ResultSet row1 = pst1.executeQuery();){
					ArrayList<OperatorData> ll = new ArrayList<>();
					while(row1.next())
					{
						OperatorData aes = valOperatorData(row1);
					ll.add(aes);
					}
					return ll;
					}
			}
					
			catch (SQLException e1) {
				throw new DbException(InfoMessages.viewoperator);
			} 
			 catch (Exception e1) {
					throw new DbException(InfoMessages.CONNECTION);
			
}}
	private OperatorData valOperatorData(ResultSet row1) throws SQLException {
		
	int a = row1.getInt(1);
	String b = row1.getString(2);
	int c = row1.getInt(3);		
	int d = row1.getInt(4);
	int e = row1.getInt(5);
	OperatorData aes = new OperatorData();
	aes.setEmployeeId(a);
	aes.setEmployeeName(b);
	aes.setAge(c);
	aes.setExperience(d);
	aes.setRating(e);
	return aes;
}
}
