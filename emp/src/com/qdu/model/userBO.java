package com.qdu.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.qdu.struts.form.StuForm;
import com.qdu.struts.form.UserForm;



public class userBO {
	
	
	public boolean updatePassword(UserForm uf)
	{
		//System.out.println("delete-start");
		
		boolean b=false;
		SqlHelper s=new SqlHelper();
	String sql="update employee set password='"+uf.getPassword()+"' where empno='"+uf.getUserno()+"'";
		//System.out.println(sql);
		try {
			
			b=s.dml(sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("sql="+sql);
		//System.out.println("sb.b="+b);
		return b;
	}

	
	
	public UserForm getUserForm(String userno)
	{
		
		String sql="select empno,password,ename,age,buildingno,yno,sex,job,phone,address,postcode,email from employee where empno='"+userno+"'";

		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		UserForm ub=new UserForm();
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			if(rs.next())
			{//System.out.println("ok:"+sql);
				
				ub.setUserno(rs.getString(1));
				ub.setPassword(rs.getString(2));
				ub.setEname(rs.getString(3));
				ub.setAge(rs.getInt(4));
				ub.setBno(rs.getString(5));
				ub.setYno(rs.getString(6));
				ub.setSex(rs.getString(7));
				ub.setJob(rs.getString(8));
				ub.setPhone(rs.getString(9));
				ub.setAddress(rs.getString(10));
				ub.setPostcode(rs.getString(11));
				ub.setEmail(rs.getString(12));
				//ub.setUserno(rs.getString(13));
				
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return ub;
	}
	
	public boolean deleteUser(String userno)
	{
		//System.out.println("delete-start");
		
		boolean b=false;
		SqlHelper s=new SqlHelper();
	String sql="delete from employee where empno='"+userno+"'";
		//System.out.println(sql);
		try {
			
			b=s.dml(sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("sql="+sql);
		//System.out.println("sb.b="+b);
		return b;
	}

	public boolean addUser(UserForm uf)
	{
		boolean b=false;
		
		String sql="insert into employee(empno,password,ename,age,buildingno,yno,sex,job,phone,email,intime,address) values(trim('"+uf.getUserno()+"'),trim('"+uf.getPassword()+"'),trim('"+uf.getEname()+"'),trim('"+uf.getAge()+"'),trim('"+uf.getBno()+"'),trim('"+uf.getYno()+"'),trim('"+uf.getSex()+"'),trim('"+uf.getJob()+"'),trim('"+uf.getPhone()+"'),trim('"+uf.getEmail()+"'),to_date(trim('"+uf.getIntime()+"'),'yyyy-MM-dd'),trim('"+uf.getAddress()+"'))";
		//System.out.println(sql);
		try {
			SqlHelper s=new SqlHelper();
			b=s.dml(sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	public int getPageCount(int pageSize)
	{
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from employee";
		
			ResultSet rs=s.dql(sql, null);
			if(rs.next())
			{
				rowCount=rs.getInt(1);
			}
			if(rowCount%pageSize==0)
			{
				pageCount=rowCount/pageSize;
			}else
			{
				pageCount=rowCount/pageSize+1;
			}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return pageCount;
	}
	
	public ArrayList getUserFormWithSort(int pageSize,int pageNow,String sort)
	{
		if(sort==null)
		{
			sort="yno,bno,empno";
		}
		ArrayList<UserForm> al=new ArrayList<UserForm>();
		String sql="select t2.* from (select t1.*,rownum rn from (select empno,password,ename,age,to_number(buildingno) bno,yno,sex,job,phone,address,postcode,email,to_char(intime,'yyyy-MM-dd') from employee order by "+sort+") t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				UserForm ub=new UserForm();
				ub.setUserno(rs.getString(1));
				ub.setPassword(rs.getString(2));
				ub.setEname(rs.getString(3));
				ub.setAge(rs.getInt(4));
				ub.setBno(rs.getInt(5)+"");
				ub.setYno(rs.getString(6));
				ub.setSex(rs.getString(7));
				ub.setJob(rs.getString(8));
				ub.setPhone(rs.getString(9));
				ub.setAddress(rs.getString(10));
				ub.setPostcode(rs.getString(11));
				ub.setEmail(rs.getString(12));
				ub.setIntime(rs.getString(13));
				
				al.add(ub);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return al;
	}
	
	public boolean updateUserInfo(UserForm uf)
	{
		boolean b=false;
		
		//String sql="update employee set password='"+uf.getPassword()+"',ename='"+uf.getEname()+"',age=trim('"+uf.getAge()+"'),buildingno=trim('"+uf.getBno()+"'),yno=trim('"+uf.getYno()+"'),sex='"+uf.getSex()+"',job=trim('"+uf.getJob()+"'),phone='"+uf.getPhone()+"',address='"+uf.getAddress()+"',postcode='"+uf.getPostcode()+"' where empno='"+uf.getUserno()+"'";
		String sql="update employee set password='"+uf.getPassword()+"',ename='"+uf.getEname()+"',age=trim('"+uf.getAge()+"'),buildingno=trim('"+uf.getBno()+"'),yno=trim('"+uf.getYno()+"'),sex='"+uf.getSex()+"',job=trim('"+uf.getJob()+"'),phone='"+uf.getPhone()+"',email='"+uf.getEmail()+"',address='"+uf.getAddress()+"' where empno='"+uf.getUserno()+"'";

		//System.out.println(sql);
		try {
			SqlHelper s=new SqlHelper();
			b=s.dml(sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
	public boolean checkUserByType(String userno,String password,String type)
	{
		ResultSet rs=null;
		boolean b=false;
		SqlHelper s=new SqlHelper();
		String sql=null;
		if(type.equals("manager"))
		{
		 sql="select trim(password) from employee where empno='"+userno+"'";
		}else if(type.equals("student"))
		{
			sql="select trim(password) from student where stuno='"+userno+"'";
		}
		//System.out.println(sql);
			rs=s.dql(sql,null);
		try {
			if(rs.next())
			{
				String passwd=rs.getString(1);
				//System.out.println("pd="+passwd);
				//System.out.println("psd="+password);
				//System.out.println("ok="+password.equals(passwd));
				String p=password.trim();
			
			    if(p.equals(passwd))
				{
					b=true;
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			s.close();
		}
		
		return b;
	}
	
	public boolean checkUser(String userno,String password)
	{
		ResultSet rs=null;
		boolean b=false;
		SqlHelper s=new SqlHelper();
		String sql="select trim(password) from employee where empno='"+userno+"' and job='sysmanager'";
	//System.out.println(sql);
	//	String param[] = {""};
	    
		 
		//param[0]="3";
		 
		rs=s.dql(sql,null);
		try {
			if(rs.next())
			{
				String passwd=rs.getString(1);
			    if(password.equals(passwd))
				{
					b=true;
					
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			s.close();
		}
		
		return b;
	}
	public ArrayList getUserInfo(String userno)
	{
		
		ArrayList<UserBean> al=new ArrayList<UserBean>();
		String sql="select empno,password,ename,age,buildingno,yno,sex,job,phone,address,postcode,email from employee where empno='"+userno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				UserBean ub=new UserBean();
				ub.setUserno(rs.getString(1));
				ub.setPassword(rs.getString(2));
				ub.setEname(rs.getString(3));
				ub.setAge(rs.getInt(4));
				ub.setBno(rs.getString(5));
				ub.setYno(rs.getString(6));
				ub.setSex(rs.getString(7));
				ub.setJob(rs.getString(8));
				ub.setPhone(rs.getString(9));
				ub.setAddress(rs.getString(10));
				ub.setPostcode(rs.getString(11));
				ub.setEmail(rs.getString(12));
				//ub.setUserno(rs.getString(13));
				al.add(ub);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return al;
	}

}
