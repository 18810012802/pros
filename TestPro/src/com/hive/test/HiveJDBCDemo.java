package com.hive.test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class HiveJDBCDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		String sql="select * from t1";
		conn=JDBCUtils.getConnection();
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				int tid=rs.getInt(1);
				String tname=rs.getString(2);
				int tage=rs.getInt(3);
				System.out.println(tid+"\t"+tname+"\t"+tage);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCUtils.release(conn, st, rs);
		}
		
	}

}
