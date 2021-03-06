package cn.itcast.luceneUtils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.Field.Index;
import org.apache.lucene.document.Field.Store;

public class File2DocumentUtils {
	/**
	 * 
	 * @param path
	 * @return
	 * @throws IOException 
	 */
	public static Document file2Document(String path) throws IOException{
		File file=new File(path);
		Document doc=new Document();
		doc.add(new Field("name",file.getName(),Store.YES,Index.ANALYZED));
		doc.add(new Field("content",readFileContent(file),Store.YES,Index.ANALYZED));
		doc.add(new Field("size",String.valueOf(file.length()),Store.YES,Index.NOT_ANALYZED));
		doc.add(new Field("path",file.getAbsolutePath(),Store.YES,Index.NOT_ANALYZED));
		return doc;
	}
	public static String readFileContent(File file) throws IOException{
		BufferedReader reader=new BufferedReader(new InputStreamReader(new FileInputStream(file)));
		StringBuffer content=new StringBuffer();
		for(String line=null;(line=reader.readLine())!=null;){
			content.append(line).append("\n");
		}
		
		return content.toString();
		
		
	}
	public static void printDocumentInfo(Document doc){
		System.out.println(doc.get("name"));
		System.out.println(doc.get("content"));
		System.out.println(doc.get("size"));
		System.out.println(doc.get("path"));
		
		
	}
}
