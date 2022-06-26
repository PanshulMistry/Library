package com.library.service.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.library.bean.Book;
import com.library.bean.Login;
import com.library.dao.LibraryDao;
import com.library.dao.impl.LibraryDaoImpl;
import com.library.service.LibraryService;

public class LibraryServiceImpl implements LibraryService{

	LibraryDao ld = new LibraryDaoImpl();

	public Connection getTheConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "root");
			if (connection != null)
				System.out.println("connection successful");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;

	}

	public List<Book> getBooks() throws SQLException {
		Connection connection = getTheConnection();

		List<Book> bookList = new ArrayList<Book>();
		try {
			bookList = ld.getBooks(connection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bookList;
	}

	public Login userLogin(Login login) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = getTheConnection();
		Login login2 = new Login();
		System.out.println("Service Start");
		login2 = ld.validateUser(connection,login);
		System.out.println("Service End");
		return login2;

	}

	public Book getBookDetails(int bookId) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = getTheConnection();
		System.out.println("Service BookID:"+bookId);
		Book book = new Book();
		book = ld.getBookDetails(connection, bookId);
		return book;
		
	}

	public Book searchBook(String bookname) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = getTheConnection();
		Book book = new Book();
		book = ld.searchBook(connection, bookname);
		return book;
	}
	
	

}
