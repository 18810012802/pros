package com.mql.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;

import com.mql.po.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.PreResultListener;

public class LoginAction extends ActionSupport implements ModelDriven<User>,ServletResponseAware {
	
/*	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("执行Action");
		return SUCCESS;
	}
	*/
	private User user=new User();
	private String tip;
	public String getTip() {
		return tip;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	public InputStream getResult(){
		return inputStream;
	}
	public InputStream inputStream;
	@Override
	public String execute() throws UnsupportedEncodingException{
		inputStream=user.getName().equals("async")?new ByteArrayInputStream("恭喜你，登陆成功！".getBytes("UTF-8"))
				:new ByteArrayInputStream("恭喜你，登陆成功！".getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	public String login(){
			
		ActionInvocation invocation=ActionContext.getContext().getActionInvocation();
		invocation.addPreResultListener(new PreResultListener(){
			public void beforeResult(ActionInvocation invocation,String resultCode){
				
			}
		});
		
		ActionContext ctx=ActionContext.getContext();
		Integer counter=(Integer)ctx.getApplication().get("counter");
		if(counter==null){
			counter=1;
		}else{
			counter++;
		}
		ctx.getApplication().put("counter", counter);
		System.out.println(user.getUsername()+":"+user.getPassword());
		//System.out.println(user.getBooklist().get(0).getUsername());
		tip="admin";
		/*if(user.getUsername().equals("admin")&&user.getPassword().equals("passwd")){*/
		if(user.getName().equals("admin")){
			Cookie c=new Cookie("password",user.getPassword());
			c.setMaxAge(3600);
			response.addCookie(c);
			ctx.getSession().put("user", user);
			return SUCCESS;
		}
		return ERROR;
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	/*@Override
	public void validate() {
		// TODO Auto-generated method stub
		if(user.getUsername()==null||"".equals(user.getUsername())){
			this.addFieldError("username", "用户名不能为空");
		}
	}
	*/
	
	
	private HttpServletResponse response;
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response =response;
	}
	
}
