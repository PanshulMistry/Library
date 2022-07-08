package com.library.bean;
/**
* @Objective 
* @Developer Panshul
* @Date 15-Jun-2022
*/
public class Login {
	private int login_id;
	private String login_pass;
	private String login_email;
	private String mobile_number;
	private String user_fname;
	private String user_lname;
	private String user_role;
	
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public int getLogin_id() {
		return login_id;
	}
	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}
	public String getLogin_pass() {
		return login_pass;
	}
	public void setLogin_pass(String login_pass) {
		this.login_pass = login_pass;
	}
	public String getLogin_email() {
		return login_email;
	}
	public void setLogin_email(String login_email) {
		this.login_email = login_email;
	}
	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String i) {
		this.mobile_number = i;
	}
	public String getUser_fname() {
		return user_fname;
	}
	@Override
	public String toString() {
		return "Login [login_id=" + login_id + ", login_pass=" + login_pass + ", login_email=" + login_email
				+ ", mobile_number=" + mobile_number + ", user_fname=" + user_fname + ", user_lname=" + user_lname
				+ "]";
	}
	public void setUser_fname(String user_fname) {
		this.user_fname = user_fname;
	}
	public String getUser_lname() {
		return user_lname;
	}
	public void setUser_lname(String user_lname) {
		this.user_lname = user_lname;
	}
	

}
