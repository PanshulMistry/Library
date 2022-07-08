package com.library.servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
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
 * Servlet implementation class ReturnBook
 */
public class ReturnBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReturnBook() {
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
		String bookid = request.getParameter("bookid");
		int bookId = Integer.parseInt(bookid);
		HttpSession httpSession = request.getSession(false);
		Login login = (Login) httpSession.getAttribute("loginBean");
		if (login == null) 
		{
			response.sendRedirect("login.jsp");
		}
		Return r = new Return();
		int loginId = login.getLogin_id();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date = new java.util.Date();
		System.out.println(formatter.format(date));
		String d = formatter.format(date);
		Date returnDate = Date.valueOf(d);
		
		r.setBooktable_id(bookId);
		r.setLogintable_id(loginId);
		r.setReturn_date(returnDate);
		
		System.out.println("LoginId:" + r.getLogintable_id());
		System.out.println("BookID:" + r.getBooktable_id());
		System.out.println("ReturnDate:" + r.getReturn_date());
		
		String msg = "";
		try {
			msg = ls.insertReturnBook(r);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("Msg is:" + msg);
		
		String msg1="";
		
		try {
			msg1 = ls.deleteLendBook(bookId);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("Msg of delete is:" + msg1);
		
		
		List<Return> returnList = new ArrayList<Return>();

		try {
			returnList = ls.getReturnUser(loginId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("returnbooks", returnList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("return.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
