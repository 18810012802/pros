package com.qdu.model;

public class BuildingBean {
private String bno;
public String getBno() {
	return bno;
}
public void setBno(String bno) {
	this.bno = bno;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getManager() {
	return manager;
}
public void setManager(String manager) {
	this.manager = manager;
}
public int getRoomnum() {
	return roomnum;
}
public void setRoomnum(int roomnum) {
	this.roomnum = roomnum;
}
public String getLevelnum() {
	return levelnum;
}
public void setLevelnum(String levelnum) {
	this.levelnum = levelnum;
}
public int getStunum() {
	return stunum;
}
public void setStunum(int stunum) {
	this.stunum = stunum;
}

private String type;
private String manager;
private int roomnum;
private String levelnum;
private int stunum;
private String yno;
private String phone;
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getYno() {
	return yno;
}
public void setYno(String yno) {
	this.yno = yno;
}
private int dormnum;
public int getDormnum() {
	return dormnum;
}
public void setDormnum(int dormnum) {
	this.dormnum = dormnum;
}
}
