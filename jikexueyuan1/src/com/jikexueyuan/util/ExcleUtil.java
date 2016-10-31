package com.jikexueyuan.util;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;

import com.jikexueyuan.bean.Book;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

public class ExcleUtil {
	//�����һ����Ŀ ͼ��ݹ���ϵͳ Ҫ����ʵ��
	// ͼ����Ϣ���뵼��  �û���Ϣ���뵼��  ������Ϣ���뵼��
	// ά����Ϣ���뵼��  ����Ա��Ϣ���뵼����������������
	
	public static void excleOut(ArrayList ar,String str){
		WritableWorkbook book = null;
		try {
			book = Workbook.createWorkbook(new File(str));
			WritableSheet sheet = book.createSheet("sheet", 0);
			for(int i = 0;i<ar.size();i++){
				Object ob = ar.get(i);
				Class cl = ob.getClass();
				Field[] fi = cl.getDeclaredFields();
				for(int j = 0;j<fi.length;j++){
					fi[j].setAccessible(true);
					Label la = new Label(j, i, String.valueOf(fi[j].get(ob)));
					sheet.addCell(la);
				}
			}
			book.write();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				book.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
	}
	
	public static ArrayList excleIn(Class cl,String str){
		ArrayList ar = new ArrayList();
		Workbook book = null;
		try {
			book = Workbook.getWorkbook(new File(str));
			Sheet sheet = book.getSheet(0);
			Field[] fi = cl.getDeclaredFields();
			for(int i = 0;i<sheet.getRows();i++){
				Object ob = cl.newInstance();//����ʵ��������
				for(int j = 0;j<fi.length;j++){
					fi[j].setAccessible(true);
					String con = sheet.getCell(j,i).getContents();
					if(fi[j].getType().toString().equals("class java.lang.String")){
						fi[j].set(ob, con);
					}else if(fi[j].getType().toString().equals("int")){
						fi[j].setInt(ob, Integer.valueOf(con));
					}else if(fi[j].getType().toString().equals("class java.lang.Integer")){
						fi[j].setInt(ob, Integer.valueOf(con));
					}
				}
				ar.add(ob);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			book.close();
		}
		return ar;
	}
	
	
	public static void main(String[] args) {
		
//		ArrayList<Book> ar = new ArrayList<Book>();
//		Book bo = new Book();
//		bo.setId(1);
//		bo.setName("����");
//		bo.setType("����");
//		Book bo1 = new Book();
//		bo1.setId(2);
//		bo1.setName("����");
//		bo1.setType("����");
//		ar.add(bo);
//		ar.add(bo1);
//		
//		ExcleUtil.excleOut(ar, "d:/jikexueyuan/bookw.xls");
		
		ArrayList<Book> ar = ExcleUtil.excleIn(Book.class, "d:/jikexueyuan/bookw.xls");
	
		for(Book bo : ar){
			System.out.println(bo.getName()+bo.getType());
		}
	}
}
