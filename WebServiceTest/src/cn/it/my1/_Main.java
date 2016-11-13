package cn.it.my1;

import cn.it.my1.MyWebService1;
import cn.it.my1.MyWebServiceService1;

public class _Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyWebServiceService1 ws=new MyWebServiceService1();
		MyWebService1 wsSoap=ws.getMyWebServicePort1();
		String address=wsSoap.sayHello("John",11);		
		System.out.println(address);
	}

}
