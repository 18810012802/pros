package com.qdu.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.qdu.struts.form.AccessToRecordForm;
import com.qdu.struts.form.LoginRecordForm;
import com.qdu.struts.form.RepaireForm;
import com.qdu.struts.form.UserForm;

public class LoginRecordBO {
	
	public boolean deleteLoginRecord(String recordno)
	{
		boolean b=false;
		
		String sql="delete from loginRecord where recordno=trim('"+recordno+"')";
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

	public boolean addLoginRecord(String userno,String type)
	{
		boolean b=false;
		
		String sql="insert into loginRecord(recordno,userno,logintime,type) values(log.nextval,trim('"+userno+"'),sysdate,trim('"+type+"'))";
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
		
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from loginRecord where "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by recordno desc";
			if(base1.equals("logintime"))
			{
				sql="select count(*) from loginRecord where "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by recordno desc";
	
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
	public ArrayList getLoginRecords(int pageSize,int pageNow,String base1,String con1,String base2,String con2,String base3,String con3)
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
		/*if(base1.equals("flag"))
		{
			if(con1.equals("½øÈë"))
			{
			con1="1";
			}else if(con1.equals("Àë¿ª"))
			{
				con1="0";
		    }
		}*/
		ArrayList<LoginRecordForm> al=new ArrayList<LoginRecordForm>();
		String sql="select t2.* from (select t1.*,rownum rn from (select recordno,userno,to_char(logintime,'yyyy-MM-dd') lt1,to_char(logintime,'hh24-Mi-ss') lt2,type from loginRecord where "+base1+"='"+con1+"' and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by recordno desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		if(base1.equals("logintime"))
		{
			
			sql="select t2.* from (select t1.*,rownum rn from (select recordno,userno,to_char(logintime,'yyyy-MM-dd') lt1,to_char(logintime,'hh24-Mi-ss') lt2,type from loginRecord where "+base1+"=to_date('"+con1+"','yyyy-MM-dd') and "+base2+"='"+con2+"' and "+base3+"='"+con3+"' order by recordno desc) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
	
		}
		//String sql="select stuno,name,sex,major,phone,intime,seminary from student where yno='"+yno+"' and buildingno='"+buildingno+"' and dormno='"+dormno+"'";
		//System.out.println(sql);
		
		SqlHelper s=new SqlHelper();
		ResultSet rs=s.dql(sql,null);
		try {
			//System.out.println(sql);
			while(rs.next())
			{//System.out.println("ok:"+sql);
				LoginRecordForm sb=new LoginRecordForm();
				sb.setRecordno(rs.getString(1));
				sb.setUserno(rs.getString(2));
				sb.setLogindate(rs.getString(3));
				sb.setLogintime(rs.getString(4));
				sb.setType(rs.getString(5));
								
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
