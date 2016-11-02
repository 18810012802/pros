package com.qdu.model;
import java.io.*;
import java.sql.*;
import java.util.Properties;



public class SqlHelper {

	private Connection ct=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String driver;
	private String url;
	private String username;
	private String password;
	
	
	public SqlHelper(){
		Properties pp=new Properties();
		FileInputStream fis=null;
		try{
			fis=new FileInputStream("C:/Users/Administrator/Workspaces/MyEclipse 10/emp/src/com/qdu/model/dbinfo.properties");
			pp.load(fis);
			driver=(String)pp.get("driver");
			url=(String)pp.get("url");
			username=(String)pp.get("username");
			password=(String)pp.get("password");
			Class.forName(driver);
			ct=DriverManager.getConnection(url,username,password);
			//ps=ct.prepareStatement(sql);
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				fis.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public boolean dml(String sql,String[] param)
	{
		//System.out.println("dml-start");
		
		boolean b=false;
		try {
			ps=ct.prepareStatement(sql);
		
		if(param==null)
		{
			
		}else
		{
			for(int i=0;i<param.length;i++)
			{
				ps.setString(i+1, param[i]);
			}
		}
		int a=ps.executeUpdate();
		//System.out.println("a="+a);
		
		
		if(a>0)
			{
			b=true;;
			}
		//System.out.println("s.b="+b);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			this.close();
		}
		return b;
	}
	
	
	public ResultSet dql(String sql,String[] param)
	{
		try {
			ps=ct.prepareStatement(sql);
			if(param==null)
			{
				
			}else
			{
				System.out.println("param.lengh="+param.length);
				for(int i=0;i<param.length;i++)
				{
					ps.setString(i+1, param[i]);
					 System.out.println("param="+param[i]);
				}
				
			}
			rs=ps.executeQuery();
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	public void close() 
	{
		try {
		if(rs!=null)
		{
			
				rs.close();
				rs=null;
			
			
		}
		if(ps!=null)
		{
			ps.close();
			ps=null;
		}
		if(ct!=null)
		{
			ct.close();
			ct=null;
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
