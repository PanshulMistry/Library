package com.library.servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.itextpdf.text.pdf.codec.Base64.InputStream;
import com.library.bean.Book;
import com.library.service.LibraryService;
import com.library.service.impl.LibraryServiceImpl;

@MultipartConfig(
		fileSizeThreshold = 1024*1024*100,
		maxFileSize = 1024*1024*300,
		maxRequestSize = 1024*1024*100
		)
/**
 * Servlet implementation class AddBook
 */
public class AddBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddBook() {
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
		// .getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		response.setContentType("text/html;charset=UTF-8");
		String bookname = request.getParameter("bookname");
		String authorname = request.getParameter("authorname");

		System.out.println("Bookname:" + bookname);
		System.out.println("Authorname:" + authorname);
		java.io.InputStream i = null;
		java.io.InputStream inputStream = null; // input stream of the upload file

		String message = null;
//         obtains the upload file part in this multipart request
		String date = request.getParameter("publishdate");
		System.out.println("Publish date is:" + date);
		String bookdesc = request.getParameter("bookdesc");
		System.out.println("BookDesc:" + bookdesc);
		Part bookimg = request.getPart("bookimg");
		
		i = bookimg.getInputStream();
		Date publishDate = Date.valueOf(date);
		Part bookpdf = request.getPart("bookpdf");

		inputStream = bookpdf.getInputStream();
		
		Book book = new Book();
		
		book.setBook_name(bookname);
		book.setBook_author(authorname);
		book.setBook_description(bookdesc);
		book.setPublish_date(publishDate);
		book.setImgstream(i);
		book.setBookpdfstream(inputStream);
		String msg="";
		try {
			msg = ls.insertBook(book);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Msg of insert is:"+msg);
	}
}
