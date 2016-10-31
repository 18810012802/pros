package com.jikexueyuan.main;

import java.lang.reflect.Field;

import com.jikexueyuan.bean.Book;

public class FieldTest {
	//�÷�������ʹ�ô��ݹ�����Class�����ȡ���е�����
	public void show(Class cl){
		Field[] fi = cl.getDeclaredFields();//���Խ�˽�����Ի�ȡ��
		
		for(Field ff : fi){
			System.out.println(ff.getName());
			System.out.println(ff.getType());
		}
		System.out.println("~~~~~~~~~~~~~~~~~~~");
		
		Field[] fi1 = cl.getFields();//ֻ���Ի�ȡ����������
		for(Field ff : fi1){
			System.out.println(ff.getName());
			System.out.println(ff.getType());
		}
	}
	//�÷�������ʹ�ô��ݹ�����ʵ������� ��ȡ���� �Լ����Ե�ֵ
	public void show(Object ob){
		Class cl = ob.getClass();
		Field[] fi = cl.getDeclaredFields();
		try {
			for(Field ff : fi){
				ff.setAccessible(true);//��������
				System.out.println(ff.getName()+"ֵ"+ff.get(ob));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		Book bo = new Book();
		bo.setId(1);
		bo.setName("���Ʋ��");
		bo.setType("����");
		
		FieldTest ft = new FieldTest();
		//ft.show(Book.class);
		ft.show(bo);
		
	}
}
