package com.library.bean;
/**
* @Objective 
* @Developer Panshul
* @Date 01-Jul-2022
*/

import java.sql.Date;

public class Lend {
	private int lend_id;
	private int book_id;
	private Date lend_date;
	private int login_id;
	public int getLend_id() {
		return lend_id;
	}
	public void setLend_id(int lend_id) {
		this.lend_id = lend_id;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public Date getLend_date() {
		return lend_date;
	}
	public void setLend_date(Date lend_date) {
		this.lend_date = lend_date;
	}
	public int getLogin_id() {
		return login_id;
	}
	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}
}
