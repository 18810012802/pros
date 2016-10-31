package cn.itcast.lucene;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriter.MaxFieldLength;
import org.apache.lucene.queryParser.MultiFieldQueryParser;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.Filter;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Formatter;
import org.apache.lucene.search.highlight.Fragmenter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.Scorer;
import org.apache.lucene.search.highlight.SimpleFragmenter;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.store.RAMDirectory;
import org.junit.Test;

import cn.itcast.luceneUtils.File2DocumentUtils;

public class HelloWorld {

	String filePath = "H:\\eclipse\\LusenceDemo\\datasource\\youth.txt";
	String indexPath = "H:\\eclipse\\LusenceDemo\\luseneIndex";
	Analyzer analyzer = new StandardAnalyzer();

	
	/**
	 * 创建索引
	 * 
	 * @throws IOException
	 * 
	 */
	@Test
	public void createIndex() throws IOException {
		File file = new File(filePath);
		Document doc = File2DocumentUtils.file2Document(filePath);

		IndexWriter indexWriter = new IndexWriter(indexPath, analyzer, true, MaxFieldLength.LIMITED);
		indexWriter.addDocument(doc);

		indexWriter.close();
	}

	/**
	 * 搜索
	 * 
	 * @throws IOException
	 * @throws ParseException
	 */
	@Test
	public void search() throws IOException, ParseException {
		String queryString = "Youth";
		String[] fields = { "name", "content" };

		QueryParser queryParser = new MultiFieldQueryParser(fields, analyzer);
		Query query = queryParser.parse(queryString);
		IndexSearcher indexSearcher = new IndexSearcher(indexPath);
		Filter filter = null;
		List<Document> recordList=new ArrayList<Document>();
		
		TopDocs topDocs=indexSearcher.search(query, filter, 10000);
		System.out.println(topDocs.totalHits);
		//准备高亮器
		Formatter formatter=new SimpleHTMLFormatter("<font color='red'>","</font>");
		Scorer scorer=new QueryScorer(query);
		Highlighter highlighter=new Highlighter(formatter,scorer);
		Fragmenter fragmenter=new SimpleFragmenter(50);
		highlighter.setTextFragmenter(fragmenter);
		
		for(ScoreDoc scoreDoc:topDocs.scoreDocs){
			int docSn=scoreDoc.doc;
			Document doc=indexSearcher.doc(docSn);
			//设置高亮
			String hc=highlighter.getBestFragment(analyzer,"content",doc.get("content"));
			if(hc==null){
				String content=doc.get("content");
				int endIndex=Math.min(50,content.length());
				hc=content.substring(0,endIndex);
			}
			if (hc!=null)
				doc.getField("content").setValue(hc);
			recordList.add(doc);
			
			File2DocumentUtils.printDocumentInfo(doc);
		}
	}
	@Test
	public void createIndex2() throws IOException {
		//Directory dir=FSDirectory.getDirectory(indexPath);
		Directory dir=new RAMDirectory();
		Document doc = File2DocumentUtils.file2Document(filePath);

		IndexWriter indexWriter = new IndexWriter(dir, analyzer, MaxFieldLength.LIMITED);
		indexWriter.addDocument(doc);

		indexWriter.close();
	}
	@Test
	public void createIndex3() throws IOException {
		Directory fsDir=FSDirectory.getDirectory(indexPath);
		Directory ramDir=new RAMDirectory(fsDir);
		
		IndexWriter ramIndexWriter=new IndexWriter(ramDir,analyzer,MaxFieldLength.LIMITED);
		Document doc = File2DocumentUtils.file2Document(filePath);
		ramIndexWriter.addDocument(doc);
		ramIndexWriter.close();
		IndexWriter fsIndexWriter=new IndexWriter(fsDir,analyzer,true,MaxFieldLength.LIMITED);
		fsIndexWriter.addIndexesNoOptimize(new Directory[]{ramDir});
		fsIndexWriter.close();
	}
	@Test
	public void createIndex4() throws IOException {
		Directory fsDir=FSDirectory.getDirectory(indexPath);
		IndexWriter fsIndexWriter=new IndexWriter(fsDir,analyzer,MaxFieldLength.LIMITED);
		fsIndexWriter.optimize();
		fsIndexWriter.close();
	}
}
