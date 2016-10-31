package cn.itcast.mybatis.dao;

import cn.itcast.mybatis.po.Users;

public interface UsersDao {
	public Users findUserById(int id) throws Exception;
	public void insertUser(Users users) throws Exception;
	public void deleteUser(int id) throws Exception;

}
