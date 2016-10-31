package cn.itcast.ssm.dao;

import cn.itcast.ssm.po.Users;

public interface UsersDao {
	public Users findUserById(int id) throws Exception;

}
