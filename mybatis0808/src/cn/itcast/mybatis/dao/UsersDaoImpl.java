package cn.itcast.mybatis.dao;

import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cn.itcast.mybatis.po.Users;

public class UsersDaoImpl implements UsersDao{

	private SqlSessionFactory sqlSessionFactory;
	
	public UsersDaoImpl(SqlSessionFactory sqlSessionFactory){
		 this.sqlSessionFactory=sqlSessionFactory;
	}
	@Override
	public Users findUserById(int id) throws Exception {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
				
		Users users=sqlSession.selectOne("test.findUserById",id);
		sqlSession.close();
		return users;
	}

	@Override
	public void insertUser(Users users) throws Exception {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		sqlSession.insert("test.insertUser",users);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public void deleteUser(int id) throws Exception {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		sqlSession.delete("test.deleteUser",58);
		sqlSession.commit();
		sqlSession.close();
	}

}
