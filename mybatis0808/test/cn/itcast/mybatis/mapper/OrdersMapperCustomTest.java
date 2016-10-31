package cn.itcast.mybatis.mapper;

import static org.junit.Assert.*;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import cn.itcast.mybatis.po.Orders;
import cn.itcast.mybatis.po.OrdersCustom;
import cn.itcast.mybatis.po.Users;

public class OrdersMapperCustomTest {

	private SqlSessionFactory sqlSessionFactory;
	@Before
	public void setUp() throws Exception{
		String resource ="SqlMapConfig.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
	}
/*
	@Test
	public void testFindOrdersUser() throws Exception {
		SqlSession ss=sqlSessionFactory.openSession();
		OrdersMapperCustom ordersMapperCustom=ss.getMapper(OrdersMapperCustom.class);
		List<OrdersCustom> list=ordersMapperCustom.findOrdersUser();
		System.out.println(list);
		ss.close();
	}
	
	@Test
	public void testFindOrdersUserResultMap() throws Exception {
		SqlSession ss=sqlSessionFactory.openSession();
		OrdersMapperCustom ordersMapperCustom=ss.getMapper(OrdersMapperCustom.class);
		List<Orders> list=ordersMapperCustom.findOrdersUserResultMap();
		System.out.println(list);
		ss.close();
	}*/
	
	/*@Test
	public void testFindOrdersAndOrderdetailResultMap() throws Exception {
		SqlSession ss=sqlSessionFactory.openSession();
		OrdersMapperCustom ordersMapperCustom=ss.getMapper(OrdersMapperCustom.class);
		List<Orders> list=ordersMapperCustom.findOrdersAndOrderdetailResultMap();
		System.out.println(list);
		ss.close();
	}*/
	
	/*@Test
	public void testFindUserAndItemsResultMap() throws Exception {
		SqlSession ss=sqlSessionFactory.openSession();
		OrdersMapperCustom ordersMapperCustom=ss.getMapper(OrdersMapperCustom.class);
		List<Users> list=ordersMapperCustom.findUserAndItemsResultMap();
		System.out.println(list);
		ss.close();
	}
*/
	/*@Test
	public void testFindUserAndItemsResultMap() throws Exception {
		SqlSession ss=sqlSessionFactory.openSession();
		OrdersMapperCustom ordersMapperCustom=ss.getMapper(OrdersMapperCustom.class);
		List<Orders> list=ordersMapperCustom.findOrdersUserLazyLoading();
		for(Orders orders:list){
			Users users=orders.getUser();
			System.out.println(users);
		}
		
		ss.close();
	}*/
	@Test
	public void testFindUserById() throws Exception {
		SqlSession ss1=sqlSessionFactory.openSession();
		
		OrdersMapperCustom ordersMapperCustom=ss1.getMapper(OrdersMapperCustom.class);
		List<Orders> list=ordersMapperCustom.findOrdersUserLazyLoading();
		for(Orders orders:list){
			Users users=orders.getUser();
			System.out.println(users);
		}
		
		ss1.close();
	}

}
