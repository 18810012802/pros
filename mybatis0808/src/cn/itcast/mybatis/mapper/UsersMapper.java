package cn.itcast.mybatis.mapper;

import java.util.List;

import cn.itcast.mybatis.po.Users;
import cn.itcast.mybatis.po.UsersCustom;
import cn.itcast.mybatis.po.UsersQueryVo;

public interface UsersMapper {
	//findUserByIdResultMap
	public Users findUserByIdResultMap(int id) throws Exception;
	public Users findUserById(int id) throws Exception;
	public void insertUser(Users users) throws Exception;
	public void deleteUser(int id) throws Exception;
	public List<UsersCustom> findUserList(UsersQueryVo usersQueryVo) throws Exception;
	public int findUserCount(UsersQueryVo usersQueryVo) throws Exception;
	public void updateUser(Users u) throws Exception;
}
