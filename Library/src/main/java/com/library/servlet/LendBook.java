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
import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

/**
 * Servlet implementation class LendBook
 */
public class LendBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LendBook() {
		super();
		// TODO Auto-generated constructor stub
	}
	LibraryService ls = new LibraryServiceImpl();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		String p = request.getParameter("page");
		int page = Integer.parseInt(p);
		HttpSession httpSession = request.getSession(false);
		Login login = (Login) httpSession.getAttribute("loginBean");
		if (login == null) {
			response.sendRedirect("login.jsp");
		} else {
			if (page == 1) {
				String bookid = request.getParameter("book");
				System.out.println("BOOK LEND SERVLET");
				
				Lend lend = new Lend();
				int loginId = login.getLogin_id();
				int bookId = Integer.parseInt(bookid);
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				java.util.Date date = new java.util.Date();
				System.out.println(formatter.format(date));
				String d = formatter.format(date);
				Date lendDate = Date.valueOf(d);

				System.out.println("LoginId:" + loginId);
				System.out.println("BookID:" + bookId);
				System.out.println("LendDate:" + lendDate);

				lend.setLogin_id(loginId);
				lend.setBook_id(bookId);
				lend.setLend_date(lendDate);

				String msg = "";
				try {
					msg = ls.insertLendBook(lend);
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				System.out.println("Msg is:" + msg);
				List<Lend> lendList = new ArrayList<Lend>();

				try {
					lendList = ls.getlendDetails();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("LendList:" + lendList.toString());
				request.setAttribute("lendbooks", lendList);
				RequestDispatcher dispatcher = request.getRequestDispatcher("lend.jsp");
				dispatcher.forward(request, response);
			}
			if (page == 2) {
				List<Lend> lendList1 = new ArrayList<Lend>();

				try {
					lendList1 = ls.getlendDetails();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("LendList for lend button:" + lendList1.toString());
				request.setAttribute("lendbooks", lendList1);
				RequestDispatcher dispatcher = request.getRequestDispatcher("lend.jsp");
				dispatcher.forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

	}

}
