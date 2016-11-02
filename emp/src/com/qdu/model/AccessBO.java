package com.qdu.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.qdu.struts.form.AccessToRecordForm;
import com.qdu.struts.form.StuForm;

public class AccessBO {
	
	
	public int getPageCountByCardno(int pageSize,String cardno)
	{
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from accessToRecords where cardno='"+cardno+"'";
		
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
	public ArrayList getAccessByCardno(int pageSize,int pageNow,String cardno)
	{
		
		ArrayList<AccessToRecordForm> al=new ArrayList<AccessToRecordForm>();
		String sql="select t2.* from (select t1.*,rownum rn from (select to_char(accessdate,'yyyy-MM-dd') ad,to_char(accessdate,'hh24-Mi-ss'),buildingno,cardno,flag,to_number(recordno) r,yno from accessToRecords where cardno='"+cardno+"'order by r desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);

		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				AccessToRecordForm sb=new AccessToRecordForm();
				sb.setAccessdate(rs.getString(1));
				sb.setAccessTime(rs.getString(2));
				sb.setBuildingno(rs.getString(3));
				sb.setCardno(rs.getString(4));
				sb.setFlag(rs.getString(5));
				sb.setRecordno(rs.getInt(6)+"");
				sb.setYno(rs.getString(7));
				
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
	public boolean addAccess(AccessToRecordForm sf)
	{
		boolean b=false;
		
		String sql="insert into accessToRecords(recordno,yno,buildingno,cardno,accessdate,flag) values(atr.nextval,trim('"+sf.getYno()+"'),trim('"+sf.getBuildingno()+"'),trim('"+sf.getCardno()+"'),to_date(trim('"+sf.getAccessdate()+"'),'yyyy-MM-dd'),trim('"+sf.getFlag()+"'))";
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
	public boolean deleteAccess(String recordno)
	{
		//System.out.println("delete-start");
		
		boolean b=false;
		SqlHelper s=new SqlHelper();
		String sql="delete from accessToRecords where recordno='"+recordno+"'";
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
	
	public int getPageCount(int pageSize,String base1,String con1,String base2,String con2,String base3,String con3)
	{
		
		if(base1==null||con1==null||base1.equals("all"))
		{
			base1="1";
			con1="1";
		}
		if(base2==null||con2==null)
		{
			base2="1";
			con2="1";
		}
		if(base3==null||con3==null)
		{
			base3="1";
			con3="1";
		}
		if(base1.equals("flag"))
		{
			if(con1.equals("进入"))
			{
			con1="1";
			}else if(con1.equals("离开"))
			{
				con1="0";
		    }
		}
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from accessToRecords where "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"'";
			if(base1.equals("datetime"))
			{
				sql="select count(*) from accessToRecords where "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"'";
	
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
	public ArrayList getAccessToRecords(int pageSize,int pageNow,String base1,String con1,String base2,String con2,String base3,String con3)
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
		if(base1.equals("flag"))
		{
			if(con1.equals("进入"))
			{
			con1="1";
			}else if(con1.equals("离开"))
			{
				con1="0";
		    }
		}
		ArrayList<AccessToRecordForm> al=new ArrayList<AccessToRecordForm>();
		String sql="select t2.* from (select t1.*,rownum rn from (select to_char(accessdate,'yyyy-MM-dd') ad,to_char(accessdate,'hh24-Mi-ss'),buildingno,cardno,flag,to_number(recordno) r,yno from accessToRecords where "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by r desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		if(base1.equals("datetime"))
		{
			
			sql="select t2.* from (select t1.*,rownum rn from (select to_char(accessdate,'yyyy-MM-dd') ad,to_char(accessdate,'hh24-Mi-ss'),buildingno,cardno,flag,to_number(recordno) r,yno from accessToRecords where "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by r desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
	
		}
		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				AccessToRecordForm sb=new AccessToRecordForm();
				sb.setAccessdate(rs.getString(1));
				sb.setAccessTime(rs.getString(2));
				sb.setBuildingno(rs.getString(3));
				sb.setCardno(rs.getString(4));
				sb.setFlag(rs.getString(5));
				sb.setRecordno(rs.getInt(6)+"");
				sb.setYno(rs.getString(7));
				
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
