/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.qdu.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

/** 
 * MyEclipse Struts
 * Creation date: 04-25-2015
 * 
 * XDoclet definition:
 * @struts.form name="propertyForm"
 */
public class PropertyForm extends ActionForm {
	/*
	 * Generated fields
	 */
private String description;
	public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

private FormFile photo;
	public FormFile getPhoto() {
	return photo;
}

public void setPhoto(FormFile photo) {
	this.photo = photo;
}


private String image2;
	public String getImage2() {
	return image2;
}

public void setImage2(String image2) {
	this.image2 = image2;
}

	/** prono property */
	private String prono;

	/** registertime property */
	private String registertime;

	/** proname property */
	private String proname;

	/** value property */
	private String value;

	/** image property */
	private String image;

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
	 * Returns the prono.
	 * @return String
	 */
	public String getProno() {
		return prono;
	}

	/** 
	 * Set the prono.
	 * @param prono The prono to set
	 */
	public void setProno(String prono) {
		this.prono = prono;
	}

	/** 
	 * Returns the registertime.
	 * @return String
	 */
	public String getRegistertime() {
		return registertime;
	}

	/** 
	 * Set the registertime.
	 * @param registertime The registertime to set
	 */
	public void setRegistertime(String registertime) {
		this.registertime = registertime;
	}

	/** 
	 * Returns the proname.
	 * @return String
	 */
	public String getProname() {
		return proname;
	}

	/** 
	 * Set the proname.
	 * @param proname The proname to set
	 */
	public void setProname(String proname) {
		this.proname = proname;
	}

	/** 
	 * Returns the value.
	 * @return String
	 */
	public String getValue() {
		return value;
	}

	/** 
	 * Set the value.
	 * @param value The value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}

	/** 
	 * Returns the image.
	 * @return String
	 */
	public String getImage() {
		return image;
	}

	/** 
	 * Set the image.
	 * @param image The image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}
}