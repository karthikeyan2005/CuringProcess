package com.karthik.Curing;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@ServletComponentScan("com.karthik.Curing.servlet")

public class CuringProcessSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(CuringProcessSpringApplication.class, args);
	}
	public  class CuringProcessSpring extends SpringBootServletInitializer {
		@Override
		protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		   return application.sources(CuringProcessSpringApplication.class);
		}
}}
