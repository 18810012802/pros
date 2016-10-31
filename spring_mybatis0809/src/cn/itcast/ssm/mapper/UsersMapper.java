package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.Users;
import cn.itcast.ssm.po.UsersCustom;
import cn.itcast.ssm.po.UsersQueryVo;

public interface UsersMapper {
	public Users findUserById(int id) throws Exception;
}
