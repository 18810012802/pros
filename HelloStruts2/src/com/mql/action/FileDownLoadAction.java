package com.mql.action;

import java.io.InputStream;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FileDownLoadAction extends ActionSupport {
	private String inputPath;

	public String getInputPath() {
		return inputPath;
	}

	public void setInputPath(String inputPath) {
		this.inputPath = inputPath;
	}
	public InputStream getTargetFile(){
		InputStream i=ServletActionContext.getServletContext().getResourceAsStream(inputPath);
		return i;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ActionContext ctx=ActionContext.getContext();
		Map session=ctx.getSession();
		String user=(String)session.get("user");
		/*if(user!=null&&user.equals("admin")){
			return SUCCESS;
		}*/
		if(user==null){
			return SUCCESS;
		}
		
		ctx.put("tip", "����û�е�¼��");
		return LOGIN;
	}
}
