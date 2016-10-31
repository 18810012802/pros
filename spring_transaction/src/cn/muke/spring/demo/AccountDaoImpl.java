package cn.muke.spring.demo;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

/*
 * 转账Dao层实现类
 */
public class AccountDaoImpl extends JdbcDaoSupport implements AccountDao {
	/**
	 * 
	 * @param out转出账号
	 * @param money转出金额
	 */
	@Override
	public void outMoney(String out, Double money) {
		// TODO Auto-generated method stub
		String sql="update account set money=money-? where name=?";
		this.getJdbcTemplate().update(sql,money,out);
	}
	/**
	 * 
	 * @param in转入帐号
	 * @param money转入金额
	 */
	@Override
	public void inMoney(String in, Double money) {
		// TODO Auto-generated method stub
		String sql="update account set money=money+? where name=?";
		this.getJdbcTemplate().update(sql,money,in);
	}

}
