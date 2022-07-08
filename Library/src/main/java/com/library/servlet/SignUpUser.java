package com.library.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.bean.Login;
import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

/**
 * Servlet implementation class SignUpUser
 */
public class SignUpUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	LibraryService ls = new LibraryServiceImpl();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String useremail = request.getParameter("useremail");
		String userpass = request.getParameter("userpass");
		String userpassr = request.getParameter("userpassrep");
		String mobileno = request.getParameter("mobileno");
		
		
		Login login = new Login();
		login.setUser_fname(fname);
		login.setUser_lname(lname);
		login.setLogin_email(useremail);
		login.setLogin_pass(userpass);
		login.setMobile_number(mobileno);
		login.setUser_role("user");
		
		if(login!=null)
		{
			
			String msg="";
			try {
				msg = ls.insertUser(login);
			} catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("login.jsp");
		}
	}

}
