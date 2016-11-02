package com.qdu.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.qdu.struts.form.*;


public class NewsBO {
	
	
	public boolean updateNews(NewsForm nf)
	{
		boolean b=false;
		
		String sql="update news set attachment=trim('"+nf.getAttachment()+"'),newscon=trim('"+nf.getNewscon()+"'),newstime=to_date(trim('"+nf.getNewstime()+"'),'yyyy-MM-dd'),title='"+nf.getTitle()+"',type='"+nf.getType1()+"' where newsno=trim('"+nf.getNewsno()+"')";	

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
	
	
	
	
	
	public NewsForm getNewsFormByNewsno(String newsno)
	{
		
		ResultSet rs1=null;
		SqlHelper s=new SqlHelper();
		PropertyForm pf=new PropertyForm();
		NewsForm sb=new NewsForm();
		try {
			String sql="select newsno,newscon,to_char(newstime,'yyyy-MM-dd') t,title,type,attachment from news where newsno='"+newsno+"'";
			
			rs1=s.dql(sql, null);
			if(rs1.next())
			{
				
				sb.setNewsno(rs1.getString(1));
				sb.setNewscon(rs1.getString(2));
				sb.setNewstime(rs1.getString(3));
				sb.setTitle(rs1.getString(4));
				sb.setType1(rs1.getString(5));
				sb.setAttachment(rs1.getString(6));
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
	public boolean deleteNews(String newsno)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="delete from news where newsno='"+newsno+"'";	
			//System.out.println(sql);
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	public boolean addNews(NewsForm nf)
	{
		String sql="";
		//System.out.println("start2");
		if(nf.getNewstime()==null)
		{
			sql="insert into news(attachment,newscon,newsno,newstime,title,type) values(trim('"+nf.getAttachment()+"'),trim('"+nf.getNewscon()+"'),new.nextval,to_date(sysdate,'yyyy-MM-dd'),'"+nf.getTitle()+"','"+nf.getType1()+"')";	

		}else
		{
			sql="insert into news(attachment,newscon,newsno,newstime,title,type) values(trim('"+nf.getAttachment()+"'),trim('"+nf.getNewscon()+"'),new.nextval,to_date(trim('"+nf.getNewstime()+"'),'yyyy-MM-dd'),'"+nf.getTitle()+"','"+nf.getType1()+"')";	

		}
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			//System.out.println(sql);
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	
	
	public int getPageCount(int pageSize,String type,String table)
	{
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql=null;
			if(type!=null)
			{
			sql="select count(*) from "+table+" news where type=trim('"+type+"') ";
			}else{
		    sql="select count(*) from "+table;
			}
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
	
	public int getPageCount(int pageSize,String table,String base,String basecon)
	{
		if(base.equals("type1"))
		{
			base="type";
		}
		//System.out.println("pagecount");
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql=null;
			
		    sql="select count(*) from "+table+" where "+base+"=trim('"+basecon+"')";
			
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
	public ArrayList getNewsFormWithSort(int pageSize,int pageNow,String sort,String type,String table)
	{
		String sql=null;
		if(sort==null)
		{
			sort="t";
		}
		ArrayList<NewsForm> al=new ArrayList<NewsForm>();
		if(type!=null)
		{
		sql="select t2.* from (select t1.*,rownum rn from (select newsno,newscon,to_char(newstime,'yyyy-MM-dd') t,title,type,attachment from "+table+" where type=trim('"+type+"') order by "+sort+" desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		}else{
	    sql="select t2.* from (select t1.*,rownum rn from (select newsno,newscon,to_char(newstime,'yyyy-MM-dd') t,title,type,attachment from "+table+" order by "+sort+" desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		}
		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				NewsForm sb=new NewsForm();
				sb.setNewsno(rs.getString(1));
				sb.setNewscon(rs.getString(2));
				sb.setNewstime(rs.getString(3));
				sb.setTitle(rs.getString(4));
				sb.setType1(rs.getString(5));
				sb.setAttachment(rs.getString(6));
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
	
	
	public ArrayList getNewsFormWithSortByBase(int pageSize,int pageNow,String sort,String table,String base,String basecon)
	{
		if(base.equals("type1"))
		{
			base="type";
		}
		String sql=null;
		if(sort==null)
		{
			sort="t";
		}
		ArrayList<NewsForm> al=new ArrayList<NewsForm>();
		
	    sql="select t2.* from (select t1.*,rownum rn from (select newsno,newscon,to_char(newstime,'yyyy-MM-dd') t,title,type,attachment from "+table+" where "+base+"=trim('"+basecon+"') order by "+sort+" desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		
		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				NewsForm sb=new NewsForm();
				sb.setNewsno(rs.getString(1));
				sb.setNewscon(rs.getString(2));
				sb.setNewstime(rs.getString(3));
				sb.setTitle(rs.getString(4));
				sb.setType1(rs.getString(5));
				sb.setAttachment(rs.getString(6));
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


