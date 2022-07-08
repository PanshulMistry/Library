package com.library.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.library.bean.Login;
import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

/**
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	LibraryService ls = new LibraryServiceImpl();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		System.out.println("entered details "+email+" "+pass);
		
		Login login = new Login();
		
		try {
			login=ls.userLogin(email,pass);
			
			
			if(login!=null)
			{
//					response.getWriter().append("welcome User");
				System.out.println("servlet login fname:"+login.getUser_fname());
				System.out.println("servlet login lname:"+login.getUser_lname());

				if(login.getLogin_email()!=null && login.getLogin_pass()!=null)
				{
					if(login.getUser_role().equals("user"))
					{
						HttpSession httpSession=request.getSession();
						httpSession.setAttribute("loginBean", login);
						RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
						dispatcher.forward(request, response);
					}
					if(login.getUser_role().equals("admin"))
					{
						HttpSession httpSession=request.getSession();
						httpSession.setAttribute("adminBean", login);
						RequestDispatcher dispatcher=request.getRequestDispatcher("AdminHomePage.jsp");
						dispatcher.forward(request, response);
					}
				}
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
