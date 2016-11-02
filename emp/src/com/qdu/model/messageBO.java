package com.qdu.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.qdu.struts.form.*;

public class messageBO {
	
	
	public MessageForm getMessageFormByMesno(String mesno)
	{
		
		ResultSet rs=null;
		SqlHelper s=new SqlHelper();
		MessageForm sb=new MessageForm();
		
		try {
			String sql="select email,mescon,mesno,mestime,getter,sender,title from message where mesno='"+mesno+"'";
			
			rs=s.dql(sql, null);
			if(rs.next())
			{
				sb.setEmail(rs.getString(1));
				sb.setMesno(rs.getString(3));
				sb.setMescon(rs.getString(2));
				sb.setMestime(rs.getString(4));
				sb.setTitle(rs.getString(7));
				sb.setSender(rs.getString(6));
				sb.setGetter(rs.getString(5));
				//ub.setUserno(rs.getString(13));
				
				
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return sb;
	}
	public boolean deleteMessage(String mesno)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="delete from message where mesno='"+mesno+"'";	
			//System.out.println(sql);
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	public String getIconBySender(String sender,String type)
	{
		String icon="";
		SqlHelper s=new SqlHelper();
		String no=null;
		if(type.equals("manager"))
		{
			type="employee";
			no="empno";
		}
		else if(type.equals("student"))
		{
			type="student";
			no="stuno";
		}
		String sql="select icon from "+type+" where "+no+"='"+sender+"'";
		//System.out.println("sql="+sql);
		ResultSet rs=s.dql(sql, null);
		try {
			if(rs.next())
			{
				icon=rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return icon;
	}

	public int getPageCount(int pageSize,String sender,String type)
	{
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		String no=null;
		if(type.equals("manager"))
		{
			type="employee";
			no="empno";
		}
		else if(type.equals("student"))
		{
			type="student";
			no="stuno";
		}
		try {
			String sql="select count(*) from message m,"+type+"  s where (sender='"+sender+"' or getter='"+sender+"') and "+no+"='"+sender+"'";
          // System.out.println(sql);
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
	
	public int getPageCountByType(int pageSize,String type,String con)
	{
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		
		if(type==null)
		{
			type="1";
			con="1";
		}
		
		try {
			String sql="select count(*) from message where "+type+"='"+con+"'";;
          // System.out.println(sql);
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
	public boolean AddMessaage(MessageForm sf)
	{
		boolean b=false;
		String sender="201140411040";
		if(sf.getSender()!=null)
		{
			sender=sf.getSender();
		}
		String sql="insert into message(email,mescon,mesno,mestime,getter,sender,title) values(trim('"+sf.getEmail()+"'),trim('"+sf.getMescon()+"'),mes.nextval,sysdate,trim('"+sf.getGetter()+"'),'"+sender+"',trim('"+sf.getTitle()+"'))";
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
	
	public ArrayList getMessageAndReplyBySender(int pageSize,int pageNow,String sort,String sender,String type)
	{
		
		String sql=null;
		String no=null;
		if(type.equals("manager"))
		{
			type="employee";
			no="empno";
		}
		else if(type.equals("student"))
		{
			type="student";
			no="stuno";
		}
		if(sort==null)
		{
			sort="t";
		}
		ArrayList<MessageForm> al=new ArrayList<MessageForm>();
		
	    sql="select t2.* from (select t1.*,rownum rn from (select m.mesno,m.mescon,to_char(m.mestime,'yyyy-MM-dd hh24:mi:ss') t,m.title,m.sender,m.getter,m.email,s.icon from message m,"+type+" s where (sender='"+sender+"' or getter='"+sender+"') and "+no+"='"+sender+"' order by "+sort+" desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		
		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				MessageForm sb=new MessageForm();
				sb.setMesno(rs.getString(1));
				sb.setMescon(rs.getString(2));
				sb.setMestime(rs.getString(3));
				sb.setTitle(rs.getString(4));
				sb.setSender(rs.getString(5));
				sb.setGetter(rs.getString(6));
				sb.setEmail(rs.getString(7));
				sb.setIcon(rs.getString(8));
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
	
	public ArrayList getMessage(int pageSize,int pageNow,String sort,String type,String con)
	{
		
		String sql=null;
		String no=null;
		if(type==null||type.equals("all"))
		{
			type="1";
			con="1";
		}
		if(sort==null)
		{
			sort="t";
		}
		ArrayList<MessageForm> al=new ArrayList<MessageForm>();
		
	    sql="select t2.* from (select t1.*,rownum rn from (select m.mesno,m.mescon,to_char(m.mestime,'yyyy-MM-dd hh24:mi:ss') t,m.title,m.sender,m.getter,m.email from message m where "+type+"='"+con+"' order by "+sort+") t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		
		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				MessageForm sb=new MessageForm();
				sb.setMesno(rs.getString(1));
				sb.setMescon(rs.getString(2));
				sb.setMestime(rs.getString(3));
				sb.setTitle(rs.getString(4));
				sb.setSender(rs.getString(5));
				sb.setGetter(rs.getString(6));
				sb.setEmail(rs.getString(7));
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
