package cn.muke.spring.demo;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

/*
 * ת��Dao��ʵ����
 */
public class AccountDaoImpl extends JdbcDaoSupport implements AccountDao {
	/**
	 * 
	 * @param outת���˺�
	 * @param moneyת�����
	 */
	@Override
	public void outMoney(String out, Double money) {
		// TODO Auto-generated method stub
		String sql="update account set money=money-? where name=?";
		this.getJdbcTemplate().update(sql,money,out);
	}
	/**
	 * 
	 * @param inת���ʺ�
	 * @param moneyת����
	 */
	@Override
	public void inMoney(String in, Double money) {
		// TODO Auto-generated method stub
		String sql="update account set money=money+? where name=?";
		this.getJdbcTemplate().update(sql,money,in);
	}

}
