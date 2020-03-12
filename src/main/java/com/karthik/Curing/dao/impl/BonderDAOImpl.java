package com.karthik.Curing.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.karthik.Curing.dao.BonderDAO;
import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.exception.InfoMessages;
import com.karthik.Curing.model.Bonders;
import com.karthik.Curing.testConnection.TestConnection;

public class BonderDAOImpl implements BonderDAO{

	@Override
	public boolean register(int id, String name, int capacity, int maxTemp, int maxPressure, int status)
			throws DbException {
		String sql1 = "insert into bonders (bonder_id,bonder_name,bonder_capacity,max_temp,max_pressure,status) values (?,?,?,?,?,?)";
		try(Connection con1 = TestConnection.getConnection();
		PreparedStatement pst1 = con1.prepareStatement(sql1);){
		pst1.setInt(1, id);
		pst1.setString(2, name);
		pst1.setInt(3, capacity);
		pst1.setInt(4, maxTemp);
		pst1.setInt(5, maxPressure);
		pst1.setInt(6, status);
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
	public ArrayList<Bonders> bonderList() throws DbException {
		String sql = "select * from bonders";
		try(Connection con1 = TestConnection.getConnection();
				PreparedStatement pst1 = con1.prepareStatement(sql);){				
				try(ResultSet row1 = pst1.executeQuery();){
				ArrayList<Bonders> ll = new ArrayList<>();
				while(row1.next())
				{
					Bonders aes = valBonders(row1);
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
	
	private Bonders valBonders(ResultSet row1) throws SQLException {
		int a = row1.getInt(1);
		String b = row1.getString(2);
		int c = row1.getInt(3);		
		int d = row1.getInt(4);
		int e = row1.getInt(5);
		int f = row1.getInt(6);
		Bonders aes = new Bonders();
		aes.setBonderId(a);
		aes.setBonderName(b);
		aes.setBonderCapacity(c);
		aes.setMaxTemp(d);
		aes.setMaxPressure(e);
		aes.setStatus(f);
		return aes;
	}
	}


