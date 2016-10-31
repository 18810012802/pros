package com.jikexueyuan.main;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import com.jikexueyuan.bean.Book;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

public class ExcleBook {
	public void excleOut(ArrayList<Book> ar){
		WritableWorkbook book = null;//Excle����
		try {
			//����excle����
			book = Workbook.createWorkbook(new File("d:/jikexueyuan/book.xls"));
			//ͨ��excle���󴴽�һ��ѡ�����
			WritableSheet sheet = book.createSheet("sheet1", 0);
			
			for(int i = 0;i<ar.size();i++){
				Book bo = ar.get(i);
				//����һ����Ԫ�����  ��   ��  ֵ
				Label la1 = new Label(0,i,String.valueOf(bo.getId()));
				Label la2 = new Label(1,i,bo.getName());
				Label la3 = new Label(2,i,bo.getType());
				//�������õĵ�Ԫ�������� ѡ���
				sheet.addCell(la1);
				sheet.addCell(la2);
				sheet.addCell(la3);
			}
			
			//д��Ŀ��·��
			book.write();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				book.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		
	}
	
	public ArrayList<Book> excleIn(){
		ArrayList<Book> ar = new ArrayList<Book>();
		Workbook book = null;
		try {
			//��ȡ��excle����
			book = Workbook.getWorkbook(new File("d:/jikexueyuan/book.xls"));
			Sheet sheet = book.getSheet(0);
			for(int i = 0;i<sheet.getRows();i++){
				Book bo = new Book();
				Cell cell = sheet.getCell(0,i);
				bo.setId(Integer.valueOf(cell.getContents()));
				bo.setName(sheet.getCell(1,i).getContents());
				bo.setType(sheet.getCell(2,0).getContents());
				ar.add(bo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			book.close();
		}
		return ar;
	}
	
	public static void main(String[] args) {
		ExcleBook eb = new ExcleBook();
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
//		eb.excleOut(ar);
		
		ArrayList<Book> ar1 = eb.excleIn();
		
		for(Book bo2 : ar1){
			System.out.println(bo2.getName()+bo2.getType());
		}
	}
}
