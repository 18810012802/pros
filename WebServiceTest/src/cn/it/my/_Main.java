package cn.it.my;

public class _Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyWebServiceService ws=new MyWebServiceService();
		MyWebService wsSoap=ws.getMyWebServicePort();
		String address=wsSoap.sayHello("John");		
		System.out.println(address);
	}

}
