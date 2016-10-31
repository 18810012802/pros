package com.java.test;

import java.io.UnsupportedEncodingException;

import org.apache.hadoop.hive.ql.parse.HiveParser.sysFuncNames_return;

public class IoTest extends Test7{
	static{
		 System.out.println("static");
	 }
	{
		 System.out.println("初始化块");
		    
		         int i=5;
		         switch(i)
		         {
		               case 1:
		                System.out.println("one");
		               case 10:
		                System.out.println("ten");
		               case 5:
		                System.out.println("five");    
		               case 3:
		                System.out.println("three");
		               default:
		                System.out.println("other");
		         }

	}
 public IoTest(){
	 
	 super("小明");
	
	 System.out.println("子类");
	 
 }
	public static void main(String[] args) throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
			String s="联想";
			//utf-8,中文占3个字节，英文1个字节
			byte[] bytes1=s.getBytes("utf-8");
			for(byte b:bytes1){
				System.out.print(Integer.toHexString(b&0xff)+" ");
			}
			System.out.println();
			//gbk,中文2，英文1
			byte[] bytes2=s.getBytes("gbk");
			for(byte b:bytes2){
				System.out.print(Integer.toHexString(b & 0xff)+" ");
			}
			System.out.println();
			//java utf-16be,中文12字节，英文2字节
			byte[] bytes3=s.getBytes("utf-16be");
			for(byte b:bytes3){
				System.out.print(Integer.toHexString(b & 0xff)+" ");
			}
			String str1=new String(bytes3,"utf-16be");
			System.out.println(str1);
			new IoTest();
			
	}

}

class Test7 
{
	public Test7(){
		 System.out.println("父类");
	 }
	public Test7(String name){
		 System.out.println("带参数父类:"+name);
	 }
}
