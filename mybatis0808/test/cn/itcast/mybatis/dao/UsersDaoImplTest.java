package cn.itcast.mybatis.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import cn.itcast.mybatis.po.Users;

public class UsersDaoImplTest {

	private SqlSessionFactory sqlSessionFactory;
	@Before
	public void setUp() throws Exception{
		String resource ="SqlMapConfig.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
	}
	@Test
	public void testFindUserById() throws Exception {
		UsersDao ud=new UsersDaoImpl(sqlSessionFactory);
	    Users users=ud.findUserById(56);
	    System.out.println(users);
	}

}
