package cn.itcast.mybatis.po;

import java.util.Date;
import java.util.List;

public class Orders {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getNumberr() {
		return numberr;
	}
	public void setNumberr(String numberr) {
		this.numberr = numberr;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	@Override
	public String toString() {
		return "Orders [id=" + id + ", user_id=" + user_id + ", numberr="
				+ numberr + ", createtime=" + createtime + ", note=" + note
				+ "]";
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public List<Orderdetail> getOrderdetail() {
		return orderdetail;
	}
	public void setOrderdetail(List<Orderdetail> orderdetail) {
		this.orderdetail = orderdetail;
	}
	private int user_id;
	private String numberr;
	private Date createtime;
	private String note;
	private Users user;
	private List<Orderdetail> orderdetail;
}
