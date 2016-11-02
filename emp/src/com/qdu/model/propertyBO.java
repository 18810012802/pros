package com.qdu.model;

import java.sql.ResultSet;
import java.util.ArrayList;


import com.qdu.struts.form.InspectForm;
import com.qdu.struts.form.PropertyForm;
import com.qdu.struts.form.StuForm;

public class propertyBO {
	
	public PropertyForm getPropertyFormByProname(String proname)
	{
		
		ResultSet rs1=null;
		SqlHelper s=new SqlHelper();
		PropertyForm pf=new PropertyForm();
		try {
			String sql="select description,image,proname,to_number(prono) p,to_char(registertime,'yyyy-MM-dd'),value from property where proname='"+proname+"'";
			//System.out.println(sql);
			rs1=s.dql(sql, null);
			if(rs1.next())
			{
				
				pf.setDescription(rs1.getString(1));
				pf.setImage(rs1.getString(2));
				pf.setProname(rs1.getString(3));
				pf.setProno(rs1.getInt(4)+"");
				pf.setRegistertime(rs1.getString(5));
				pf.setValue(rs1.getString(6));
				
				
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return pf;
	}
	public boolean updateProperty(PropertyForm pf)
	{
		boolean b=false;
		
		String sql="update property set description=trim('"+pf.getDescription()+"'),proname=trim('"+pf.getProname()+"'),registertime=to_date(trim('"+pf.getRegistertime()+"'),'yyyy-MM-dd'),value=to_number(trim('"+pf.getValue()+"')) where prono='"+pf.getProno()+"'";
		
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
	public PropertyForm getPropertyFormByProno(String prono)
	{
		
		ResultSet rs1=null;
		SqlHelper s=new SqlHelper();
		PropertyForm pf=new PropertyForm();
		try {
			String sql="select description,image,proname,to_number(prono) p,to_char(registertime,'yyyy-MM-dd'),value from property where prono='"+prono+"'";
			
			rs1=s.dql(sql, null);
			if(rs1.next())
			{
				
				pf.setDescription(rs1.getString(1));
				pf.setImage(rs1.getString(2));
				pf.setProname(rs1.getString(3));
				pf.setProno(rs1.getInt(4)+"");
				pf.setRegistertime(rs1.getString(5));
				pf.setValue(rs1.getString(6));
				
				
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			s.close();
		}
		return pf;
	}
	public boolean deleteProperty(String prono)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="delete from property where prono='"+prono+"'";	
			//System.out.println(sql);
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	public boolean addProperty(PropertyForm pf)
	{
		SqlHelper s=new SqlHelper();
		boolean b=false;
		try {
			
			String sql="insert into property(description,proname,prono,value,registertime,image,image2) values('"+pf.getDescription()+"' ,'"+pf.getProname()+"',pro.nextval,'"+pf.getValue()+"',to_date(trim('"+pf.getRegistertime()+"'),'yyyy-MM-dd'),'"+pf.getImage()+"','"+pf.getImage2()+"')";	
			System.out.println(sql);
		   b=s.dml(sql, null);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return b;
	}
	public int getPageCount(int pageSize)
	{
		ResultSet rs=null;
		SqlHelper s=new SqlHelper();
		int pageCount=0;
		int rowCount=0;
		try {
			String sql="select count(*) from property";
		
			
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
	
	public ArrayList<PropertyForm> getPropertyByPage(int pageSize,int pageNow)
	{
		
		ArrayList<PropertyForm> al=new ArrayList<PropertyForm>();
		SqlHelper s=new SqlHelper();
		try {
			
			
			//String sql="select top "+pageSize+" * from yard where yno not in(select top "+pageSize*(pageNow-1)+"yno from yard)";
		String sql="select t2.* from (select t1.*,rownum rn from (select description,image,proname,to_number(prono) p,to_char(registertime,'yyyy-MM-dd'),value,image2 from property order by p) t1 where rownum<= "+pageSize*pageNow+") t2 where rn>= "+(pageSize*(pageNow-1)+1);
		//System.out.println(sql);
		ResultSet rs1=null;	
		rs1=s.dql(sql,null);
			while(rs1.next()){
				
				PropertyForm pf=new PropertyForm();
				pf.setDescription(rs1.getString(1));
				pf.setImage(rs1.getString(2));
				pf.setProname(rs1.getString(3));
				pf.setProno(rs1.getInt(4)+"");
				pf.setRegistertime(rs1.getString(5));
				pf.setValue(rs1.getString(6));
				pf.setImage2(rs1.getString(7));
				
				al.add(pf);
				
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
