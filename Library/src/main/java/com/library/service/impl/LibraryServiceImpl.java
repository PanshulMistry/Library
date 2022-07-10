package com.library.service.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.library.bean.Book;
import com.library.bean.Lend;
import com.library.bean.Login;
import com.library.bean.Return;
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

//	public Login userLogin(Login login) throws SQLException {
//		// TODO Auto-generated method stub
//		Connection connection = getTheConnection();
//		Login login2 = new Login();
//		login2 = ld.validateUser(connection,login);
//		System.out.println();
//		return login2;
//
//	}

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

	public String insertLendBook(Lend lend) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = getTheConnection();
		String msg = ld.insertLendBook(connection, lend);
		return msg;
	}

	public List<Lend> getlendDetails() throws SQLException {
		Connection connection = getTheConnection();

		List<Lend> lendList = new ArrayList<Lend>();
		try {
			lendList = ld.getLendDetails(connection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return lendList;
	}

	public Login userLogin(String email, String pass) throws SQLException {
		// TODO Auto-generated method stub
		Login login;
		Connection connection = getTheConnection();
		login = ld.validateUser(connection, email, pass);
		return login;
	}

	public String insertReturnBook(Return r) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = getTheConnection();
		String msg = ld.insertReturnBook(connection, r);
		return msg;
	}

	public List<Return> getReturnDetails() throws SQLException {
		Connection connection = getTheConnection();
		List<Return> returnList = new ArrayList<Return>();
		try {
			returnList = ld.getReturnDetails(connection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return returnList;	
	}

	public String deleteLendBook(int bookId) throws Exception{
		// TODO Auto-generated method stub
		String msg="";
		Connection connection = getTheConnection();
		try {
			msg=ld.deleteLendBook(connection, bookId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return msg;
	}

	public String insertBook(Book book) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = getTheConnection();
		String msg = ld.insertBook(connection, book);
		return msg;
	}

	public String updateBook(Book book) throws SQLException {
		// TODO Auto-generated method stub
		String msg="";
		Connection connection = getTheConnection();
		msg=ld.updateBook(connection, book);
		return msg;
	}

	public String deleteBook(int bookId) throws Exception {
		// TODO Auto-generated method stub
		String msg="";
		Connection connection = getTheConnection();
		try {
			msg=ld.deleteBook(connection, bookId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return msg;
	}

	public int getLendBookDetails(int bookId) throws SQLException {
		// TODO Auto-generated method stub
		int c;
		Connection connection = getTheConnection();
		c = ld.getLendBookDetails(connection, bookId);
		return c;
	}

	public List<Lend> getLendUser(int loginId) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = getTheConnection();
		List<Lend> lendList = new ArrayList<Lend>();
		try {
			lendList = ld.getLendUser(connection,loginId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return lendList;
	}
	
	public List<Return> getReturnUser(int loginId) throws SQLException {
		Connection connection = getTheConnection();
		List<Return> returnList = new ArrayList<Return>();
		try {
			returnList = ld.getReturnUser(connection, loginId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return returnList;	
	}

	public String insertUser(Login login) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = getTheConnection();
		String msg = ld.insertUser(connection, login);
		return msg;
	}

	public String deleteLendUserBook(Date lendDate, int loginId) throws SQLException {
		// TODO Auto-generated method stub
		String msg="";
		Connection connection = getTheConnection();
		try {
			msg=ld.deleteLendUserBook(connection, lendDate,loginId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return msg;
	}

	public String updateStock(Book book) throws SQLException {
		// TODO Auto-generated method stub
		String msg="";
		Connection connection = getTheConnection();
		msg=ld.updateStock(connection, book);
		return msg;
	}

	public String updateReturnStock(Book book) throws SQLException {
		// TODO Auto-generated method stub
		String msg="";
		Connection connection = getTheConnection();
		msg=ld.updateReturnStock(connection, book);
		return msg;
	}

}
