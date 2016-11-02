package com.qdu.model;
import java.sql.*;
import java.util.ArrayList;

public class BuildingBO {

	
	private ResultSet rs=null;
	
	public int getStunumByBuildingno(String yno,String bno)
	{
     SqlHelper s=new SqlHelper();
		
		int stunum=0;
		try {
			String sql="select count(*) from student where yno='"+yno+"' and buildingno='"+bno+"'";
		
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
	public int getRoomnumByBuildingno(String yno,String bno)
	{
     SqlHelper s=new SqlHelper();
		
		int roomnum=0;
		try {
			String sql="select count(*) from dorm where yno='"+yno+"' and buildingno='"+bno+"'";
		
			rs=s.dql(sql, null);
			if(rs.next())
			{
				roomnum=rs.getInt(1);
			}
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return roomnum;
	}
	public boolean addBuilding(String yno,String bno)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="update building set existed=1 where yno="+yno+" and buildingno="+bno;	
			
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	public boolean deleteBuilding(String yno,String bno)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="update building set existed=0 where yno="+yno+" and buildingno="+bno;	
			
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	public BuildingBean getBuildingsBean(String yno,String buildingno)
	{
		BuildingBean bb=new BuildingBean();
		SqlHelper s=new SqlHelper();
		try {
			String sql="select building.buildingno,building.sex,building.levelnum,employee.empno,employee.phone from building,employee where building.yno="+yno+" and building.buildingno="+buildingno+"and building.yno=employee.yno and building.buildingno=employee.buildingno and employee.job='manager' and building.existed=1";

		//String[] param={yno};
		rs=s.dql(sql,null);
		//System.out.println(param[0]);
		if(rs.next())
		{
		  
			bb.setYno(yno);
			bb.setBno(rs.getString(1));
			bb.setType(rs.getString(2));
			bb.setLevelnum(rs.getString(3));
			bb.setManager(rs.getString(4));
			bb.setPhone(rs.getString(5));
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
		return bb;
	}
	
	
	public boolean updateTypeOfBuilding(String type,String yno,String bno)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="update building set sex='"+type+"' where yno="+yno+" and buildingno="+bno+" and building.existed=1";	
			
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	public PartBean getPartInfo(String yno)
	{
		SqlHelper s=new SqlHelper();
		PartBean pb=new PartBean();
		try {
			String sql="select part.pno,pname,paddress from part where pno=(select pno from yard where yno="+yno+")";
		
			rs=s.dql(sql, null);
			if(rs.next())
			{
				
				pb.setPno(rs.getString(1));
				pb.setPname(rs.getString(2));
				pb.setPaddress(rs.getString(3));
			}
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		
		return pb;
	}
	public int getRowCount(String yno)
	{
		SqlHelper s=new SqlHelper();
		
		int rowCount=0;
		try {
			String sql="select count(*) from building where yno="+yno+" and building.existed=1";
		
			rs=s.dql(sql, null);
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
	
	public int getPageCount(int pageSize,String yno)
	{
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from building where yno="+yno+" and building.existed=1";
		
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
	public ArrayList getBuildingsByPage(int pageSize,int pageNow,String yno)
	{
		
		ArrayList al=new ArrayList();
		SqlHelper s=new SqlHelper();
		try {
			
			
			//String sql="select top "+pageSize+" * from yard where yno not in(select top "+pageSize*(pageNow-1)+"yno from yard)";
		String sql="select t2.* from (select t1.*,rownum rn from (select building.buildingno,building.sex,building.levelnum,employee.empno,employee.phone from building,employee where building.yno='"+yno+"' and building.yno=employee.yno and building.buildingno=employee.buildingno and employee.job='manager' and building.existed=1 order by employee.empno) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		ResultSet rs1=null;	
		rs1=s.dql(sql,null);
			while(rs1.next()){
				
				String bno=rs1.getString(1);
				int roomnum=this.getRoomnumByBuildingno(yno, bno);
			int stunum=this.getStunumByBuildingno(yno, bno);
				//System.out.println(roomnum);
				BuildingBean bb=new BuildingBean();
				bb.setBno(bno);
				bb.setType(rs1.getString(2));
				bb.setLevelnum(rs1.getString(3));
				bb.setManager(rs1.getString(4));
				bb.setPhone(rs1.getString(5));
			bb.setRoomnum(roomnum);
				bb.setStunum(stunum);
				
				al.add(bb);
				
			}
					
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		   s.close();
		}
		return al;
	}
	public BuildingBean getBuildingsBean(String yno)
	{
		BuildingBean bb=new BuildingBean();
		SqlHelper s=new SqlHelper();
		try {
			String sql="select building.buildingno,building.sex,building.levelnum,employee.empno,employee.phone from building,employee where building.yno="+yno+" and building.yno=employee.yno and building.buildingno=employee.buildingno and employee.job='manager' and building.existed=1";

		//String[] param={yno};
		rs=s.dql(sql,null);
		//System.out.println(param[0]);
		if(rs.next())
		{
			
			bb.setBno(rs.getString(1));
			bb.setType(rs.getString(2));
			bb.setLevelnum(rs.getString(3));
			bb.setManager(rs.getString(4));
			bb.setPhone(rs.getString(5));
			
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
		return bb;
	}
		
	}


