package cn.itcast.mybatis.po;

import java.util.Date;

public class Users {
	@Override
	public String toString() {
		return "User [id=" + id + ", sex=" + sex + ", birthday=" + birthday + ", address=" + address + ", getId()="
				+ getId() + ", getSex()=" + getSex() + ", getBirthday()=" + getBirthday() + ", getAddress()="
				+ getAddress() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	private int id;
	private String sex;
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	private Date birthday;
	private String address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
