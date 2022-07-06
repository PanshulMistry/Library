package com.library.service;

import java.sql.SQLException;
import java.util.List;

import com.library.bean.Book;
import com.library.bean.Lend;
import com.library.bean.Login;
import com.library.bean.Return;

public interface LibraryService {

	public List<Book> getBooks() throws SQLException;
	
	public Book searchBook(String bookname) throws SQLException;
	
	//public Login userLogin(Login login) throws SQLException;
	
	public Login userLogin(String email, String pass) throws SQLException; 
	
	public Book getBookDetails(int bookId) throws SQLException;
	
	public String insertLendBook(Lend lend) throws SQLException;

	public List<Lend> getlendDetails() throws SQLException;
	
	public String insertReturnBook(Return r) throws SQLException;
	
	public List<Return> getReturnDetails() throws SQLException;
	
	public String deleteLendBook(int bookId) throws Exception;
	
	public String insertBook(Book book) throws SQLException;
	
	public String updateBook(Book book) throws SQLException;

}
