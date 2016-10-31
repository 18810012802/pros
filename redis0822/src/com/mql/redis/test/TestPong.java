package com.mql.redis.test;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;


public class TestPong {
	private TestPong(){}
	private static volatile JedisPool jedisPool=null;
	public static JedisPool getJedisPoolInstance(){
		if(jedisPool==null){
			synchronized(TestPong.class){
				if(null==jedisPool){
					JedisPoolConfig poolConfig=new JedisPoolConfig();
					poolConfig.setMaxActive(1000);
					poolConfig.setMaxIdle(32);
					poolConfig.setMaxWait(100*1000);
					poolConfig.setTestOnBorrow(true);
					jedisPool=new JedisPool(poolConfig,"192.168.127.152",6379);
				}
			}
		}
		return jedisPool;
	}
	
	
	public static void release(JedisPool jedisPool,Jedis jedis){
		if(jedis!=null){
			jedisPool.returnResourceObject(jedis);
			
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Jedis jedis=new Jedis("192.168.127.152",6379);
		System.out.println(jedis.ping());
		JedisPool jp=TestPong.getJedisPoolInstance();
		Jedis j=null;
		try {
			j=jedisPool.getResource();
			j.set("aa","aa");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			TestPong.release(jp,j);
		}
		
	}

}
