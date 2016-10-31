package cn.itcast.ssm.dao;

import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.itcast.ssm.po.Users;

public class UsersDaoImpl extends SqlSessionDaoSupport implements UsersDao{

	@Override
	public Users findUserById(int id) throws Exception {
		// TODO Auto-generated method stub
		SqlSession sqlSession=this.getSqlSession();
		Users users=sqlSession.selectOne("test.findUserById",id);
		return users;
	}


}
