package com.library.dao.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.library.bean.Book;
import com.library.bean.Login;
import com.library.dao.LibraryDao;

public class LibraryDaoImpl implements LibraryDao{

	public List<Book> getBooks(Connection connection) throws SQLException, IOException {
		
		List<Book> bookList = new ArrayList<Book>();
		String selQuery="select * from book_table";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		ResultSet resultSet = preparedStatement.executeQuery();
		
		while(resultSet.next())
		{
			Book book = new Book();
			book.setBook_id(resultSet.getInt("book_id"));
			book.setBook_name(resultSet.getString("book_name"));
			book.setBook_author(resultSet.getString("book_author"));
			book.setPublish_date(resultSet.getDate("publish_date"));
			book.setBook_description(resultSet.getString("book_description"));

			byte[] imagedata=resultSet.getBytes("book_img");
			if(null!=imagedata && imagedata.length>0)
			{
				String imgstring=Base64.getEncoder().encodeToString(imagedata);
				book.setImgstring(imgstring);
			}
			bookList.add(book);
		}
		
		resultSet.close();
		connection.close();
		return bookList;
	}

	public Login validateUser(Connection connection, Login login) throws SQLException {
		// TODO Auto-generated method stub
		//System.out.println("mail " + email + " " + " pass " + pass);
		ResultSet resultSet;
		System.out.println("Dao Start");
		String selQuery = "select * from login_table";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		resultSet = preparedStatement.executeQuery();
		String email = "";
		String pass = "";
		Login login2 = new Login();
		System.out.println("Dao email:"+login.getLogin_email());
		System.out.println("Dao pass:"+login.getLogin_pass());
		System.out.println("Dao ends.");
		if (resultSet != null) {
			while (resultSet.next()) {
				email = resultSet.getString("login_email");
				pass = resultSet.getString("login_password");
				if(email.equalsIgnoreCase(login.getLogin_email()) && pass.equalsIgnoreCase(login.getLogin_pass()))
				{
					login2.setLogin_email(email);
					login2.setLogin_pass(pass);
				}
			}
		}
		resultSet.close();
		preparedStatement.close();
		connection.close();

		return login2;
	}

	public Book getBookDetails(Connection connection, int bookId) throws SQLException {
		// TODO Auto-generated method stub
		String selQuery="select * from book_table where book_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		preparedStatement.setInt(1, bookId);
		ResultSet resultSet = preparedStatement.executeQuery();
		Book book = new Book();
		if (resultSet != null) {
			while (resultSet.next()) {
				book.setBook_id(resultSet.getInt("book_id"));
				book.setBook_name(resultSet.getString("book_name"));
				book.setBook_author(resultSet.getString("book_author"));
				book.setPublish_date(resultSet.getDate("publish_date"));
				book.setBook_description(resultSet.getString("book_description"));				
				byte[] imagedata=resultSet.getBytes("book_img");
				if(null!=imagedata && imagedata.length>0)
				{
					String imgstring=Base64.getEncoder().encodeToString(imagedata);
					book.setImgstring(imgstring);
				}
			}
		}
		resultSet.close();
		connection.close();
		return book;
		
	}
	
	
	
	
}
