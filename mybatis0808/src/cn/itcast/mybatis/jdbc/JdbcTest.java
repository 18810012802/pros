package cn.itcast.mybatis.jdbc;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 c=DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.102:1521:orcl","loss_admin","sg_loss");
	 String sql="select * from users where username=?";
	 p=c.prepareStatement(sql);
	 p.setString(1, "王五");
	 r=p.executeQuery();
	 while(r.next()){
		 System.out.println("r.getString(id)"+r.getString("id"));
	 }*/
	 String resource ="SqlMapConfig.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession=sqlSessionFactory.openSession();
		/*Users user=sqlSession.selectOne("test.findUserById",1);
		List<Users> l=sqlSession.selectList("test.findUserByName","小明");
		System.out.println(l.toString());*/
		
		Users u=new Users();
		u.setId(56);
		u.setUsername("王晓军2");
		u.setBirthday(new Date());
		u.setSex("1");
		u.setAddress("河南郑州");
		
		//sqlSession.insert("test.insertUser",u);
		
		//sqlSession.delete("test.deleteUser",58);
		sqlSession.update("test.updateUser",u);
		
		sqlSession.commit();
		sqlSession.close();
	 
 }
}
