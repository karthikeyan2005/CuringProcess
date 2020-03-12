package com.karthik.Curing.util;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.concurrent.TimeUnit;

import com.karthik.Curing.dao.impl.TemperatureViewDAOImpl;
import com.karthik.Curing.exception.DbException;

public class ReadFile {

	public static void main(String[] args) throws IOException {
		TemperatureViewDAOImpl as = new TemperatureViewDAOImpl();
		String fileName = "C:\\Users\\kart2373\\Desktop\\fileimport.txt";
		Path path = Paths.get(fileName);
		//read all  bytes - Read entire file
		/*
		byte[] bytes = Files.readAllBytes(path);
		String content = new String(bytes);
		System.out.println("File Imported");
		System.out.println(content);*/
		
		
		//Read Lines
		
		List<String> readAllLines  =  Files.readAllLines(path);
		for(String Line : readAllLines)
		{
			float Line1;
			Line1 = Float.parseFloat(Line);
			try {
				as.insertTemp(Line1);
			} catch (DbException e) {
				e.printStackTrace();
			}
			System.out.println(Line);
			try {
			    long secondsToSleep = 1;
				TimeUnit.SECONDS.sleep(secondsToSleep);
			} catch (InterruptedException ie) {
			    Thread.currentThread().interrupt();
			}
		}
		
	}

}
