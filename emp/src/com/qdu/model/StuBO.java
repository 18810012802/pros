package com.qdu.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.qdu.struts.form.*;;

public class StuBO {
	
	public boolean updatePassword(UserForm sf)
	{
		boolean b=false;
		
		String sql="update student set password='"+sf.getPassword()+"' where stuno=trim('"+sf.getUserno()+"')";
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
	public ArrayList getStuFormByDorm(String yno,String bno,String dormno)
	{
		
		ArrayList<StuForm> al=new ArrayList<StuForm>();
		

		String sql="select trim(bedno) from student where yno='"+yno+"' and buildingno='"+bno+"' and dormno='"+dormno+"' order by bedno";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				StuForm sb=new StuForm();
				
				sb.setBedno(rs.getString(1));
				
				al.add(sb);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return al;
	}
	public int getPageCount(int pageSize,String base1,String con1,String base2,String con2,String base3,String con3)
	{
		if(base1==null)
		{
			base1="1";
			con1="1";
		}
		if(base2==null)
		{
			base2="1";
			con2="1";
		}
		if(base3==null)
		{
			base3="1";
			con3="1";
		}
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from student Where "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"'";
		
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
	public ArrayList getStuFormWithSort(int pageSize,int pageNow,String sort,String base1,String con1,String base2,String con2,String base3,String con3)
	{
		if(base1==null)
		{
			base1="1";
			con1="1";
		}
		if(base2==null)
		{
			base2="1";
			con2="1";
		}
		if(base3==null)
		{
			base3="1";
			con3="1";
		}
		if(sort==null)
		{
			sort="yno,buildingno,dormno,bedno";
		}
		ArrayList<StuForm> al=new ArrayList<StuForm>();
		String sql="select t2.* from (select t1.*,rownum rn from (select stuno,name,sex,major,phone,to_char(intime,'yyyy-MM-dd'),seminary,bedno,yno,buildingno,dormno,role from student Where "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by "+sort+") t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				StuForm sb=new StuForm();
				sb.setStuno(rs.getString(1));
				sb.setName(rs.getString(2));
				sb.setSex(rs.getString(3));
				sb.setMajor(rs.getString(4));
				sb.setPhone(rs.getString(5));
				sb.setIntime(rs.getString(6));
				sb.setSeminary(rs.getString(7));
				sb.setBedno(rs.getString(8));
				sb.setYno(rs.getString(9));
				sb.setBuildingno(rs.getString(10));
				sb.setDormno(rs.getString(11));
				//ub.setUserno(rs.getString(13));
				sb.setRole(rs.getString(12));
				al.add(sb);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return al;
	}
	public StuForm getStuBean(String stuno)
	{
		StuForm sf=new StuForm();
		SqlHelper s=new SqlHelper();
		try {
			String sql="select yno,buildingno,dormno,bedno,stuno,sex,seminary,major,phone,to_char(intime,'yyyy-MM-dd'),name,role from student where stuno=trim('"+stuno+"')";

		//String[] param={yno};
		ResultSet rs=s.dql(sql,null);
		//System.out.println(sql);
		if(rs.next())
		{//System.out.println("ok"+sql);
			
			sf.setYno(rs.getString(1));
			sf.setBuildingno(rs.getString(2));
			sf.setDormno(rs.getString(3));
			sf.setBedno(rs.getString(4));
			sf.setStuno(rs.getString(5));
			
			sf.setSex(rs.getString(6));
			sf.setSeminary(rs.getString(7));
			sf.setMajor(rs.getString(8));
			sf.setPhone(rs.getString(9));
			sf.setIntime(rs.getString(10));
			sf.setName(rs.getString(11));
			sf.setRole(rs.getString(12));
			
		}
		
		
		} catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			s.close();
		}
		return sf;
	}
	
	public boolean updateStu(StuForm sf)
	{
		boolean b=false;
		
		String sql="update student set bedno=trim('"+sf.getBedno()+"'),name=trim('"+sf.getName()+"'),sex=trim('"+sf.getSex()+"'),seminary=trim('"+sf.getSeminary()+"'),major=trim('"+sf.getMajor()+"'),phone=trim('"+sf.getPhone()+"'),intime=to_date(trim('"+sf.getIntime()+"'),'yyyy-mm-dd,hh24:mi:ss') where stuno=trim('"+sf.getStuno()+"')";
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
	
	
	public boolean deleteStu(String stuno)
	{
		//System.out.println("delete-start");
		
		boolean b=false;
		SqlHelper s=new SqlHelper();
		String sql="delete from student where stuno='"+stuno+"'";
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
	
	
	public boolean AddStu(StuForm sf)
	{
		boolean b=false;
		
		String sql="insert into student(yno,buildingno,dormno,bedno,stuno,name,sex,seminary,major,phone,intime) values(trim('"+sf.getYno()+"'),trim('"+sf.getBuildingno()+"'),trim('"+sf.getDormno()+"'),trim('"+sf.getBedno()+"'),trim('"+sf.getStuno()+"'),trim('"+sf.getName()+"'),trim('"+sf.getSex()+"'),trim('"+sf.getSeminary()+"'),trim('"+sf.getMajor()+"'),trim('"+sf.getPhone()+"'),sysdate)";
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
	
	public boolean addStu(StuForm sf)
	{
		boolean b=false;
		
		String sql="insert into student(yno,buildingno,dormno,bedno,stuno,name,sex,seminary,major,phone,intime,role) values(trim('"+sf.getYno()+"'),trim('"+sf.getBuildingno()+"'),trim('"+sf.getDormno()+"'),trim('"+sf.getBedno()+"'),trim('"+sf.getStuno()+"'),trim('"+sf.getName()+"'),trim('"+sf.getSex()+"'),trim('"+sf.getSeminary()+"'),trim('"+sf.getMajor()+"'),trim('"+sf.getPhone()+"'),to_date(trim('"+sf.getIntime()+"'),'yyyy-MM-dd'),trim('"+sf.getRole()+"'))";
		System.out.println(sql);
		try {
			SqlHelper s=new SqlHelper();
			b=s.dml(sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
	
	
	public int getRowCount(String yno,String buildingno,String dormno)
	{
		SqlHelper s=new SqlHelper();
		
		int rowCount=0;
		try {
			String sql="select count(*) from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		
			ResultSet rs=s.dql(sql, null);
			if(rs.next())
			{
				rowCount=rs.getInt(1);
			}
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return rowCount;
	}
	
	public int getPageCount(int pageSize,String yno,String buildingno,String dormno)
	{
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		
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
	
	public ArrayList getStuBean(int pageSize,int pageNow,String yno,String buildingno,String dormno)
	{
		
		ArrayList<StuBean> al=new ArrayList<StuBean>();
		String sql="select t2.* from (select t1.*,rownum rn from (select stuno,name,sex,major,phone,to_char(intime,'yyyy-MM-dd'),seminary,bedno from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"' order by bedno) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				StuBean sb=new StuBean();
				sb.setStuno(rs.getString(1));
				sb.setName(rs.getString(2));
				sb.setSex(rs.getString(3));
				sb.setMajor(rs.getString(4));
				sb.setPhone(rs.getString(5));
				sb.setIntime(rs.getString(6));
				sb.setSeminary(rs.getString(7));
				sb.setBedno(rs.getString(8));
				//ub.setUserno(rs.getString(13));
				al.add(sb);
				
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
