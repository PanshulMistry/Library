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
		login.setLogin_email(email);
		login.setLogin_pass(pass);
		System.out.println("----------");
		System.out.println("Servlet Login email:"+login.getLogin_email());
		System.out.println("Servlet Login pass:"+login.getLogin_pass());
		Login login2 = new Login();
		try
		{
			login2=ls.userLogin(login);
			System.out.println("Database user Email:"+login2.getLogin_email());
			System.out.println("Database Password:"+login2.getLogin_pass());
			if(login2.getLogin_email()!=null && login2.getLogin_pass()!=null)
			{
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("loginBean", login2);

				RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
			}
			else
			{
				RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}

	}

}
