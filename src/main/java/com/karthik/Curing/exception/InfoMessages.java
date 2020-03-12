package com.karthik.Curing.exception;

public class InfoMessages {

	private InfoMessages() {
	    throw new IllegalStateException("Utility class");
	  }
   public static final String CONNECTION = "Unable to Establih Connection 'SERVER ERROR'";  
   public static final String updatetemp="Unable to get sensor data";
   public static final String viewtemp="failed at implementation side of temp view";
   public static final String mailcheck="failed at implementation side of mailCheck";
   public static final String passwordcheck="failed at implementation side of passwordCheck";
   public static final String adminregister ="failed at implementation side of adminregister";
   public static final String viewadmin="failed at implementation side of admindata view";
   public static final String adminregister1 ="failed at implementation side of adminregister";
   public static final String viewoperator="failed at implementation side of operatordata view";
   
}
