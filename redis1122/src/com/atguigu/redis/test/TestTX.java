package com.atguigu.redis.test;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.Transaction;

public class TestTX {
	public boolean transMethod() throws InterruptedException {
		 JedisPool jedisPool = JedisPoolUtil.getJedisPoolInstance();
	     //Jedis jedis = new Jedis("127.0.0.1", 6379);
		 Jedis jedis = jedisPool.getResource();
		 try{
		     int balance;// 可用额度
		     int debt;// 欠额
		     int amtToSubtract = 10;// 实刷额度
	
		     jedis.watch("balance");
		     //jedis.set("balance","5");//模拟其他程序已经修改了该条目
		     Thread.sleep(7000);
		     balance = Integer.parseInt(jedis.get("balance"));
		     if (balance < amtToSubtract) {
		       jedis.unwatch();
		       System.out.println("modify");
		       return false;
		     } else {
		       System.out.println("***********transaction");
		       Transaction transaction = jedis.multi();
		       transaction.decrBy("balance", amtToSubtract);
		       transaction.incrBy("debt", amtToSubtract);
		       transaction.exec();
		       balance = Integer.parseInt(jedis.get("balance"));
		       debt = Integer.parseInt(jedis.get("debt"));
	
		       System.out.println("*******" + balance);
		       System.out.println("*******" + debt);
		       return true;
		     }
		 }finally{
				JedisPoolUtil.release(jedisPool, jedis);
		 }
	  }

	  /**
	   * @throws InterruptedException 
	   */
	  public static void main(String[] args) throws InterruptedException {
	     TestTX test = new TestTX();
	     boolean retValue = test.transMethod();
	     System.out.println("main retValue-------: " + retValue);
	  }	
}
