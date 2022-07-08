package com.library.servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.library.bean.Book;
import com.library.bean.Login;
import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 100, maxFileSize = 1024 * 1024 * 300, maxRequestSize = 1024 * 1024
		* 100)
/**
 * Servlet implementation class AdminEditBook
 */
public class AdminEditBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditBook() {
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
		HttpSession httpSession = request.getSession(false);
		Login login = (Login) httpSession.getAttribute("adminBean");
		if (login == null) {
			response.sendRedirect("login.jsp");
		} else {
			String p = request.getParameter("page");
			if (p.equals("1")) {
				String bid = request.getParameter("bookid");
				int bookId = Integer.parseInt(bid);
				Book book = new Book();
				try {
					book = ls.getBookDetails(bookId);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("book", book);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("AdminUpdateBook.jsp");
				requestDispatcher.forward(request, response);
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
		HttpSession httpSession = request.getSession(false);
		Login login = (Login) httpSession.getAttribute("adminBean");
		if (login == null) {
			response.sendRedirect("login.jsp");
		} else {
			String p = request.getParameter("page");
			if (p.equals("2")) {
				String bid = request.getParameter("bookid");
				int bookId = Integer.parseInt(bid);
				String bookname = request.getParameter("bookname");
				String authorname = request.getParameter("authorname");

				java.io.InputStream i = null;
				java.io.InputStream inputStream = null;

				String message = null;

				String date = request.getParameter("publishdate");
				System.out.println("Publish date is:" + date);
				String bookdesc = request.getParameter("bookdesc");

				Part bookimg = request.getPart("bookimg");
				if (bookimg.getSize() > 0 && bookimg != null) {
					i = bookimg.getInputStream();
					System.out.println(bookimg.getName() + " " + bookimg.getSize());
				}

				Date publishDate = Date.valueOf(date);
				Part bookpdf = request.getPart("bookpdf");
				if (bookpdf.getSize() > 0 && bookpdf != null) {
					inputStream = bookpdf.getInputStream();
					System.out.println(bookpdf.getName() + " " + bookpdf.getSize());
				}

				Book book = new Book();
				book.setBook_id(bookId);
				book.setBook_name(bookname);
				book.setBook_author(authorname);
				book.setBook_description(bookdesc);
				book.setPublish_date(publishDate);
				book.setImgstream(i);
				book.setBookpdfstream(inputStream);

				String msg = "";
				try {
					msg = ls.updateBook(book);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("Update msg is:" + msg);
				response.sendRedirect("AdminManageBooks");
			}
		}
	}

}
