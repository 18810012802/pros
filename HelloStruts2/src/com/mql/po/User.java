package com.mql.po;

import java.util.List;

public class User {
	private String username;
	private String password;
	private Integer No;
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getNo() {
		return No;
	}
	public void setNo(Integer no) {
		No = no;
	}
	private List<User> booklist;
	private Integer age;
	public List<User> getBooklist() {
		return booklist;
	}
	public void setBooklist(List<User> booklist) {
		this.booklist = booklist;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
