package com.library.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

/**
 * Servlet implementation class DeleteBook
 */
public class DeleteBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteBook() {
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
		try {
			String bookid = request.getParameter("bookid");
			System.out.println("Delete bookid:" + bookid);
			int bookId = Integer.parseInt(bookid);

			int c = 0;
			try {
				c = ls.getLendBookDetails(bookId);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			System.out.println("No. of lendBooks are:" + c);
			if (c != 0) {
				String msg1 = "";
				try {
					msg1 = ls.deleteLendBook(bookId);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("Delete lend book msg is:" + msg1);

				String msg = "";
				try {
					msg = ls.deleteBook(bookId);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("Delete msg is:" + msg);

			} else {
				String msg = "";
				try {
					msg = ls.deleteBook(bookId);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("Delete msg is:" + msg);
			}
			response.sendRedirect("AdminManageBooks");
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
