package cn.muke.spring.demo2;
/*
 * 转账Dao层接口
 */
public interface AccountDao {
	/**
	 * 
	 * @param out转出账号
	 * @param money转出金额
	 */
	public void outMoney(String out,Double money);
	/**
	 * 
	 * @param in转入帐号
	 * @param money转入金额
	 */
	public void inMoney(String in,Double money);
}
