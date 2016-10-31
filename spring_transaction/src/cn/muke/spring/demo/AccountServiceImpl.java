package cn.muke.spring.demo;

import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

/*
 * 转账业务层实现类
 */
public class AccountServiceImpl implements AccountService {
	private AccountDao accountDao;
	private TransactionTemplate transactionTemplate;
	
	
	@Override
	public void transfer(final String out, final String in, final Double money) {
		transactionTemplate.execute(new TransactionCallbackWithoutResult(){

			@Override
			protected void doInTransactionWithoutResult(TransactionStatus arg0) {
				accountDao.outMoney(out, money);
				
				accountDao.inMoney(in, money);
			}
			
		});
		
	}
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
		this.transactionTemplate = transactionTemplate;
	}

}
