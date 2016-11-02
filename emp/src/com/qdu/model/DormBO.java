package com.qdu.model;

import java.sql.ResultSet;
import java.util.ArrayList;

public class DormBO {
	public String getHeadByDormno(String yno,String bno,String dormno)
	{
		String head="";
		ResultSet rs=null;
		SqlHelper s=new SqlHelper();
		try {
			String sql="select stuno from student where yno="+yno+" and buildingno="+bno+" and dormno="+dormno+" and role='head'";
		
			
			rs=s.dql(sql, null);
			if(rs.next())
			{
				head=rs.getString(1);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		
		return head;
	}
	public int getStunumByDormno(String yno,String bno,String dormno)
	{
		int stunum=0;
		ResultSet rs=null;
		SqlHelper s=new SqlHelper();
		
		try {
			String sql="select count(*) from student where yno="+yno+" and buildingno="+bno+" and dormno="+dormno;
		
			
			rs=s.dql(sql, null);
			if(rs.next())
			{
				stunum=rs.getInt(1);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		
		
		return stunum;
	}
	
	
	public int getDormnumByYno(String yno)
	{
		int dormnum=0;
		ResultSet rs=null;
		SqlHelper s=new SqlHelper();
		
		try {
			String sql="select count(*) from dorm where yno="+yno;
		
			
			rs=s.dql(sql, null);
			if(rs.next())
			{
				dormnum=rs.getInt(1);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		
		
		return dormnum;
	}
	
	public int getPageCount(int pageSize,String yno,String bno)
	{
		ResultSet rs=null;
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from dorm where yno="+yno+" and buildingno="+bno;
		
			
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

	public ArrayList getDormsByPage(int pageSize,int pageNow,String yno,String bno)
	{
		
		ArrayList al=new ArrayList();
		SqlHelper s=new SqlHelper();
		try {
			
			
			//String sql="select top "+pageSize+" * from yard where yno not in(select top "+pageSize*(pageNow-1)+"yno from yard)";
		String sql="select t2.* from (select t1.*,rownum rn from (select dormno,bednum from dorm where yno='"+yno+"' and buildingno='"+bno+"' order by dormno) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		ResultSet rs1=null;	
		rs1=s.dql(sql,null);
			while(rs1.next()){
				
				String dormno=rs1.getString(1);
				
				//System.out.println(roomnum);
				DormBean db=new DormBean();
				db.setDormno(dormno);
				db.setBednum(Integer.parseInt(rs1.getString(2)));
				int stunum=this.getStunumByDormno(yno, bno, dormno);
				db.setStunum(stunum);
			
				String head=this.getHeadByDormno(yno, bno, dormno);
				db.setHead(head);
				
				al.add(db);
				
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
