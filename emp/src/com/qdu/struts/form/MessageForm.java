/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.qdu.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 05-02-2015
 * 
 * XDoclet definition:
 * @struts.form name="messageForm"
 */
public class MessageForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** mestime property */
	private String mestime;

	/** title property */
	private String title;

	/** stuno property */
	private String sender;

	/** mesno property */
	private String mesno;

	/** mescon property */
	private String mescon;

	/** email property */
	private String email;

	/** name property */
	private String getter;

	/*
	 * Generated Methods
	 */
private String icon;

	public String getIcon() {
	return icon;
}

public void setIcon(String icon) {
	this.icon = icon;
}

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the mestime.
	 * @return String
	 */
	public String getMestime() {
		return mestime;
	}

	/** 
	 * Set the mestime.
	 * @param mestime The mestime to set
	 */
	public void setMestime(String mestime) {
		this.mestime = mestime;
	}

	/** 
	 * Returns the title.
	 * @return String
	 */
	public String getTitle() {
		return title;
	}

	/** 
	 * Set the title.
	 * @param title The title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/** 
	 * Returns the stuno.
	 * @return String
	 */
	public String getSender() {
		return sender;
	}

	/** 
	 * Set the stuno.
	 * @param stuno The stuno to set
	 */
	public void setSender(String sender) {
		this.sender = sender;
	}

	/** 
	 * Returns the mesno.
	 * @return String
	 */
	public String getMesno() {
		return mesno;
	}

	/** 
	 * Set the mesno.
	 * @param mesno The mesno to set
	 */
	public void setMesno(String mesno) {
		this.mesno = mesno;
	}

	/** 
	 * Returns the mescon.
	 * @return String
	 */
	public String getMescon() {
		return mescon;
	}

	/** 
	 * Set the mescon.
	 * @param mescon The mescon to set
	 */
	public void setMescon(String mescon) {
		this.mescon = mescon;
	}

	/** 
	 * Returns the email.
	 * @return String
	 */
	public String getEmail() {
		return email;
	}

	/** 
	 * Set the email.
	 * @param email The email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/** 
	 * Returns the name.
	 * @return String
	 */
	public String getGetter() {
		return getter;
	}

	/** 
	 * Set the name.
	 * @param name The name to set
	 */
	public void setGetter(String getter) {
		this.getter = getter;
	}
}