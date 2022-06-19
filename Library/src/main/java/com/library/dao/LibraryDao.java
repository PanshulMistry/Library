package com.library.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.library.bean.Book;
import com.library.bean.Login;

public interface LibraryDao {
	
	public List<Book> getBooks(Connection connection) throws SQLException, IOException;

	public Login validateUser(Connection connection, Login login) throws SQLException;
 
	public Book getBookDetails(Connection connection,int bookId) throws SQLException;
}
