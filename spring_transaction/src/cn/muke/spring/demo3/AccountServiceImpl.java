package cn.muke.spring.demo3;

import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

/*
 * 转账业务层实现类
 */
public class AccountServiceImpl implements AccountService {
	private AccountDao accountDao;
	
	
	@Override
	public void transfer( String out,  String in,  Double money) {
				accountDao.outMoney(out, money);
				int i=1/0;
				accountDao.inMoney(in, money);
			
		
	}
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

}
