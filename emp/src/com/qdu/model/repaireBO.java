package com.qdu.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.qdu.struts.form.RepaireForm;
import com.qdu.struts.form.StuForm;

public class repaireBO {
	
	
	public boolean updateRepaire(RepaireForm sf)
	{
		boolean b=false;
		
		String sql="update repaire set yno=trim('"+sf.getYno()+"'),buildingno=trim('"+sf.getBuildingno()+"'),dormno=trim('"+sf.getDormno()+"'),cause=trim('"+sf.getCause()+"'),subtime=to_date(trim('"+sf.getSubtime()+"'),'yyyy-MM-dd'),solvetime=to_date(trim('"+sf.getSolvetime()+"'),'yyyy-MM-dd'),cost=trim('"+sf.getCost()+"'),remark=trim('"+sf.getRemark()+"'),prono=trim('"+sf.getProno()+"') where recordno="+sf.getRecordno();		
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
	
	public RepaireForm getRepaireForm(String recordno)
	{
		RepaireForm sb=null;
		SqlHelper s=new SqlHelper();
		try {
			String sql="select to_number(recordno) t,yno,buildingno,dormno,cause,to_char(subtime,'yyyy-MM-dd'),to_char(solvetime,'yyyy-MM-dd'),cost,remark,repaire.prono,proname from repaire,property where repaire.prono=property.prono and recordno='"+recordno+"'";
		//String[] param={yno};
		ResultSet rs=s.dql(sql,null);
		//System.out.println(sql);
		if(rs.next())
		{//System.out.println("ok"+sql);
			
			sb=new RepaireForm();
			sb.setRecordno(rs.getInt(1)+"");
			sb.setYno(rs.getString(2));
			sb.setBuildingno(rs.getString(3));
			sb.setDormno(rs.getString(4));
			sb.setCause(rs.getString(5));
			sb.setSubtime(rs.getString(6));
			sb.setSolvetime(rs.getString(7));
			sb.setCost(rs.getInt(8));
			sb.setRemark(rs.getString(9));
			sb.setProno(rs.getString(10));
			sb.setProname(rs.getString(11));
			
		}
		
		
		} catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			s.close();
		}
		return sb;
	}
	public boolean deleteRepaire(String recordno)
	{
		//System.out.println("delete-start");
		
		boolean b=false;
		SqlHelper s=new SqlHelper();
		String sql="delete from repaire where recordno='"+recordno+"'";
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
	public boolean addRepaire(RepaireForm sf)
	{
		boolean b=false;
		
		String sql="insert into repaire(recordno,yno,buildingno,dormno,prono,cause,subtime,solvetime,cost,remark) values(rep.nextval,trim('"+sf.getYno()+"'),trim('"+sf.getBuildingno()+"'),trim('"+sf.getDormno()+"'),trim('"+sf.getProno()+"'),trim('"+sf.getCause()+"'),to_date(trim('"+sf.getSubtime()+"'),'yyyy-MM-dd'),to_date(trim('"+sf.getSolvetime()+"'),'yyyy-MM-dd'),trim('"+sf.getCost()+"'),trim('"+sf.getRemark()+"'))";
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
	public int getPageCount(int pageSize,String base1,String con1,String base2,String con2,String base3,String con3)
	{
		if(base1==null||base1.equals("all")||base1.equals(""))
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
			String sql="select count(*) from repaire where "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"'";

			if(base1.equals("subtime")||base1.equals("solvetime"))
			{
			sql="select count(*) from repaire where "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"'";
			}
			//System.out.println(sql);
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
	public ArrayList getRepaireFormWithSort(int pageSize,int pageNow,String sort,String base1,String con1,String base2,String con2,String base3,String con3 )
	{
		//System.out.println("2base1="+base1);
		if(base1==null||base1.equals("all")||base1.equals(""))
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
			sort="t";
		}
		ArrayList<RepaireForm> al=new ArrayList<RepaireForm>();
		String sql="select t2.* from (select t1.*,rownum rn from (select to_number(recordno) t,yno,buildingno,dormno,cause,to_char(subtime,'yyyy-MM-dd'),to_char(solvetime,'yyyy-MM-dd'),cost,remark,repaire.prono,proname from repaire,property where repaire.prono=property.prono and "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by "+sort+") t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		if(base1.equals("subtime")||base1.equals("solvetime"))
		{
		sql="select t2.* from (select t1.*,rownum rn from (select to_number(recordno) t,yno,buildingno,dormno,cause,to_char(subtime,'yyyy-MM-dd'),to_char(solvetime,'yyyy-MM-dd'),cost,remark,repaire.prono,proname from repaire,property where repaire.prono=property.prono and "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by "+sort+") t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		}
		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				RepaireForm sb=new RepaireForm();
				sb.setRecordno(rs.getInt(1)+"");
				sb.setYno(rs.getString(2));
				sb.setBuildingno(rs.getString(3));
				sb.setDormno(rs.getString(4));
				sb.setCause(rs.getString(5));
				sb.setSubtime(rs.getString(6));
				sb.setSolvetime(rs.getString(7));
				sb.setCost(rs.getInt(8));
				sb.setRemark(rs.getString(9));
				sb.setProno(rs.getString(10));
				sb.setProname(rs.getString(11));
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
