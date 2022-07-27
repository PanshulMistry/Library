package com.library.dao.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.library.bean.Book;
import com.library.bean.Lend;
import com.library.bean.Login;
import com.library.bean.Return;
import com.library.dao.LibraryDao;

public class LibraryDaoImpl implements LibraryDao{

//	public List<Book> getBooks(Connection connection) throws SQLException, IOException {
//		
//		List<Book> bookList = new ArrayList<Book>();
//		String selQuery="select * from book_table";
//		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
//		ResultSet resultSet = preparedStatement.executeQuery();
//		
//		while(resultSet.next())
//		{
//			Book book = new Book();
//			book.setBook_id(resultSet.getInt("book_id"));
//			book.setBook_name(resultSet.getString("book_name"));
//			book.setBook_author(resultSet.getString("book_author"));
//			book.setPublish_date(resultSet.getDate("publish_date"));
//			book.setBook_description(resultSet.getString("book_description"));
//		
//			byte[] imagedata=resultSet.getBytes("book_img");
//			if(null!=imagedata && imagedata.length>0)
//			{
//				String imgstring=Base64.getEncoder().encodeToString(imagedata);
//				book.setImgstring(imgstring);
//			}
//			book.setBook_stock(resultSet.getInt("book_stock"));
//			bookList.add(book);
//		}
//		
//		resultSet.close();
//		connection.close();
//		return bookList;
//	}

public List<Book> getBooks(Connection connection,int start,int total) throws SQLException, IOException {
		
		List<Book> bookList = new ArrayList<Book>();
		String selQuery="select * from book_table limit "+(start-1)+","+total;
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
			book.setBook_stock(resultSet.getInt("book_stock"));
			bookList.add(book);
		}
		
		resultSet.close();
		connection.close();
		return bookList;
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
				byte[] pdfdata=resultSet.getBytes("book_pdf");
				if(null!=pdfdata && pdfdata.length>0)
				{
					String pdfstring=Base64.getEncoder().encodeToString(pdfdata);
					book.setBookpdfstring(pdfstring);
				}
				book.setBook_stock(resultSet.getInt("book_stock"));
			}
		}
		resultSet.close();
		connection.close();
		return book;
		
	}

	public Book searchBook(Connection connection, String bookname) throws SQLException {
		// TODO Auto-generated method stub
		String selQuery="select * from book_table where lower(book_name)=?";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		preparedStatement.setString(1, bookname);
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
				book.setBook_stock(resultSet.getInt("book_stock"));
			}
		}
		resultSet.close();
		connection.close();
		return book;	
	}

	public String insertLendBook(Connection connection, Lend lend) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String insQuery = "insert into lendbook_table(login_id,book_id,lend_date) values(?,?,?)";
		PreparedStatement preparedStatement = connection.prepareStatement(insQuery);
		preparedStatement.setInt(1, lend.getLogin_id());
		preparedStatement.setInt(2, lend.getBook_id());
		preparedStatement.setDate(3, lend.getLend_date());
		int insRows = preparedStatement.executeUpdate();
		if (insRows > 0) {
			msg = "Book Lend all data inserted";

		} else {
			msg = "Book Lend insertion failed";
		}
		return msg;
	}
	
	public List<Lend> getLendDetails(Connection connection) throws SQLException {
		// TODO Auto-generated method stub
		List<Lend> lendList = new ArrayList<Lend>();
		String selQuery="select * from lendbook_table";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		ResultSet resultSet = preparedStatement.executeQuery();
		
		while(resultSet.next())
		{
			Lend lend = new Lend();
			lend.setLend_id(resultSet.getInt("lend_id"));
			lend.setLogin_id(resultSet.getInt("login_id"));
			lend.setBook_id(resultSet.getInt("book_id"));
			lend.setLend_date(resultSet.getDate("lend_date"));
			lendList.add(lend);
		}
		
		resultSet.close();
		connection.close();
		return lendList;
	}

	public Login validateUser(Connection connection, String email, String pass) throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("mail " + email + " " + " pass " + pass);
		Login login = null;
		ResultSet resultSet = null;
	
		String selQuery = "select * from login_table where login_email=? and login_password=?";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		preparedStatement.setString(1, email);
		preparedStatement.setString(2, pass);
		resultSet = preparedStatement.executeQuery();

		if (resultSet != null) {
			while (resultSet.next()) {
				login = new Login();
				login.setLogin_id(resultSet.getInt("login_id"));
				login.setLogin_pass(resultSet.getString("login_password"));
				login.setMobile_number(resultSet.getString("mobile_number"));
				login.setLogin_email(resultSet.getString("login_email"));
				login.setUser_fname(resultSet.getString("user_fname"));
				login.setUser_lname(resultSet.getString("user_lname"));
				login.setUser_role(resultSet.getString("user_role"));
			}
		}

//		System.out.println("LOGIN ID IS:"+login.getLogin_id());
//		System.out.println("USER NAME IS:"+login.getUser_fname());
//		System.out.println("USER LAST NAME IS:"+login.getUser_lname());
		resultSet.close();
		preparedStatement.close();
		connection.close();

		return login;
	}

	public String insertReturnBook(Connection connection, Return r) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String insQuery = "insert into returnbook_table(logintable_id,booktable_id,return_date) values(?,?,?)";
		PreparedStatement preparedStatement = connection.prepareStatement(insQuery);
		preparedStatement.setInt(1, r.getLogintable_id());
		preparedStatement.setInt(2, r.getBooktable_id());
		preparedStatement.setDate(3, r.getReturn_date());
		int insRows = preparedStatement.executeUpdate();
		if (insRows > 0) {
			msg = "Book Return all data inserted";

		} else {
			msg = "Book Return insertion failed";
		}
		return msg;
	}

	public List<Return> getReturnDetails(Connection connection) throws SQLException {
		// TODO Auto-generated method stub
		List<Return> returnList = new ArrayList<Return>();
		String selQuery="select * from returnbook_table";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		ResultSet resultSet = preparedStatement.executeQuery();
		
		while(resultSet.next())
		{
			Return r = new Return();
			r.setReturn_id(resultSet.getInt("return_id"));
			r.setLogintable_id(resultSet.getInt("logintable_id"));
			r.setBooktable_id(resultSet.getInt("booktable_id"));
			r.setReturn_date(resultSet.getDate("return_date"));
			returnList.add(r);
		}
		
		resultSet.close();
		connection.close();
		return returnList;
	}

	public String deleteLendBook(Connection connection, int bookId) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String delQuery = "delete from lendbook_table where book_id=?";
		PreparedStatement ps = connection.prepareStatement(delQuery);
		ps.setInt(1, bookId);
		int delrows = ps.executeUpdate();
		if (delrows > 0) {
			msg = "LendBook Deleted Successfully.";
		} else {
			msg = "LendBook Deleting Failed.";
		}
		return msg;
	}

	public String insertBook(Connection connection, Book book) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String insQuery = "insert into book_table(book_name,book_author,book_img,publish_date,book_description,book_pdf,book_stock) values(?,?,?,?,?,?,?)";
		PreparedStatement ps = connection.prepareStatement(insQuery);
		ps.setString(1, book.getBook_name());
		ps.setString(2, book.getBook_author());
		ps.setBlob(3, book.getImgstream());
		ps.setDate(4, book.getPublish_date());
		ps.setString(5, book.getBook_description());
		ps.setBlob(6, book.getBookpdfstream());
		ps.setInt(7, book.getBook_stock());
		int insRows = ps.executeUpdate();
		if (insRows > 0) {
			msg = "Book data all inserted";

		} else {
			msg = "Book data insertion failed";
		}
		return msg;
	}

	public String updateBook(Connection connection, Book book) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String updateQ = "update book_table set book_name=?,book_author=?,book_img=COALESCE(?,book_img),publish_date=?,book_description=?,book_pdf=COALESCE(?,book_pdf),book_stock=? where book_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(updateQ);
		preparedStatement.setString(1, book.getBook_name());
		preparedStatement.setString(2, book.getBook_author());
		preparedStatement.setBlob(3, book.getImgstream());
		preparedStatement.setDate(4, book.getPublish_date());
		preparedStatement.setString(5, book.getBook_description());
		preparedStatement.setBlob(6, book.getBookpdfstream());
		preparedStatement.setInt(7, book.getBook_stock());
		preparedStatement.setInt(8, book.getBook_id());
		int updateServices = preparedStatement.executeUpdate();
		if (updateServices > 0) {
			msg = "Update success.";
		} else {
			msg = "Update failed";
		}
		return msg;
	}

	public String deleteBook(Connection connection, int bookId) throws Exception {
		// TODO Auto-generated method stub
		String msg = "";
		String delQuery = "delete from book_table where book_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(delQuery);
		preparedStatement.setInt(1, bookId);
		
		int a = preparedStatement.executeUpdate();
		
		if (a > 0) {
			msg = "Books Deleted Successfully.";
		} else {
			msg = "Books Deleting Failed.";
		}
		return msg;

	}
	
	public int getLendBookDetails(Connection connection, int bookId) throws SQLException {
		// TODO Auto-generated method stub
		String selQuery="select * from lendbook_table where book_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		preparedStatement.setInt(1, bookId);
		ResultSet resultSet = preparedStatement.executeQuery();
		int c = 0;
		if (resultSet != null) {
			while (resultSet.next()) {

				c++;
			}
		}
		return c;

	}

	public List<Lend> getLendUser(Connection connection, int loginId) throws SQLException {
		// TODO Auto-generated method stub
		List<Lend> lendList = new ArrayList<Lend>();
		String selQuery="select * from lendbook_table where login_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		preparedStatement.setInt(1, loginId);
		ResultSet resultSet = preparedStatement.executeQuery();
		
		while(resultSet.next())
		{
			Lend lend = new Lend();
			lend.setLend_id(resultSet.getInt("lend_id"));
			lend.setLogin_id(resultSet.getInt("login_id"));
			lend.setBook_id(resultSet.getInt("book_id"));
			lend.setLend_date(resultSet.getDate("lend_date"));
			lendList.add(lend);
		}
		resultSet.close();
		connection.close();
		return lendList;
	}
	
	public List<Return> getReturnUser(Connection connection, int loginId) throws SQLException {
		// TODO Auto-generated method stub
		List<Return> returnList = new ArrayList<Return>();
		String selQuery="select * from returnbook_table where login_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		preparedStatement.setInt(1, loginId);
		ResultSet resultSet = preparedStatement.executeQuery();
		
		while(resultSet.next())
		{
			Return r = new Return();
			r.setReturn_id(resultSet.getInt("return_id"));
			r.setLogintable_id(resultSet.getInt("logintable_id"));
			r.setBooktable_id(resultSet.getInt("booktable_id"));
			r.setReturn_date(resultSet.getDate("return_date"));
			returnList.add(r);
		}
		resultSet.close();
		connection.close();
		return returnList;
	}

	public String insertUser(Connection connection, Login login) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String insQuery = "insert into login_table(login_password,mobile_number,login_email,user_fname,user_lname,user_role) values(?,?,?,?,?,?)";
		PreparedStatement ps = connection.prepareStatement(insQuery);
		ps.setString(1, login.getLogin_pass());
		ps.setString(2, login.getMobile_number());
		ps.setString(3, login.getLogin_email());
		ps.setString(4, login.getUser_fname());
		ps.setString(5, login.getUser_lname());
		ps.setString(6, login.getUser_role());
		int insRows = ps.executeUpdate();
		if (insRows > 0) {
			msg = "User data all inserted";

		} else {
			msg = "User data insertion failed";
		}
		return msg;
	}

	public String deleteLendUserBook(Connection connection, Date lendDate, int loginId) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String delQuery = "delete from lendbook_table where lend_date=? and login_id=?";
		PreparedStatement ps = connection.prepareStatement(delQuery);
		ps.setDate(1, lendDate);
		ps.setInt(2, loginId);
		int delrows = ps.executeUpdate();
		if (delrows > 0) {
			msg = "LendBook For User Deleted Successfully.";
		} else {
			msg = "LendBook for User Deleting Failed.";
		}
		return msg;
	}

	public String updateStock(Connection connection, Book book) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String updateQ = "update book_table set book_stock=? where book_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(updateQ);
		int stock = book.getBook_stock() - 1;
		if(stock<=7)
		{
			preparedStatement.setInt(1, stock);
			preparedStatement.setInt(2, book.getBook_id());
			int updateServices = preparedStatement.executeUpdate();
			if (updateServices > 0) {
				msg = "Update stock success.";
			} else {
				msg = "Update stock failed";
			}
			return msg;
		}
		else
		{
			return msg="Stock is more than 7 or less than 0.";
		}
		
	}

	public String updateReturnStock(Connection connection, Book book) throws SQLException {
		// TODO Auto-generated method stub
		String msg = "";
		String updateQ = "update book_table set book_stock=? where book_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(updateQ);
		int stock = book.getBook_stock() + 1;
		if(stock<=7)
		{
			preparedStatement.setInt(1, stock);
			preparedStatement.setInt(2, book.getBook_id());
			int updateServices = preparedStatement.executeUpdate();
			if (updateServices > 0) {
				msg = "Update stock success.";
			} else {
				msg = "Update stock failed";
			}
			return msg;
		}
		else
		{
			return msg="Stock is more than 7 or less than 0.";
		}
		
	}

	public Login getuserDetails(Connection connection, int loginId) throws SQLException {
		// TODO Auto-generated method stub
		String selQuery="select * from login_table where login_id=?";
		PreparedStatement preparedStatement = connection.prepareStatement(selQuery);
		preparedStatement.setInt(1, loginId);
		ResultSet resultSet = preparedStatement.executeQuery();
		Login login = new Login();
		while(resultSet.next())
		{
			login.setLogin_id(resultSet.getInt("login_id"));
			login.setLogin_email(resultSet.getString("login_email"));
			login.setLogin_pass(resultSet.getString("login_password"));
			login.setUser_fname(resultSet.getString("user_fname"));
			login.setUser_lname(resultSet.getString("user_lname"));
			login.setMobile_number(resultSet.getString("mobile_number"));
			login.setUser_role(resultSet.getString("user_role"));	
		}
		resultSet.close();
		connection.close();
		return login;
	}

	@Override
	public List<Book> getAdminBooks(Connection connection) throws SQLException, IOException {
		// TODO Auto-generated method stub
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
			book.setBook_stock(resultSet.getInt("book_stock"));
			bookList.add(book);
		}
		
		resultSet.close();
		connection.close();
		return bookList;
	}
}
