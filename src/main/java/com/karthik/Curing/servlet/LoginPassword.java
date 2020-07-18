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
@WebServlet("/LoginPassword")
public class LoginPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginPassword() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mail = (String)session.getAttribute("Usermail");
		String password = request.getParameter("password");
		System.out.println(mail);
		System.out.println(password);
		AdminDataDAOImpl user1 = new AdminDataDAOImpl();		
		try {
			String Pass = user1.password(mail);
			if (Pass.equals(password))
			{
				response.sendRedirect("Index.jsp");
			}
			else
			{
				String error = "Incorrect Password";
				response.sendRedirect("LoginPass.jsp?result="+error);
			}
		}
		catch (DbException e) {
			Logger.error(e.getMessage());
		}
	}

}
