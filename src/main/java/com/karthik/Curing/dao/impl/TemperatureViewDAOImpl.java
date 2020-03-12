package com.karthik.Curing.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.karthik.Curing.dao.TemperatureViewDAO;
import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.exception.InfoMessages;
import com.karthik.Curing.testConnection.TestConnection;
import com.karthik.Curing.util.Logger;

public class TemperatureViewDAOImpl implements TemperatureViewDAO{
	Logger logger = Logger.getInstance();
	
	@Override
	public boolean insertTemp(float temp) throws DbException{
		String sql1 = "insert into temperatureview (sectemp) values (?)";
		try(Connection con1 = TestConnection.getConnection();
		PreparedStatement pst1 = con1.prepareStatement(sql1);){
		pst1.setFloat(1, temp);
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
	public void updateTemp(float temp) throws DbException{
		String sql = "update  temperatureview set sectemp = ?";
		try(Connection con = TestConnection.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);)
				{
					pst.setFloat(1, temp);
					int row = pst.executeUpdate();
					logger.info(row);
				}
				catch (SQLException e1) {
					throw new DbException(InfoMessages.updatetemp);
				} 
				 catch (Exception e1) {
						throw new DbException(InfoMessages.CONNECTION);
					}
			
		}


	@Override
	public float viewTemp() throws DbException {
		String sql = "select * from temperatureview"; 
		try(Connection con = TestConnection.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);){			
		try(ResultSet row = pst.executeQuery();){
			float temp = 0;
			if(row.next())
			{
				temp = row.getFloat(1);
				return temp;
			}
		}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DbException(InfoMessages.viewtemp);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new DbException(InfoMessages.CONNECTION);
			
		}
		return 0;}}
