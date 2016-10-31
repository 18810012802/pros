package com.mql.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class RegistAction extends ActionSupport{
	private String name;
	private String pass;
	private String title;
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	private String allowTypes;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getSavePath() {
		
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String filterTypes(String[] types){
		String fileType=getUploadContentType();
		for(String type:types){
			if(type.equals(fileType)){
				return null;
			}
		}
		return ERROR;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

	public String getAllowTypes() {
		return allowTypes;
	}

	public void setAllowTypes(String allowTypes) {
		this.allowTypes = allowTypes;
	}

	public String upload() throws IOException{
		FileOutputStream fos=new FileOutputStream(getSavePath()+"\\"+getUploadFileName());
		FileInputStream fis=new FileInputStream(getUpload());
		byte[] buffer=new byte[1024];
		int len=0;
		while((len=fis.read(buffer))>0){
			fos.write(buffer,0,len);
		}
		return SUCCESS;
	}
	@Override
	public void validate(){
		String filterResult=filterTypes(getAllowTypes().split(","));
		if(filterResult!=null){
			addFieldError("upload","您要上传的文件类型不正确！");
		}
	}
}
