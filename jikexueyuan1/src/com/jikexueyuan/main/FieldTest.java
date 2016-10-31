package com.jikexueyuan.main;

import java.lang.reflect.Field;

import com.jikexueyuan.bean.Book;

public class FieldTest {
	//该方法用于使用传递过来的Class对象获取类中的属性
	public void show(Class cl){
		Field[] fi = cl.getDeclaredFields();//可以讲私有属性获取到
		
		for(Field ff : fi){
			System.out.println(ff.getName());
			System.out.println(ff.getType());
		}
		System.out.println("~~~~~~~~~~~~~~~~~~~");
		
		Field[] fi1 = cl.getFields();//只可以获取到公有属性
		for(Field ff : fi1){
			System.out.println(ff.getName());
			System.out.println(ff.getType());
		}
	}
	//该方法用于使用传递过来的实体类对象 获取属性 以及属性的值
	public void show(Object ob){
		Class cl = ob.getClass();
		Field[] fi = cl.getDeclaredFields();
		try {
			for(Field ff : fi){
				ff.setAccessible(true);//设置启用
				System.out.println(ff.getName()+"值"+ff.get(ob));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		Book bo = new Book();
		bo.setId(1);
		bo.setName("斗破苍穹");
		bo.setType("玄幻");
		
		FieldTest ft = new FieldTest();
		//ft.show(Book.class);
		ft.show(bo);
		
	}
}
