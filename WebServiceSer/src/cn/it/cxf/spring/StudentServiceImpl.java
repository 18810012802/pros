package cn.it.cxf.spring;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
@WebService
(
		name="StudentService",
		serviceName="StudentServicWS",
		portName="StudentServicePort",
		targetNamespace="string.cxf.it.cn"
)
public class StudentServiceImpl {
	private List<Student> stuList=new ArrayList<Student>();
	@WebMethod(operationName="save")
	public void save(@WebParam(name="student")Student student){
		stuList.add(student);
	}
	public @WebResult(name="student")List<Student> query(){
		return stuList;
	}
}
