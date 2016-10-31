package cn.itcast.mybatis.jdbc;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cn.itcast.mybatis.po.Users;


/**
 * 
 * @author Administrator
 *
 */
public class JdbcTest {
 public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException{
	/* Connection c=null;
	 java.sql.PreparedStatement p=null;
	 ResultSet r=null;
	 Class.forName("com.mysql.jdbc.Driver");
	 c=DriverManager.getConnection("jdbc:mysql://localhost:3306/mybatis?characterEncoding=utf-8","root","root");
	 String sql="select * from user where username=?";
	 p=c.prepareStatement(sql);
	 p.setString(1, "ÍõÎå");
	 r=p.executeQuery();
	 while(r.next()){
		 System.out.println("r.getString(id)"+r.getString("id"));
	 }*/
	 String resource ="SqlMapConfig.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Users user=sqlSession.selectOne("test.findUserById",1);
		System.out.println(user);
		sqlSession.close();
	 
 }
}
