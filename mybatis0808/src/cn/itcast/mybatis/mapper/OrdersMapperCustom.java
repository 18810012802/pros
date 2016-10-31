package cn.itcast.mybatis.mapper;

import java.util.List;

import cn.itcast.mybatis.po.Orders;
import cn.itcast.mybatis.po.OrdersCustom;
import cn.itcast.mybatis.po.Users;

public interface OrdersMapperCustom {
	public List<OrdersCustom> findOrdersUser() throws Exception;
	//findOrdersUserResultMap
	public List<Orders> findOrdersUserResultMap() throws Exception;
	public List<Orders> findOrdersAndOrderdetailResultMap() throws Exception;
	public List<Users> findUserAndItemsResultMap() throws Exception;
	//findOrdersUserLazyLoading
	public List<Orders> findOrdersUserLazyLoading() throws Exception;

}
