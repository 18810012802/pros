package cn.it.wsdl;

public class _Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MobileCodeWS ws=new MobileCodeWS();
		MobileCodeWSSoap wsSoap=ws.getMobileCodeWSSoap();
		String address=wsSoap.getMobileCodeInfo("18810012802", null);
		System.out.println(address);
	}

}
