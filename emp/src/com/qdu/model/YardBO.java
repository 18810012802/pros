package com.qdu.model;
import java.sql.*;
import java.util.ArrayList;

public class YardBO {

	
	private ResultSet rs=null;
	
	
	
	public int getStunumByYno(String yno)
	{
		int rsn=0;
		String sql="select count(*) from student where yno="+yno;
		//System.out.println(sql);
		SqlHelper s=new SqlHelper();
		rs=s.dql(sql, null);
		try {
			if(rs.next())
			{
				rsn=rs.getInt(1);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			s.close();
		}
		return rsn;
	}
	public int getEmptyBuildingnum(String yno)
	{
		int ebn=0;
		String sql="select count(*) from building where (select count(*) from student where yno=trim('"+yno+"'))=0 ";
		
		return ebn;
	}
	public int getPageCount(int pageSize)
	{
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from yard";
		
			rs=s.dql(sql, null);
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
	public ArrayList getYardsByPage(int pageSize,int pageNow)
	{
		ResultSet rs1=null;
		ArrayList al=new ArrayList();
		SqlHelper s=new SqlHelper();
		try {
			
			
			//String sql="select top "+pageSize+" * from yard where yno not in(select top "+pageSize*(pageNow-1)+"yno from yard)";
		String sql="select t2.* from(select t1.*,rownum rn from(select * from yard) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
			rs1=s.dql(sql,null);
			while(rs1.next()){
				
				YardBean yb=new YardBean();
				String yno=rs1.getString(1);
				yb.setYno(yno);
				int stunum=this.getStunumByYno(yno);
				//System.out.println(yno+":"+stunum);
				BuildingBO bbb=new BuildingBO();
				int bn=bbb.getPageCount(1, yno);
				yb.setBn(bn);
				yb.setStunum(stunum);
				yb.setYname(rs1.getString(2));
				yb.setPno(rs1.getString(3));
				yb.setImage(rs1.getString(4));
				yb.setDesc(rs1.getString(5));
				DormBO dbb=new DormBO();
				int dormnum=dbb.getDormnumByYno(yno);
				yb.setDormnum(dormnum);
				al.add(yb);
				
			}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		   s.close();
		}
		return al;
	}
	public YardBean getYardsBean(String yno)
	{
		YardBean yb=new YardBean();
		SqlHelper s=new SqlHelper();
		try {
			String sql="select * from yard where yno="+yno;
		//String[] param={yno};
		rs=s.dql(sql,null);
		//System.out.println(param[0]);
		if(rs.next())
		{
		  
			yb.setYno(rs.getString(1));
			yb.setYname(rs.getString(2));
			yb.setPno(rs.getString(3));
			yb.setImage(rs.getString(4));
			yb.setDesc(rs.getString(5));
		}
		
		
		} catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			s.close();
		}
		return yb;
	}
		
	}


