package cn.itcast.ssm.dao;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.itcast.ssm.po.Users;

public class UsersDaoImplTest {

	private ApplicationContext applicationContext;
	@Before
	public void setUp() throws Exception {
		applicationContext=new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
		
	}

	@Test
	public void testFindUserById() throws Exception {
		UsersDao usersDao=(UsersDao)applicationContext.getBean("usersDao");
		Users user=usersDao.findUserById(56);
		System.out.println(user);
	}

}
