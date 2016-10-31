package cn.itcast.ssm.mapper;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.itcast.ssm.po.Users;

public class UsersMapperTest {
	private ApplicationContext applicationContext;
	@Before
	public void setUp() throws Exception {
		applicationContext=new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");

	}

	@Test
	public void test() throws Exception {
		UsersMapper usersMapper=(UsersMapper)applicationContext.getBean("usersMapper");
		Users users=usersMapper.findUserById(56);
		System.out.println(users);
	}

}
