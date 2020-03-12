package com.karthik.Curing.testConnection;

	import java.sql.Connection;
	import java.sql.DriverManager;

	import org.springframework.stereotype.Component;

	@Component
	public class TestConnection {
		private TestConnection() {
		}
		public static Connection getConnection()  throws Exception{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//TimeZone.setDefault(TimeZone.getTimeZone("Asia/Kolkata"));
			//Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@13.235.147.120:1521:XE","karthikeyan","karthikeyan");
			Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle");
			return connection;
		}
	}

