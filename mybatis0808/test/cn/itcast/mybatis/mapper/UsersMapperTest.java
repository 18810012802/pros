package cn.itcast.mybatis.mapper;

import static org.junit.Assert.*;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import cn.itcast.mybatis.po.Users;
import cn.itcast.mybatis.po.UsersCustom;
import cn.itcast.mybatis.po.UsersQueryVo;

public class UsersMapperTest {

	private SqlSessionFactory sqlSessionFactory;
	@Before
	public void setUp() throws Exception{
		String resource ="SqlMapConfig.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
	}
	@Test
	public void testFindUserById() throws Exception {
		SqlSession ss2=sqlSessionFactory.openSession();
		SqlSession ss1=sqlSessionFactory.openSession();
		UsersMapper usersMapper=ss1.getMapper(UsersMapper.class);
		UsersMapper usersMapper2=ss2.getMapper(UsersMapper.class);
		Users u=usersMapper.findUserById(56);
		//u.setUsername("平平");
		
		//usersMapper.updateUser(u);
		ss1.close();
		
		Users u2=usersMapper2.findUserById(56);
		
		ss2.close();
		
		
		
		
		
		//System.out.println(u);
	}
	
	
	/*@Test
	public void testFindUserCount() throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		UsersMapper usersMapper=sqlSession.getMapper(UsersMapper.class);
		UsersQueryVo uqv=new UsersQueryVo();
		UsersCustom uc=new UsersCustom();
		uc.setSex("1");
		uc.setUsername("张三丰");
		uqv.setUsersCustom(uc);
		int c=usersMapper.findUserCount(uqv);
		sqlSession.close();
		System.out.println(c);
	}
	//findUserByIdResultMap
	@Test
	public void findUserByIdResultMap() throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		UsersMapper usersMapper=sqlSession.getMapper(UsersMapper.class);
		Users u=usersMapper.findUserByIdResultMap(56);
		sqlSession.close();
		System.out.println(u);
	}
	@Test
	public void testFindUserList() throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		UsersMapper usersMapper=sqlSession.getMapper(UsersMapper.class);
		UsersQueryVo uqv=new UsersQueryVo();
		List<Integer> ids=new ArrayList<Integer>();
		ids.add(56);
		ids.add(60);
		ids.add(61);
		uqv.setIds(ids);
		UsersCustom uc=new UsersCustom();
		uc.setSex("1");
		uc.setUsername("张三丰");
		uqv.setUsersCustom(uc);
		List<UsersCustom> u=usersMapper.findUserList(uqv);
		sqlSession.close();
		System.out.println(u);
	}*/
}
