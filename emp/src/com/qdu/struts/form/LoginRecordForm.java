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
 * Creation date: 05-09-2015
 * 
 * XDoclet definition:
 * @struts.form name="loginRecordForm"
 */
public class LoginRecordForm extends ActionForm {
	/*
	 * Generated fields
	 */
private String logindate;
	public String getLogindate() {
	return logindate;
}

public void setLogindate(String logindate) {
	this.logindate = logindate;
}

	/** logintime property */
	private String logintime;

	/** type property */
	private String type;

	/** userno property */
	private String userno;

	/** recordno property */
	private String recordno;

	/*
	 * Generated Methods
	 */

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
	 * Returns the logintime.
	 * @return String
	 */
	public String getLogintime() {
		return logintime;
	}

	/** 
	 * Set the logintime.
	 * @param logintime The logintime to set
	 */
	public void setLogintime(String logintime) {
		this.logintime = logintime;
	}

	/** 
	 * Returns the type.
	 * @return String
	 */
	public String getType() {
		return type;
	}

	/** 
	 * Set the type.
	 * @param type The type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/** 
	 * Returns the userno.
	 * @return String
	 */
	public String getUserno() {
		return userno;
	}

	/** 
	 * Set the userno.
	 * @param userno The userno to set
	 */
	public void setUserno(String userno) {
		this.userno = userno;
	}

	/** 
	 * Returns the recordno.
	 * @return String
	 */
	public String getRecordno() {
		return recordno;
	}

	/** 
	 * Set the recordno.
	 * @param recordno The recordno to set
	 */
	public void setRecordno(String recordno) {
		this.recordno = recordno;
	}
}