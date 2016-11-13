package cn.it.ws;

import java.io.FileInputStream;
import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;

public class PhoneClient {
/**
 * HttpClient
 * @param args
 * @throws IOException 
 * @throws HttpException 
 */
	public static void main(String[] args) throws HttpException, IOException {
		// TODO Auto-generated method stub
		new PhoneClient().soapResult("18810012802");
	}
	public void getResult(String number) throws HttpException, IOException{
		HttpClient client=new HttpClient();
		GetMethod get=new GetMethod("http://ws.webxml.com.cn"+
				"/WebServices/MobileCodeWS.asmx/getMobileCodeInfo?mobileCode="+number+"&userID=");
		//PostMethod post=new PostMethod(uri);
		int code=client.executeMethod(get);
		System.out.println(code);
		String result=get.getResponseBodyAsString();
		System.out.println(result);
	}
	public void postResult(String number) throws HttpException, IOException{
		HttpClient client=new HttpClient();
		PostMethod post=new PostMethod("http://ws.webxml.com.cn"+
				"/WebServices/MobileCodeWS.asmx/getMobileCodeInfo");
		//PostMethod post=new PostMethod(uri);
		post.setParameter("mobileCode", number);
		post.setParameter("userID", "");
		int code=client.executeMethod(post);
		System.out.println(code);
		String result=post.getResponseBodyAsString();
		System.out.println(result);
	}
	public void soapResult(String number) throws HttpException, IOException{
		HttpClient client=new HttpClient();
		PostMethod post=new PostMethod("http://ws.webxml.com.cn"+
				"/WebServices/MobileCodeWS.asmx");
		//PostMethod post=new PostMethod(uri);
		post.setRequestHeader("Content-Type","text/xml;charset=utf-8");
		post.setRequestBody(new FileInputStream("e:/soap.txt"));
		int code=client.executeMethod(post);
		System.out.println(code);
		String result=post.getResponseBodyAsString();
		System.out.println(result);
	}

}
