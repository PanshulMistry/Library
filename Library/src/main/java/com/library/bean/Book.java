package com.library.bean;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Date;

public class Book {

	private int book_id;
	private String book_name;
	private String book_author;
	private Date publish_date;
	private String book_description;
	
	private InputStream imgstream;
	private String imgstring;

	public InputStream getImgstream() {
		return imgstream;
	}
	public void setImgstream(InputStream imgstream) {
		this.imgstream = imgstream;
	}
	public String getImgstring() {
		return imgstring;
	}
	public void setImgstring(String imgstring) {
		this.imgstring = imgstring;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public Date getPublish_date() {
		return publish_date;
	}
	public void setPublish_date(Date publish_date) {
		this.publish_date = publish_date;
	}
	public String getBook_description() {
		return book_description;
	}
	public void setBook_description(String book_description) {
		this.book_description = book_description;
	}
	
}
