package cn.it.cxf;

import javax.jws.WebService;

import org.apache.cxf.interceptor.LoggingInInterceptor;
import org.apache.cxf.interceptor.LoggingOutInterceptor;
import org.apache.cxf.jaxws.JaxWsServerFactoryBean;
@WebService
(
		name="CXFWebService1",
		serviceName="CXFWebServiceService1",
		portName="CXFWebServicePort1",
		targetNamespace="cxf.it.cn"
	)
public class CXFService {
	public String sayHello(String name){
		return name+",���";
	}
	public static void main(String[] args) {
		String address="http://114.248.108.175:6666/ws";
		/*ServerFactoryBean bean=new ServerFactoryBean();
		bean.setAddress(address);
		bean.setServiceBean(new CXFService());
		bean.create();*/
		JaxWsServerFactoryBean bean=new JaxWsServerFactoryBean();
		bean.setAddress(address);
		bean.setServiceBean(new CXFService());
		bean.getInInterceptors().add(new LoggingInInterceptor());
		bean.getOutFaultInterceptors().add(new LoggingOutInterceptor());
		bean.create();
		System.out.println(address+"?WSDL");
	}
}