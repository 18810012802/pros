package cn.muke.spring.demo2;
/*
 * ת��Dao��ӿ�
 */
public interface AccountDao {
	/**
	 * 
	 * @param outת���˺�
	 * @param moneyת�����
	 */
	public void outMoney(String out,Double money);
	/**
	 * 
	 * @param inת���ʺ�
	 * @param moneyת����
	 */
	public void inMoney(String in,Double money);
}
