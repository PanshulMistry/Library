package com.library.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.library.bean.Lend;
import com.library.bean.Login;
import com.library.bean.Return;
import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

/**
 * Servlet implementation class AdminReturnDetails
 */
public class AdminReturnDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminReturnDetails() {
        super();
        // TODO Auto-generated constructor stub
    }
    LibraryService ls = new LibraryServiceImpl();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession httpSession = request.getSession(false);
		Login login = (Login) httpSession.getAttribute("adminBean");
		if (login == null) {
			response.sendRedirect("login.jsp");
		} else {
			List<Return> returnList = new ArrayList<Return>();
			try {
			   returnList = ls.getReturnDetails();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("returnadmin", returnList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminReturnBook.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
