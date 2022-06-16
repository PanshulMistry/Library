package com.library.service;

import java.sql.SQLException;
import java.util.List;

import com.library.bean.Book;
import com.library.bean.Login;

public interface LibraryService {

	public List<Book> getBooks() throws SQLException;
	
	public Login userLogin(Login login) throws SQLException;
}
