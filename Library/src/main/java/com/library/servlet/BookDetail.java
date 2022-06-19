package com.library.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.bean.Book;
import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

/**
 * Servlet implementation class BookDetail
 */
public class BookDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    LibraryService ls =new LibraryServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String bid = request.getParameter("bookid");
		int bookId = Integer.parseInt(bid);
		System.out.println("Book id is:"+bookId);
		Book book = new Book();
		try {
			book = ls.getBookDetails(bookId);
			
			request.setAttribute("bookdetails", book);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("books-detail.jsp");
			dispatcher.forward(request, response);
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
