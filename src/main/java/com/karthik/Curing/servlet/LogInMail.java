package com.karthik.Curing.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.karthik.Curing.dao.impl.AdminDataDAOImpl;
import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.util.Logger;
@WebServlet("/LogInMail")
public class LogInMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogInMail() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");		
		AdminDataDAOImpl user1 = new AdminDataDAOImpl();		
		try {
			boolean a = user1.mailCheck(email);
			System.out.println("Servlet - login" + a);
			if (a == true)
			{
				HttpSession session = request.getSession();
				session.setAttribute("Usermail", email);
				System.out.println(email);
				response.sendRedirect("LoginPass.jsp?mail="+email+"");
			}
			else {
				String error = "UserMail Does Not Exists";
				response.sendRedirect("LoginMailId.jsp?result="+error);
				} }
			catch (DbException e) {
				Logger.error(e.getMessage());
			}
			}
		
	}


