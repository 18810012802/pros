package com.jikexueyuan.main;

import com.jikexueyuan.bean.Book;

public class Test1 {
	public static void main(String[] args) {
		Class demo1 = null;
		Class demo2 = null;
		Class demo3 = null;
		
		//��һ�ַ�ʽ
		try {
			demo1 = Class.forName("com.jikexueyuan.bean.Book");
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(demo1);
		
		Book bo = new Book();
		Object ob = bo;
		System.out.println("�ڶ��֣�"+ob.getClass());
		
		demo3 = Book.class;
		System.out.println("�����֣�"+demo3);
		
		try {
			Book bo1 = (Book)demo3.newInstance();
			System.out.println("ʵ������������"+bo1);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
