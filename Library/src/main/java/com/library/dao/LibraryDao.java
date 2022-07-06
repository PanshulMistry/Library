package com.library.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.library.bean.Book;
import com.library.bean.Lend;
import com.library.bean.Login;
import com.library.bean.Return;

public interface LibraryDao {
	
	public List<Book> getBooks(Connection connection) throws SQLException, IOException;

	//public Login validateUser(Connection connection, Login login) throws SQLException;
 
	public Login validateUser(Connection connection, String email, String pass) throws SQLException; 
	
	public Book getBookDetails(Connection connection,int bookId) throws SQLException;
	
	public Book searchBook(Connection connection,String bookname) throws SQLException;

	public String insertLendBook(Connection connection,Lend lend) throws SQLException; 

	public List<Lend> getLendDetails(Connection connection) throws SQLException;

	public String insertReturnBook(Connection connection,Return r) throws SQLException;

	public List<Return> getReturnDetails(Connection connection) throws SQLException;

	public String deleteLendBook(Connection connection, int bookId) throws SQLException;
	
	public String insertBook(Connection connection,Book book) throws SQLException;

	public String updateBook(Connection connection,Book book) throws SQLException;
}
