package com.mql.domain;

import java.util.Date;

public class Employee {
	private Integer id;
	private String name;
	private String email;
	private String pwd;
	private Integer grade;
	private Department department;
	public String getPwd() {
		return pwd;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	private Date hiredate;
	private Float salary;
	public Integer getId() {
		return id;
	}
	public Employee(String name, String email, String pwd, Integer grade,
			Date hiredate, Float salary) {
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		this.grade = grade;
		this.hiredate = hiredate;
		this.salary = salary;
	}
	public Employee(){
		
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public Float getSalary() {
		return salary;
	}
	public void setSalary(Float salary) {
		this.salary = salary;
	}
}
