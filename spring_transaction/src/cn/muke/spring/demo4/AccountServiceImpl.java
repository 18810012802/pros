package cn.muke.spring.demo4;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/*
 * ת��ҵ���ʵ����
 */
/**
 * 
 * @Transactional
 * propagation
 * isolation
 * readonly
 * rollbasckfor
 * 
 *
 */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT,readOnly=false)
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
