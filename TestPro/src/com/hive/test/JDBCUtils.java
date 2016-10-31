package com.hive.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class JDBCUtils {
	private static String driver="org.apache.hadoop.hive.jdbc.HiveDriver";
	private static String url="jdbc:hive://192.168.127.141:10000/default";
	
	static{
		try{
			Class.forName(driver);
		}catch(ClassNotFoundException e){
			throw new ExceptionInInitializerError(e);
		}
	}
	public static Connection getConnection(){
		try {
			return DriverManager.getConnection(url);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static void release(Connection conn,Statement st,ResultSet rs){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				rs=null;
			}
		}
		if(st!=null){
			try {
				st.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				st=null;
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				conn=null;
			}
		}
	}
}
