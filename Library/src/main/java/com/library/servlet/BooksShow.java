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

import com.library.bean.Book;
import com.library.bean.Login;
import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

/**
 * Servlet implementation class BooksShow
 */
public class BooksShow extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BooksShow() {
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
		try {
			HttpSession httpSession = request.getSession(false);
			Login log = (Login) httpSession.getAttribute("loginBean");

			if (log == null) {
				response.sendRedirect("login.jsp");
			} else {
				LibraryService ls = new LibraryServiceImpl();

				List<Book> bookList = new ArrayList<Book>();

				try {
					bookList = ls.getBooks();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				request.setAttribute("books", bookList);

				RequestDispatcher dispatcher = request.getRequestDispatcher("books.jsp");
				dispatcher.forward(request, response);
			}
		} catch (NullPointerException e) {
			response.sendRedirect("login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
