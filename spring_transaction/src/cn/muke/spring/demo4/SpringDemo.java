package cn.muke.spring.demo4;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
/*
 * ◊™’À≤‚ ‘¿‡
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext4.xml")
public class SpringDemo {
	@Resource(name="accountService")
	private AccountService accountServcie;
	@Test
	public void demo1(){
		accountServcie.transfer("aaa", "bbb", 200d);
	}
}
