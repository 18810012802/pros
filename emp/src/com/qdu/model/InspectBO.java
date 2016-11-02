package com.qdu.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import com.qdu.struts.form.*;
public class InspectBO {
	public ArrayList getDormnoByBno(String yno,String bno)
	{
		
		ArrayList<InspectForm> al=new ArrayList<InspectForm>();
		SqlHelper s=new SqlHelper();
		try {
			
			
			//String sql="select top "+pageSize+" * from yard where yno not in(select top "+pageSize*(pageNow-1)+"yno from yard)";
		String sql="select to_number(dormno) d from dorm where yno='"+yno+"' and buildingno='"+bno+"' order by d";
		ResultSet rs1=null;	
		rs1=s.dql(sql,null);
			while(rs1.next()){
				
				
				
				//System.out.println(roomnum);
				InspectForm iff=new InspectForm();
				
				iff.setDormno(rs1.getInt(1)+"");
				
				al.add(iff);
				
			}
					
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		   s.close();
		}
		return al;
	}
	public ArrayList getBnoByYno(String yno)
	{
		
		ArrayList<InspectForm> al=new ArrayList<InspectForm>();
		SqlHelper s=new SqlHelper();
		try {
			
			
			//String sql="select top "+pageSize+" * from yard where yno not in(select top "+pageSize*(pageNow-1)+"yno from yard)";
		String sql="select to_number(buildingno) b from building where yno='"+yno+"' order by b";
		ResultSet rs1=null;	
		rs1=s.dql(sql,null);
			while(rs1.next()){
				
				
				
				//System.out.println(roomnum);
				InspectForm iff=new InspectForm();
				
				iff.setBno(rs1.getInt(1)+"");
				
				al.add(iff);
				
			}
					
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		   s.close();
		}
		return al;
	}
	public boolean addInspect(InspectForm iff)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="insert into inspection(yno,buildingno,dormno,wpbf,zsk,kqqw,dmyt,bzzt,pmcw,cxxsj,zm,mcdc,qbsj,datetime) values('"+iff.getYno()+"' ,'"+iff.getBno()+"','"+iff.getDormno()+"','"+iff.getWpbf()+"','"+iff.getZsk()+"','"+iff.getKqqw()+"','"+iff.getDmyt()+"','"+iff.getBzzt()+"','"+iff.getPmcw()+"','"+iff.getCxxsj()+"','"+iff.getZm()+"','"+iff.getMcdc()+"','"+iff.getQbsj()+"',sysdate) ";	
			System.out.println(sql);
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	public boolean deleteInspect(String datetime,String yno,String bno,String dormno)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="delete from inspection where datetime=to_date('"+datetime+"','yyyy-MM-dd') and yno='"+yno+"' and buildingno='"+bno+"' and dormno='"+dormno+"'";	
			//System.out.println(sql);
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	public boolean updateInspect(InspectForm iff)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="update inspection set wpbf='"+iff.getWpbf()+"',zsk='"+iff.getZsk()+"',kqqw='"+iff.getKqqw()+"',dmyt='"+iff.getDmyt()+"',bzzt='"+iff.getBzzt()+"',pmcw='"+iff.getPmcw()+"',cxxsj='"+iff.getCxxsj()+"',zm='"+iff.getZm()+"',mcdc='"+iff.getMcdc()+"',qbsj='"+iff.getQbsj()+"' where datetime=to_date('"+iff.getDatetime()+"','yyyy-MM-dd') and yno='"+iff.getYno()+"' and buildingno='"+iff.getBno()+"' and dormno='"+iff.getDormno()+"'";	
			//System.out.println(sql);
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	
	public int getPageCount(int pageSize,String yno,String bno,String dormno)
	{
		ResultSet rs=null;
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select yard.yno,yard.yname,buildingno,dormno,wpbf,zsk,kqqw,dmyt,bzzt,pmcw,cxxsj,zm,mcdc,qbsj,(wpbf+zsk+kqqw+dmyt+bzzt+pmcw+cxxsj+zm+mcdc+qbsj) sum,to_char(datetime,'yyyy-MM-dd') from inspection,yard where yard.yno=inspection.yno and inspection.yno='"+yno+"' and buildingno='"+bno+"' and dormno='"+dormno+"'";
		
		
			
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
	
	
	public ArrayList<InspectForm> getInspectFormByDormno(int pageNow,int pageSize,String yno,String bno,String dormno)
	{
		ArrayList<InspectForm> al=new ArrayList<InspectForm>();
		
		ResultSet rs1=null;
		SqlHelper s=new SqlHelper();
		try {
			//String sql="select t2.* from (select t1.*,rownum rn from (select yard.yno,yard.yname,buildingno,dormno,wpbf,zsk,kqqw,dmyt,bzzt,pmcw,cxxsj,zm,mcdc,qbsj,(wpbf+zsk+kqqw+dmyt+bzzt+pmcw+cxxsj+zm+mcdc+qbsj) sum,to_char(datetime,'yyyy-MM-dd') from inspection,yard where yard.yno=inspection.yno order by yno,buildingno,dormno) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

			String sql="select t2.* from (select t1.*,rownum rn from (select yard.yno,yard.yname,buildingno,dormno,wpbf,zsk,kqqw,dmyt,bzzt,pmcw,cxxsj,zm,mcdc,qbsj,(wpbf+zsk+kqqw+dmyt+bzzt+pmcw+cxxsj+zm+mcdc+qbsj) sum,to_char(datetime,'yyyy-MM-dd') from inspection,yard where yard.yno=inspection.yno and inspection.yno='"+yno+"' and buildingno='"+bno+"' and dormno='"+dormno+"')t1 where rownum<= "+(pageSize*pageNow)+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		
			
			rs1=s.dql(sql, null);
			while(rs1.next())
			{
				InspectForm iff=new InspectForm();
				iff.setYno(rs1.getString(1));
				iff.setYname(rs1.getString(2));
				iff.setBno(rs1.getString(3));
				iff.setDormno(rs1.getString(4));
				iff.setWpbf(rs1.getString(5));
				iff.setZsk(rs1.getString(6));
				iff.setKqqw(rs1.getString(7));
				iff.setDmyt(rs1.getString(8));
				iff.setBzzt(rs1.getString(9));
				iff.setPmcw(rs1.getString(10));
				iff.setCxxsj(rs1.getString(11));
				iff.setZm(rs1.getString(12));
				iff.setMcdc(rs1.getString(13));
				iff.setQbsj(rs1.getString(14));
				iff.setSum(rs1.getString(15));
				iff.setDatetime(rs1.getString(16));
				al.add(iff);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return al;
	}
	
	public InspectForm getInspectFormByDormno(String datetime,String yno,String bno,String dormno)
	{
		InspectForm iff=new InspectForm();
		ResultSet rs1=null;
		SqlHelper s=new SqlHelper();
		try {
			String sql="select yard.yno,yard.yname,buildingno,dormno,wpbf,zsk,kqqw,dmyt,bzzt,pmcw,cxxsj,zm,mcdc,qbsj,(wpbf+zsk+kqqw+dmyt+bzzt+pmcw+cxxsj+zm+mcdc+qbsj) sum,to_char(datetime,'yyyy-MM-dd') from inspection,yard where yard.yno=inspection.yno and datetime=to_date('"+datetime+"','yyyy-MM-dd') and inspection.yno='"+yno+"' and buildingno='"+bno+"' and dormno='"+dormno+"'";
		
			
			rs1=s.dql(sql, null);
			if(rs1.next())
			{
				iff.setYno(rs1.getString(1));
				iff.setYname(rs1.getString(2));
				iff.setBno(rs1.getString(3));
				iff.setDormno(rs1.getString(4));
				iff.setWpbf(rs1.getString(5));
				iff.setZsk(rs1.getString(6));
				iff.setKqqw(rs1.getString(7));
				iff.setDmyt(rs1.getString(8));
				iff.setBzzt(rs1.getString(9));
				iff.setPmcw(rs1.getString(10));
				iff.setCxxsj(rs1.getString(11));
				iff.setZm(rs1.getString(12));
				iff.setMcdc(rs1.getString(13));
				iff.setQbsj(rs1.getString(14));
				iff.setSum(rs1.getString(15));
				iff.setDatetime(rs1.getString(16));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return iff;
	}
	public int getPageCount(int pageSize,String base1,String con1,String base2,String con2,String base3,String con3)
	{
		if(base1==null||base1.equals("all"))
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
		
		ResultSet rs=null;
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from inspection where "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"'";
			if(base1.equals("datetime"))
			{
				sql="select count(*) from inspection where "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"'";

				//con1="to_date('"+con1+"','yyyy-MM-dd')";
			}
			//System.out.println(sql);
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

	public ArrayList getInspectionByPage(int pageSize,int pageNow,String base1,String con1,String base2,String con2,String base3,String con3)
	{
		if(base1==null||base1.equals("all"))
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
		
		
		ArrayList al=new ArrayList();
		SqlHelper s=new SqlHelper();
		try {
			
			
			//String sql="select top "+pageSize+" * from yard where yno not in(select top "+pageSize*(pageNow-1)+"yno from yard)";
		String sql="select t2.* from (select t1.*,rownum rn from (select yard.yno,yard.yname,buildingno,dormno,wpbf,zsk,kqqw,dmyt,bzzt,pmcw,cxxsj,zm,mcdc,qbsj,(wpbf+zsk+kqqw+dmyt+bzzt+pmcw+cxxsj+zm+mcdc+qbsj) sum,to_char(datetime,'yyyy-MM-dd') from inspection,yard where yard.yno=inspection.yno and "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by yno,buildingno,dormno) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		if(base1.equals("datetime"))
		{
			//sql="select count(*) from inspection where "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"'";
			sql="select t2.* from (select t1.*,rownum rn from (select yard.yno,yard.yname,buildingno,dormno,wpbf,zsk,kqqw,dmyt,bzzt,pmcw,cxxsj,zm,mcdc,qbsj,(wpbf+zsk+kqqw+dmyt+bzzt+pmcw+cxxsj+zm+mcdc+qbsj) sum,to_char(datetime,'yyyy-MM-dd') from inspection,yard where yard.yno=inspection.yno and "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by yno,buildingno,dormno) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

			//con1="to_date('"+con1+"','yyyy-MM-dd')";
		}
		
		//System.out.println(sql);
		ResultSet rs1=null;	
		rs1=s.dql(sql,null);
			while(rs1.next()){
				
				String yno=rs1.getString(1);
				
				//System.out.println(roomnum);
				InspectForm iff=new InspectForm();
				iff.setYno(rs1.getString(1));
				iff.setYname(rs1.getString(2));
				iff.setBno(rs1.getString(3));
				iff.setDormno(rs1.getString(4));
				iff.setWpbf(rs1.getString(5));
				iff.setZsk(rs1.getString(6));
				iff.setKqqw(rs1.getString(7));
				iff.setDmyt(rs1.getString(8));
				iff.setBzzt(rs1.getString(9));
				iff.setPmcw(rs1.getString(10));
				iff.setCxxsj(rs1.getString(11));
				iff.setZm(rs1.getString(12));
				iff.setMcdc(rs1.getString(13));
				iff.setQbsj(rs1.getString(14));
				iff.setSum(rs1.getString(15));
				iff.setDatetime(rs1.getString(16));
				al.add(iff);
				
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
