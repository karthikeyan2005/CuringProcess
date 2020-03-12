package com.karthik.Curing.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.karthik.Curing.dao.impl.AdminDataDAOImpl;
import com.karthik.Curing.exception.DbException;
import com.karthik.Curing.util.Logger;
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SignUpServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String employeeid = request.getParameter("employeeid");
		String employeename = request.getParameter("employeename");
		String designation = request.getParameter("designation");
		String email=request.getParameter("email");
		String password = request.getParameter("npass");
		String mobileno = request.getParameter("mobileno");
		AdminDataDAOImpl user1 = new AdminDataDAOImpl();	
		int employeeid1 = Integer.parseInt(employeeid);
		Long mobilenumber = Long.parseLong(mobileno);
		try {
			boolean a = user1.mailCheck(email);
			System.out.println("Servlet - login" + a);
			if (a == true)
			{
				String error = "User Mail Already Exists";
				response.sendRedirect("Register.jsp?result="+error);
			}
			else {
				/*HttpSession session = request.getSession();
				int otp = OTPUtil.getOTP();	
				session.setAttribute("OTP", otp);
				session.setAttribute("username", username);
				session.setAttribute("MailIdRegister", mail);
				session.setAttribute("PasswordRegister", password);
				TestConformEmail.otpjsp(otp, mail);*/
				user1.register(employeeid1, employeename, designation, email, password, mobilenumber);
				RequestDispatcher d = request.getRequestDispatcher("nav1.jsp");
				d.forward(request, response);		
				} }
			catch (DbException e) {
				Logger.error(e.getMessage());
			}
			}

	}

