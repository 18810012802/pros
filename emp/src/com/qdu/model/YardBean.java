package com.qdu.model;

public class YardBean {

	private String yno;
	public String getYno() {
		return yno;
	}
	public void setYno(String yno) {
		this.yno = yno;
	}
	public String getYname() {
		return yname;
	}
	public void setYname(String yname) {
		this.yname = yname;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	private String yname;
	private String pno;
	private String image;
	private String desc;
	private int stunum;
	public int getStunum() {
		return stunum;
	}
	public void setStunum(int stunum) {
		this.stunum = stunum;
	}
	public int getBn() {
		return bn;
	}
	public void setBn(int bn) {
		this.bn = bn;
	}
	private int bn;
	private int dormnum;
	public int getDormnum() {
		return dormnum;
	}
	public void setDormnum(int dormnum) {
		this.dormnum = dormnum;
	}
}
