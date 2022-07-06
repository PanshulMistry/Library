package com.library.bean;
/**
* @Objective 
* @Developer Panshul
* @Date 04-Jul-2022
*/

import java.sql.Date;

public class Return {
	
	private int return_id;
	private int logintable_id;
	private int booktable_id;
	private Date return_date;
	
	
	public int getReturn_id() {
		return return_id;
	}
	public void setReturn_id(int return_id) {
		this.return_id = return_id;
	}
	public int getLogintable_id() {
		return logintable_id;
	}
	public void setLogintable_id(int logintable_id) {
		this.logintable_id = logintable_id;
	}
	public int getBooktable_id() {
		return booktable_id;
	}
	public void setBooktable_id(int booktable_id) {
		this.booktable_id = booktable_id;
	}
	public Date getReturn_date() {
		return return_date;
	}
	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}
}
